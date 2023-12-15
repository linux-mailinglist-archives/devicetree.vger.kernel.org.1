Return-Path: <devicetree+bounces-25620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6F1813F80
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 02:57:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43B821F22A94
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 01:57:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A49E7650;
	Fri, 15 Dec 2023 01:56:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="FZU9gZ56"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (mail-db5eur01on2055.outbound.protection.outlook.com [40.107.15.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1E5624
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 01:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WaIdD1nFlbJCjEd/oCWVvvgu9g7+bg53M0td9scu9y3sx9j5GbA63wM7lX7qUsQAd/z9Pn+hWEAo5+W2zAJ/JpkMrrV40gs9idIUZo4VMMHXPEhrS195qqkRDR8kLYqtmeV3ZwDIBOtBbMCmiwEXqvoega5dXxv9YcOvoH3qXG9sGEw9OCDG6yiyq+k0iQSyFZKnc7MKyqziWI6mCWlclwRtRN9EZIAVwpAVa2fpbAWpqN4KEKjC8KQehZapmjIbtAlFP6mMR3vg+hSak/ejp+qU6iw6Bl4I5F/2DvjbP9NEYQxp4UlsHu834Ou/yD2rD1Ph7LGNMtSDnnt+L9deQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NWlKQGPv5EwDYOXiKGz4uPA+GYyUrfnU6jRlB1VhQqk=;
 b=ieJShe+5JjFcZDDbHjCtf6o7W9dU7RpeIAHjt3ecMIl93pKrcS9ND6G4nMhoDB70BYLMKr9r5kOij0ZDbmL7oOh0d5ZKEjSrKcBhD9Q3rEmoEfxIQl2WV/7LcdPoREqV3ZcJrdjT6zVyd4MVolH2b70iqS5N0lP1Jhn4M5QXzJEDn8lIm6bU44ZfaHrnoDKsTW7fr527ey1lK/hUE5hSP2MMoje/0R6fPkxIp+81CSecSAz8ZjmjMsd0Z88LZkgThQ+/oZYNznRCXLLs1wKUF4rNKTiLj1M9KGl0H9DbRFBj91oPmGkL1XDsOYlTCuLww0CmEVH9nm81j4B7k7wYmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NWlKQGPv5EwDYOXiKGz4uPA+GYyUrfnU6jRlB1VhQqk=;
 b=FZU9gZ56/6Qyqt8T/AdjCDxz7Phsz/seVt7L00LlSXpWxwaQy7lXgIO6yu+Il10Pcz37vLInSo5AzHG8afxbeDI2XOoELMyCIEYrj0wXAQ+1dWY3kG5KaQKRCOD9lBVk3jCTwGCXLZN3o22a608FMR4ajf2HOQ2tSK0RfEYsU7I=
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com (2603:10a6:10:23::16)
 by DUZPR04MB10016.eurprd04.prod.outlook.com (2603:10a6:10:4dd::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.26; Fri, 15 Dec
 2023 01:56:50 +0000
Received: from DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30]) by DB7PR04MB5146.eurprd04.prod.outlook.com
 ([fe80::709e:6876:7df0:fc30%7]) with mapi id 15.20.7091.028; Fri, 15 Dec 2023
 01:56:50 +0000
From: Xu Yang <xu.yang_2@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject: RE: [EXT] Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
Thread-Topic: [EXT] Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
Thread-Index: AQHaLn9RXeQaIxpAwUS6zMe/OUV0PLCorKEAgAAM+7CAAAh9gIAA1Hcw
Date: Fri, 15 Dec 2023 01:56:50 +0000
Message-ID:
 <DB7PR04MB5146E3187D86B808574C56B58C93A@DB7PR04MB5146.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-2-xu.yang_2@nxp.com>
 <CAOMZO5DxcLoBYMXQi=EW=-fAqz12ghPm+7PHn=LdhicETKg2pQ@mail.gmail.com>
 <VI1PR04MB51523F1EF74EF23B92C6880D8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
 <CAOMZO5DxQGjF5rUs6NMR7LCo11tLVPpnPs9nzH7qh2nCCBXoLQ@mail.gmail.com>
In-Reply-To:
 <CAOMZO5DxQGjF5rUs6NMR7LCo11tLVPpnPs9nzH7qh2nCCBXoLQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DB7PR04MB5146:EE_|DUZPR04MB10016:EE_
x-ms-office365-filtering-correlation-id: 925ab51e-01ad-4f05-f425-08dbfd111ac4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 NKN/lq0Q9H7hMk7+r2JEBVPWqltNRl12WnjEoFW8DYwfr5+6Dxr+gzlQIcTQTJggQVs/Eb6//xz+Sci5FT2ckyzVH6DfdBwlYbYWEW1C5JwRRwJ3NTFKYV0XqaSU73PBxbMRA0+aQDnaC6IqODXQeqF78J4cmOLuibWZ5EBvYXKNEmHjsQrUpg97QDa2tsm4L8jugwx/BxQ7YiNXF7rTtZd3B58yhdWHeA+C9/u2yi+7N2SpNFR62mJibmUV1pKzVc/DvTntfd4Tjx8XUuMoQjIUk+/xvotyq1MFGqlOVB1jtE8JEUNeL/0J4QCrwE8hivwL0OoBWcfxLCWXMGgBEAO7h/rvnryyMbJDKLEcbl+nRMZHe/BKOzHghhm66Z4Mhb+Xeo4l2mt90ntqzUrRrUiY8+Go/YM9nGo2En8vv64Im9PdKyaC8QHhdqRw7bL+mMVwIbQG2v0PqnEzFTi99FjHKVhS5Zs42eUlP3GfMSCaHwdQAiTPJlwGUMgXNScTBVn8bmGDUbX7ynckxOidfXR6GNvQpNHkZxNQkrWmbYE/yD0jLgaK5mo8HD9cyx7D9puEOlTzURpg++86vDGs0is4r7vYuBECj/q1Yc2PtsCJE2w9v3gbFamHjgB5NYnym3d8UbamO5vq7cceyHcAGw==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB5146.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(396003)(136003)(366004)(346002)(39860400002)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(4744005)(2906002)(33656002)(4326008)(8676002)(8936002)(86362001)(52536014)(5660300002)(38070700009)(41300700001)(26005)(55016003)(478600001)(9686003)(6506007)(7696005)(53546011)(71200400001)(38100700002)(122000001)(76116006)(54906003)(64756008)(66446008)(66476007)(66556008)(66946007)(6916009)(316002)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?SDV4ZmZCUzgzQ0RKRDBicjBnMTNaUXJRU1VBTzFUcGtwanpYQVJPdGFrRFFw?=
 =?utf-8?B?SXdUd3BhZGtFTmhtY3VHVnRxeExRNENpaFdmSXlDQXRoSUlUYXBValg5NWFV?=
 =?utf-8?B?Yjh4cDNaWGdnMEI1VldJTS82bTI2L0pjSTFZWURsSnhwN1l6MndXeW8zdmtX?=
 =?utf-8?B?TTVhelEzMHpFWnYwK253d2RNL1NpZXVvZ1k3ZUxQbmZ4QWplUjNXNUEzOW00?=
 =?utf-8?B?a1hDbHZCMnlsb01ZMlZRblFGRVFQSEpOZTVJRjVmY09Pdm1jUDAzNjcyZGlY?=
 =?utf-8?B?dmdrb1JSakNEY0NiR0dqU0l4czhGVktjSk15d1RFTHNsL0w4K2FGWjVzcXd2?=
 =?utf-8?B?dSt6WDgrRUZQRDloNEt1alRMaFoydWhxOHY1dUN5eXljTTdQaDJkOXk0TjFs?=
 =?utf-8?B?cSt5ZVNIdmc5MDd5M3JQY2RkWVNGZ3E3YS8zSU9LNitOdkliQTRLMFR0aUxI?=
 =?utf-8?B?aVBQR3NOb1ZteitodW92bkZSUW5XMkFPN0tqK01wQzZHNUVkb05Bb1dsZ2lV?=
 =?utf-8?B?NzB2U1hwbS9aWFhDdkdyOGpPNjFPcWtDR05vV3hlQjc5eHBNUEV3RVNzWGRO?=
 =?utf-8?B?NjRicGkxL2RuRWZIMnRlYmR2eGVYeG5SRktWMWY1ajlIODBib3ZHUllJT1Bl?=
 =?utf-8?B?OFpxa2c2T3RZTlBPcW45dlFOUkhRSHljSnA3MmFvVnZnaHhqc2RHb3JoNkJQ?=
 =?utf-8?B?dDdtNzAwZjNVYkdLUmNVOHdXMFI0eTJScnlWeVlDRGxhYzJHQ21haUF5U1FO?=
 =?utf-8?B?Sm44aXJaYjdpM1QyZVUzZHo2R0h1QVh1M1k5ajEvKzdvRXcycDJvVy8wak5O?=
 =?utf-8?B?aXlZNDkvOFRVSDczYllRNlowWEdKVGJjdFNaWTdtMUVRcVIxUzFuM3BwdW5J?=
 =?utf-8?B?UkVmN1BJSmdHZERHVWxPM0xBZ3hDdjVqMDBtWHF0NGxNVHd3a3lxMDY4Z01F?=
 =?utf-8?B?bmlxL1JCYTNLS1owTVB3RVZ2TzBhTlNjMG00T0JoTTR0NG5zbitsSzhPcU8w?=
 =?utf-8?B?c045SDBwRlY4QXRLaDdVa0FLWnNwdDFVdDRva255VnNjMy9yWGxzLzdUamQ2?=
 =?utf-8?B?K2N1Y29DL2tmbEpoRzNzME9RcnhMb1c5dVdUZ3BZWUJFSWlpdzZJbCtPeHVV?=
 =?utf-8?B?UHFJeFlYd2lQd0JzbHozejBxMk9RL2t0akZNODhWaitNdE9JU1cwdTRnWkNL?=
 =?utf-8?B?S2U1MUFWRnFpMjJNVWJoUU5jM00waGVOWERZbUk4K25MNFRKc2pqdEFTQjlm?=
 =?utf-8?B?UzJOS2RWalRFNnM0a1hjRGZHWXJRd0NpMXVJMXNCb09FUmRZWGJxbm1mVjRn?=
 =?utf-8?B?ZmFVR29OM1hDVEpweHN5MWJqR0JkYi9xZ1NsY3NodEtIS2I2MDEwdDkxRWhJ?=
 =?utf-8?B?Y2cyRG0wczMxYTNYZElLSE13NXNBUHRWMkExQkVmeWtMQklEYWNPeHZsUFRQ?=
 =?utf-8?B?MnhxUG9rVHcxWlUrckVyejhBWHdrNWI4YmVSU1drQkpxRklZU1FydWp6K3FQ?=
 =?utf-8?B?eUhRWmZCUkpjZUp2OW1Ueks0VHNkL0JZNWFHYThRWTFYZ1FzTW5KWEJZUTZ6?=
 =?utf-8?B?V01OVlZUZDdVVnR3VkhQdmVGdmU1OTJnelQ2VFh2L3ZSNEY1UGZzVUNGYnVz?=
 =?utf-8?B?K2VHWUM4NWJzUTZ0TTRMcmFaNTRMV2NETzB1TDZCTkxxeXpuTkYzaXdtWkE2?=
 =?utf-8?B?bzVXbkZrSmk0enJuOXZoSnEwYmNFck5talZQK09QYVdDZG5tQUpIVm5aSlc2?=
 =?utf-8?B?SVBTYjdON3hjdkdBSHBKT1NKRmxFUk4wSUlwMStPZWF5T2FxVW5jWWFZK1d3?=
 =?utf-8?B?NGdYdGh4UVNuSDEzaytkOTVzV1BOdEVMcWpWTnNLeG11UWtoZU9kanZQREVv?=
 =?utf-8?B?a2lBbEIrRlc5V05oSVQrL3dmT0lkQU9McTkxNy92SXlVbitxK05USjVyNTZO?=
 =?utf-8?B?R00rMTgvNE53SzJmdTVvYlVZYzF1SzV4RnZyc2g2bDhKS2JEbTVYRU9oczRs?=
 =?utf-8?B?Lzg3Nlh0MXQ5RW1RWExydVRFSU4xZW1IQXJTSjBaS1ZKZXZWYlZwVitvMDl5?=
 =?utf-8?B?T3EvUjF3ZkdsdityZStZK1VNeitydXVDdVJkdWpZQ2UrWU02U3NDaGhoZERr?=
 =?utf-8?Q?sM2o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB5146.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 925ab51e-01ad-4f05-f425-08dbfd111ac4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2023 01:56:50.7843
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tSoLpE+pWxJUWKfajRLgSBhgGsQl7ZLazT9SdM4h6b67LDrX0ZgnY2r5ziKMeUM6rYXBzXn5iaTB8SfTTCEWaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DUZPR04MB10016

SGkgRmFiaW8sDQoNCj4gDQo+IE9uIFRodSwgRGVjIDE0LCAyMDIzIGF0IDk6NTDigK9BTSBYdSBZ
YW5nIDx4dS55YW5nXzJAbnhwLmNvbT4gd3JvdGU6DQo+IA0KPiA+IFBUTjUxNTAgY2FuIHdvcmsg
YXV0b25vbW91c2x5IGZvciBtb3N0IG9mIHRoZSBiYXNpYyBmdW5jdGlvbnMuDQo+ID4gSSBkb27i
gJl0IHNlZSBhIG5lZWQgdG8gZW5hYmxlIGRyaXZlciBmb3IgaXQgbm93Lg0KPiANCj4gV2UgYXJl
IHRhbGtpbmcgYWJvdXQgZGV2aWNldHJlZSBoZXJlLCBub3QgZHJpdmVyLg0KPiANCj4gSWYgdGhl
IFBUTjUxNTAgaXMgcHJlc2VudCBvbiB0aGUgYm9hcmQsIHRoZW4ganVzdCByZXByZXNlbnQgaXQg
aW4gdGhlDQo+IGRldmljZXRyZWUuDQoNClVuZGVyc3Rvb2QuIFdpbGwgY29uc2lkZXIgdGhpcyBp
biB2Mi4NCg0KVGhhbmtzLA0KWHUgWWFuZw0K

