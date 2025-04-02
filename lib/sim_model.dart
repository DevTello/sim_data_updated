class SimData {
  final List<SimCard> cards;
  
  SimData(this.cards);

  factory SimData.fromJson(Map<String, dynamic> data) {
    return SimData(data['cards'] != null && data['cards'] is List
        ? List<dynamic>.from(data['cards'])
            .map<SimCard>((card) => SimCard.fromJson(card))
            .toList()
        : []);
  }

  Map<String, dynamic> toJson() => {
    'cards': cards.map((card) => card.toJson()).toList(),
  };
}

class SimCard {
  final String carrierName;
  final String countryCode;
  final String displayName;
  final bool isDataRoaming;
  final bool isNetworkRoaming;
  final int mcc;
  final int mnc;
  final int slotIndex;
  final String serialNumber;
  final int subscriptionId;
  final String phoneNumber;

  SimCard(
      this.carrierName,
      this.countryCode,
      this.displayName,
      this.isNetworkRoaming,
      this.isDataRoaming,
      this.mcc,
      this.mnc,
      this.slotIndex,
      this.serialNumber,
      this.subscriptionId,
      this.phoneNumber);

  factory SimCard.fromJson(Map<String, dynamic> card) {
    return SimCard(
        card['carrierName'] ?? '',
        card['countryCode'] ?? '',
        card['displayName'] ?? '',
        card['isDataRoaming'] ?? false,
        card['isNetworkRoaming'] ?? false,
        card['mcc'] ?? 0,
        card['mnc'] ?? 0,
        card['slotIndex'] ?? 0,
        card['serialNumber'] ?? '',
        card['subscriptionId'] ?? 0,
        card['phoneNumber'] ?? '');
  }
  
  Map<String, dynamic> toJson() => {
    'carrierName': carrierName,
    'countryCode': countryCode,
    'displayName': displayName,
    'isDataRoaming': isDataRoaming,
    'isNetworkRoaming': isNetworkRoaming,
    'mcc': mcc,
    'mnc': mnc,
    'slotIndex': slotIndex,
    'serialNumber': serialNumber,
    'subscriptionId': subscriptionId,
    'phoneNumber': phoneNumber,
  };
}
