Return-Path: <devicetree+bounces-26530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8138816D3B
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:01:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4520F1F23BB6
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C67F61A71B;
	Mon, 18 Dec 2023 11:56:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=nxp.com header.i=@nxp.com header.b="bDCgB7+D"
X-Original-To: devicetree@vger.kernel.org
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (mail-vi1eur02on2076.outbound.protection.outlook.com [40.107.241.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DECB225CD
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 11:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NdW7IcfsYAg+qypYlWMqWMEhZbD5F6Qf0UJVr6RbLmkXZoZ1F9sjReR6wfZoDOI3h77E6Jtt8qCG7cezt6HuLI/QytXv3RTG7qakK0fvOlxEdNq2W2WuLT4VfSPgrHs/fj921rajR2rInGqb8e+V14UbafoV57RYEMdpnVsQRzrWgQLsQJUzLKGnhW5zdTr7qGCskDBzypcR5f3JLTeM1A5b27vMXKjsY65KOtsPOJyaMD+zfS3pr7P5P7Jy4Rv8eIaAPFTBKnl79Rvt8H4I6YggBRPmQl7KmUDrR4vKAVyEwcX6SnyMNY0sHnPaeA0ZS4yCSBt+dvh74+ez24vuBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xWl7jeyhhZYsqGsH+A+rdtJEQ/m6JjJjLm6wMQkvqUs=;
 b=LlsVtdHkV2j+B5lm/tsj97mem0RVACy6+PSTWHqLlChzlKgPN63B2MLXMTOcH6Cs71M9m8jyMtiD7bl7GP8vI/+BAnwmzr9Om7jBN97SeB9FXp3Y/E/HOuLSx6XvFfqyvYiFuqpkepjBFKY2+iua9C0J5ib+E3tkWpAKjn4IQOBjMb/Nnfmz9cU5+eGhBob1zkRIWbg0EuWY/V+30BhIwsypoUavKvmW0TvAxeCmpxhhIkPVd/Y12LpRE3r0AtVZITSXso0gY3yTixMAifyxGDXSD6b6fJ4i7NZMKLfSQKrRWBobR4mxQgqxBShpK4HMPb8GHTf572vBKOrX08km+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xWl7jeyhhZYsqGsH+A+rdtJEQ/m6JjJjLm6wMQkvqUs=;
 b=bDCgB7+DJhdlaBDbyI2RbO6FsFaoluV/32cuApn9l0zrgz7aN2NH9c45lwj4KF/eRlge3HSS1u0eOBrhZAdXiAWkZrIYVZIqI85D40438mNIbreLURE7Vbqk29ybYb1h9MEC9BHmZ0k2g8LRnPkOiLHXWuOGpxgYmb6cs4csHTU=
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com (2603:10a6:102:261::21)
 by AM0PR04MB6898.eurprd04.prod.outlook.com (2603:10a6:208:185::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.33; Mon, 18 Dec
 2023 11:56:29 +0000
Received: from PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::c241:6ff5:9777:518]) by PA4PR04MB9640.eurprd04.prod.outlook.com
 ([fe80::c241:6ff5:9777:518%4]) with mapi id 15.20.7091.034; Mon, 18 Dec 2023
 11:56:29 +0000
From: Jun Li <jun.li@nxp.com>
To: Fabio Estevam <festevam@gmail.com>, Xu Yang <xu.yang_2@nxp.com>
CC: "robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>, "shawnguo@kernel.org"
	<shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx
	<linux-imx@nxp.com>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>
Subject:
 =?utf-8?B?5Zue5aSNOiBbRVhUXSBSZTogW1BBVENIIDIvNF0gYXJtNjQ6IGR0czogaW14?=
 =?utf-8?Q?8ulp-evk:_enable_usb_nodes?=
Thread-Topic: [EXT] Re: [PATCH 2/4] arm64: dts: imx8ulp-evk: enable usb nodes
Thread-Index: AQHaLn9S9QLpl5/tkEar0MpZYMfs9LCorKEAgAAOlQCAAAbjgIAGMXzQ
Date: Mon, 18 Dec 2023 11:56:29 +0000
Message-ID:
 <PA4PR04MB96402073596E882CFBC925398990A@PA4PR04MB9640.eurprd04.prod.outlook.com>
References: <20231214112442.2412079-1-xu.yang_2@nxp.com>
 <20231214112442.2412079-2-xu.yang_2@nxp.com>
 <CAOMZO5DxcLoBYMXQi=EW=-fAqz12ghPm+7PHn=LdhicETKg2pQ@mail.gmail.com>
 <VI1PR04MB51523F1EF74EF23B92C6880D8C8CA@VI1PR04MB5152.eurprd04.prod.outlook.com>
 <CAOMZO5DxQGjF5rUs6NMR7LCo11tLVPpnPs9nzH7qh2nCCBXoLQ@mail.gmail.com>
In-Reply-To:
 <CAOMZO5DxQGjF5rUs6NMR7LCo11tLVPpnPs9nzH7qh2nCCBXoLQ@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PA4PR04MB9640:EE_|AM0PR04MB6898:EE_
x-ms-office365-filtering-correlation-id: 3a2368ec-498d-47cd-6fc5-08dbffc05ec6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info:
 oE1t8vLSQu9nXp6yPo8Ew3NJbGBvDJt2EXwdJ656Mw5lH5d5SAPP+fE8WF3JOc0xBTslJ8U+SqOgZ+Bk6nx8M9iqZFczp31IdAnGYF+rUAU2Qo1KN0KzpxXaBFQFI2tdoxk/NbAmWUyechpc0lbOzL45jUG5U6N5ZTWt/AlLI40oiBuUQrctTqGLdcuHLqZ/YK8gP9H842GibDCmxPOCr/bnghUpaXJu2tqTneGJvdA975Ya2ajb3NwczgtU3uNK3K+89q3BcM4oRd9VSulCsR9xEHCeIgqsr62khl6BXAfnHQz4ofsQ5fT8mLYs8IzDsaoMhwFHp1kf9NqNvybX8emYdBruv80MBqX7k8GCpjbWZW7MProwEIv2PGj3epmO4kidk8ytTcArKm1xaI6ExEWFrFmABS2c5adi6JOLMdTz2vfED+VzYtXbWxeJ9nnzjiD1BkG7qKKCoH5YOlEWgST2q660Eg0vP4olXf6v+EY/a1ll3ypog7TTMGFyrTR8GXSvKD+mhtjuqozt6JPbkCKrsc7nHhGc9gHJiH2yZLdVMFjtNe990JnqMdOKFva3hbGm0RsVE3GSdVhSMIuvDoL3IKifsYKTOfCjx3KHjxCoKNQ0jp6TfeiJI9Kc6BPXAaURjzIm1P5GuxQjz9BSnw==
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9640.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(366004)(396003)(39860400002)(376002)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(55016003)(38070700009)(76116006)(110136005)(5660300002)(86362001)(224303003)(33656002)(4326008)(38100700002)(8936002)(122000001)(26005)(53546011)(71200400001)(478600001)(2906002)(66556008)(66476007)(66446008)(64756008)(54906003)(9686003)(7696005)(6506007)(41300700001)(66946007)(6636002)(316002)(44832011)(4744005)(52536014)(32563001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?utf-8?B?NGpkMjNyU09vakFsYU13N2toVkVVM2o0Z2lrVkxZZ0ZteEdrZmJXOS9lUnVX?=
 =?utf-8?B?Z1hUeUx3M3ZMeHloOFM0SzNORUpvdFZSMHRSaGJsY0xvOTNEWUl2SVcxUlV5?=
 =?utf-8?B?VXZHekFNR3BIcGhOQU5HQnBTZXNCN1cwSDlCRUFiWW94Tit3TGxGc040c21Q?=
 =?utf-8?B?cG1yWlBvbjJDdSs2bWEwTkNySVpWd0JvaS9hU3I0S1NiNWp4bTUySmxPQTlw?=
 =?utf-8?B?M0FSWkNqbjd5b29VbnczbXgvcGJxNFJ2SzBSNVQ1UkNMZ0pDZ2hUeGJ4NFN5?=
 =?utf-8?B?eCtCcnY0R29MWlVYdzFwcThWLytVbW9sOTdGN25vQWxTL1pacm9KREJDNzBD?=
 =?utf-8?B?OGtRSzFONFgzRWNUVXMrQmtka0ZEaFZkNElqTWZFR0RkOVQ3YkpOM284VUZQ?=
 =?utf-8?B?bG9YMEpSamY4emlqSjU5bEo5d2I3ZVFXQTRvZVFDeGpVeGdZc0UwWW1ySHpV?=
 =?utf-8?B?WXJtWis2d1JaRld2TjJSUWozRzBCaDFmWXBSbGpRSXR0RXJiN2QyTGFkeHFF?=
 =?utf-8?B?Mjl0SS94eGJnT2E0S1hZODJVV0VPOHA5bFpSaGdJUGpTaVp4dUY3bStBSmlH?=
 =?utf-8?B?eTh3emtEaFRaV29GdXlEemtacEtRcyt0SFJHeWU3QU5XMGNPRzdLcnFZR0JL?=
 =?utf-8?B?NWx0cnJzUU9BQmNZMXNmczRtM253RjB0VUp3b05mTEdIRlIzWmd1OFBldzNW?=
 =?utf-8?B?K2Z6bDhOM3dIeXIvV21DQ2tyWnJmUWxqbkJLV0ZOYUovV0svS3Q2UTNkTW5W?=
 =?utf-8?B?bGxYaSttbUpweEF0Z1I2L08va0lVNVN0a1ppK0gxUGJ3Y3Q3b2lpQmZmQ0Zm?=
 =?utf-8?B?NjdzbFZoWTJPS0dRVXZ0ZDJob3dXUmlFTjlwQXpWcksxWUp6dnVoYjc1c0RB?=
 =?utf-8?B?NzJHWDNpZnZ2VnVLd1kwcGIvOGtNYU9XUlJYVWgwaDB5SjAvVmRDOTV6VGha?=
 =?utf-8?B?T2tvUFZoanZIVVVxWVhYZEtNMXFpa1hPYmFLVE9pQUxJc1c0S2pCWkR3VDhF?=
 =?utf-8?B?d2FXZ1JoVzg2NnZ3TVEzelF2Y2RLcVEvcHRWc21qRHhmbDg1N05FV2hrNkl3?=
 =?utf-8?B?UGEydGtUSUIwUFBwd0VpRHFhQllqRVQ4b3d2NCtLd29DS2FQVGdwanBGRXZB?=
 =?utf-8?B?R0FWaVlJSU5LR2tjNW94dE15ODBxL0pqcGx0Zjh6QlRFUWxRcy9WMXhvcWk4?=
 =?utf-8?B?VHRDYW5Jdkg0cXVCNzgzZ3oyUHlKZHJlRDFWUlJKUEhEMzI5VGtISDlRWjB4?=
 =?utf-8?B?MlB1MDhNTHRVTkoxOFJxSDdQckxtdWdpN0l6dTBIdExidXNHS1F3N0tIMWhx?=
 =?utf-8?B?cnpzRis1MmhpbXkzQ0x6VWdYQXA3VWFhdzVJZlM0Y3UxcUlGK2k1ZGd6OGhp?=
 =?utf-8?B?S2ZLU3UyL2JOcnR2eThjNXA2YU1GQVZadEd4Qjd2OWtVdzg3c3ViSEpKOGdz?=
 =?utf-8?B?dlJSZXNXTnB5dmgvZlN5STQyT2F6VWUrUkFNS3A0Rm1RT0V5SEdEVW1ub2lN?=
 =?utf-8?B?ekFnRFIxZFVXbVYxZkVtMG9Fc1JxbTg3cVZ0WFFTL1FXMmJTQ0xlUHhZNE41?=
 =?utf-8?B?NUF0Z2dYanBsb3BYeW8zblVtUzZrMXo5cGdTbnoxdCtrdUFrTHh1TVU0bkJm?=
 =?utf-8?B?VjgwNHAvZHB5cFpIUmJvdnE1dkJ1RW45Wks1L0pDV1AvN0hoeWl1SlgwL1hB?=
 =?utf-8?B?RTVOWmhBa1dOdmRLaXJnUWtua01kRmY4NnhtZ1Q3cWxQdjlwQU9mZHBRSnRk?=
 =?utf-8?B?STNGbEgxcXE4TmRjcUNoWmRmdG43YW1Fa3NhQ3M2UXRhY1dHa0dLN1JPNExR?=
 =?utf-8?B?aEtmTE1XMWgrNEI1a2Joc0lWT3BMUEJoa1ZIWDlSSDRlN2Y1MCtudnF3bFpR?=
 =?utf-8?B?MisvLzVYMHgrYU8zcWV3SWlkcEdzVnA5aDk1SFpNZUFieTJyOEJONXd2VWY5?=
 =?utf-8?B?Qi9Va2pzaDFYN2dtSG5kSjViUytzTjJxODNIdnRkMlVFWDFvVEU2b2xXVWx2?=
 =?utf-8?B?SnpCbzY1Um53VWJJNHVHdk8walhkS0JMZjNmYUpMVjJLVUQ1M1Z6U1BsZ2hR?=
 =?utf-8?B?Vzl3Zk9odjU1RGg0clFIc0NMdStTWmR6REFqNlQxU1U2dlYyNlNUazh4aUh0?=
 =?utf-8?Q?XhDA=3D?=
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
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9640.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a2368ec-498d-47cd-6fc5-08dbffc05ec6
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2023 11:56:29.1320
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +tvkbQlKU5uRZitZcQYAlFKQnKipQ4L4k8DuWLYUtqBb7HFyp3ozlOL8i+Gfpmdp
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6898

SGkgRmFiaW8sDQoNCj4gLS0tLS3pgq7ku7bljp/ku7YtLS0tLQ0KPiDlj5Hku7bkuro6IEZhYmlv
IEVzdGV2YW0gPGZlc3RldmFtQGdtYWlsLmNvbT4NCj4g5Y+R6YCB5pe26Ze0OiAyMDIz5bm0MTLm
nIgxNOaXpSAyMToxNQ0KPiDmlLbku7bkuro6IFh1IFlhbmcgPHh1LnlhbmdfMkBueHAuY29tPg0K
PiDmioTpgIE6IHJvYmgrZHRAa2VybmVsLm9yZzsga3J6eXN6dG9mLmtvemxvd3NraStkdEBsaW5h
cm8ub3JnOw0KPiBjb25vcitkdEBrZXJuZWwub3JnOyBzaGF3bmd1b0BrZXJuZWwub3JnOyBzLmhh
dWVyQHBlbmd1dHJvbml4LmRlOw0KPiBrZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGRsLWxpbnV4LWlt
eCA8bGludXgtaW14QG54cC5jb20+Ow0KPiBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnDQo+IOS4u+mimDogUmU6IFtFWFRdIFJl
OiBbUEFUQ0ggMi80XSBhcm02NDogZHRzOiBpbXg4dWxwLWV2azogZW5hYmxlIHVzYiBub2Rlcw0K
PiANCj4gT24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgOTo1MOKAr0FNIFh1IFlhbmcgPHh1Lnlhbmdf
MkBueHAuY29tPiB3cm90ZToNCj4gDQo+ID4gUFRONTE1MCBjYW4gd29yayBhdXRvbm9tb3VzbHkg
Zm9yIG1vc3Qgb2YgdGhlIGJhc2ljIGZ1bmN0aW9ucy4NCj4gPiBJIGRvbuKAmXQgc2VlIGEgbmVl
ZCB0byBlbmFibGUgZHJpdmVyIGZvciBpdCBub3cuDQo+IA0KPiBXZSBhcmUgdGFsa2luZyBhYm91
dCBkZXZpY2V0cmVlIGhlcmUsIG5vdCBkcml2ZXIuDQo+IA0KPiBJZiB0aGUgUFRONTE1MCBpcyBw
cmVzZW50IG9uIHRoZSBib2FyZCwgdGhlbiBqdXN0IHJlcHJlc2VudCBpdCBpbiB0aGUNCj4gZGV2
aWNldHJlZS4NCg0KSWYgd2UgZG8gbm90IG5lZWQgaXRzIGRyaXZlcihlaXRoZXIgU1cgY29udHJv
bCBvciBwYXNzIGFueSBpbmZvcm1hdGlvbikgZm9yDQpQVE41MTUwLCB3aGF0J3MgdGhlIHBvaW50
IHRvIHByZXNlbnQgaXQgaW4gZGV2aWNlIHRyZWU/IEFub3RoZXIgcmVhc29uDQppcyBjdXJyZW50
IFBUTjUxNTAgZHJpdmVyIGlzIHRocm91Z2ggZXh0Y29uLCBub3QgdHlwZS1jLCBzbyBlbmFibGUg
aXQgY2FuDQpub3QgZ2V0IGJlbmVmaXQgb2YgdHlwZS1DIHN1YnN5c3RlbS4NCg0KVGhhbmtzDQpM
aSBKdW4NCg==

