Return-Path: <devicetree+bounces-264854-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6C8tGsP5jGmVwQAAu9opvQ
	(envelope-from <devicetree+bounces-264854-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:50:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E6D127E58
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:50:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21391302658E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 21:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8DE335CBB6;
	Wed, 11 Feb 2026 21:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b="IihOqGf4"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11013064.outbound.protection.outlook.com [52.101.83.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E88934FF7C;
	Wed, 11 Feb 2026 21:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.64
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770846606; cv=fail; b=KIrXmZieo/Zyb3U4HmIRfvQLzCmJlUPLasYAAIL1M4Fet/NJsIUfJ0B/FjVFPwbtY6DlvrO6/L0cvcTCgz85ku7+lQ7FejAzOVPVBo0afmSuw2eozkwGYuSxgjp9fnEdtS/ih66Pc7r31j2TqpOcKvrk6Qe0zDAEf+ViFHNZ9f8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770846606; c=relaxed/simple;
	bh=glhmOcbkDEfkhqnxR73M30M/7HMK2SdFggMpDfKLisc=;
	h=From:To:Cc:Subject:Date:Message-ID:Content-Type:MIME-Version; b=d+uOCUJ8TuXJu7BqJDWUuWbN3F9HoqhMvTU5u5FgMwDI0RNhOFPSFuURv7Kju48sP+Hy2GJv7aieCLSl9sEsitu1OKcR9KB5zTRzfzJ270zm8nh2qFvU3cVkZodQxFl6f8bmL/bVWQk77F0Jm95ibU4mU7GxyAtrcPAfd5X9ooA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; dkim=pass (2048-bit key) header.d=nxp.com header.i=@nxp.com header.b=IihOqGf4; arc=fail smtp.client-ip=52.101.83.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qQoPalJHzBFWrfhLdVhnrPmp6k3PzEOpzfUu0arceWEB16hSkjAGSSDmyM/d2TOWlBpRRxr8z25wdSdw/UZgSPHDRFXT9Q8T8kTIJj+TyVxCPcONbyjnlxnudfgK0DP62TQfABnEWeA8wIzu/80Wx9edxy2RsZBQazuYEusRvNp2V4mpp62eBsMF1Nhcrdjc+7mk4jy5U34Nm+iXZWgrH7JJ+MDGBSkhjTe/4/gW9omaRnGCsa2FRQCGbcfphkEYWNxucMvBLjGgipHJRd8S8UL82QazeP+5eivXw3+CGQCF02piPRI+CJnUBN2k92Ti/KyfwMPkq5FmeK7OJT2hmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iEr3KPj0PzSwb30/JIiaLcNz9Byw3el78LulsDVv2tw=;
 b=ywP/ShVu+WiV/zVoCamd64YLrLQ9rPEaC+lP59vJkSrthfiCG7FEEdlc4rg3riirF3FWQG1oLsqb8YVCf8ridGrpq4AMqY+ATKPIxAwbzi38nzj28L0J8v8mhnlHSpTBZzCiJKdRN2qVAzzpdvGVaHt53D2GHGwptOPhF8sJlH4n8udnVl6tdthpMWR+msGMkUyia1r5nNat0RcQp5iwXFPu2dSZuz6ny6XjGbm5DtifoJxC9AZFgzBCkNgimQLtvGTxo3OmaryRlr891aLmP5p2pPTKDI7lPSlyHsA0BS251ASI/7GXwoVU7YD55rYVtrOVP3zHbLZhU9p8GYgzvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iEr3KPj0PzSwb30/JIiaLcNz9Byw3el78LulsDVv2tw=;
 b=IihOqGf46q1M9+XX10ate8J8hGlvDpHO2/zqIznCiYTzkt7d7njiniu3pTzSn4kgudJPvLwdJm0MLOVWaRRkdb3Vc+s0wbt+JnmfXL/z09orvtlhzGEWUwVewcFnookmkZNdT0C1IL9kBgK3BjXMAXCKEL/2biVyrAVM1+Q9wDazAiKRSAVLda5mXzGLQwwaw4hJaHMlqjZJ5/RxQe3kZcdlpP9lOH3640UCQq6nqKQhmXRmHC8fa8YI7W4mrFna9Yy3qoaR31MlGfE9rpRwl9m7giDVL6pLYbIeSPUYFS/TB39+jxBgZq2hdmbr3Du3LFwJqEU1pxWoGr+9jNkpRA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com (2603:10a6:102:2a9::8)
 by DU4PR04MB10717.eurprd04.prod.outlook.com (2603:10a6:10:584::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Wed, 11 Feb
 2026 21:50:02 +0000
Received: from PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588]) by PA4PR04MB9366.eurprd04.prod.outlook.com
 ([fe80::75e4:8143:ddbc:6588%6]) with mapi id 15.20.9587.010; Wed, 11 Feb 2026
 21:50:02 +0000
From: Frank Li <Frank.Li@nxp.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	linux-kernel@vger.kernel.org (open list:CLOCKSOURCE, CLOCKEVENT DRIVERS),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	imx@lists.linux.dev (open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE)
Cc: imx@lists.linux.dev
Subject: [PATCH 1/1] dt-bindings: timer: fsl,imxgpt: add compatible string fsl,imx25-epit
Date: Wed, 11 Feb 2026 16:49:47 -0500
Message-ID: <20260211214947.3705328-1-Frank.Li@nxp.com>
X-Mailer: git-send-email 2.43.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BY3PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:217::23) To PA4PR04MB9366.eurprd04.prod.outlook.com
 (2603:10a6:102:2a9::8)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PA4PR04MB9366:EE_|DU4PR04MB10717:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a8bdb0a-510e-45ec-b998-08de69b78260
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|366016|19092799006|1800799024|376014|7416014|52116014|38350700014|921020;
X-Microsoft-Antispam-Message-Info:
	=?us-ascii?Q?h5/RxWS01jEP5R/63IKVWqcmNigCQb6ATQLkudraJMpwghR5TSQdEFsLNifg?=
 =?us-ascii?Q?b9j9t/TbYw2OGku5LqVgmkacytgC2wDeWVd5iAAAaoLaDSkv3ACQ29e6DPDv?=
 =?us-ascii?Q?aLYf7KUOhkYGsuq/J7bBCOQxjo2nxllOQQ3hrnbi0doPQmfCiVv/Zwy88NNs?=
 =?us-ascii?Q?KMw4rOv+mTvZa253EiFF7J1DKf6QnXv9iNvLAY/FXDeinDi3YIHbTK8eXMuo?=
 =?us-ascii?Q?bBjvUTrdoyNGfT9nQBKFeA+jkRr4xz64DvuM6d4aXIPDzUD7/dYHhOJLSNMf?=
 =?us-ascii?Q?OxhDXSss+oaGi8IvW55DFpJ2qD3s6YPYjiRTsIhQk3pYnVWV7MXRqEOquQyZ?=
 =?us-ascii?Q?gHMUWUSjHctT59O8pPvVP2p680b3Aw8sN6POk6ZBE8pRI+uoQ1+S6HNbvFqk?=
 =?us-ascii?Q?83RftOWJYlSXQvZC23J9C4JFH5Lp2unLLVvrw3v/9lt0MV2qbfCReUMungXe?=
 =?us-ascii?Q?rpYCJpjg7+xf6kbSTiHq98OAOH41w1k+yIyPh8g4HwMoajswKeF4UOFeRVWc?=
 =?us-ascii?Q?kShymS/ocjpPlLczCw65Ds0kTee9PisDMD1EcZTBXjLzBDbudtFML51KZXBX?=
 =?us-ascii?Q?+1xofzW/G6+z/EAawUNFp6vmGVgATmofw/DVxzz+WKpEdjrOEpfbMBR+ccGL?=
 =?us-ascii?Q?fmsB2hFLXFuqiV5NrM43VDcDUjx8hhGg80q3GUTlxvldrdPEQKR1bZ9rWY/T?=
 =?us-ascii?Q?HxLRfeO+A581ZK0mpMWXOHl9Pm/y8dOnZRM5n6EFFS16A8cgGfMJvJn0jrGT?=
 =?us-ascii?Q?iXC3VTTzVRC6l36PQ0HXnAJN/+cLehT2yvlzvfr1TCgHnNeH9E/DniTAPVKv?=
 =?us-ascii?Q?qux1+iZzNiQ0jkQJCMJxyF405haFZgmqwKPBRJJDrkNzO9AwjwfnFdaES1oq?=
 =?us-ascii?Q?dMUTxaUnxFQ5tUOUMK/H2wIqdbpSgPE7psN83L8evHhc+U3H7cXAyH9OrvHR?=
 =?us-ascii?Q?mrkvwUq7MbsXVAq7i5a+jjDigfnme2FWNqSzOpuB5hros9DivuYCOdojW6c+?=
 =?us-ascii?Q?CvdkeN6ErWjO2RO2wV/JgYPoUzUZLgC1d5Z4TvGYc/4NPjUg5fsb0+sEQBoX?=
 =?us-ascii?Q?cCIgZz4dsVRU6uI3erTxAv8fvci1fGguTM7rDinVjUv4J3Ex2QAumUTHQ9H/?=
 =?us-ascii?Q?jAvarJlYfCQmTSHKZSkGDHYO9NLgl6IcGh+q+o6AbPsjusQ+9i81158Xhegc?=
 =?us-ascii?Q?1C56CcPRU/kN/pr9gqjLX1Wgeh8c38aKy9aTYefQksF2F1Q47wDTmumUqHiB?=
 =?us-ascii?Q?8OadTv2o0g4oSPA4xtSU7qzeX6xQnVkY0Pouyz6DT3brj7GQP5vQA7eDddhJ?=
 =?us-ascii?Q?SA2FZcoE/cK9dISBH+UArqM43GBKdnfPUfcIQqoCN6GClCS37OYRfng3/yzD?=
 =?us-ascii?Q?3/xyHs2XJ6fciHZMnh4v1zPJCtTvSsAXjwZeKNHsd2r+OrMIex1bZMe/gE48?=
 =?us-ascii?Q?W4IuaSE46+uwh9jdvI7sfCCPueONQP0M00RqK+4azTPB3q3Q6PB/ArHBdUxh?=
 =?us-ascii?Q?8TtUAmqd3bom8JB578HXr6Ld7kungyA7BvkGLumypK7uv8wf/vsBReB9Ay7F?=
 =?us-ascii?Q?SxslGkTb4l1emwahtyxqmaA2d/I1oAkn1r1EFSXK/TJOqu0JoAjtozQY+aOe?=
 =?us-ascii?Q?X3WAkamnszt34QjzTESiaNTwMRpGJRBxmstd7khSOjNK?=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9366.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(19092799006)(1800799024)(376014)(7416014)(52116014)(38350700014)(921020);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?c7gjSUlYErAPHnabajYT3gt7k4wPYERRp3IrtZNksUU1DQlNLNVYCgYYqMJW?=
 =?us-ascii?Q?sAY+jtrNr5kUgofpTPqi35XCCgynsNWjvxU+lKa8kyodlUP4xhmb+e9cZvBz?=
 =?us-ascii?Q?xnwk2iouocce3/qqrpO+jsuB/aONWt5nYPEiT98EbgPt3+KIS9jireBDtN8M?=
 =?us-ascii?Q?gT46DKLKgQAhdYwcX6Fm3QJG18pBoGr6BUF/Jykl3ypn3co+ZChRRQ9Yiljj?=
 =?us-ascii?Q?xOBrKELrxwsJ9E2JvXmSF3h0P6HIg3+dCUEq9AMo9UrjWxzE7cVcRtGXTqYp?=
 =?us-ascii?Q?yrltu6X6t1NsPYg5NG0Jo1jymDHowtl1QH7pZ99VE4/PDcMNWeeTcDV0JQue?=
 =?us-ascii?Q?scsG7JaOXPkDTLdRumZO+Ot3V9mcQuWkQETu/jDZ8e2QKyHnCOn3LP0jOvuZ?=
 =?us-ascii?Q?+yLW4hQ3hpIIuPgib9TLWTJHcQ6cRaSWKYZhAvdnkiFDh4GCeP2rTLlX10O5?=
 =?us-ascii?Q?OzEUqxKObnXkT7YM80sC+FvCKBjM6B2q/PDUJylAe8gNGWcdSlm6qQTRWDjO?=
 =?us-ascii?Q?y+DcTwEuucqgQ5gfXbvqWm7FqUuNgw5AIAOzamy+IQ4Nr4q8hWyRL5Rx491p?=
 =?us-ascii?Q?tzrwwV8JdG7nUYhxW379/3Qap6xWsecaAB5u/Ck3oxwQOubLamyDhsMCtS2C?=
 =?us-ascii?Q?Im8pcI8kGrKZMzEwpqCmA7irzkHROmX8GAiM1SOf9phZmgYoKofg0uNy98vk?=
 =?us-ascii?Q?HPpx8C2sPmztHf+J9mYEA1iQd/jyExPj0zHNx71AbN12qFcP2Wa+dTFo82EO?=
 =?us-ascii?Q?W/HPnViLm+6OCH30LwXx5Sq7cTpvnE0Ra53g8m9Cf7klgud7zG07z+AWVEey?=
 =?us-ascii?Q?j8r9mDvl0ILv52Qeni+jx3AnzGn99ll1+kfXf8up7lUtUVnFYiu6QaIrXNz2?=
 =?us-ascii?Q?QhsAPfX4fcI2foExQQ8A20rFkrQrOeaNrXQ4MTM0EX8PzfNTKjwHmEwtfAyC?=
 =?us-ascii?Q?RDi4+DwmAMYOsCYR3gWgCMxXa/5o0DxBi730RA5o1cTKem78Ge93aRYafUBK?=
 =?us-ascii?Q?wpIDxk8En7HEiJwV2bBswPLklT/1cqwWrK70fwBUOnDkTdIZ9gJKfb0lGtqM?=
 =?us-ascii?Q?fvuxz9tSjBf1zlwEinzsUxd0XyfJUbdWtlZh01Dd/gfHTujt9kuosWMp2PYO?=
 =?us-ascii?Q?F9X8XRR3jPwEBPXEhvFx5hEfmSnbpPmg4tNs2G5Jwd2KWY25hGON322HxFz7?=
 =?us-ascii?Q?LTOaRq6cu1A/SMim7/zCMqFPpfw9EHvL5B8wtY+kODo65/4jVAZ+qmRGnuT3?=
 =?us-ascii?Q?sVaY652HpcOsxXo3YuyNzWOs/vdWX09RLx/Qtdqrlbqz1blBioK3Gq6151st?=
 =?us-ascii?Q?x8/n7WrLCKU9pjAQ9U216JnxVZSDYAD61v490Jjfq7pNSJ1mUdXEZiAFO7xs?=
 =?us-ascii?Q?3QU0z7LJ03X6paMy7MAleKQ7u9m7JwTEEwdLhJb02PRX8vKuHAfCEn7J13xL?=
 =?us-ascii?Q?hR/DF/NfYGh6MZiCxaToza5/QpnJUAZhejI/wSw1FDK8xrmCzxs5VUAVlfcy?=
 =?us-ascii?Q?iGKr4TTW3j5lG2h+DCR+owa103CsUvapquWA2fqc2yhtTm16XBC16/IgA+bO?=
 =?us-ascii?Q?xflFZbFnO08u+KJMMY9s/FRlxqSqSr3aS/1kqCDiTi6YwTtOQDyqI+juy+c1?=
 =?us-ascii?Q?PcYU+3My+VtDZwdd3Ai7XPI8rbxjDwz53nePcfBVpIy7IwfVs7DSn0QJWN+M?=
 =?us-ascii?Q?42MTnNqvuueNUp6Z4HKzvQPl9UntvyjdtEI38OvR6/chNNJoHTEv/4HwP5Ui?=
 =?us-ascii?Q?Y68SOxQ9Hw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a8bdb0a-510e-45ec-b998-08de69b78260
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9366.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2026 21:50:02.4567
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I8DQ75kdGAiaRWRrS4ZhzFMbs3h+MQkDpoEF6D0ifAhgw0cq7c8hc53xsYukJLUmyv+kllAPThv3Z5w+SJqw0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10717
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[nxp.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[nxp.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264854-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[nxp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[Frank.Li@nxp.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[53f00000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:mid,nxp.com:dkim,nxp.com:email,53f94000:email]
X-Rspamd-Queue-Id: E2E6D127E58
X-Rspamd-Action: no action

Add compatible string fsl,imx25-epit to fix below CHECK_DTBS warnings:
arch/arm/boot/dts/nxp/imx/imx25-eukrea-mbimxsd25-baseboard-dvi-svga.dtb: /soc/bus@53f00000/timer@53f94000: failed to match any schema with compatible: ['fsl,imx25-epit']

Signed-off-by: Frank Li <Frank.Li@nxp.com>
---
 Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
index 9898dc7ea97be..6d41fb1203793 100644
--- a/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
+++ b/Documentation/devicetree/bindings/timer/fsl,imxgpt.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - const: fsl,imx1-gpt
       - const: fsl,imx21-gpt
+      - const: fsl,imx25-epit
       - items:
           - const: fsl,imx27-gpt
           - const: fsl,imx21-gpt
-- 
2.43.0


