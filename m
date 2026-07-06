Return-Path: <devicetree+bounces-321328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 78fpCzzQS2oAawEAu9opvQ
	(envelope-from <devicetree+bounces-321328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:56:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2612B712E43
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 17:56:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=Oe22bWa2;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321328-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321328-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B2A6F3122679
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 15:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553263911B8;
	Mon,  6 Jul 2026 15:28:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from MRWPR03CU001.outbound.protection.outlook.com (mail-francesouthazon11011018.outbound.protection.outlook.com [40.107.130.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E13DF389DE3;
	Mon,  6 Jul 2026 15:28:00 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783351682; cv=fail; b=SfGExVgR6BKEed90ew/cj6OtT/Zl+rmXD0sDB+nIYR4RgdsWfFnMPn+FIFQSsYxf7JZqNR4JEoCwnt/hir0ER5giacSh4GA6uYawnZAdYJH0ki5Nt5zh2/nFL/Csu+GgT39QSI+g2146UEpgA7pV2S9ixgvzp4NH+HCZ0a1eofo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783351682; c=relaxed/simple;
	bh=UZbsfh+8qOWbKOYDJa9SngKl4j17jRYoeTy53D4z2uI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=akrOxIJD43v1sXXw0t45HC3J57MHumAEaBWt4L2PpauV4kV9IVkPHOr+NoF7hubjkU6pDAVkMrm4vuSvaaEyLqn1EHtmD13tYP9PSlroS/SKw8QfQVBRq7aOtQhCz89kMucZkeapnDglFSrdaUCn+Fu5WcR9LZfZrlnxIHmFhPI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=Oe22bWa2; arc=fail smtp.client-ip=40.107.130.18
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gtQdL9RVP9mqMikWLTt5Ik4IntzWrJpkm/3IxKeP06okgpOo3zk/uErVslBV4uc0x7MIoTlJMfNbzphvmlZ74Q5bKXb10jVw5SvPOrni4Dsxdwp12r52SJdCj9jj2xrrd1AYIVEKJUV7fDHOav+ZFi+qC5kjcHx8eWlN9Hp1g4ZuqdnCej+aPmkRxokHR2HqMwINA0KxK7yiqIRwxOsW0zY9/KKeUM40SxM+8y0V3Z5wxjTz+d4zE12W+2o0NG8D90purK6ocamTnDg9F9euIznJI/c666LKT2nBIqcQHVlvuH0jC+6nxlibcqdv48o23aCul/ITto1BNZZFnOILIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eomb3JuyWkDvmD5FE1h5a+nV25tHrQe7LrxK41ZEy9U=;
 b=GZQiSlQsYGK4yTnBo6XNJr9lQV8kqIgrKN2N+jr7yApxrZEmkhq6RoBlNH4FFfv2HphxtR4BBKazjJXqhztRnl6TCLlt0PthKVj5D0x4Cjg15r6nCgrMkRtWOXkNDeoA93A13Kcyi0JdfpuSMsoLZ0QIT7ChUjLC8bTsVR8orouvEvpKjnPr8RnD2TZAyxbD1Ki8xpVmJPeQXRZawA5ckNKl2FI3wABBtwq9bOzFkBlVRxPuopx/acvfKPbVnZG30MXjKKO/t+U0Z6RtcCrEt6nFVDN9K7Rh8oKAZxgG5apoqRsGtRvM5Z8QG48XHEZ2AXgbuU6NSGJYLukWvWCQWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Eomb3JuyWkDvmD5FE1h5a+nV25tHrQe7LrxK41ZEy9U=;
 b=Oe22bWa2ePHahvQskE8LWxIhy3Zb7KsO8ZSpC5FM5ebZ8+Pi/iVp1rFmKWSMNYr9jx2htj2Lt+IhmClsXW6PVjLt8bC9iveF5/gAaYoH+DMvHUrdqotGxYVHaAfpKzLbgmfGD6Ng2BiyQr2Q2PRG7WxsdqCNB2NKNd/T5cYJKkqilC0sHTvuqNAxjsIyg6qFK8rvj9wvExURyja/vrxAMHJSPhr1wBCC8wNnrE9dQV7Q2T53oV3jl0O7vLMp8XylO0w06u3zINS1zeetMX3wkCt2y8ej3mWnzb6sthYSybay46kl7jxXSMiu1zRqNVj7uuY7cRL5l0r58uiYmmZODQ==
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com (2603:10a6:150:2cf::9)
 by PR3PR04MB7483.eurprd04.prod.outlook.com (2603:10a6:102:86::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Mon, 6 Jul
 2026 15:27:58 +0000
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c]) by GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c%6]) with mapi id 15.21.0159.007; Mon, 6 Jul 2026
 15:27:58 +0000
From: Frank.Li@oss.nxp.com
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.radaelli21@gmail.com>
Cc: Frank Li <Frank.Li@nxp.com>,
	pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Josua Mayer <josua@solid-run.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
	Maud Spierings <maudspierings@gocontroll.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	Hugo Villeneuve <hvilleneuve@dimonoff.com>
Subject: Re: [PATCH v6 0/3] Add support for Variscite DART-MX8M-PLUS and Sonata board
Date: Mon,  6 Jul 2026 11:27:38 -0400
Message-ID: <178335164745.1364211.8204247462803241878.b4-ty@b4>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1782898728.git.stefano.r@variscite.com>
References: <cover.1782898728.git.stefano.r@variscite.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PH0PR07CA0048.namprd07.prod.outlook.com
 (2603:10b6:510:e::23) To GV2PR04MB11799.eurprd04.prod.outlook.com
 (2603:10a6:150:2cf::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR04MB11799:EE_|PR3PR04MB7483:EE_
X-MS-Office365-Filtering-Correlation-Id: 832f3864-1dc5-4798-19ab-08dedb732837
X-LD-Processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
 BCL:0;ARA:13230040|19092799006|23010399003|1800799024|366016|376014|7416014|22082099003|18002099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info:
 /v2beoo8zTHnxZd+tbj40vxSYHDRLdSSHUn2bHZgduMCyaVWBc6H6MF3QCXAadJECEaEE6xHzOkvuR40Xe06fho9JMLk22IEuZ4w9UIHva95z1VhiAk8ctU0pNL18IY+DzMy+zc46PdXQrdxhnp6nTtjKqnTGoazQzJlIMDMVqd/LZRg1U3TfhZU/wpKHhJhunJRmDdHci65cg37Xd9jlwgFiWsqKK/ju1GNZMMw9MkqhRtDaCUOlX1B0YO2jBY6jJ7HcmdAMyc3yPXzjIrlkZVKdNYBS6djuoV7vMjxyANQlVpYHWrjOri2ErBG23jBe2IjFibPN74pPtUzc9mNg7TvGAsFgmxstukP4T00vg1bY3uoSX2DxiEImkiDzMkGK196sqj+e/Vemfy08Ov/0burXij4dPyKM00S1OQuldsXP0TY3QYrUp0Ei1clpQKNv/x4KLC8ERUGAtNwgKnt1UTtXLz289Yb87lF4g+9BnpT4Gg/AbcoaqoY1TjGBL1L8aLyuno9XW9X2HwLM6ISDpFK9WOIW3l88ipspEnWbY00yjGNm/hsmPYQch/bgV18Il1G71fbVu2fr/6Qxp1GenAOmmNq87isXlq5A7EO8xhJUigU7V9Urk+EyL18JVRi3cTvmaXZTb4iBByJuve8tZlqa/PmrUHnowJ+XI/njy4=
X-Forefront-Antispam-Report:
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR04MB11799.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(23010399003)(1800799024)(366016)(376014)(7416014)(22082099003)(18002099003)(56012099006)(11063799006);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
 =?utf-8?B?WTNtRmF0LzRVWUFMcHQxbzg1VEtlU3NIc0NIRXN0WkZrNDlzNDU5VE9mS3FL?=
 =?utf-8?B?UFh4VFNHSzZ1dDFCMnZoc2t5TUFMK2FLNkMvd3FjRk1RRWNZS25oLzlvYTh6?=
 =?utf-8?B?SExEZlRCc3NsbzJWek9lR09XN1pGdlAxS0xXL3orSlQ1cG55eFA3MGpDYmZh?=
 =?utf-8?B?b0NsejgzRXp3R0ZpemdiREVBNCt1TXdoT3NFSnhpMGlOVG1zc0NNdzczRjBx?=
 =?utf-8?B?UFYyZmFBWm5DSzBBSTJxNFgxK1pub1VVMDJwNVJzZDE4eERqaThjNThKMkl2?=
 =?utf-8?B?cFNQMzZrRFhyV2J4ZC9FWkFmeVJIZ2d5SEtIM3BjRm1CcmNVeG9QUDRsVjk4?=
 =?utf-8?B?VXBiZmRvbUt5S3ZXN0pKTW50ZTlzamN2dm11OGYrdlRPeTF3VFdML0JqM0RY?=
 =?utf-8?B?Rk5iaVdxR2JiSkFmRWZzSFlYalV0MTB1bXMwcnlrZGlhc0ZHaGNHRDQ1MEtm?=
 =?utf-8?B?TWhWSjViTE1nZlphK0EyWEt6Szh0Y2szbXMvcDNHRytXRVgrcmZLT0wrQTB5?=
 =?utf-8?B?Y1NQY21iQkptRTlLUFEyUVlPQlIwVkplcGN1YWNXVGpuWW5BYVprMk1LWTZz?=
 =?utf-8?B?RXU0SnQybnllOHgrNmswd2UwNzF4WUdyTGozelpjOW9XOXVxQWhlUUMvdjcv?=
 =?utf-8?B?dENhNWxsZm8rYWx3WVRqMUQ5K1MydHIvSWlnWGFPcWlweTRSTit0Q2d3QmNi?=
 =?utf-8?B?eVdiTTBKc2Z3RHZ2WWtweDVQVUZlSGEyYThhZ0NSeVZLYkZWWlY1TUNDMmtV?=
 =?utf-8?B?N1dmNlJzYzlpeTNiVGJjc0hjbHNaaUNsaEV4NDVYeFJWblc3cUNTcS90cjl4?=
 =?utf-8?B?dXVwRjA1VTN1c0pNVjhRQWJRbGVuRDM1cHFYU1BScEJyZHJCQWxtRForZE5y?=
 =?utf-8?B?YzE4RWs2c2pEbUFFMjF1dytZbXB0NHo0b2JqL1p4T2FHYVgzVmpuQWlaSXY2?=
 =?utf-8?B?eWlPeDllLzVjb0NvL3BLWkdOekREMHUxWWRiNU8vTldFNXV1Um8xWXEra3VN?=
 =?utf-8?B?SDRMZENkdmhNUUxxL3VacE5zRzFiOC9xS0oyaUNOVVgxLy96a05NeWF4QndJ?=
 =?utf-8?B?WjJCQjJDZS9HYmpGNkVXZ29kTWp5ZWpYVVJCVEdRMkl6anV5a2J4aEhBeWJo?=
 =?utf-8?B?UGhhU2plQ2ZMdTlhN05BTURtWlMrV2xBZTNITHdJWW5SdDRnQ1d1amJvQXNs?=
 =?utf-8?B?US9xTnc5UWhJWHplcmxWU3dPT3UreS91aGFyZkMxWDB1VjRscnNLY2xyZ2V2?=
 =?utf-8?B?VVBBeWxETXArK0pjaW1tQUllTnVSZ2ZEM2hQdmFYOXpJb0RlR1pzTkdYSWZ2?=
 =?utf-8?B?SGVWQjJaamdzMFhObXdoU09JWktKSlQvUWZBNjNIVFI5aUNPR0RJdmgrZDFB?=
 =?utf-8?B?RWZCUnZESU95K3Qyd1hpMm95RmgzUVhJVlBuMXhwaFBjekNoZFRlWmt5Rk9i?=
 =?utf-8?B?T2tCYmRkaVVNZjdmMDVXSUErM2lIMXdUOTdwTlhqZXRNL3V3anRETEYvamhr?=
 =?utf-8?B?M09Fb2NCNkNEWkNRZ0s3emQ5SU5JWERGWlZGYmFRUEtUVmVFRG5hTWRPVTFn?=
 =?utf-8?B?WFZmSGFqcHFBZDZXdFlaRjJiWGdXdDV3cm5SYmg0UGtBbjMwdnhSZmxHcHpF?=
 =?utf-8?B?VzF6V3FVS3JQRTUxMVVSL09HZkVSVUNRQlRqak9qcW45eHlldGN5V1lEMkNs?=
 =?utf-8?B?NzZFRkZrY2pRT2Z1OU1XRlI0NE82MC9qUVh1Vm45UkNVVXhBUUxNNFZ2eEU2?=
 =?utf-8?B?WThxbXZTUEhvY3Bwc3pSVDFYWDhkcktyOVRMRWtvZWxFNnBkUmRPLzZNRUl2?=
 =?utf-8?B?VW40WTdIb1pjbi9UUm56dlZySjhRQno0c0FiSUpMU29Oc09zK1E3Q3dMVXh5?=
 =?utf-8?B?cUdPek9qSzhxazh6S3BNZ1E1N1FHdDVWazFOenhJQlhKSFBnci9GYklKYkQx?=
 =?utf-8?B?T0c2T1NwL0pjNkdWUE42a3FkUStmQ1R4eTAybjBaWk9vVUdodzVnM1FPZXJ5?=
 =?utf-8?B?YkVXQUh0ajh5VjFWVnJ3anVxRGttOG95Rm85RDEzaGJRb1ZSdnIxN3NwUWNn?=
 =?utf-8?B?SzkvSmJKREFCMDRGUXpCNnl5Vmx0VFAzakdDcWZyY0grNnpwc3k2TEJTWWRv?=
 =?utf-8?B?NjV5QzNpdE9wNU13ZElvY3ZnREQzYnhwUGE3RUd3MGkvRFNCSG9OWTY5b1k3?=
 =?utf-8?B?WXhpOTFyZ280RU5kM0hmVHdLMndRZUxHTTNBeHBQeS9BelFtV1VNVHk1MWdT?=
 =?utf-8?B?TGFaMzFvQWVFZlNrYjBOM2pIcHVSdllRNXdIS0dTUDBRWFFNNVBZaVl4NnVz?=
 =?utf-8?B?cUxQT2F4czV1MnN0aFY0NGUrSDB6Ukg3K2FwK2VKbU1zVEQ1czdmNUNRWGdr?=
 =?utf-8?Q?TjLu+xyqG/RkwYEwAxDVk/np77PoKZba/aOWl?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 832f3864-1dc5-4798-19ab-08dedb732837
X-MS-Exchange-CrossTenant-AuthSource: GV2PR04MB11799.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2026 15:27:57.8748
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pLCZdVTkmIWSp70c7HATN4KW/9Yu0E6Jpzy0KEWtEf3iElHHE6yl5pD5ihu4+4C/A9nAc/4DkG/FDzwuwAhE3aaGpAECe6TyUF2EziQcTeVHrzmG/9aWRA20Hdw6fSFu
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7483
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:stefano.radaelli21@gmail.com,m:Frank.Li@nxp.com,m:pierluigi.p@variscite.com,m:stefano.r@variscite.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:daniel.baluta@nxp.com,m:dario.binacchi@amarulasolutions.com,m:josua@solid-run.com,m:alexander.stein@ew.tq-group.com,m:ernest.vanhoecke@toradex.com,m:maudspierings@gocontroll.com,m:francesco.dolcini@toradex.com,m:hvilleneuve@dimonoff.com,m:stefanoradaelli21@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@oss.nxp.com,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER(0.00)[Frank.Li@oss.nxp.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321328-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[nxp.com,variscite.com,kernel.org,pengutronix.de,gmail.com,amarulasolutions.com,solid-run.com,ew.tq-group.com,toradex.com,gocontroll.com,dimonoff.com];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.nxp.com:from_mime,vger.kernel.org:from_smtp,NXP1.onmicrosoft.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2612B712E43

From: Frank Li <Frank.Li@nxp.com>


On Wed, 01 Jul 2026 12:05:54 +0200, Stefano Radaelli wrote:
> This patch series adds support for the Variscite DART-MX8M-PLUS
> system on module and the Sonata carrier board.
> 
> The series includes:
> - SOM device tree with on-module peripherals
> - Sonata carrier board device tree with board-specific features
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: arm: fsl: add Variscite DART-MX8M PLUS Boards
      commit: 77c0d4cfd43353e8bdebc4eab8e579518e2dbf5f
[2/3] arm64: dts: freescale: Add support for Variscite DART-MX8M-PLUS
      commit: d08607aa231e026cd94b4c33077f8b8d28731952
[3/3] arm64: dts: imx8mp-var-dart: Add support for Variscite Sonata board
      commit: 41cd3d91ca8595f48cae5169ff8e4089c88670f2

Best regards,
-- 
Frank Li <Frank.Li@nxp.com>

