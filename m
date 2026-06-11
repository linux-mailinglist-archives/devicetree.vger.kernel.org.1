Return-Path: <devicetree+bounces-310186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id T0n9ONFoKmqcowMAu9opvQ
	(envelope-from <devicetree+bounces-310186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:50:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 449BE66F8F5
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:50:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=htecgroup.com header.s=selector1 header.b="eT+/Y/HE";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310186-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310186-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=htecgroup.com;
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1064832178EC
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99463368D46;
	Thu, 11 Jun 2026 07:39:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from AM0PR83CU005.outbound.protection.outlook.com (mail-westeuropeazon11020140.outbound.protection.outlook.com [52.101.69.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD7D367B9A;
	Thu, 11 Jun 2026 07:39:13 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781163555; cv=fail; b=dPbMEOMNJp8DKWs/g+5eMUh0CIOcT+Giyh6M4P1lbhTV6qXjBzeQhXkguBBXHiA27C4mbrusSKcBuY0g4BSAB+/AUqnA1/FstZlszNbOTsMs5iBmO92BdJJ1HNA0F+EYASQQzrupD9J7eWbL0IG17xa0xxEMVYBxEEuKOOpfsVY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781163555; c=relaxed/simple;
	bh=DbAPrahMckcQtxOsnkSHO0hIosEUcbb/CxHI2WBRv+k=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=e1A/SviYc4Y2wyQ5xU6bis8+eybM9WWC2PBh1mV+3XM9zHUHqWBgNDbZDOUabHBZnHlVUp84kEcwwqlyuScwOIf8tw1xINZNI3PfWuCZ2n7k1ckieXbS0JtwOws1utGruxZyjSPRejmWrrp/4ryKgBphgJNnXys8AOmSauC6/nM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=htecgroup.com; spf=pass smtp.mailfrom=htecgroup.com; dkim=pass (2048-bit key) header.d=htecgroup.com header.i=@htecgroup.com header.b=eT+/Y/HE; arc=fail smtp.client-ip=52.101.69.140
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PyycH5Hj9Xlu6eCJTtNxMrrslue2ZWiZeXg5loHRqVQrY9vGCPHyJU9UTetPNltUW2jUfiirx3oSuWwoUPgO6SdQKTE2oUvdQzFO+yxcnDlw6chpke9KOWZyKDJinMFcjeDMpteE0mCe2LRPblPQhkDH/oUTlvynlYe/yXK6y2VjHi6R5g/rAjoMgLyUl/6qyLG/6H8gPS9JkWbUhgrjJHG6zsRMBxRvGA3l8DIqh/xN4NNaEv0aO6fstcCHu33Hefgly9ysKlJO/A/6yDbSv+sM+dpQKmgcTdzL+ovEqK0K1jm3+vqgDjnl3rSd/k1UGQRBAL2vvvI/FfaMMljgPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DbAPrahMckcQtxOsnkSHO0hIosEUcbb/CxHI2WBRv+k=;
 b=n0VlhwBhj8dy5KM3FW2bq/HTdpFvoJ5hxtU2Pn5miwvTpEdysbERsB2WFp6DNYXt30s7HH2i3ds8hQzjY5dBQPL8mDFQURBRq6ysArwyADtvgxmnra+60W7OKRZ7ZIXPcH1NYMGnfVuTDU+4m5FjvVWgO9053Jfhv6bM9B/v7p/TdTtfuY9luHI6P5ce8ckdnrkT5WGdT4SSikD0+hDpSepL9HJQ9jIqyotzu6zcutBgpDvOYoB3nN9KkoAotZcGanT+FJl32pBLR9WHtB9krZlMLv0XCPEr17sU7f48iLRr+01YymFU0WbLyTwimADaVTIPCaqZ5xbkrk5OxNMjyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=htecgroup.com; dmarc=pass action=none
 header.from=htecgroup.com; dkim=pass header.d=htecgroup.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=htecgroup.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DbAPrahMckcQtxOsnkSHO0hIosEUcbb/CxHI2WBRv+k=;
 b=eT+/Y/HE3OsH2Aj07OVLUrtr0R43n3fETrfeEbQeBH3YJhSFZgu+0mwe8W8gDEOxOILLCF3O/ia0kAXDZdlKBrQStp+aAdyJzb+ITI4FJRoonbPME8LDIj65LnCb+i3zyOh5gsBW1sxTs9gOvMNb8LoJkcCxDKrALb3n38Vck5PB04evY4efOajBEGh/enu6Z35zlFMsl3O+Tj4jgp3tGbCIMMqsUgwhF8G3QbdUlkp8fTjlxH2k+Pe8InFgEHgnRkyVliYc4EymNuj9G83W+zuybm1X2TevouW7Mr6tXYXboMPW7Pm5qHwT+q1GLH5OddWNclZ3Z7q5eEu5WiphAQ==
Received: from AS4PR09MB5681.eurprd09.prod.outlook.com (2603:10a6:20b:4fc::5)
 by PR3PR09MB4396.eurprd09.prod.outlook.com (2603:10a6:102:25::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.13; Thu, 11 Jun
 2026 07:39:09 +0000
Received: from AS4PR09MB5681.eurprd09.prod.outlook.com
 ([fe80::8d2b:5798:928f:9faa]) by AS4PR09MB5681.eurprd09.prod.outlook.com
 ([fe80::8d2b:5798:928f:9faa%6]) with mapi id 15.21.0113.013; Thu, 11 Jun 2026
 07:39:09 +0000
From: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>
To: "krzk@kernel.org" <krzk@kernel.org>
CC: Aleksa Paunovic <aleksa.paunovic@htecgroup.com>, "alex@ghiti.fr"
	<alex@ghiti.fr>, "aou@eecs.berkeley.edu" <aou@eecs.berkeley.edu>,
	"cfu@mips.com" <cfu@mips.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
	"conor.dooley@microchip.com" <conor.dooley@microchip.com>,
	"daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Djordje Todorovic
	<Djordje.Todorovic@htecgroup.com>, "jstultz@google.com" <jstultz@google.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "linux-riscv@lists.infradead.org"
	<linux-riscv@lists.infradead.org>, "palmer@dabbelt.com" <palmer@dabbelt.com>,
	"paul.walmsley@sifive.com" <paul.walmsley@sifive.com>, "pjw@kernel.org"
	<pjw@kernel.org>, "robh@kernel.org" <robh@kernel.org>, "sboyd@kernel.org"
	<sboyd@kernel.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
	"wangruikang@iscas.ac.cn" <wangruikang@iscas.ac.cn>
Subject: Re: [PATCH v8 1/3] dt-bindings: timer: mips,p8700-gcru
Thread-Topic: [PATCH v8 1/3] dt-bindings: timer: mips,p8700-gcru
Thread-Index: AQHc+LJE+/urAYSxOUeoe74xiU63u7Y47DKAgAAAnYCAAAyHgA==
Date: Thu, 11 Jun 2026 07:39:08 +0000
Message-ID: <ed1e9743-1a8c-409f-9cf7-391719ea68fb@htecgroup.com>
References: <eda67f3d-9395-4386-9311-d6f6b1c62304@kernel.org>
In-Reply-To: <eda67f3d-9395-4386-9311-d6f6b1c62304@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS4PR09MB5681:EE_|PR3PR09MB4396:EE_
x-ms-office365-filtering-correlation-id: c11cb949-d3f0-495a-3571-08dec78c85fc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|7416014|23010399003|366016|1800799024|38070700021|56012099006|11063799006|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info:
 RpYvx4V/+X7ZhgwAa+ZsDwfNB95su444wPLcidKZcS7XHAft7sem4waPNrT+3o2VJ0xDp3hVbAfIZjzywPgXUYxF+JftZHqbJhG923SqaN4l5oqPdzZSCRoTkHkBr2aHweDj1kTg480uOXcTAaUv6SXICMoNjRJDEm9/Dx8elSPnB3m2x5oiFB6xkB0n8G8+9nDpJ2EATpI323cK8FOAE88HiB4bw9Jq/2kPRS3atut2lTRIZ0qKluzHK0h+YGNtqZtaqCidqUja8vIuSj6Bcl7S9J8scTtQLylmanH1BRvwXjigA2Egzu7Hd69sgrwOfiDRCk0FsnjriYqGJz6Z+r4zkHX6b/eXdE1ak5CfLCpJCYbcpxpwPPcx9hxZEnIJtnjThdUZsuyzEFpo+hPYgypNttVEzF3q4Meg/7H4DMSxsSb/0AQnG4qpe4ScovYsWxE5Jopq4jAAAxaFeL0xFM1eRkKasqGaNm8M6vqhAL8GywDLevtngEz+lsQvP6GchBPu1K3LrF+6XxiCZfWAZlwecguRURtEYS207FQpvHHwX96hM1YcuXiuXk2lu8RgEs1P9j3nLrx0AYiVuEmHfXMNJ00kT7roT87o6fmmTZhR7p3vEY8Rb0Dg8nOPjL6pPx6w9kQV7JZvakAvDf6yyMz0ohlMaSeiCGGx45DcBBTaTcdqNBBlbYSm5V/rPVKywv5gyfj/7kEhWVEG7hmVSw==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR09MB5681.eurprd09.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(366016)(1800799024)(38070700021)(56012099006)(11063799006)(6133799003)(18002099003)(22082099003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?bmg3RmhHNmFhUGdJSTIzTzBVV0ZsUUJzZmhxbFlPRUR4MW1wQ0dUREVrb0hH?=
 =?utf-8?B?S0FxYXFpYmNHTVRzVVN1NXBYeVdKRlAvSDczOTNKdnJXSzl0U0llRG5lbzRh?=
 =?utf-8?B?bWJQcnFMZEpGMzJRTTYySW1XME16eHFReWM5WTZCYWZVc1Z2Q1M2aXRWTFIr?=
 =?utf-8?B?MkN1aXphQzhIVFc4cVFoOGtiKzY3TEs3R1pNbyt1SEdvTEp5b29oTFhnOVNY?=
 =?utf-8?B?MCtNNml4T2NKdU1nTWlXT2JKRWMyRFpBQ0llS1BBYUJBaGhjRmo1MEZIOWR5?=
 =?utf-8?B?dDVRWWNvS1BDbzVLSk01Z2FFekpacS9sek5BaTI0STN0TnRLZVpKYWJZNGFk?=
 =?utf-8?B?dTdFZXgyQkdueEQvYW1DeFFoOVZ3Mnk0WmoyanAyN3pKQWNRejZkZStrSytC?=
 =?utf-8?B?UkMvVlUramQySFJjbGlRdkxZREY0TVBZWWdpVVJpNVMwbXBuVmNXeVJFT2RD?=
 =?utf-8?B?Y1djeXNwRExlWWxJUU5ZN0tUZTJFZlU2ekE1WUlzY2FGTmxrYzR4QUdQNmY2?=
 =?utf-8?B?QzF0bkpQREQxeG9yVWlESitMaEppeU1ORi9oWDM2UCtYS0JtUkJUQ1c5RjZx?=
 =?utf-8?B?eXpoUXNBZ3NISUtKQ3ZPSDZ3ZjNuTWxsMDNOSVhrbEhTQTdZRnNmV29TcGRQ?=
 =?utf-8?B?TlNySTczQTJVbTRLSjZKaE5HQUQzSUFkYXkxL3VQVktTeFdlMC9EYlN1U2Zp?=
 =?utf-8?B?Zkd5aEdMVWJpdGZQNk4rSllFYTd6WW1jNjVIZ25oWXhLTnh2K3V5MDF0QzRQ?=
 =?utf-8?B?OTZKUVdRZ2dqTFVYUTR3enp1bklDMkNmNlZzUTVaRjYxY3cyTHZNZW5lL3VG?=
 =?utf-8?B?WXZyVWNjZ2M0Q3JKVHAxYmFZa25RUmU4MlNkQ21Ua0tLVFZILzIzYzd4RVV4?=
 =?utf-8?B?MVRqUEYyTGZDTHFvYmNkaHFBa0pvSmRXdGNuSTdhU2hCeFh5Q2dmMFJtY2g5?=
 =?utf-8?B?eVRUNytxTGx0b3VHTk5ZQzNJUXBiV0ljUFNXRXV4OUZKeldVTjN2Yi9TL3Np?=
 =?utf-8?B?QUdtcnkvNncyWTAyYnV4dERaRFFrVGdHbVZFSE11alVqbkxGMmlYcjdoRTVy?=
 =?utf-8?B?OFB4dHpWNnVQVllVUHJ2QlZYY0VWK0s3L1lYbHlES1h0S21TMWV6WDlqYWNm?=
 =?utf-8?B?ZkhOd3o2SDBLMW1NNUpuVkdsM090bTRJVWM4a0VBaU5Ic3Q2MDhwY1poOUIr?=
 =?utf-8?B?ejZkU3hHQ3J4WWk0cnFoMWRwemVzL3BNRTdOL3l1YTBxNVpaV0RnbzUrV0FX?=
 =?utf-8?B?dHZHMi9GeU94aFFoOGNqU3gyQ0M5V3h0bk5tNVZGTnVyK1BHV0hzVnRsdENW?=
 =?utf-8?B?UWJ5NEhGdWtyODBXVzZKcTRqRHk2WWpnL0dtR2psYTNjK2ZIQzhMUXJ5YldT?=
 =?utf-8?B?QzZEeFc0aXFYbnloR2Q0UHR0bnZ0aFpSYnY2R0FGTitzODYvbEhJQUUyUjNV?=
 =?utf-8?B?eFZVeXpJbDRoanVuNUVNUkxvL1RkUkgvUmtDYW5FZkNrdkw2a2VlV3BXNS9P?=
 =?utf-8?B?SDYrUWgvNjQ4dVU5TTRRd2E1aUttMk5IcmZncEZPUlh6VW96MXNrWWVSZjB1?=
 =?utf-8?B?RHVqQ3l5dDI2Um1sUzFybFZ3LzhMWDAyODk1MnpGSzJ6VnJnTUZaVmVZZndy?=
 =?utf-8?B?cVduSHVLTjNSYmFLV0xUdGV2VXd5VEZqNUNhL2puUXJJM3RDcFJyVFl3M2Nr?=
 =?utf-8?B?ZE5IZHFPRTBkd1AyMU96OVJLd0pOTjM5L0s4Ujh4Um9HVjJzQjBQTm1XMEF0?=
 =?utf-8?B?RUdvV2I0YmFVWWVpcmxic3N4SVVaK0s4a05wS0d4SW13cEgvNC9acEFxU0JG?=
 =?utf-8?B?K1B1YWs2NjBnbHM1em5ydGRXT1ZMTmRjNzlsWktVeFFYOGJmUS9hZDhCYkN2?=
 =?utf-8?B?NkpSZ3k4bEhGQ1NnUDg0ZkRkYTFZUytuVjNRcUdHWmlpNkcxY1VYenVCT0d0?=
 =?utf-8?B?QkhQaWdQSkc0YVk1VVVMQU9OOTZ2VENqTzZPcEh2ZW9wOVJSY00vaFMzL05C?=
 =?utf-8?B?eFlEZS9ObG1iWk5qVzVzRzY4b2FCeEk1VktsZDd5bG1VQVJwK1VyTjhQL05w?=
 =?utf-8?B?MFpnd2drazlLbWQrVzV4LzVqMzdlcUFuZVFHckhrTUhHVXMrUHFnTVFVWUxi?=
 =?utf-8?B?QlNVYnBzZFNQK2JwaDdDbEltbS9rbk9wTnM0aHNUTEN6SURKSDhKYnpCQ0Nm?=
 =?utf-8?B?aC8zRFVDUnlHNXFRKzdsRW9mRTBSZ2RtTGdOWkNvc05vbDVxdTE0NmI4Ni91?=
 =?utf-8?B?UDRmcnZrVVk4QzVyS3hPSUR0WjhXQTZHYjNUSEhaMXlqOU5PaVFCZWxheGRq?=
 =?utf-8?B?WmJmS3hHTU0waHRsMW9kSDNBWml3OWxyaFpsck12ZWxobUxkakRxQW9rRlJV?=
 =?utf-8?Q?dW8IoHecDthX14morEYyVv0TMv5NK/66XYlIk?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F069E6289FDF0E49B464C8878F9878F8@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: htecgroup.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS4PR09MB5681.eurprd09.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c11cb949-d3f0-495a-3571-08dec78c85fc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2026 07:39:08.9961
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 9f85665b-7efd-4776-9dfe-b6bfda2565ee
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: O8o4av4yh+Wa2qICGBGpf8nXTdBgJ24vTAfXSYkadj3Ex+aBrz9LYoiFQaw+ZZeTaafxmzjxyvs3rf4oXHOPxxR7ndyB+0ajd83ESPk07KQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR09MB4396
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[htecgroup.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[htecgroup.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310186-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:aleksa.paunovic@htecgroup.com,m:alex@ghiti.fr,m:aou@eecs.berkeley.edu,m:cfu@mips.com,m:conor+dt@kernel.org,m:conor.dooley@microchip.com,m:daniel.lezcano@linaro.org,m:devicetree@vger.kernel.org,m:Djordje.Todorovic@htecgroup.com,m:jstultz@google.com,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:palmer@dabbelt.com,m:paul.walmsley@sifive.com,m:pjw@kernel.org,m:robh@kernel.org,m:sboyd@kernel.org,m:tglx@linutronix.de,m:wangruikang@iscas.ac.cn,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[aleksa.paunovic@htecgroup.com,devicetree@vger.kernel.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[htecgroup.com:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksa.paunovic@htecgroup.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	HAS_WP_URI(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 449BE66F8F5

SGkgS3J6eXN6dG9mLA0KDQoNCk9uIDYvMTEvMjYgMDg6NTQsIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6DQo+IE9uIDExLzA2LzIwMjYgMDg6NTEsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6
DQo+PiBPbiAxMC8wNi8yMDI2IDEwOjIyLCBBbGVrc2EgUGF1bm92aWMgdmlhIEI0IFJlbGF5IHdy
b3RlOg0KPj4+IEZyb206IEFsZWtzYSBQYXVub3ZpYyA8YWxla3NhLnBhdW5vdmljQGh0ZWNncm91
cC5jb20+DQo+Pj4NCj4+PiBBZGQgZHQtYmluZGluZ3MgZm9yIHRoZSBHQ1IuVSBtZW1vcnkgbWFw
cGVkIHRpbWVyIGRldmljZSBmb3IgUklTQy1WDQo+Pj4gcGxhdGZvcm1zLiBUaGUgR0NSLlUgbWVt
b3J5IHJlZ2lvbiBjb250YWlucyBzaGFkb3cgY29waWVzIG9mIHRoZSBSSVNDLVYNCj4+PiBtdGlt
ZSByZWdpc3RlciBhbmQgdGhlIGhydGltZSBHbG9iYWwgQ29uZmlndXJhdGlvbiBSZWdpc3Rlci4N
Cj4+Pg0KPj4+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYSBQYXVub3ZpYyA8YWxla3NhLnBhdW5vdmlj
QGh0ZWNncm91cC5jb20+DQo+PiBZb3Uga2VlcCBpZ25vcmluZyByZXZpZXdzIHlvdSByZWNlaXZl
ZCAoMTR0aCBNYXkhKSBhbmQgc2VuZGluZyBzYW1lIG1pc3Rha2UuDQo+Pg0KPj4gQ2FuIHlvdSBh
ZGRyZXNzIHRoZSBlbWFpbHM/DQpJIHdhc24ndCByZWFsbHkgc3VyZSB3aGF0IHRoZSBldGlxdWV0
dGUgd2FzIGZvciByZXBseWluZyB0byBTYXNoaWtvIHJldmlld3MsIHNvIEkgZGVjaWRlZCB0bw0K
YWRkcmVzcyB0aGUgY29tbWVudHMgZm9yIG90aGVyIHBhdGNoZXMgYW5kIHNlbmQgYSB2OCB3aXRo
b3V0IHJlcGx5aW5nLg0KDQpBcyBmb3IgdGhpcyBwYXRjaCwgdGhlIEdDUi5VIGl0c2VsZiBkb2Vz
IHN0YXJ0IGF0IDB4N0YwMDAsIGJ1dCB0aGUgZmlyc3TCoA0KYWN0dWFsIHJlZ2lzdGVyIChtdGlt
ZSkgaXMgYXQgMHg3RjA1MCBbMV0uwqANCkknbSBub3Qgc2VlaW5nIGFueSB3YXJuaW5ncyB3aGVu
IHJ1bm5pbmcgZHRfYmluZGluZ19jaGVjay4NCg0KPj4NCj4+IE5BSyBmb3IgdGhpcyBwYXRjaC4N
Cj4gSG0sIG1heWJlIGl0J3MgYjQgcmVsYXkgaXNzdWUsIHNvIGhlcmUgaXMgdGhlIHJlcG9ydDoN
Cj4NCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNTE0MDU1MzMzLkEyOUI4QzJC
Q0I3QHNtdHAua2VybmVsLm9yZy8NCj4NCg0KSXQgZGlkIHRha2UgYSB3aGlsZSBidXQgSSBub3Rp
Y2VkIHRoZSBjb21tZW50cy7CoA0KV2lsbCBoYXZlIHRvIGNoZWNrIG1vcmUgcmVndWxhcmx5IGlu
IHRoZSBmdXR1cmUuDQoNCg0KQmVzdCByZWdhcmRzLA0KQWxla3NhDQoNClsxXSBodHRwczovL21p
cHMuY29tL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDI2LzAzL01JUFNfUDg3MDBfUDg3MDAtRl9Qcm9n
cmFtbWVyc19SZWZlcmVuY2VfR3VpZGVfUmV2MS44Nl8yLTE3LTIwMjYucGRmI0c3LjE1Mjg1MDI=

