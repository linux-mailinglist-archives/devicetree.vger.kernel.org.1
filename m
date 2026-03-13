Return-Path: <devicetree+bounces-275455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iKPEBdJCtGk4kAAAu9opvQ
	(envelope-from <devicetree+bounces-275455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:01:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC19287B7E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 18:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E0A28306A57E
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93D583CA498;
	Fri, 13 Mar 2026 16:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Ni2SgW9S"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011044.outbound.protection.outlook.com [52.101.65.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C8F39A04F;
	Fri, 13 Mar 2026 16:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773420990; cv=fail; b=bkNpJDTrZV6J8KoC28ndod89CJnYaGD88ooRKrUfx6oaQy5y4OLV1AUOOwDqXJomuWw8cLi8t94o2Uw6CiKJ8GhEQLTBl3cShu/+AGzn+FGYR3hAY+bbnndtzEI3FXNm9+UWqitUtmO4c9hAy/OBpLPzs9ksnMf3x809RnD6OPY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773420990; c=relaxed/simple;
	bh=yzAX/m14hAFWr+BK/GHrfdhZMZKVkldjh8AkYnfraqI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 Content-Type:MIME-Version; b=uE9ucCkYE+0etSj8nbEMy6N0nK9y5JnN2G9AAmK67whBKeppx9GiN86f2cH/QBV32LWHUXBsVpRQ/+5gt0uhgCRU0p3ruhgkrtvcGefSFRKgT4sx7MvgmGIsVmQ/wGdVYk+YhtFZ18LnqMxwMK4vTgLJ3GJu+UddVVR3CaAxCsA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Ni2SgW9S; arc=fail smtp.client-ip=52.101.65.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DS+cqvOgVHysb6Y/BhcCeZWAAD4L49LB/R1Po6EfTmOJKljXux+xHNkNBwKJE/sYyV6+H7lblb8ZvEHLsO1niIBO7vV0PcKPu0qBgxN8n8FSYk0X1I4XbhMnn5lZup0XYfuxhe/bZXgawzk2FCfwr19kIJvUDvyl15pV3FL02DR/FJqt5+9tFatIfZcnnxrnBgcGx5VUYlJyTxps+4QSOfg3VfAblFMUgcnE40yLrFdBFRc/bmC7yk/GCnametAs295hkRYg4StyoJW77JsS4Rl2h8JeyAz5RwqoqKDhqOKahwA3hGe90/k0F8TtqTjYfJ4XuaA+cI3l2oI/qs8Iyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TdO6XLVKiIh2ACrZ/S0dmVyZfIKxxarxZNch05oPg9s=;
 b=U8KrGAxjv3PVj0IK8+9j7pEghhgypPhMlAViWEp2qWzDklgYpo6JfSBWrun1WDN0FK/kjOzZnJH7lN96JHunETjAY1FFB4IuZzTPyRSXkFgLp4hI1ZxFDDv5ri4mt6gD/vP10oEAjOB36ZSqxQL2GZEgE2BuXgNAGXBii5aWWnVNK6KFs8CJ29N6Ss3FJFyqST/MYGIXaI4GJVM6S7en57Cah9tEPJTZpmkORr3qHuo80EbHCHYaq8K/YKrN8sl167UbRq4xRygdYfNZFzb02Qg5aM9Yn7BnaoQXl7FahaclwvxdVzilBsppGveT7XskCq0UVMM+Jus2p8B5ThY8mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TdO6XLVKiIh2ACrZ/S0dmVyZfIKxxarxZNch05oPg9s=;
 b=Ni2SgW9SVKna6jn1ahZv8EE0s/vhtilBZ6ASbd+Vu5EqLBzbLlFpKN7IwzTRCAa30fh/SGEvuERC1t4XhQD1I6ghj/LaLW9EjvrX+iuFskspNwtgKkbUqEVEhYm6vatZ4HESyohuJ+Fb2QT27YU9Yr1YzXzBLFjdaDQep7GJBqWzFoVAVcUc9JEyRksiKCkfhb2M5hymsze+DjB6N55S0Zze18j2XjuAQ/k4K1Tdt1UHS5KMZZnVjhdPCyd+R+2v7Lwh91jESxERpiKP5P3Mn4AAX0j4/26rqJoLtI/GlDxdpPeYULjRw1BjSQaDXNzXlTu53n5k3d6a+mhLOKCzsw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DU2PR04MB9082.eurprd04.prod.outlook.com (2603:10a6:10:2f1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.22; Fri, 13 Mar
 2026 16:56:26 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 16:56:23 +0000
From: Frank Li <Frank.Li@nxp.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux@ew.tq-group.com, devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260313070226.579939-1-alexander.stein@ew.tq-group.com>
References: <20260313070226.579939-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH v2 1/5] arm64: dts:
 imx8mp-tqma8mpql-mba8mpxl-g133han01: Remove compatible from overlay
Message-Id: <177342098414.137600.1900125768491824282.b4-ty@nxp.com>
Date: Fri, 13 Mar 2026 12:56:24 -0400
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-ClientProxiedBy: SA9PR03CA0019.namprd03.prod.outlook.com
 (2603:10b6:806:20::24) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DU2PR04MB9082:EE_
X-MS-Office365-Filtering-Correlation-Id: e1352461-8f1e-4a83-7699-08de81217539
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|19092799006|1800799024|366016|52116014|7416014|38350700014|56012099003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info:
	zxLb9vtkQ9SqcArJQH/9lpUFImybfODTibHUywfZ7Vs8uIbMWJnqTM/IuXNgT9s8jyYCWjGAAmGbbC2p47cy1w+yN92leCPC0Ay0C9yPvHom8owocrRWSdWdlUXIr/x8V8e9K9QTARhui+8K3bWl0cp5eVI8b/bpCxGjj9onP48vXJ51mk4BjO7pTYr6lzgz84HYbfXRZNTxM9CNXRHSYyeHHLPbTFMwweejNqJsKVTFg+q/grWQKM9dhM01/3EYcKXfZu9a2O1xe4HmlRBDZ2Q5XPwVB3O4BrKt99R+3UZ8wAH8gqvfRfquh4amIWB5xgTdTGWSZjAm8OOn8V64w03DfjfrY7s4tVmeR2aimoLGODtJZ8BkibubxLrm8ikkaWjU3voGuVKPKaiyQi5bwA9JgcPG5HlSAghkgMpDb0hJPx62rOmDzVER90zQxV8dsoAgKoiajnpBnzn1VI2L5lrKJ4vCAX34Ln95Ymdg5uvwfLyHyA9EkuZreYLkmf43VXLFgjW5OvkV6wH0rN81ECWjcx3ow2gARH7+DzjYycK/kpbMfGLY9ooOfa1mqBVsKaEmPqT4kYWnaNTtbo3Kt7bE19sVg5x2PR5kFPDGzPLObfEOjxykyxgADsFn0nM2Ita6rEKGYc2af/Qtc0JGxmNnc/oKd/M8zOgEIAWSNKFORW5zQSijT3K/4BiPNeebl7HAWR1kDWymoMbZ2y1/P/x7guT8zWh+neSBgNbThT5RRseJAWCd8jr+eiqX2mrm816LcSx0r2pgdKdMC1tjVK9pozHQpWy8LdxqnYa9VtY=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(19092799006)(1800799024)(366016)(52116014)(7416014)(38350700014)(56012099003)(22082099003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?aDIzVENGbUJQY3VGVE1ENFdOaG9KNEU4R1lscEkyakZRK1l4OWM5ZUNOZnZH?=
 =?utf-8?B?Q1lJakVYTkdXNUdOOHMzWHVQMVdYVThweTIzSG9OdjNjK0xrRWJsRDJpQXBs?=
 =?utf-8?B?Nk1LSnBDOEs4ZmtsWlk3MllDUkJqN0NOWXg4dG9pK2VDY0MyYWRYMXZEY2Rs?=
 =?utf-8?B?TDcvOFp2T2NVV21JVFo1SXNVZXc0S3NPOTllVTVKVHYvTXZTSEQ2Zk42aXFS?=
 =?utf-8?B?ZWNtK2ExSHkzM1BWOU96d3JvUUwrTFlZMjdPT3ZLalBqZEJUdGI2SHhGNzdS?=
 =?utf-8?B?NHZzQjZSektjNmlDOFlWTXh3aEpGZHFhbStUM2VaK0tZZ3E5bEVFZHJnTkpM?=
 =?utf-8?B?VWVhVzY5OEV0L1hTVGNwdnpGZUdIaWYraS9DM1QwMHdIMVJhZkRFRWlpd0R4?=
 =?utf-8?B?c0JUUnM1WWR6K09SYytJczAvdm9uRVV4bUZyYWEzSUlsT2dJTzdvdE1jVVpM?=
 =?utf-8?B?Z1NSN0xQM2h0ZlNudy9hZEtFQ1haeURjMjFPNDlMV0VuOTBhcHRkblRyeFps?=
 =?utf-8?B?dTZvVUp6Z205SEdrbHlZZlVqQ2tBRHdvNjFyVkJlRlFiWmxDVEFmUlJlQ2xB?=
 =?utf-8?B?K253RzBnSzBubTd3Y1ZUd09rMGlYaDFXYytvbmUzYUtVUXZ1d1U2VytTYkk0?=
 =?utf-8?B?UytTaTBHYlovUnBoTERmU1VQSTFEMmRrTlI2amNMNUNNMk95Sm5MRlFyc2lG?=
 =?utf-8?B?ZWNONUtXMUwvZG40Nk1BR0swVElmQm1wNVpPRXNUbVpXTFN4VFZYQ05tVnZa?=
 =?utf-8?B?UVZxVFI5S1M1RmhuVzFCVUowbWlvWXZCQlRNeGNEWUMzVldreXFrTitxSmZy?=
 =?utf-8?B?bWo1RnU5c3N0YitKTjRCZU5mQ0g2VXovSi96R281cDVsTStaQ2JKdzJjN1Iv?=
 =?utf-8?B?d0RYVktPYWNZQlVYVUJKN1lpelJ5cmhpWjdjRURLV3UrNUMrS1BPSlU0cjJ6?=
 =?utf-8?B?RnoxS1JtUUhJWHlDT2tJTHJPMVM5WnJsbmJ3R1lZRU0zbHA4ZmhHSU8zc016?=
 =?utf-8?B?WDNScTRpYi9EUkJlbDJoZ0x2WmdKbG5rdlNMcXlZTXBNdlhNQ1MyazNvS0lr?=
 =?utf-8?B?RVNGZDF0RWFrQlpBUW1aMUVJV2FaTzVKWXlKMFl0c2NzaHFPb1VHU05XMDcx?=
 =?utf-8?B?NjNaK2NDSWRHOUxmUmxEWHZZU25Cd0piSThjNVU5aFh1aWJGcmx3Zk93NmNR?=
 =?utf-8?B?Q003WWd5elRuZTlhdVc0a0xsZTFKZDZackwrWVdWSnVhbmlKQXB3TWhsczBY?=
 =?utf-8?B?cEJ6UnBWZFVEQnpRQWthaFVkVFBMN3MwK0JLYjJsd3FRNXFHYjh4MTJvb3Jt?=
 =?utf-8?B?WWFZTDdVSlYwT3hZZmJ3V1VoSTJoWU9hS01hME11am5GaVdvbjdqV0x1UXA3?=
 =?utf-8?B?QUw0Z1Z2d0J6Q1NEcGxiai9WQ3lFenJ0VGRGYUluWkp3Z3pSVFkxWHVBYWZB?=
 =?utf-8?B?TnFUekVCcnJqYXFDL1plb1ZKQnBSeWlrV1dYODd4WWVBaXBISDNGNVFMRDFj?=
 =?utf-8?B?ZmVrY1cwaTRZSWhEVWFUc0NibDREMGQrYnFOOGlkMVFOU2RyRmdMTFdHMm5h?=
 =?utf-8?B?OVk5L09od1lqeENFenpkVGFEWURlMHlwbHBXY2F5M1Q4dy80LzdqNVYwanR4?=
 =?utf-8?B?YlVlVHpUdWJReU9sTEYvQnVoelpzb0YwaXk3NVYrNE5uSDM1VUFlYmUvdzhB?=
 =?utf-8?B?ZmdrSXdkRjJyWDRicHFpTmhoWWxMZm5GUzg1UythMU1FenZFcTByZkFyTlNE?=
 =?utf-8?B?bjNLWjFDM3MvTlI1bDJhUEIwcW1UU2lzS3NMSnl0Y2pWRW93YStrZFU5Wmxl?=
 =?utf-8?B?eDFERExQaXd0U1A4akpENkladHB1RmhFQ3RyQm5qQVdWMnZZTWwvMG5Dd0ZG?=
 =?utf-8?B?RFAxeVpOWTNGRjA3K0ZuY0xGeDZidEVGMVg5YzFRNHRrT1lpR1ZMSFJaOEhS?=
 =?utf-8?B?NjRjbmVjWVpLNE9lRnZXLzh0WkU4cHlCZkFqcjJXVTg4TDFUN2s4M3VSd09K?=
 =?utf-8?B?QXFHeGJGSE4rNTk3amNtZ1dabVZZalk2c1BMbW1KaE5qNHQwSTBqTHlUa0Rh?=
 =?utf-8?B?SVR6ZEo0SFhGMnhJZERNUGdKWjlvTndwWXp1TTc2YktBYnBCVElyUU9Ha0s1?=
 =?utf-8?B?QmlwaGZFZG5RcGtHdjk2ek5sVHgzazBzZnlLdTdJcnVjRVEySXVJU1kxR1ho?=
 =?utf-8?B?OXlYamhqRDdKNGJxb2V2aWFPQWpvYUNBOUpISHEzK1dpc0dMN3lxT05IcXlr?=
 =?utf-8?B?d3FqclpvVVNoRUFycU5GbTVheHZ1dXg3aER4bC9QcUN1ZkdGY3ZFOWhtM3dL?=
 =?utf-8?B?Q28vT2xwN1pFYkIwWHlMcFpmaTY2T0VkWWRNSEdSR3lZdi9wNUk5QT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1352461-8f1e-4a83-7699-08de81217539
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 16:56:23.4848
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiK0a2CmiOuHgELT8rouV9C47X3Bh+7XGYjBK08bZakvIx4dAQWIP4Yckj5DFZzrUVyPR824CBaXBQJNJzUfZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9082
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275455-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,ew.tq-group.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,nxp.com:dkim,nxp.com:email,nxp.com:mid]
X-Rspamd-Queue-Id: 3EC19287B7E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Fri, 13 Mar 2026 08:02:20 +0100, Alexander Stein wrote:
> Override of board compatible is unexpected, especially when the same dtso
> override difference mainboard. So remove it and update the copyright year.
> 
> 

Applied, thanks!

[1/5] arm64: dts: imx8mp-tqma8mpql-mba8mpxl-g133han01: Remove compatible from overlay
      commit: 3109fb0b7d8c7cac9414665006bf0355003d8dd3
[2/5] arm64: dts: imx8mp-tqma8mpql-mba8mpxl-tm070jvhg33: Remove compatible from overlay
      commit: cad2ef625bf149945a95e674d3efeb57a6a75cef
[3/5] arm64: dts: imx8mq-tqma8mq-mba8mx-tm070jvhg33: Remove compatible from overlay
      commit: cc0f70fc4b5862a5b7c0f2a0be9bea9a5c93ba6c
[4/5] arm64: dts: imx8mn-tqma8mqnl-mba8mx-tm070jvhg33: Remove compatible from overlay
      commit: 290c1d1924b7c01fc0dd58673a33f6d00ab676b8
[5/5] arm64: dts: imx8mm-tqma8mqml-mba8mx-tm070jvhg33: Remove compatible from overlay
      commit: 178d478fede312e8bda2b5a9772dff34e63ae1fd

Best regards,
-- 
Frank Li <Frank.Li@nxp.com>


