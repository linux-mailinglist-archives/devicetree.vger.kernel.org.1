Return-Path: <devicetree+bounces-115906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD599B143E
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 05:01:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51E3D1C2124A
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2024 03:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86844433A4;
	Sat, 26 Oct 2024 03:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="IKuvDbe4"
X-Original-To: devicetree@vger.kernel.org
Received: from DUZPR83CU001.outbound.protection.outlook.com (mail-northeuropeazon11013046.outbound.protection.outlook.com [52.101.67.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDFF217F2E;
	Sat, 26 Oct 2024 03:01:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.67.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729911703; cv=fail; b=QAp2SPNOKUHIV0ASlxlTYx7tj1Bbr780uV7vT2x0IAQHZ7DUjMwtqEdeBXgf8Epp0F/BVIKNov8zFfkn9piKuZXNKM8vA8Ws25O+bPsgWOjY9467gE6LTe8jalCpo2jNNAQ1wUpmT5XyExjR2wd8AFbJg1B+Y1PvYFvgOHXaGY0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729911703; c=relaxed/simple;
	bh=dzR8FeVgpWZmMkGLHBJ5cmKeGpSpgnIw9QKZLFpLEJY=;
	h=From:To:CC:Subject:Date:Message-ID:References:In-Reply-To:
	 Content-Type:MIME-Version; b=rNMOWBr4cVfdv7dTupYSn9LJCHlgJpTOm5ImYZACIe9aT8rYsZmThbdiHT7kqzjivcK1x1z1rf4GGxqHSmJ25ZjABAMehvhmdxAK8u6QbfBmPePRsR5p+tflP/8BV9Oo52SQ3wYqFSRU1fsC0m2cqpDfA5JddOYcSa5DxdN+EjI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=IKuvDbe4; arc=fail smtp.client-ip=52.101.67.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uUh3W8KwpzmbGTCIgH4uBgu7KuLCNN2kaLOguPlYEDmj+bCDepxzhM7R1d4Mbra39iNPp03h5JxZ3uTArzvM0i/J7AwZ+Cl9Xsq0ohVr2ry+7Tf236+t3p/LeYosbUomuHD1RcgVpDlD4bwxnP1ypIw6YaAIE27bD1R/M9DXEKgdQUtPnGb8jZVmnuLyAL+neABC1Y3VQ0YqwC6FOS5pQCdZ+Es7sc/cAj3N25emylsAh842WOzWLkZQl0EsYmMGoNVruFx/5eNMlB9Ve8mN3sPyMI5LDNDwFsgOtn0cKz2IlHyFna7FbeCazN7KJvQ87s4Igxs5qze4R2tXnnetOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dzR8FeVgpWZmMkGLHBJ5cmKeGpSpgnIw9QKZLFpLEJY=;
 b=WlupRyf8QluF/9cwZYPluAO00gC0BtpQL/Luz/xgdl6W2xVHGD8IhxboH/S+3Tw1XEIe7/yNGXej+NyJnxcA1WQdVqNKsJhAvxRV9MZ1ItpPudz1KfKl1VpW+zEwZ7/zpqWi3yPZW1rBV8qBOC5k/jrpfahHgq67H1LSjQ/7pRfwk3YANVhJ1Wumri3nati75GSqmiyw/iZaPbiJHXiNnx9ONL9vkZInKoeBoVLaik9tAHkSMVCUfbkUHV+VtDIbzX1QhITTZwkBwy1BozIGvzgNctmDGw5uFukQv9ciwopRBHRQbVG5nfIPfTrhRPbp1QQhs485NYAjANlzYw7Zjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dzR8FeVgpWZmMkGLHBJ5cmKeGpSpgnIw9QKZLFpLEJY=;
 b=IKuvDbe4i2Mc9+72z95KZx3uFjqpx58FtMEqm5uvUgvl4tVvERmjapFNsvgdGjl52cu6POk6+yY7VUOw7MObpe/GI3tA38ihDkXWYRONV+7bWrhSvb4c4xq024xK5NvWNgo8bygkPJytW3cNOrf98usH3eHkr1OApi/p2AP1j2gd8OoeGRQl6M3zm4vkVnTDZR2KLSznkbSdnCKyMUD+P7qNqBYl0OuUSQqM55lEoweMdsfR0lb+DEQ5MopybrhlTSY0otjK95DlCYy7ZT6VSHlb32QV4Rs/nkJD9njp0kPJslCKKNuVOxnQO3plz1KnLmcrWfenyo83dWqKLPWbcA==
Received: from PAXPR04MB8510.eurprd04.prod.outlook.com (2603:10a6:102:211::7)
 by PA2PR04MB10470.eurprd04.prod.outlook.com (2603:10a6:102:419::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Sat, 26 Oct
 2024 03:01:37 +0000
Received: from PAXPR04MB8510.eurprd04.prod.outlook.com
 ([fe80::a7c2:e2fa:8e04:40db]) by PAXPR04MB8510.eurprd04.prod.outlook.com
 ([fe80::a7c2:e2fa:8e04:40db%7]) with mapi id 15.20.8069.027; Sat, 26 Oct 2024
 03:01:37 +0000
From: Wei Fang <wei.fang@nxp.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
CC: Krzysztof Kozlowski <krzk@kernel.org>, "davem@davemloft.net"
	<davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
	"kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
	"robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Clark Wang <xiaoning.wang@nxp.com>, Frank Li
	<frank.li@nxp.com>, "christophe.leroy@csgroup.eu"
	<christophe.leroy@csgroup.eu>, "linux@armlinux.org.uk"
	<linux@armlinux.org.uk>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"horms@kernel.org" <horms@kernel.org>, "imx@lists.linux.dev"
	<imx@lists.linux.dev>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>
Subject: RE: [PATCH v4 net-next 03/13] dt-bindings: net: add bindings for NETC
 blocks control
Thread-Topic: [PATCH v4 net-next 03/13] dt-bindings: net: add bindings for
 NETC blocks control
Thread-Index:
 AQHbJEi1opWCvzFL8kS18Y10TWXurLKT6McAgAAQObCAAgF4AIABJnHAgAAKx9CAAEkYuoAA5gGg
Date: Sat, 26 Oct 2024 03:01:37 +0000
Message-ID:
 <PAXPR04MB8510B731B4F27B1A45C1792588482@PAXPR04MB8510.eurprd04.prod.outlook.com>
References: <20241024143214.qhsxghepykrxbiyk@skbuf>
 <PAXPR04MB8510BE30C31D55831BB276B2884F2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <20241022055223.382277-1-wei.fang@nxp.com>
 <20241022055223.382277-4-wei.fang@nxp.com>
 <xx4l4bs4iqmtgafs63ly2labvqzul2a7wkpyvxkbde257hfgs2@xgfs57rcdsk6>
 <PAXPR04MB851034FDAC4E63F1866356B4884D2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <20241024143214.qhsxghepykrxbiyk@skbuf>
 <PAXPR04MB8510BE30C31D55831BB276B2884F2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <PAXPR04MB85102B944E851C315F4C5BE1884F2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <PAXPR04MB85102B944E851C315F4C5BE1884F2@PAXPR04MB8510.eurprd04.prod.outlook.com>
 <20241025130611.4em37ery2iwirsbf@skbuf>
In-Reply-To: <20241025130611.4em37ery2iwirsbf@skbuf>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR04MB8510:EE_|PA2PR04MB10470:EE_
x-ms-office365-filtering-correlation-id: 43679171-e381-47d4-489e-08dcf56a81b2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam:
 BCL:0;ARA:13230040|376014|1800799024|366016|7416014|38070700018;
x-microsoft-antispam-message-info:
 =?gb2312?B?Qk5nSGNaSEY4aDhudk1mNTdrR0xBTzlnd2s0aVhEWDNJOHF0NmRZVytWQ3lQ?=
 =?gb2312?B?RjZQa0hSTG5YTzRsK3lXUnNTREVHbW9vS1pRWVg1dzZLbk9TY0Q1d21tUnVw?=
 =?gb2312?B?MFJhZjR4SGlnaEZqaVRwVVVqajJ4YVNYT1l3bXoyRTEzbjhCQVdSeU5UOHJs?=
 =?gb2312?B?NDQweHVJL051RGdkZ2REQXczUmJvcTVBN01PS2JZaVRzdVA5aGQ3WXZYMTJ1?=
 =?gb2312?B?aExvcHZ5NVpkeXNseUI5VEtTakwvaEt3SFRjdGMwUmp2YXE5dlRvYmNnMDJl?=
 =?gb2312?B?ZkdGa2hhZmdMZ0ZsL3BTUjNGN29VbWRRZGcvR3NkRHFwcmxJQm8rcm1KQmNn?=
 =?gb2312?B?VmpEY1dNb3lRNjQyc21XNSsyVWFYVFpSOEZlVDFydGRxYks1cGs3UmNFMFNO?=
 =?gb2312?B?MjNCazVrRmVQWGswOHQ3dkJLcW1KZVMrZ3ZxclFETDZtVUtxTVM5cSttSnpS?=
 =?gb2312?B?alVNTE14RVhHM3UxemFkMG5HUnVleFhwTlIwUUJzU3p6SzFRQy9ZdXptTkhT?=
 =?gb2312?B?UVVEK0UwQkFFekFBTldGME5zbnU2c0tpTlc1Y2JjWVJRbmZXSFJtNnFPQjl6?=
 =?gb2312?B?VnU4eHplZHVJTVVTeEx1bVMxM1F2ZWdMOWt1Rm9kV0k4eHpqSkRLenlaVW1i?=
 =?gb2312?B?bjZKTzdBL3BNRVh4TTFNdzMxSG4zRHI5WC9kM1hyRXhHQngxZ0g1WmFDR3dO?=
 =?gb2312?B?aE1ueW9YQzNtbyt5T01wamRUNlNwZFczR0dFZndqMDdML0M4OWk3c09PakM3?=
 =?gb2312?B?TE00Wm1pS2ZLNi84bzYrcW1EZG05QjU2QU4xN0FXSUZPUERQQnUwYUpyYWpu?=
 =?gb2312?B?N0QvSFFtWHROc09sSnoxY3NWYTJnNTBweFp4SWt4SHNYNFB6KzFULzhtMUJG?=
 =?gb2312?B?MlF3amtmb0pTRGlwS0ZobW5ENGdaSlI4V1l2cWtoWFl3eGx3SDlTWTlqS0lp?=
 =?gb2312?B?VXY1YnNRUmFVa3NLemZScFhUYXB4b2w3SzRDUTB2c3hCbzVkTDZ1Rmp5bjY5?=
 =?gb2312?B?WkJCR254c212dkw0OTFYZ2RleUZJZldtSXhkbm1FS1hrNGNrUEY1YitPUU5w?=
 =?gb2312?B?dStMbDlkZ1VZZGxxOXBuVjdjVUVSbjBEZGxtc3JQaHpwdmV3NklPL2N5ZDVB?=
 =?gb2312?B?cDdabmRtbWppbjhXd3NVMHZqcHd6dWhJcGVBYlZ1d0tEMjR6ZDNQM01mWjg3?=
 =?gb2312?B?OTdkem5YZXZTVW5KN21oRjNBa1kwMTJNM2tIay83ZCtwSTlNb0tWRXk5dDdS?=
 =?gb2312?B?N0tWeFhSTlBBWUZINGN2NTFZUXNoMjJ0ajcra0pQZzhhaDhyMGdSR0JnV2hG?=
 =?gb2312?B?NWJYdjRTMlpYU2xLcFB6ejZHbHhTZ1BnaVpBOWw3T0hTeWJzM3FKS2daZ3Bt?=
 =?gb2312?B?NjNPRFFrK3BhS0JzdkNvdFNRay9ZME04WWdEMTZmenZQN2hGR2NuTFhsQUFZ?=
 =?gb2312?B?M0RtQm9PU2svQ3NQWGNic1B3Z3lFU01Kb1YwSTRQZmdxcW5Bd1hWRFA1YXZn?=
 =?gb2312?B?NURDRGVrMTdId0RmK0pTQ0lHbXJudlpWd0RUTnpPZUV0Z0g1V3RLMzAzTXVv?=
 =?gb2312?B?TVJKYklVYjRPQ2JCa0htU2ZCVnJTR0RZc2JHSFZkSHRqRWo0Y3ZvRjZtTmdC?=
 =?gb2312?B?K1hhaVlvZWdwT1FaMUZjQkpRa1duNi8wMTJDdUQrYU1vQUk1OVRHTnIxMndy?=
 =?gb2312?B?TVNuTjNRZ0Y2ZWFDeGhKZDVQUUVFNHdpdGswVFlGUnNKKzBuVU04S0tSTGRD?=
 =?gb2312?B?cW1NTHdYYkpaT2FXcGx1akJvZUsxbUo5ZlpHa0dXbWxKVXNpVStSc2llbmRu?=
 =?gb2312?Q?4B+8pLEXS0BLIJlD10iHQ8nvvfo+ChtTmGikU=3D?=
x-forefront-antispam-report:
 CIP:255.255.255.255;CTRY:;LANG:zh-cn;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR04MB8510.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(7416014)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0:
 =?gb2312?B?TWJ0Y2J5eENlanZOYWdUdFFmN205T3AvMWZnUFNIRTZwVUYxd0pYNXdobHhv?=
 =?gb2312?B?c1RFR1ZSekpoUkNVUnZoM0MzeEJuTDQvamlmSS8wMlNuMXpPeGkvMlh2K3lE?=
 =?gb2312?B?VnVhMHJTeTlIQTA1RjBaUm10Z0M3NXFPSG5UVXc0YlFXdWdnQWdTM2RIMUNv?=
 =?gb2312?B?UmJHOXhvNUh0SnN2YnpybHM1Z1RmV0N2VGwvdEdLbFhzUWV4ZUs2dityeVA4?=
 =?gb2312?B?ZTZKbklVYk82eUUvckdCa0MvekExemlQcWtSNkRrb0c2YzQybVFRaEJSdFlM?=
 =?gb2312?B?VllWQ0RsV29QSzIyNG4vazBsSmpkZUpYM1pDS3hDbzNCZEw0WTRqRVcveUF4?=
 =?gb2312?B?MTR6ZW9QUUQyOFZhV09OeG44ZDNFcjFhSzdsbURHYWQ4S1VTaDlxRVlrWGox?=
 =?gb2312?B?NlhFRjl2a1BEamZDbUEvZW92SVFpQWcvaFZ2WlRNaEloUUJqMjVQa1lJUjJy?=
 =?gb2312?B?ZGMxb3lmck1EMzVlckJHNC9aaEJKNGZ5eTJ4Yk5YYzdMUGFiWG1tODJzaEVw?=
 =?gb2312?B?Sy96NXNYZTJ0VFBXclJ3bUlSOUxEaGVVTTlzUjZqZml2a0svamZaOThGa3F2?=
 =?gb2312?B?UHNSWkx6c0lZL1ZqcDBjMVhHYkErckVEYzlmRk1ta1p0L1RpcEtjb1V2UHF3?=
 =?gb2312?B?Q2RSdWxiRngxd3YzOE5PUlBkUEJUcmllRkpxNkxRSmxZdnVJWjVPQzduRUlh?=
 =?gb2312?B?cHd5dlFaWGxKVDBjUkpGY3dtZEFhdkhBY3I1UENmMnBydXBNbDdyeVI3blhz?=
 =?gb2312?B?cWt3M28zd2hHd1U2Q0VEV3ZSdkp2RDNxSmwyVkIzNXRLYUM5SG9NaHVFK1dH?=
 =?gb2312?B?VE03M0tnZ2ZzcjcvLzF0V1VBajhLcnpYQ3YvcStOMDA4Zy9VbkdSYUpOWXM2?=
 =?gb2312?B?S3lOVzdwZTdUeTlORzhIKzlNTDA1RUlhQU5rckdBTmdjU29TemhDL1djR2dr?=
 =?gb2312?B?b1B3aitRRGJ0MWRVUlB5VDhqNlZlL3hkSzZYN2UzSlJzVFNhbXJVM2ZFNkZm?=
 =?gb2312?B?Z085Yk9KMHljY3B0K2FCL3RkWGREZ2RKd2wxTGZ1QlBrVUoyVzFYMmw1eXgr?=
 =?gb2312?B?R25EdUtJd1pKSFFZVGlSa3JvQVRCQnBqeFdMdjcvaE5QZDZTWjFQUTBTM3RI?=
 =?gb2312?B?WXlrbUc1cGg1c2UxM2oyYk54TnRMNkZPRTF3TWx5L053eHRxWktPenJaUURL?=
 =?gb2312?B?NW1tUVVheFE3L2JHZS9SeE96aExlbnRiYyszanE1dnRUVG82eXM1VndPOHBI?=
 =?gb2312?B?QU5DYTlTQkhvQWg1UEt5TzFhVjkzK2YzQnhWOURQWnJBb296SUM4V2xON0wr?=
 =?gb2312?B?aHRpYjR0aDczczZ5OVQyWkkwS0FUbEFIK1dUY2NKZXdxNzdlQmtjdG5sUlBn?=
 =?gb2312?B?L3M3ZmxRaUd4YWNUTHhOVVJ1ZHdFVEpGSFJUY0ROUkRYL2ZpSTdEVVVTaTg4?=
 =?gb2312?B?RTVwWnFxTjU0UDVPSTZ3SE8veUpZa2dVTDFzcTVHUEM2SFBJRCt1RjRlRjNM?=
 =?gb2312?B?WFZ6NlI5aHhkWXVxL0V3aFM5UkVMZUxzQ3JtSXVjdFZSaFFhT3E1S2pISFgy?=
 =?gb2312?B?c0lLa095TiswZFZySHkwOHVHYkd5bWpyb1prYWluN3d1OHRRVUM5U2o2TDRO?=
 =?gb2312?B?SUVYRDhlN2hxTGh4VHFtRUhkU3orT0ZIc21mWHFHSEhnRXE3YkJWR1RrYTlW?=
 =?gb2312?B?b0xOMzBybTVHN2JwQm80aTRiTDhCV1U3UHJxV3VIMWpITUF4bzQ4SFpDTHRo?=
 =?gb2312?B?WkdxeFBGODNkcExndmowSUVXUnRpZG0wUmxrSlJGSEV2SHE2dTV6ZU02Z0ND?=
 =?gb2312?B?VUoyMWFBRVViTE9LVm1QVlVnNHY3YWVWS29wSGNXQ0hNMTJiZG9OUStpV05W?=
 =?gb2312?B?bUwvQmJTTXhkd1hVbkRPVURLeW9zQ1p0U3A0UllzL0ZlaWtOa3RQdHN2RG5a?=
 =?gb2312?B?RGthcnJrbW14YjVtL1ovM2dMY0dNOElmV05mOFd5Rk9idnM3UmJIa1lXZU1z?=
 =?gb2312?B?b0RDMzVyWGdlbi9oK2VzQk4rdnFOVjU2aFBNY1hKbUlxaTFNZHVUWWxXT0hT?=
 =?gb2312?B?Y2VmR1pZMnJZbS9HcTNSTktKM21STVNISXRPOWVWWDlPSFVnZDNobHRSdmli?=
 =?gb2312?Q?IKrA=3D?=
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR04MB8510.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43679171-e381-47d4-489e-08dcf56a81b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2024 03:01:37.0618
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LXV4TEKjkLHrlr8dadakywMYl4V27opzFMrrV8Ygpf/8LEApoKB1tXJH7SZXloJt6RKSz03M0969nAg86fHoUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10470

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWbGFkaW1pciBPbHRlYW4gPHZs
YWRpbWlyLm9sdGVhbkBueHAuY29tPg0KPiBTZW50OiAyMDI0xOoxMNTCMjXI1SAyMTowNg0KPiBU
bzogV2VpIEZhbmcgPHdlaS5mYW5nQG54cC5jb20+DQo+IENjOiBLcnp5c3p0b2YgS296bG93c2tp
IDxrcnprQGtlcm5lbC5vcmc+OyBkYXZlbUBkYXZlbWxvZnQubmV0Ow0KPiBlZHVtYXpldEBnb29n
bGUuY29tOyBrdWJhQGtlcm5lbC5vcmc7IHBhYmVuaUByZWRoYXQuY29tOw0KPiByb2JoQGtlcm5l
bC5vcmc7IGtyemsrZHRAa2VybmVsLm9yZzsgY29ub3IrZHRAa2VybmVsLm9yZzsgQ2xhdWRpdSBN
YW5vaWwNCj4gPGNsYXVkaXUubWFub2lsQG54cC5jb20+OyBDbGFyayBXYW5nIDx4aWFvbmluZy53
YW5nQG54cC5jb20+OyBGcmFuayBMaQ0KPiA8ZnJhbmsubGlAbnhwLmNvbT47IGNocmlzdG9waGUu
bGVyb3lAY3Nncm91cC5ldTsgbGludXhAYXJtbGludXgub3JnLnVrOw0KPiBiaGVsZ2Fhc0Bnb29n
bGUuY29tOyBob3Jtc0BrZXJuZWwub3JnOyBpbXhAbGlzdHMubGludXguZGV2Ow0KPiBuZXRkZXZA
dmdlci5rZXJuZWwub3JnOyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsNCj4gbGludXgta2Vy
bmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtcGNpQHZnZXIua2VybmVsLm9yZzsNCj4gYWxleGFu
ZGVyLnN0ZWluQGV3LnRxLWdyb3VwLmNvbQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IG5ldC1u
ZXh0IDAzLzEzXSBkdC1iaW5kaW5nczogbmV0OiBhZGQgYmluZGluZ3MgZm9yIE5FVEMNCj4gYmxv
Y2tzIGNvbnRyb2wNCj4gDQo+IE9uIEZyaSwgT2N0IDI1LCAyMDI0IGF0IDExOjQ4OjE4QU0gKzAz
MDAsIFdlaSBGYW5nIHdyb3RlOg0KPiA+ID4gPiBPbiBXZWQsIE9jdCAyMywgMjAyNCBhdCAxMTox
ODo0M0FNICswMzAwLCBXZWkgRmFuZyB3cm90ZToNCj4gPiA+ID4gPiA+ID4gK21haW50YWluZXJz
Og0KPiA+ID4gPiA+ID4gPiArICAtIFdlaSBGYW5nIDx3ZWkuZmFuZ0BueHAuY29tPg0KPiA+ID4g
PiA+ID4gPiArICAtIENsYXJrIFdhbmcgPHhpYW9uaW5nLndhbmdAbnhwLmNvbT4NCj4gPiA+ID4g
PiA+ID4gKw0KPiA+ID4gPiA+ID4gPiArcHJvcGVydGllczoNCj4gPiA+ID4gPiA+ID4gKyAgY29t
cGF0aWJsZToNCj4gPiA+ID4gPiA+ID4gKyAgICBlbnVtOg0KPiA+ID4gPiA+ID4gPiArICAgICAg
LSBueHAsaW14OTUtbmV0Yy1ibGstY3RybA0KPiA+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiA+
ICsgIHJlZzoNCj4gPiA+ID4gPiA+ID4gKyAgICBtaW5JdGVtczogMg0KPiA+ID4gPiA+ID4gPiAr
ICAgIG1heEl0ZW1zOiAzDQo+ID4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gWW91IGhhdmUgb25lIGRl
dmljZSwgd2h5IHRoaXMgaXMgZmxleGlibGU/IERldmljZSBlaXRoZXIgaGFzDQo+ID4gPiA+ID4g
PiBleGFjdGx5IDIgb3IgZXhhY3RseSAzIElPIHNwYWNlcywgbm90IGJvdGggZGVwZW5kaW5nIG9u
IHRoZSBjb250ZXh0Lg0KPiA+ID4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+IFRoZXJlIGFy
ZSB0aHJlZSByZWdpc3RlciBibG9ja3MsIElFUkIgYW5kIFBSQiBhcmUgaW5zaWRlIE5FVEMgSVAs
DQo+ID4gPiA+ID4gYnV0IE5FVENNSVggaXMgb3V0c2lkZSBORVRDLiBUaGVyZSBhcmUgZGVwZW5k
ZW5jaWVzIGJldHdlZW4gdGhlc2UNCj4gPiA+ID4gPiB0aHJlZSBibG9ja3MsIHNvIGl0IGlzIGJl
dHRlciB0byBjb25maWd1cmUgdGhlbSBpbiBvbmUgZHJpdmVyLiBCdXQNCj4gPiA+ID4gPiBmb3Ig
b3RoZXIgcGxhdGZvcm1zIGxpa2UgUzMyLCBpdCBkb2VzDQo+ID4gPiA+ID4gbm90IGhhdmUgTkVU
Q01JWCwgc28gTkVUQ01JWCBpcyBvcHRpb25hbC4NCj4gPiA+ID4NCj4gPiA+ID4gTG9va2luZyBh
dCB0aGlzIHBhdGNoIChpbiB2NSksIEkgd2FzIGNvbmZ1c2VkIGFzIHRvIHdoeSB5b3UndmUgbWFk
ZQ0KPiA+ID4gPiBwY2llQDRjYjAwMDAwDQo+ID4gPiA+IGEgY2hpbGQgb2Ygc3lzdGVtLWNvbnRy
b2xsZXJANGNkZTAwMDAsIHdoZW4gdGhlcmUncyBubyBvYnZpb3VzDQo+ID4gPiA+IHBhcmVudC9j
aGlsZCByZWxhdGlvbnNoaXAgYmV0d2VlbiB0aGVtICh0aGUgRUNBTSBub2RlIGlzIG5vdCBldmVu
DQo+ID4gPiA+IHdpdGhpbiB0aGUgc2FtZSBhZGRyZXNzIHNwYWNlIGFzIHRoZSAic3lzdGVtLWNv
bnRyb2xsZXJANGNkZTAwMDAiDQo+ID4gPiA+IGFkZHJlc3Mgc3BhY2UsIGFuZCBpdCdzIG5vdCBl
dmVuIGNsZWFyIHdoYXQgdGhlDQo+ID4gPiA+ICJzeXN0ZW0tY29udHJvbGxlckA0Y2RlMDAwMCIg
bm9kZSBfcmVwcmVzZW50c186DQo+ID4gPiA+DQo+ID4gPiA+IGV4YW1wbGVzOg0KPiA+ID4gPiAg
IC0gfA0KPiA+ID4gPiAgICAgYnVzIHsNCj4gPiA+ID4gICAgICAgICAjYWRkcmVzcy1jZWxscyA9
IDwyPjsNCj4gPiA+ID4gICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsNCj4gPiA+ID4NCj4gPiA+
ID4gICAgICAgICBzeXN0ZW0tY29udHJvbGxlckA0Y2RlMDAwMCB7DQo+ID4gPiA+ICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAibnhwLGlteDk1LW5ldGMtYmxrLWN0cmwiOw0KPiA+ID4gPiAgICAg
ICAgICAgICByZWcgPSA8MHgwIDB4NGNkZTAwMDAgMHgwIDB4MTAwMDA+LA0KPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICA8MHgwIDB4NGNkZjAwMDAgMHgwIDB4MTAwMDA+LA0KPiA+ID4gPiAgICAg
ICAgICAgICAgICAgICA8MHgwIDB4NGM4MTAwMGMgMHgwIDB4MTg+Ow0KPiA+ID4gPiAgICAgICAg
ICAgICByZWctbmFtZXMgPSAiaWVyYiIsICJwcmIiLCAibmV0Y21peCI7DQo+ID4gPiA+ICAgICAg
ICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Ow0KPiA+ID4gPiAgICAgICAgICAgICAjc2l6ZS1j
ZWxscyA9IDwyPjsNCj4gPiA+ID4gICAgICAgICAgICAgcmFuZ2VzOw0KPiA+ID4gPiAgICAgICAg
ICAgICBjbG9ja3MgPSA8JnNjbWlfY2xrIDk4PjsNCj4gPiA+ID4gICAgICAgICAgICAgY2xvY2st
bmFtZXMgPSAiaXBnIjsNCj4gPiA+ID4gICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmc2Nt
aV9kZXZwZCAxOD47DQo+ID4gPiA+DQo+ID4gPiA+ICAgICAgICAgICAgIHBjaWVANGNiMDAwMDAg
ew0KPiA+ID4gPiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJwY2ktaG9zdC1lY2FtLWdl
bmVyaWMiOw0KPiA+ID4gPiAgICAgICAgICAgICAgICAgcmVnID0gPDB4MCAweDRjYjAwMDAwIDB4
MCAweDEwMDAwMD47DQo+ID4gPiA+ICAgICAgICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwz
PjsNCj4gPiA+ID4gICAgICAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+Ow0KPiA+ID4gPiAg
ICAgICAgICAgICAgICAgZGV2aWNlX3R5cGUgPSAicGNpIjsNCj4gPiA+ID4gICAgICAgICAgICAg
ICAgIGJ1cy1yYW5nZSA9IDwweDEgMHgxPjsNCj4gPiA+ID4gICAgICAgICAgICAgICAgIHJhbmdl
cyA9IDwweDgyMDAwMDAwIDB4MCAweDRjY2UwMDAwICAweDANCj4gMHg0Y2NlMDAwMCAweDAgMHgy
MDAwMA0KPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgIDB4YzIwMDAwMDAgMHgwIDB4
NGNkMTAwMDAgIDB4MA0KPiAweDRjZDEwMDAwICAweDAgMHgxMDAwMD47DQo+ID4gPiA+DQo+ID4g
PiA+IEJ1dCB0aGVuIEkgc2F3IHlvdXIgcmVzcG9uc2UsIGFuZCBJIHRoaW5rIHlvdXIgcmVzcG9u
c2UgYW5zd2VycyBteQ0KPiBjb25mdXNpb24uDQo+ID4gPiA+IFRoZSAic3lzdGVtLWNvbnRyb2xs
ZXJANGNkZTAwMDAiIG5vZGUgZG9lc24ndCByZXByZXNlbnQgYW55dGhpbmcgaW4NCj4gPiA+ID4g
YW5kIG9mIGl0c2VsZiwgaXQgaXMganVzdCBhIGNvbnRhaW5lciB0byBtYWtlIHRoZSBpbXBsZW1l
bnRhdGlvbiBlYXNpZXIuDQo+ID4gPiA+DQo+ID4gPiA+IFRoZSBMaW51eCBkcml2ZXIgdHJlYXRt
ZW50IHNob3VsZCBub3QgaGF2ZSBhIGRlZmluaXRpdmUgc2F5IGluIHRoZQ0KPiA+ID4gPiBkZXZp
Y2UgdHJlZSBiaW5kaW5ncy4NCj4gPiA+ID4gVG8gc29sdmUgdGhlIGRlcGVuZGVuY2llcyBwcm9i
bGVtLCB5b3UgaGF2ZSBvcHRpb25zIHN1Y2ggYXMgdGhlDQo+ID4gPiA+IGNvbXBvbmVudCBBUEkg
YXQgeW91ciBkaXNwb3NhbCB0byBoYXZlIGEgImNvbXBvbmVudCBtYXN0ZXIiIGRyaXZlcg0KPiA+
ID4gPiB3aGljaCB3YWl0cyB1bnRpbCBhbGwgaXRzIGNvbXBvbmVudHMgaGF2ZSBwcm9iZWQuDQo+
ID4gPiA+DQo+ID4gPiA+IEJ1dCBpZiB0aGUgSUVSQiwgUFJCIGFuZCBORVRDTUlYIGFyZSBzZXBh
cmF0ZSByZWdpc3RlciBibG9ja3MsIHRoZXkNCj4gPiA+ID4gc2hvdWxkIGhhdmUgc2VwYXJhdGUg
T0Ygbm9kZXMgdW5kZXIgdGhlaXIgcmVzcGVjdGl2ZSBidXNlcywgYW5kIHRoZQ0KPiA+ID4gPiBF
Q0FNIHNob3VsZCBiZSBvbiB0aGUgc2FtZSBsZXZlbC4gWW91IHNob3VsZCBkZXNjcmliZSB0aGUg
aGllcmFyY2h5DQo+ID4gPiA+IGZyb20gdGhlIHBlcnNwZWN0aXZlIG9mIHRoZSBTb0MgYWRkcmVz
cyBzcGFjZSwgYW5kIG5vdCBhYnVzZSB0aGUNCj4gPiA+ID4gInJhbmdlcyIgcHJvcGVydHkgaGVy
ZS4NCj4gPiA+DQo+ID4gPiBJIGRvbid0IGtub3cgbXVjaCBhYm91dCBjb21wb25lbnQgQVBJLiBU
b2RheSBJIHNwZW50IHNvbWUgdGltZSB0byBsZWFybg0KPiA+ID4gYWJvdXQgdGhlIGNvbXBvbmVu
dCBBUEkgZnJhbWV3b3JrLiBJbiBteSBvcGluaW9uLCB0aGUgZnJhbWV3b3JrIGlzIGFsc28NCj4g
PiA+IGltcGxlbWVudGVkIGJhc2VkIG9uIERUUy4gRm9yIGV4YW1wbGUsIHRoZSBtYXN0ZXIgZGV2
aWNlIHNwZWNpZmllcyB0aGUNCj4gc2xhdmUNCj4gPiA+IGRldmljZXMgdGhyb3VnaCBhIHBvcnQg
Y2hpbGQgbm9kZSBvciBhIHByb3BlcnR5IG9mIHBoYW5kbGUtYXJyYXkgdHlwZS4NCj4gPiA+DQo+
ID4gPiBGb3IgaS5NWDk1IE5FVEMsIGFjY29yZGluZyB0byB5b3VyIHN1Z2dlc3Rpb24sIHRoZSBw
cm9iZSBzZXF1ZW5jZSBpcyBhcw0KPiA+ID4gZm9sbG93czoNCj4gPiA+DQo+ID4gPiAtLT4gbmV0
eG1peF9wcm9iZSgpICMgTkVUQ01JWA0KPiA+ID4gCQktLT4gbmV0Y19wcmJfaWVyYl9wcm9iZSgp
ICMgSUVSQiBhbmQgUFJCDQo+ID4gPiAJCQkJLS0+IGVuZXRjNF9wcm9iZSgpICMgRU5FVEMgMC8x
LzINCj4gPiA+IAkJCQktLT4gbmV0Y190aW1lcl9wcm9iZSgpICNQVFAgVGltZXINCj4gPiA+IAkJ
CQktLT4gZW5ldGNfcGNpX21kaW9fcHJvYmUoKSAjIE5FVEMgRU1ESU8NCj4gPiA+DQo+ID4gPiBG
cm9tIHRoaXMgc2VxdWVuY2UsIHRoZXJlIGFyZSB0d28gbGV2ZWxzLiBUaGUgZmlyc3QgbGV2ZWwg
aXMgSUVSQiZQUkIgaXMgdGhlDQo+ID4gPiBtYXN0ZXIgZGV2aWNlLCBORVRDTUlYIGlzIHRoZSBz
bGF2ZSBkZXZpY2UuIFRoZSBzZWNvbmQgbGV2ZWwgaXMgSUVSQiZQUkIgaXMNCj4gdGhlDQo+ID4g
PiBzbGF2ZSBkZXZpY2UsIGFuZCBFTkVUQywgVElNRVIgYW5kIEVNRElPIGFyZSB0aGUgbWFzdGVy
IGRldmljZXMuIEZpcnN0IG9mDQo+IGFsbCwgSQ0KPiA+ID4gYW0gbm90IHN1cmUgd2hldGhlciB0
aGUgY29tcG9uZW50IEFQSSBzdXBwb3J0cyBtYXBwaW5nIGEgc2xhdmUgZGV2aWNlDQo+IHRvDQo+
ID4gPiBtdWx0aXBsZSBtYXN0ZXIgZGV2aWNlcywgSSBvbmx5IGtub3cgdGhhdCBtdWx0aXBsZSBz
bGF2ZSBkZXZpY2VzIGNhbiBiZQ0KPiBtYXBwZWQNCj4gPiA+IHRvIG9uZSBtYXN0ZXIgZGV2aWNl
Lg0KPiANCj4gSSBtZWFudCB0aGF0IHRoZSBjb21wb25lbnQgbWFzdGVyIHdvdWxkIGJlIGFuIGFn
Z3JlZ2F0ZSBkcml2ZXIgZm9yIHRoZQ0KPiBJRVJCIGFuZCBQUkIsIG5vdCB0aGUgTkVUQywgUFRQ
LCBNRElPIChQQ0llIGZ1bmN0aW9uKSBkcml2ZXJzIGFzIHlvdQ0KPiBzZWVtIHRvIGhhdmUgdW5k
ZXJzdG9vZC4gVGhlIGNvbXBvbmVudCBtYXN0ZXIgZHJpdmVyIGNvdWxkIGJlIGFuDQo+IGFic3Ry
YWN0IGVudGl0eSB3aGljaCBpcyBub3QgbmVjZXNzYXJpbHkgcmVwcmVzZW50ZWQgaW4gT0YuIEl0
IGNhbg0KPiBzaW1wbHkgYmUgYSBwbGF0Zm9ybSBkcml2ZXIgaW5zdGFudGlhdGVkIHdpdGggcGxh
dGZvcm1fZGV2aWNlX2FkZCgpLg0KPiBPbmx5IGl0cyBjb21wb25lbnRzIChJRVJCIGV0YykgY2Fu
IGJlIHJlcHJlc2VudGVkIGluIE9GLg0KPiANCj4gVGhlIFBDSWUgZnVuY3Rpb24gZHJpdmVycyB3
b3VsZCBiZSBvdXRzaWRlIG9mIHRoZSBjb21wb25lbnQgQVBJIHNjaGVtZS4NCj4gVGhleSB3b3Vs
ZCBhbGwgZ2V0IGEgcmVmZXJlbmNlIHRvIHRoZSBhZ2dyZWdhdGUgZHJpdmVyIHRocm91Z2ggc29t
ZQ0KPiBvdGhlciBtZWNoYW5pc20gLSBzdWNoIGFzIGEgZnVuY3Rpb24gY2FsbCB0byBuZXRjbWl4
X2dldCgpIGZyb20gdGhlaXINCj4gcHJvYmUgZnVuY3Rpb24uIElmIGEgcGxhdGZvcm0gZGV2aWNl
IGZvciB0aGUgYWdncmVnYXRlIGRyaXZlciBkb2Vzbid0DQo+IGV4aXN0LCBpdCBpcyBjcmVhdGVk
IHVzaW5nIHBsYXRmb3JtX2RldmljZV9hZGQoKS4gSWYgaXQgZG9lcyBleGlzdA0KPiBhbHJlYWR5
LCBqdXN0IGdldF9kZXZpY2UoKSBvbiBpdC4NCj4gDQo+IEFueXdheSwgSSB3YXNuJ3Qgc3VnZ2Vz
dGluZyB5b3UgX2hhdmVfIHRvIHVzZSB0aGUgY29tcG9uZW50IEFQSSwgYW5kIEkNCj4gZG9uJ3Qg
aGF2ZSBlbm91Z2gga25vd2xlZGdlIGFib3V0IHRoaXMgU29DIHRvIG1ha2UgYSBjb25jcmV0ZSBk
ZXNpZ24NCj4gc3VnZ2VzdGlvbi4gSnVzdCBzdWdnZXN0aW5nIHRvIG5vdCBtb2RlbCB0aGUgZHQt
YmluZGluZ3MgYWZ0ZXIgdGhlDQo+IGRyaXZlciBpbXBsZW1lbnRhdGlvbi4NCj4gDQo+ID4gPiBT
ZWNvbmRseSwgdGhlIHR3byBsZXZlbHMgd2lsbCBtYWtlIHRoZSBkcml2ZXIgbW9yZSBjb21wbGlj
YXRlZCwgd2hpY2ggaXMgYQ0KPiA+ID4gZ3JlYXRlciBjaGFsbGVuZ2UgZm9yIHVzIHRvIHN1cHBv
cnQgc3VzcGVuZC9yZXN1bWUgaW4gdGhlIGZ1dHVyZS4gQXMgZmFyIGFzDQo+ID4gPiBJIGtub3cs
IHRoZSBjb21wb25lbnQgaGVscGVyIGFsc28gZG9lc24ndCBzb2x2ZSBydW50aW1lIGRlcGVuZGVu
Y2llcywNCj4gZS5nLg0KPiA+ID4gZm9yIHN5c3RlbSBzdXNwZW5kIGFuZCByZXN1bWUgb3BlcmF0
aW9ucy4NCj4gDQo+IEluZGVlZCBpdCBkb2Vzbid0LiBEZXZpY2UgbGlua3Mgc2hvdWxkIHRha2Ug
Y2FyZSBvZiB0aGF0IChzYXlpbmcgaW4NCj4gZ2VuZXJhbCwgbm90IG5lY2Vzc2FyaWx5IGFwcGxp
ZWQgdG8gdGhpcyBjb250ZXh0KS4NCj4gDQo+ID4gPiBJIGRvbid0IHRoaW5rIHRoZXJlIGlzIGFu
eXRoaW5nIHdyb25nIHdpdGggdGhlIGN1cnJlbnQgYXBwcm9hY2guIEZpcnN0LCBhcw0KPiB5b3UN
Cj4gPiA+IHNhaWQsIGl0IG1ha2VzIGltcGxlbWVudGF0aW9uIGVhc2llci4gU2Vjb25kLCBlc3Rh
Ymxpc2hpbmcgdGhpcyBwYXJlbnQtY2hpbGQNCj4gPiA+IHJlbGF0aW9uc2hpcCBpbiBEVFMgY2Fu
IHNvbHZlIHRoZSBzdXNwZW5kL3Jlc3VtZSBvcGVyYXRpb24gb3JkZXIgcHJvYmxlbSwNCj4gPiA+
IHdoaWNoIHdlIGhhdmUgdmVyaWZpZWQgbG9jYWxseS4gV2h5IGRvIHdlIG5lZWQgZWFjaCByZWdp
c3RlciBibG9jayB0byBoYXMgYQ0KPiA+ID4gc2VwYXJhdGVkIG5vZGU/IFRoZXNlIGFyZSBvYnZp
b3VzbHkgZGlmZmVyZW50IHJlZ2lzdGVyIGJsb2NrcyBpbiB0aGUgTkVUQw0KPiA+ID4gc3lzdGVt
Lg0KPiANCj4gTGV0J3MgY29uY2VudHJhdGUgb24gZ2V0dGluZyB0aGUgZGV2aWNlIHRyZWUgcmVw
cmVzZW50YXRpb24gb2YgdGhlIGhhcmR3YXJlDQo+IGFjY3VyYXRlIGZpcnN0LCB0aGVuIGZpZ3Vy
ZSBvdXQgZHJpdmVyIGltcGxlbWVudGF0aW9uIGlzc3VlcyBsYXRlci4NCj4gDQo+IEknbSBjb25j
ZXJuZWQgdGhhdCB0aGVyZSBpcyBubyBwYXJlbnQvY2hpbGQgcmVsYXRpb25zaGlwIGZyb20gYW4g
YWRkcmVzcw0KPiBzcGFjZSBwZXJzcGVjdGl2ZSBiZXR3ZWVuIHN5c3RlbS1jb250cm9sbGVyQDRj
ZGUwMDAwIGFuZCBwY2llQDRjYjAwMDAwLg0KPiBJIGRvbid0IHNlZSBhIHN0cm9uZyByZWFzb24g
dG8gbm90IHBsYWNlIHRoZXNlIDIgbm9kZXMgb24gdGhlIHNhbWUNCj4gaGllcmFyY2hpY2FsIGxl
dmVsLiBJZiB0aGUgZHQtYmluZGluZyBtYWludGFpbmVycyBkbyBub3Qgc2hhcmUgdGhpcw0KPiBj
b25jZXJuLCBJIHdpbGwgZHJvcCBpdC4NCg0Kc3lzdGVtLWNvbnRyb2xsZXIgbm90IG9ubHkgY29u
ZmlndXJlIHRoZSBlbmRwb2ludHMgb2YgdGhlIE5FVEMsIGJ1dCBhbHNvDQpjYW4gY29uZmlndXJl
IHRoZSBFQ0FNIHNwYWNlLCBzdWNoIGFzIHRoZSB2ZW5kb3IgSUQsIGRldmljZSBJRCwgdGhlIFJJ
RA0Kb2YgZW5kcG9pbnQsIFZGIHN0cmlkZSBhbmQgc28gb24uIEZvciB0aGlzIHBlcnNwZWN0aXZl
LCBJIGRvbid0IHRoaW5rIHRoZQ0KRUNBTSBzcGFjZSBzaG91bGQgcGxhY2VkIGF0IHRoZSBzYW1l
IGhpZXJhcmNoaWNhbCBsZXZlbCB3aXRoIHN5c3RlbS1jb250cm9sbGVyLg0KDQpJZiB0aGV5IGFy
ZSBwbGFjZWQgYXQgdGhlIHNhbWUgbGV2ZWwsIHRoZW4gYmVmb3JlIHBjaV9ob3N0X2NvbW1vbl9w
cm9iZSgpIGlzDQpjYWxsZWQsIHdlIG5lZWQgdG8gZW5zdXJlIHRoYXQgSUVSQiBjb21wbGV0ZXMg
cHJvYmUoKSwgd2hpY2ggbWVhbnMgd2UgbmVlZA0KdG8gbW9kaWZ5IHRoZSBQQ0kgaG9zdCBjb21t
b24gZHJpdmVyLCBjb21wb25lbnQgQVBJIG9yIGFkZCBhIGNhbGxiYWNrIGZ1bmN0aW9uDQpvciBz
b21ldGhpbmcgZWxzZSwgd2hpY2ggSSBkb24ndCB0aGluayBpcyBhIGdvb2QgaWRlYS4NCg0KPiAN
Cj4gPiBBbm90aGVyIHJlYXNvbiBhcyB5b3Uga25vdywgbWFueSBjdXN0b21lcnMgcmVxdWlyZSBF
dGhlcm5ldCB0byB3b3JrIGFzDQo+IHNvb24NCj4gPiBhcyBwb3NzaWJsZSBhZnRlciBMaW51eCBi
b290cyB1cC4gSWYgdGhlIGNvbXBvbmVudCBBUEkgaXMgdXNlZCwgdGhpcyBtYXkgZGVsYXkNCj4g
dGhlDQo+ID4gRU5FVEMgcHJvYmUgdGltZSwgd2hpY2ggbWF5IGJlIHVuYWNjZXB0YWJsZSB0byBj
dXN0b21lcnMuDQo+IA0KPiBJIG1lYW4sIGlmIEkgd2VyZSB0byBsb29rIGF0IHRoZSBiaWcgcGlj
dHVyZSBoZXJlLCB0aGUgaHVnZSBwcm9ibGVtIGlzDQo+IHRoZSBTb0Mgc3VzcGVuZC9yZXN1bWUg
Zmxvdywgd2hlcmUgdGhlIE5FVEMgcmVxdWlyZXMgTGludXggdG8gcmVjb25maWd1cmUNCj4gdGhl
IE5FVENNSVggaW4gdGhlIGZpcnN0IHBsYWNlLCBiZWZvcmUgaXQgYmVjb21lcyBvcGVyYXRpb25h
bC4NCj4gVGhlIHVzZSAob3Igbm90KSBvZiB0aGUgY29tcG9uZW50IEFQSSB0byBhY2hpZXZlIHRo
YXQgKGF2b2lkYWJsZQ0KPiBpbiBwcmluY2lwbGUpIHB1cnBvc2Ugc2VlbXMgbGlrZSBzcGxpdHRp
bmcgaGFpcnMgYXQgdGhpcyBwb2ludC4NCg==

