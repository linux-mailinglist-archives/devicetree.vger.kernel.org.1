Return-Path: <devicetree+bounces-275372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qLgiLDsutGkEigAAu9opvQ
	(envelope-from <devicetree+bounces-275372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:33:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 437CE2860E9
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4470E3075309
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 15:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E07DA3A963A;
	Fri, 13 Mar 2026 15:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="Ltgu8xG4"
X-Original-To: devicetree@vger.kernel.org
Received: from DU2PR03CU002.outbound.protection.outlook.com (mail-northeuropeazon11011039.outbound.protection.outlook.com [52.101.65.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 968033A873B;
	Fri, 13 Mar 2026 15:26:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.65.39
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415576; cv=fail; b=t3M0iz7tNVK4MFZVAOb3nlzlwDUo53BF3R0mdK1+/7vn6gVSYgRIWHtZzzFebl3yfVo+ErdvF5JuIthxX79UtH6I0JhfjhF2/iYCiviT0PlJ6gTLplVQMeo4yRBU8TgDSCvL0qIMGCHJrRGPv3RkD9F9mgTAK529lR7IsPunqpM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415576; c=relaxed/simple;
	bh=MZ9Nj47ZfLux3UauiRi3Y+zFkyM3dEn00zjUPLAE1GU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=dBH24XMlYowIHZfXqCKJMHJT+KuiKz9EqTfV6MhxW3ULLkHbji9zT7zOxi0YFR5hqEYSqqSDM1WOvR8KyvOnM6pmNAdfmAWtSZrq78IF/IcRuJtv4cPw1+14GC7zKsr4XSRKg7TmCpSb/Wk4wIWsSPxQhj17dAdzPW9Rw6Cgi8U=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=Ltgu8xG4; arc=fail smtp.client-ip=52.101.65.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jnWzj13F3qlp/gN54tNdCf1nfo7H8Bbxsq4X2SWv7ezULfgtReCZFlBf+r0CuVA+wU8gN7pTSrwYSGg3iZ1HkVmmMFI4XrTF0VasXHIanO/AmT6rbxh9Ai7Pno10f4v6OAB3BtYFcb/j2Rb9Ly3NUJ0BYoJe8RXs8ztB+kanGlhPFdXb0Ky4/pXlE6/15xHZscpoxzQHxSkel6/wMSnZJhsLoTVedRADGBOEFzJtcq9gS4CFMBfz+ZnvM6e6OtGi7PDsjR8hNNtu30kuAokj+uJvP6zA6q8J4DSfSDHkRLiAWsf+bhm3w5q1cY3gQIEJNzC+BarJ7LLXeKYtkRtdYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MZ9Nj47ZfLux3UauiRi3Y+zFkyM3dEn00zjUPLAE1GU=;
 b=eMykJD20EbF6HZABi7YnuwG+U6d78IKpSKePmSqK08y/cRFIyD2IxaiIJ/YhbALYJbmYM1IFs6FMHhvbtjshsrvbZseSOP77t62HPKY48snEQjHEPGDh43gCfzasrAVAnzLCfM32eiZYRrUTLBmetbMSwjaw5GNDWCOVFHm8hARfnDoptcOJIxEo2DCKQmN39zi3WMd/xOFHmh9fw2sh/Tx0011bpA+AA7Tz8LM6qOCXcn7nMIZChi/joxoe4sLDhcYQULNsmKPPS83sKJs9fxLhcFYPGwb8GQPR6QELVKZmN0D0kbClTyZ/QKc7OE4Xj+eKBv99lP+1kzoAqXWOWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MZ9Nj47ZfLux3UauiRi3Y+zFkyM3dEn00zjUPLAE1GU=;
 b=Ltgu8xG4cWBySEjEl/+OEF69Vbvd4yGhKFMHWnLJiT+bDbgcJR6zisn79Tal2c6+7GNTbByWmpXch9rm39eo8LW/T4D9FB7eq4eZd+zXiEG+zIssbNKqoc74jTGnDSMgezskZ2ZAOaQLQuM166qbzX3pcql771FocFZW+7l9LnYAy1dTs5yL2XFxLCs2LQP1rdoB9pO/JJVzh4YNNcVdpkrvqumhU/+VjLugpL826Ym3tiN+FbFcpb7kBwKsJsByGR7f/yj5S3bjSFvBPXEtcFhV32SRoAxRo+5VDhzNjaL8ko0NPYqCYYbTMsMGB8Nba4vsxvBys526T7nM06EXPQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DU6PR04MB11207.eurprd04.prod.outlook.com (2603:10a6:10:5c2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.17; Fri, 13 Mar
 2026 15:25:57 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9700.010; Fri, 13 Mar 2026
 15:26:09 +0000
From: Frank Li <Frank.Li@nxp.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/1] arm64: dts: imx91: Fix TMU reference
Date: Fri, 13 Mar 2026 11:25:57 -0400
Message-ID: <177341551131.76261.353175266395826963.b4-ty@nxp.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260305164223.2650908-1-alexander.stein@ew.tq-group.com>
References: <20260305164223.2650908-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: SA9P223CA0005.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:806:26::10) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DU6PR04MB11207:EE_
X-MS-Office365-Filtering-Correlation-Id: 7b1e1131-394f-4c07-cfb2-08de8114da12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|19092799006|1800799024|366016|376014|7416014|52116014|38350700014|18002099003|56012099003|22082099003;
X-Microsoft-Antispam-Message-Info:
	Nfb3Uy2M+GtwP0Wp0yzsblIVA2BXpv89w01zNJzHL/K48rafY9g106Yre3hGHOBW0t+u8dWRifZZSMBouqHcDrIMcyuE1OBbKfLtWRljrc9OXJnGU9VqOdX/rcaDMR537NH7CmL2Qvw+lF3Hf61OnCIQc5ROiTrbzvcV/X0WZk6mGPUHx3czhnXveuhqjGlGEhkbeXnE9Q8tY36ybVYAXPFsBRes7IHP4uk+OV7hnUg+tG8B7LMpwrTNeaJ7w3R+OEEDtutDynjsqksp4gi7cNFRXiBSRJE4hDXsSre5yKNAPConcbZGZCHKMWL95lrp//9K8e1TeN7+1cZlcRTknxHODQveorRDO6gqZ7lyd/7rA8TppNlSevFfuqWtBDp4F4ir+5j2WX6DeE2Vbzwqb1fC1jdIwYff3QJ3jQYHwtHxJMevLrFQ9bJFTGyy1hPw/BFB+ljccBJygC9Zntk4JsaLqLCnJ1PWgutWsWlge+tQylyK2avb8F/ze1w3fSpRneVMwDEH5+j4fYuB52bFJ6U41eo7Y23TOiyxjQJ57wrcsbjuiv3YJDyoPkaNkwcdYspELY78fU/PDofzYYUCR8Wasqh9zbIU1VcB6XSBSf741KvuJeZntnVCckNhYk7Gn0DPuB+7DwAQ+OezCYbPo6QK0nNg1gKVit7yTTT4GZahPq6SdkLu4j+T4YGDRz1kA4oBupDopFaR9RSR6Dgp9QFj1pSM1EDaO5lzQl13SKKNvPIJ4BreShQstYuNFq1/ia1vyEP+CH7B5j7N1ety4YSE3ld5G0iIou1GyhYg7F0=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(19092799006)(1800799024)(366016)(376014)(7416014)(52116014)(38350700014)(18002099003)(56012099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?utf-8?B?T25WcUhPUWlJMmV1SjEzdDFVd1RFN2o1THhROVVXVCswYlBJZmc2Nmw4aUJ4?=
 =?utf-8?B?QnlOeG45b0twaDBuOG51TnlsN1NzUE1xVzNVVUdYdnNHYytwQVBzeDlzNnhz?=
 =?utf-8?B?OHBTMk5sNUJVVktWSTk0MXhoUDhhWDFUYVpQYXRkdmVlaWVrdkw1Z3l6bXpK?=
 =?utf-8?B?dHh3ZWF6SU1rdHNpaGk2aHZQY2Q3alV3VzBpNkdzaGJSa0dFZEZOUFJWd0tF?=
 =?utf-8?B?Vmp3WkliS0dSWTkzWm95Nkg1ZWZ5c000RTg1YUU4MFFlUXM2Rll6R3o0bHNl?=
 =?utf-8?B?SUNydEtHOFJjcmtXckpQSVdUKzVTS08rR0dIc1VvM1FDZ2h6bXpXU1JDL2Mw?=
 =?utf-8?B?NE9FWWF3dVp3alRpclZLOWlVbnRhSlFicnpPcVVBcUlNa0x2aGgvS0ovVFpl?=
 =?utf-8?B?dzhJRXVZSmFXZGF1WUZNK3ZxS2lwcTFtTzFZbkFhVEk5ZURnQWdXRWxwc1VW?=
 =?utf-8?B?bEFwSU1RUDljYkNkNWZTVDcwd2EwdVZQN0EraGd5b2Vxa205bXd4Tmp5SHNq?=
 =?utf-8?B?MVAvaEhvaTdkZUptc3dNUWpJMkJGTVRzRTI0Uzk4QnBRQndSaXE5Q3AwYTg0?=
 =?utf-8?B?STJ6VlJMWEZhYzc5VTAwVVp3Q2k3emZTbEhiREdUYUtvZ0NyRlFxaFQzd1Uv?=
 =?utf-8?B?UWtHY0s5SVU1cytXQmF1cjRTQnlCVm8wV1RWelJTUHp1Mm5RODE0N2g1RXYx?=
 =?utf-8?B?d0w5c0l6dDdJWFRLbm5KamhKWkdITVFVY0xzWlp4eHZvc2hGcUJkTlQ3V1Ar?=
 =?utf-8?B?eDArOFFIRTYyTmxFUk1BbWVOT1h6b1h2K0xPMk0zWlQ0VGJDVlI3MGpoU1Fl?=
 =?utf-8?B?UnhkN2FhQkVQZWs3aTVGYTNVRXV0MzlJWHh3SC9ZRnVuUUJMOUd6b0ZQZEtl?=
 =?utf-8?B?a204dEYrLzNXWjdOdFB6b2l4MTFsRWFjRndmaW5pYWlHb0RPSUs5UVFzdWxm?=
 =?utf-8?B?Zm9kaFVrcStON0c2bUpDc1JjMkpvZnJEcjJpYmVwdmdzam1MaVNTQklsY29v?=
 =?utf-8?B?ZitZUnhrZzFRWlBqS2xzOElTSktmL2FkY3lvd3d5UkZEMVA1YnloOVduUTgx?=
 =?utf-8?B?M3BsZnU2U0ZBSmZTc0c2V3J2Mkk3Q2JFTTRRaTVJU1AyWTJXU1lHclROekIr?=
 =?utf-8?B?WExaL3VBMGxvTDFmL2JJWXRWWTNyZmw2SEY2T2Fhem9VNVY5MVJKNk5PR2VF?=
 =?utf-8?B?WGRBQ2YzcnNyOVVrZmlSVkprc0lKWE1EbURlZ0VXa1czb2RVWGE4d3QvS25l?=
 =?utf-8?B?MlRJMnJiWjdjWHVpVGxhVVZBcFNpeTVrMVVzQzBsdjdWZENieGRFUlEyTDNU?=
 =?utf-8?B?WmlpMXhPaVY1bW9oUGFsVXZvYk1mSDUvWDduSkVPWW9DdVM1NU1lVUg2YzBw?=
 =?utf-8?B?QUF4VUJIaFN0S2JlWDhOY3RnS3lEUHpwWXJyOWhiUVZJN1o4RzJxNTkwdzMy?=
 =?utf-8?B?d1hwYzJ6Z2hxaW9BcnB3ZGNpZXRzQktQMGpkK2RHTkRac3JJLzZkOVJid0l5?=
 =?utf-8?B?YWFGM0pqQkVjNTAyT0JWZjNhZGhHbnBrT2dUMVYyek84TjVML25rQTBham90?=
 =?utf-8?B?MEs0aVJ3eHVMdGZ1QVV6Sm81UXppRURQaG5NVW0vL1pRajR0RWJOS3JnSTF2?=
 =?utf-8?B?SmJqbGtJSFVRL0Nia3Z6SVJBZS9hOWtTbDZPUk02Um9sNUVsM1hkYi9QdkJt?=
 =?utf-8?B?VmpxMXg3Ulp4dEllemdpT1FTNityeWZmdnR2MTFnV1IyeHFKdXNicURlWTRG?=
 =?utf-8?B?aEY2V3BTTC9zSUhqemllNk5oNEJzQzJIM05NbG9mS1JCL0J5Q0NUcTFKV0RJ?=
 =?utf-8?B?YUVtZHFPZU9qaTV2MDByQk9QdnhIa2J1OWkvNmFRZDJvV2UrbmxYN0hOazZR?=
 =?utf-8?B?WEdLVjdBVzlVaSs3RkRoVGNuMHBXLzFWOFpWQVc1VWtGTmw5Z1ozbkxOdTZP?=
 =?utf-8?B?cndEUTZHQjRMWU5KUzVxRFZicU9OcFNLdzlvQ1hFY0JtV1B2SG5ZalY4SVBE?=
 =?utf-8?B?TlBxelV5YUtkeXBwS0tqc0pkcGhLaml6NWtRa1l4aWs0OUZ0aFltSTNFNlBx?=
 =?utf-8?B?VjFYQ1pMdFVrSThneE5MRVkxUWFVc3NNSjUwN3lZaDdyMGdWT1VSQkVOUXVU?=
 =?utf-8?B?VFlIQXBvRTFOdjc2L0ltOVdPUGhnai9QbmthaGR1TjFqMGxlbG5MczJOMUdC?=
 =?utf-8?B?MXdzZGJpTCt1cGwxLzNtVVdOYjRZNHZJc3gvbTczci9ZdEsyVHN6Q0tLWEo3?=
 =?utf-8?B?RDZmRjFxNjhkb2s4aUFpRFB3ZWMrNXNPOGRmcGZYbTJILzNCbzlzUW5CUnB2?=
 =?utf-8?B?Snp0SE9uVWE2RDEvZzRyWkFjb1ZENmZ2U3hhaUFNWmVSUURKTmVKQT09?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b1e1131-394f-4c07-cfb2-08de8114da12
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2026 15:26:09.4136
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pODjiSix/79cvR5orX6es1VRPSRDNPCl76CqrO3YPTLKZ19/VT+JgzXdBCMGjqsApYHOWCVkRj44MtDr9ppUTQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU6PR04MB11207
X-Spamd-Result: default: False [1.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,ew.tq-group.com];
	TAGGED_FROM(0.00)[bounces-275372-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[nxp.com:+];
	DBL_PROHIBIT(0.00)[2.166.189.208:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,nxp.com:dkim,nxp.com:email,nxp.com:mid]
X-Rspamd-Queue-Id: 437CE2860E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 05 Mar 2026 17:42:22 +0100, Alexander Stein wrote:
> Currently a sensor ID is added to the reference, but
> thermal-sensor@44482000 has #thermal-sensor-cells = <0>, so parsing fails.
> This also has the effect that other hwmon sensors (jc42) fail to probe.
> Fix this by removing the superfluous sensor ID.
>
>

Applied, thanks!

[1/1] arm64: dts: imx91: Fix TMU reference

Update subject to "Remove TMU's superfluous sensor ID"

Best regards,
--
Frank Li <Frank.Li@nxp.com>

