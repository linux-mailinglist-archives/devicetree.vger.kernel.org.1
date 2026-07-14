Return-Path: <devicetree+bounces-326297-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KEVpAqhAVmrs2AAAu9opvQ
	(envelope-from <devicetree+bounces-326297-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:59:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2487556BF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 15:59:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=NXP1.onmicrosoft.com header.s=selector1-NXP1-onmicrosoft-com header.b=DS7kS6pI;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326297-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326297-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=nxp.com (policy=none);
	arc=reject ("cv is fail on i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 18F32300D4EC
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 13:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 702D947B434;
	Tue, 14 Jul 2026 13:59:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011070.outbound.protection.outlook.com [52.101.65.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE6F43FD2D;
	Tue, 14 Jul 2026 13:58:59 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784037541; cv=fail; b=EUdD7uXZcJFrdlx8Itu8VwvnbX9ObrB0vAvXGtPPyumx2xg6doCegZbIzV1sHkjeMDeLIaeEy5pjL6DcRubIsceg+57uJSOLbTENQGAFhvrCR8uqfpzLaiUzoMtpElTxTW0CDlfLSNzT/36gGyYvN5hxBTm68z1koPkPQDGh3w0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784037541; c=relaxed/simple;
	bh=vatnr4QZr+rOONyUcziOb/vVkHxJAlZmxPaPDfhcv2w=;
	h=From:Date:Subject:Content-Type:Message-Id:References:In-Reply-To:
	 To:Cc:MIME-Version; b=dWRFhmRASFiW3UK/vhOIthFHSSRc7FzQr+JDgEnJ/bl75J3PF77hEz8C6ikV7c3DxZIYuw3BR83TYvOEf86xz1URdsCaIImNpOqTjKhHkVd0+wFh9LTbepb3oL4dm0iinqIFlWsmwXiy03n4vRNVSqAkF9JFNqwniCw44xY6Eks=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=oss.nxp.com; spf=pass smtp.mailfrom=oss.nxp.com; dkim=pass (2048-bit key) header.d=NXP1.onmicrosoft.com header.i=@NXP1.onmicrosoft.com header.b=DS7kS6pI; arc=fail smtp.client-ip=52.101.65.70
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AFUpNbdUhK9Zrq/tH0Fkylwth2ic6WK4rEfgy4lpSVoRi93GIAz+PxgSOB4ujy4OFXd0jv/AMMqZLHiWvCGV5kxxcYzsW9w3BrvOz/m/AXBkr2VPHx043liAO8ziZMHDO4wHekOquaZgFKUslk4lSLyQB0vY5wxhumpRoU4NnLZABeRGGgUX0JWaTBtpEUnOJpNAkXDeaxniyuS2MCX/ykaEhDUPITZ+KX+HC2XR4c/JVf67b9Cnnd14WTuMIKnzeKCJJ8RxbTYEol27+100WcaSeSq/03y/HPt82yBh+bHXV0bJJdR69Ip2BmsGS5ILP+/Zrs3dZBNmDTj5oEiu/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y498CwEH4Hd7tEYrWzujJ+9WfTclhKUJb4zHpsucpgc=;
 b=qcj1W1+Xfp+LPY83nbPfMxRbrCplqIOVECGsiO2FI/hlfcOcYxD8QKbXjUyEDAQzW+UNy/iBaJJXiRFgZqs1InD5nB6ktj/Xa7NTA7KWb/yhnj8J3/vn//6pSDVbRqXRA479LvNKDzEk4QCaDglz2xDDOVJb+eSGlLcjnonGJzcAauDXsOHeD7qdl3ZPsWx2HsaR6DODpoW96aq3/se5keJong1ehfpdrbbMfvTaa1kQ+2f3SBtp9HBiw4fA4dDaVoo5rrSfse70IFzR325qAUnLbN+uW2UNFO6PXmtEOhLwdW4SEJJBAaEvl031KXGcTq2SfUJBB/h9iBlNrcPoTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com;
 s=selector1-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y498CwEH4Hd7tEYrWzujJ+9WfTclhKUJb4zHpsucpgc=;
 b=DS7kS6pIIkpWQxat4Ub3OgMjGQfoYEyONOt4SOtIK/ObwgSZJ3s2JqFfNcH2JWuWtVsRNm9SLg58k7DJcYTZbNcJdJqbNGYRwI5MlCCJpVhy5BmRFGIHKAI8jqOFEYkoz/cGL5+eNin7m2r/xHhwREkuq11Y+awfKAvwBW84aMZrDm7tati4/a2vTmwlrAdT3vE4d4WxT7RtbtWq/E+IsGL9hW6kvBLqFJEY3xvlKov9MJHtQvDltx1gqw6pSwzSzLBiQbMEnFSRkCOPoMTTVgQxmd/7AXnh+Pa4lwuOv9TokgUEzuSwn9DOmr7nG7c5A33CasvfHwA/HHaHBR5JlQ==
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com (2603:10a6:150:2cf::9)
 by PA1PR04MB10842.eurprd04.prod.outlook.com (2603:10a6:102:483::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.10; Tue, 14 Jul
 2026 13:58:56 +0000
Received: from GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c]) by GV2PR04MB11799.eurprd04.prod.outlook.com
 ([fe80::2146:83a2:5329:b7c%6]) with mapi id 15.21.0202.018; Tue, 14 Jul 2026
 13:58:56 +0000
From: Frank.Li@oss.nxp.com
Date: Tue, 14 Jul 2026 09:58:43 -0400
Subject: [PATCH 1/6] dt-bindings: lcdif: add compatible string for i.MX8QXP
 and i.MX8DXL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260714-dxl_lcdif-v1-1-6761a8a6592b@nxp.com>
References: <20260714-dxl_lcdif-v1-0-6761a8a6592b@nxp.com>
In-Reply-To: <20260714-dxl_lcdif-v1-0-6761a8a6592b@nxp.com>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jesszhan0024@gmail.com>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, Robert Chiras <robert.chiras@nxp.com>, 
 Liu Ying <victor.liu@nxp.com>, Frank Li <Frank.Li@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1784037527; l=1017;
 i=Frank.Li@nxp.com; s=20240130; h=from:subject:message-id;
 bh=bzc4APQL10NkhC1TKZMO7HoIT3rAD16SUD6eZTa3e5s=;
 b=p+DuSMmMfGl9GlvZAzfUtdnXxRg9XO5IJiYoHT0kkeixxfPNHhNDmjp0Vnb4KrEr5dVPlIV4Z
 9MxIcZbtiznBEncAMD6kdoH9d+7+jVnnnXAmDn7U4W4tWY7Wl1ynTQw
X-Developer-Key: i=Frank.Li@nxp.com; a=ed25519;
 pk=I0L1sDUfPxpAkRvPKy7MdauTuSENRq+DnA+G4qcS94Q=
X-ClientProxiedBy: SA1P222CA0032.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:2d0::13) To GV2PR04MB11799.eurprd04.prod.outlook.com
 (2603:10a6:150:2cf::9)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV2PR04MB11799:EE_|PA1PR04MB10842:EE_
X-MS-Office365-Filtering-Correlation-Id: 53b34e5a-e952-4681-d924-08dee1b00bd8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|7416014|366016|376014|19092799006|23010399003|1800799024|18002099003|22082099003|56012099006|11063799006|921020;
X-Microsoft-Antispam-Message-Info:
	Ff+c6JsJILW4JAhWp3p499ecyhQEkf1b3jcq9F1PicuXpBXPE8MW8LARtNviXK274mN+gujuvZIRRuWz0N5doeKXKahUrTF7vquw2CDNjgS3YLfQwea6LkQf9210JXjwL2NhDMejodaLB4MW5yN07XFHiBof5Epfto05OdKRGLWHAf6Lsv3A0KM+dC4Z4bVsw79GTwnbjTBXdV0YUeqWHWTy9R064xAd/omNoLqoUKWK5+g8ZL+SbHVSvNsDh7b21IffqEhe7Y0av2EEwoGuaYfJ5CT1YuVJ+vkePWsk6A8O5iiNG8pxcy1hBB96HH/F68jP3ykiloERp+V4jEdihGNcSI3kTZyzsAlZUOLvfKKIouFNqhCq2/Yla+E0K1WdAFwjADBnyAQNZ14T4hlTmaFkxroVdSC385ZKbQJHa8vUhRlTadsTbshNQtcEzTVAEsOoRj/2nH3d/QBZ2upx06Cczh0L69D3vrBhj5sdUWWCl4BDIm/HtqbzQJrhih8cm3M5+znqfQaVqp+LORIDS0aJGvK2t1ohJ0lwFEkMn1EmMj0OP+Wd1eIiFQUYvvC8lSz+7gz1nbSPQbBtXJtblaQc4m9JT7FfePGhthl9Bj4CZEy1JfJzIntjSoLAtFhQODip/P/R00nBbDQSAUMWYwN7+2br0NbBv+yQovfx5FebmfZJ1vXKyXmRlYkDVradahEG5CTClYVOlsdk8S2wDA==
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV2PR04MB11799.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(376014)(19092799006)(23010399003)(1800799024)(18002099003)(22082099003)(56012099006)(11063799006)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?NWdxdUk1WFltUnNRVyszUURXZTd1SEZOR3g3amVHbEU2enZrV2NGb1gvdDU4?=
 =?utf-8?B?NVdzaEJnc0wzWFdDRjd4WHlMZXB1WVNmL0JSeThWNmFFL2lhaHVBUnpSbnBQ?=
 =?utf-8?B?bTE0NW05czZnRzk1alhJVkIzeVMrWWZoa0hVcWh5NjJGNVhyNEovZ1g0ZVJr?=
 =?utf-8?B?eVFJb05xeFF0RFh2VXF0S05nNFl4THAzQTRhMENTdEgraDFtZFRXWFdsQTdh?=
 =?utf-8?B?RWNoMmgrOXViUlRaN085cmdPWGFiWGovaEpIN2hONkRYYWxFQzFMNHBoT1ox?=
 =?utf-8?B?SkJUVlIzcnVJb080YW02cHYyL3BzdVpQV2hhRmdPSkNMWmlYNzhyM1JvUEtU?=
 =?utf-8?B?UnZYczNQN29Dc1M0UFVPTFhkdDlnN0NHTlM2WHRGdXVhR2JCSTloeXoyOXVT?=
 =?utf-8?B?NUlaaWsvcEpncUh4SmpVWFdSNWlkWFc4NTEwbWlVcU4wajB5MHl6WnJyREVv?=
 =?utf-8?B?d08vdUQwY3A3T0RZMXpnamF6NFFybTZXZ2pSMmFnUENLR3VsVVBPN2tHR1Y0?=
 =?utf-8?B?Mlg0aWR5NTRHVWk5dDQ3anQzUi9tRUpvZDFKdGdRcW5zUDZqWURxMFBkNnpn?=
 =?utf-8?B?VnlmMFdzY0dSOVlDdE5oK3cyOUlaYWRud09SRzZqbnVsT1FLS3JGTm1MMGxE?=
 =?utf-8?B?bXRXS3FHeWtVblBtTjcyTVlNWmZmcWlPUVZJclB3Sy90VzB4MHBaZG5xTHNR?=
 =?utf-8?B?UU5zZ1ZKRGJBOUZQTXF4N29pTHZQZC9zbnV6dVhoMXE0ZXEzSHRUbnBtcWhw?=
 =?utf-8?B?SjNIYmxyVzN2MHhCTnk3SlVMMzQ4Rkh2N0cwMWNITTV4ejRmVmtua2VEdDlp?=
 =?utf-8?B?Z0YzTjRTdUxZMmRWSW1GRVQ5VVRBN0FSSm43M092WU9WalY2VktTeU1rc1lw?=
 =?utf-8?B?NjNJblNjdmRZMGNuVE1adHRMT0E1MURsU1ViNjRtN1B3bno0OHFOY05lYVJh?=
 =?utf-8?B?S2xqNndHZEFOeTNhS1FnSHdBUzVsVUR2U3NIMktyR29ReVZ0V21jLzNZVmJm?=
 =?utf-8?B?cWVzSTBqajZ1cDQ1NEV6L0RQNG92eUdEWFhsUzltRmY1T1NFeWc5RkV5ekxv?=
 =?utf-8?B?MEdtTC9lQ21Xd0NhZlVWbkRiaUZRM1JmTFVvaGt1bFl1M3FRS1ZvY3RpNnAy?=
 =?utf-8?B?a1Rkckd1TEdEMXdyRHd2UzB4aEFWSUdPdzMzUDVUY3dIWjNKOHdrYnhnQWZQ?=
 =?utf-8?B?bzNobmxhZkkzbmFBUHp1RWhpSVlpRHJ6azc1T1B1c2pxR1pxQnhxMkxOVGJT?=
 =?utf-8?B?cjRsK084R0kvWHgvT2c4eFVKRFpYeFRCdkZUeDBiV0pGUWo4dkRvQ051amlh?=
 =?utf-8?B?MWRxVk0rUHBLeEwzUFdWOTNCWGhzQ1g4Z2hobHZkdnZMNURkQzUxWlJ1WC9I?=
 =?utf-8?B?UVdFbG5JVWhqaVNtT3BGRXU3SVRrSFFhblhpYlNvTHRqQ3NIWEY3dGp3Q1hj?=
 =?utf-8?B?WlA3MFMzN2tjVGFsNnRwSTcvYmVaV1dDZHprRVJaQzdmR3UvTklJa2RjRE1p?=
 =?utf-8?B?dndsMmJrdnRxcElvRFVqM1dFSEVsS1dvcFRFaENUZ0k2bTZLMnNrMVhibVJI?=
 =?utf-8?B?Zkg4cUo2dlVTU2Vwd2NPeC9SMElpUXFUMW9hR3ozYUlaT1RCbVIzaDdxUWh6?=
 =?utf-8?B?Z002M3l2QWpLekJNYXE4dUdxUEJDMnJ2SFRKeWZranNXZlYyd1RtQS8waSs2?=
 =?utf-8?B?dm8vanJMWnEvRy9kd0FESHhhR0hrempwZnd3dCtZU28zdXZnMVhwMzM3bm1K?=
 =?utf-8?B?MDQzc1VVelZaWmlqaVJSVFk5N0YxdkpsZ3JiL2tGSS8wa3ZUR0dwdVVYa1Bu?=
 =?utf-8?B?YXc2RVR5eDRNcWp2cmNLd2phT0lvdGdWRTBOY1NFQWI4VkZlTndJT0ZIM2Ri?=
 =?utf-8?B?eC90b0JzN2lCUnZNQXFmZ2htblpGSWpMUDQ2OEdhaEh1Q0VtL2F6NjYvbUxw?=
 =?utf-8?B?ZGl4R1FuR0xNam9JOUJyTVcwc2JsV3M0TDkzdlFEcmJ0aHRUWG5TNHo1MGQr?=
 =?utf-8?B?N2NLN3F0cm4za0tGUEh1cWJrMmxmNGp0T2Q2RG1CVlhuYnFTandVRzJkTXIr?=
 =?utf-8?B?ZlpjWWRFQTU3aFl3RDdBYkpYSVlDcysvZ2hReldDdFlsdEFjMW1YY05Vb09q?=
 =?utf-8?B?ZUdFY2Z2ZGxGcFdBWUgza3QyLzZFeVVMS0RkY2s1QzQ3R08zcHlPWnQxUFpP?=
 =?utf-8?B?RURrY211NzZSWjFqcG9rOFFvTTRSRUwrR3ZEUzA1Zi91N2VYc0EvcTNKVVVC?=
 =?utf-8?B?UW5RWmZUNDl5bXQ4R1VscU16NDNudFpSenVvQ09uOWtSZ3dUTWc5d1FFOVZZ?=
 =?utf-8?B?YzJWZjNaL1N1S0xVMW1BYTJlQmZQdWQrR1N0dUp6U2dxdlBJd0F2bjJDVXFj?=
 =?utf-8?Q?pwD4j3RAvp3vvgwcZloLMp0wS5ODxY9C7c+t3?=
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53b34e5a-e952-4681-d924-08dee1b00bd8
X-MS-Exchange-CrossTenant-AuthSource: GV2PR04MB11799.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2026 13:58:56.5450
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BOpLbmCoUQoeEvh1sKMm0N66I/rWtrdfClhGNGDr7Wbx/LDvvDTkzhG/kkCWMqg7XGYRVmUPCtQicW0/F6cpizWH9R5D05w3dElte75iAaIh+2lV53BXn65kJ9jI5O5k
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR04MB10842
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.94 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_DKIM_ALLOW(-0.20)[NXP1.onmicrosoft.com:s=selector1-NXP1-onmicrosoft-com];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:marex@denx.de,m:stefan@agner.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:thierry.reding@gmail.com,m:sam@ravnborg.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:robert.chiras@nxp.com,m:victor.liu@nxp.com,m:Frank.Li@nxp.com,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-326297-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[Frank.Li@oss.nxp.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_TO(0.00)[denx.de,agner.ch,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,ravnborg.org,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@oss.nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[NXP1.onmicrosoft.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,nxp.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,oss.nxp.com:from_mime,NXP1.onmicrosoft.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E2487556BF

From: Frank Li <Frank.Li@nxp.com>

i.MX8QXP and i.MX8DXL have lcdif, which back compatible with i.MX6SX. Add
front compatible string "fsl,imx8dxl-lcdif" and "fsl,imx8qxp-lcdif", which
fallback to "fsl,imx6sx-lcdif".

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
 Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 2dd0411ec6516..121c1b220e698 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -28,9 +28,11 @@ properties:
               - fsl,imx6sll-lcdif
               - fsl,imx6ul-lcdif
               - fsl,imx7d-lcdif
+              - fsl,imx8dxl-lcdif
               - fsl,imx8mm-lcdif
               - fsl,imx8mn-lcdif
               - fsl,imx8mq-lcdif
+              - fsl,imx8qxp-lcdif
           - const: fsl,imx6sx-lcdif
 
   reg:

-- 
2.43.0


