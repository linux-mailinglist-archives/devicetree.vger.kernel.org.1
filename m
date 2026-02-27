Return-Path: <devicetree+bounces-269052-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBh7Fq8doWnJqQQAu9opvQ
	(envelope-from <devicetree+bounces-269052-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:29:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6CD1B2B47
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 05:29:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4905D30716C4
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 04:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22CDF3563FA;
	Fri, 27 Feb 2026 04:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b="vMIAOJ5m"
X-Original-To: devicetree@vger.kernel.org
Received: from GVXPR05CU001.outbound.protection.outlook.com (mail-swedencentralazon11023083.outbound.protection.outlook.com [52.101.83.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746C6348457;
	Fri, 27 Feb 2026 04:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.83.83
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772166412; cv=fail; b=naD/sz5/eaROrEuWY/B4eiqeGDr2GGCdUyBI/XkAPOTJTsUllvMEFbiDXvs6K+9vLUQcQnNGuIEIyhiMgnVbnyMayFfYv5fmV8Y4jotNZE0cz92H2+qXS9QUCWqyKGReI/Ooa4xQF31yZK9121ezYluDhmDd3aubty6xXg8Xy4Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772166412; c=relaxed/simple;
	bh=PzAEtVC1OAN+ZsbmD15x5iHLCTZxgoR9+x01WEeARqs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ZVsrsXMk2bwNKHUbv+nTobvDOux4S3cyLDYobkhO68w0sG/bK4I0SddlARfzqiq2ndYRWsW1BLvbBGC2rWwz4yI9Agcbn9ZYCOJ0/Tp/KRiNR2sjW1olKFKCh2V8O9xONHXehQHuLQ5QmACHG63gGAzLciYLtei3lAoYS0u8c7o=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu; spf=pass smtp.mailfrom=genexis.eu; dkim=pass (2048-bit key) header.d=iopsys.eu header.i=@iopsys.eu header.b=vMIAOJ5m; arc=fail smtp.client-ip=52.101.83.83
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=iopsys.eu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=genexis.eu
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JIkKfwFmy3l+Ie8dlLQVq1KQNPLfcV5+NVzQn3uNvsXFbuocih67R1vStw5FlRr0n8pOGYxlI6gKruS7Ele2Zq0I8lDR8doBvBkXv4qmRXh5HSZ5dZDhQNKrgXtipK9n2CHMCFh90ipkkq6ZOUos3lM4ARaL6Kwu0QZZGe5cyYFJpz9B6uaBE3vIm4ncMBORiZhX2Yjd19fvRtxDSYRCzOPdCexJPzEcp10XUwMOHiOZBuBeKXy944t4Gq7KSWD9LU0l75WYWyt0p45IZyKfldkvSHSX414H8I7xUgBVHA07OjUACE6jKHAUYr7GbB8sDLNWCkMnDvyGdT/2ZDybPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LcjwgzJuu4GKdW6MOzMtH4k6Gjp8Fj9ec0RGvqyijPg=;
 b=ZbdgqxDpD3YM0ZFFJ9P2iqrmMuLiEwES2igmE0O7II5IYP9OBdQPFc+wGX0vhS4m6QAvHS95LKc3zTVD5yVXc0jcvzbXddWTqdLgN7Kmp7Fw+0eANPrxsEtcSM2F/8pUdKV/WH61y1loK3KqN3BEJxgigBalyzR4uy4kcR+eP4rLyc3hV1MTMe2tRHX7ymyD98YYmjl9R5mriuiVCQspzpX1AnBBluP5kmOw5qZQsHpDxmwzYuYM8gyZc1nAa1ee0XojOwZDjoYBm2wnwGUpPtPK5qcFtrKLhn/Tya+UshY4k1NTPU14SnnBAoDMSM2sEpmyqnoSblFXYu5NXU+ung==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=genexis.eu; dmarc=pass action=none header.from=iopsys.eu;
 dkim=pass header.d=iopsys.eu; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=iopsys.eu;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcjwgzJuu4GKdW6MOzMtH4k6Gjp8Fj9ec0RGvqyijPg=;
 b=vMIAOJ5m9hA5yIwhYdrSQxkRkOtiACPbQ2geKMYd5OOg0WoI3Q1LErf7oL267AohmLt130beydpZGISZsTE8v9aUuEz9ATPoVeQOz9v8MPSRNp/oAK5GSh7z6Nee3pQ18ZlRYsnnXa2z2l3XjWI3658NEpQNSMlO9ByM2Zb0mju/eK9r4E5Jpk4NDJxZEzEtO1Huj6REqxv2pJXAHvKheCn+3+COKf11S4hz6EPGAJVmyFAHmtwzwZTSDoAQnPYmM4gVI8CiAwJdaUlkHDHkMMQ6ShC55qLNRiDlww+oDZ6eQMsSVB2aXi6nnEDabPnnfna+JN34RkXNNmhbdmsXCg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=iopsys.eu;
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com (2603:10a6:10:49a::20)
 by AS2PR08MB8574.eurprd08.prod.outlook.com (2603:10a6:20b:55d::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.15; Fri, 27 Feb
 2026 04:26:47 +0000
Received: from DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc]) by DU2PR08MB10037.eurprd08.prod.outlook.com
 ([fe80::3c7:6d2e:8afe:e4dc%4]) with mapi id 15.20.9632.017; Fri, 27 Feb 2026
 04:26:47 +0000
From: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Subject: [PATCH RESEND v3 1/2] ARM: dts: airoha: en7523: add node to support spinand flashes
Date: Fri, 27 Feb 2026 07:26:29 +0300
Message-ID: <20260227042630.3090808-2-mikhail.kshevetskiy@iopsys.eu>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260227042630.3090808-1-mikhail.kshevetskiy@iopsys.eu>
References: <20260227042630.3090808-1-mikhail.kshevetskiy@iopsys.eu>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: FR0P281CA0165.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b3::13) To DU2PR08MB10037.eurprd08.prod.outlook.com
 (2603:10a6:10:49a::20)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR08MB10037:EE_|AS2PR08MB8574:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cce5539-9144-4b74-6ed4-08de75b86bca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|376014|52116014|1800799024|366016|38350700014;
X-Microsoft-Antispam-Message-Info:
	F2iJ8UOMYJGIy7Q+inRVgL95eaPYwi6GVtlzk5r3Lsm7NqIHbNGJf+o5VN7UdJnVlF0gSOVYvMw7WrTXyvVTWnII8AvfRcnprdds1YTEMGcFwGeBMORb59G+/SVnPDRUw4oPM7JLAXbo5WxztybW/dlVzLFpaZ7nyf2n9t2UTdlPH30VxjdVOyUN5w+YofbpDlOnzG5oI9j2a9SVf/CjmeHaKm25jjsUyrtFI+K8635cJk8ME6jnjIRwak7s/pwUA/MzJqxyrdgPRpOojny6lvx1QvIZfddasC6DFli12DzWQckba5CZWOl35+7E0s3URYav2kgmy6xIsIWl3a4a9LTZAFbhtNQ6TOW4oiQhLbo5fOw+UPEo0O0HFjLYKlQEBrdpz19s4mbCyUdgfTRxRMNCmUTlcv6GfCHWZu2p0yboNvpZeU2M/jY+aT4bkGtod1uzdNREaJkLdoQzoBYCQ3NARjYKpK+Ab5eL9QSx34Lr7n9oMVDu4C393+RvDV7x0vHc7uV3RHaX18StSwgO2srPcSm4SQBgzwcE6gPsGb0tzmWNBIGkrJGwEvecsRTd5auFKmhRdnj1Axbu6SDK6BP28H/+/Gx7B6jLyPaUbz9JWVFOKgEar6f/bTzaMy9bWVeheJK3eGL/L1DZsd+0atp5DirePrFLc0YJg4YMsKaJMb8KfYMvvuhF7EJCVDBvhbAt8WYGcMQQy4KGxu6zT5TMpUirnmoVo0Cyh3Q6xHJyx2HCgLoWugbTZ5Wo8LkgB5RHePGNeoyaN1QV/Hhve5aX9LfF6g0PETruZXowphU=
X-Forefront-Antispam-Report:
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB10037.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(52116014)(1800799024)(366016)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	=?us-ascii?Q?zg1Md1nH2Nj8hC1PDqAeKMrJ3tEIWkP+tzjCNb4hQwEqX2aTJxUp04o6tJOj?=
 =?us-ascii?Q?yQEdsJO/gDPdHLXdNzm34LdZqFnpGUzNpxE/0xZV5jsfkatVxXQAhVat4dbQ?=
 =?us-ascii?Q?QicZautREqwRUgMyRUKi6ARQCBHIKk/836nE16UB8zcfyxFyDn/LXtEiGzkN?=
 =?us-ascii?Q?9eI8gTSR6ZTpjJywYjWWtcQrbZlJCUAlvIR9SJUilv9Ccg0We6vClHR212nM?=
 =?us-ascii?Q?3tv89swy6vQkQQmq6M+a7KVh4J23zdTWkQRhTeSdhVG+kso27s/8cquoAvmy?=
 =?us-ascii?Q?SaN0p8F1FZciZTSH6BT5lqhvkLrfBfzcyZSiVhV819hcBJEx5zXK06UTcRxt?=
 =?us-ascii?Q?YaAV6AVck1OAH3scJuwcPXOS4DcG/639+EemngaxvAoW0fOEqcxL4yl72WOf?=
 =?us-ascii?Q?LqEObWKrUvoTB2uihq3mxV1iwWIajXzA2B0Xzzw42Zf6Pin4BwU+gtvOwKPW?=
 =?us-ascii?Q?e0QGSLRlb9Ij/J3pD6VvDqz15g6Y0gDBgc5TUVCChBIzTYsmHWPlsa3q2nVa?=
 =?us-ascii?Q?aibSVeBiqXQUZO8UlZui9eenDQgaRIkAruIYk7rviPc8zSOxfqAF/gWSV3TK?=
 =?us-ascii?Q?OUTaCy6zDLEQRdrZwjAcxkynp3zDe+WH876ARUr6qrPLJdgn+bEPPdeW/g4m?=
 =?us-ascii?Q?86xv1WImcp7pKgYd3qD0XHSh3r7zeUK9/jPYKLSQJY5vpXHpI433eZMZNHaw?=
 =?us-ascii?Q?cS7CYQ+8RNyBbjf+/GjolegcJUTYJ6/egSFWEumUMI6A4KLltXVmPCfScN0y?=
 =?us-ascii?Q?X1V4FURwQgewVRWWBpJyvWWa02RmUmKjVBRst/igMSsi/CSS36iTkLKAeTar?=
 =?us-ascii?Q?y3/IiE94D1BN4uHkiBTlEb4811GQehwAKBRXDKUyNtON23ZhwynLkEGyEjgL?=
 =?us-ascii?Q?RVp/J8CixqBr1a2nS/3Tj48IBkwilsMVRtTmTkjy/p2jrUu9FVdyW4ATdeIb?=
 =?us-ascii?Q?h3G6/dhx1EQsnAUf0Ml5ofXOb4vQjxS90d3NBc4rhnAgpVjDf+3EMvOtOQ2M?=
 =?us-ascii?Q?fGc+8PV0dgeGomH4SKz00JaDMdaQHoan9FW4igdTHEHDO3jkOGTM7w+BFoAe?=
 =?us-ascii?Q?i6MgBDf4g8SlNLvi507aErvuojQj9VzDXlclQJo4VdIq4ptIMZFYJKDjhAoq?=
 =?us-ascii?Q?/rUsFDNWx6PpS4kLSlJBDVObn45eTJk2b1WqPIjICkoXMnlEDchQFJxzfGYK?=
 =?us-ascii?Q?14Mld0Yy0CbWGj+ITeQW52H8aRKQgnXUO17I5vse818juHdW9eiYqVry7JKT?=
 =?us-ascii?Q?rhwF91rJIHxDnAg7V08X22YMjMOzGJF1nuytYxHXND98tpsmlQSZeLXUqsVS?=
 =?us-ascii?Q?6fA863ahonk0AQ0FAVnYGm7mwGjDps8Ux/+rqH0YbNRUAnuoh6ZvlpNW0rgl?=
 =?us-ascii?Q?6QNXZjNTpmjmr/AjTWq16Zh5HzO6F/BnP2qHd6b4nLaFIR2vSJMj3lboAddp?=
 =?us-ascii?Q?U751ofTeesp8n1rga00jedQctn2psJyFtt80dez/AuAZUlQfIGeMjspga9JM?=
 =?us-ascii?Q?8jcZQ4wVuhFCS4s9kkUUkCoo3HU+Jpa7fzi6l3SmhKU0eNLiLbQV/lA+4E4m?=
 =?us-ascii?Q?x+oulGQ5DlzmozgH8DVxOz1LZxkZQJagtSfsy+6iGxm8NjWEgSPShuZziTX+?=
 =?us-ascii?Q?LayCjglO5839zGp+s+j5Jjq6oHodJ54hfFABxqmGxCr3Rq7DEqutxOp16uZo?=
 =?us-ascii?Q?inZp+a8n9Ghu+KUxowLRA+KrjLwhJowhMEAZqTgciwMtJiIjjshdD7OWRdog?=
 =?us-ascii?Q?+vl+IQkkd4ONk3Az9DQyswTn/984afM=3D?=
X-OriginatorOrg: iopsys.eu
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cce5539-9144-4b74-6ed4-08de75b86bca
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB10037.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 04:26:47.8075
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8d891be1-7bce-4216-9a99-bee9de02ba58
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hLFvNmNzwIw2Dxbi+ZPu1qe6LRx5SkX9XS2+FZlNzCvuy6Y4bKzAcgkAov7XgXiZFIfBPu4/NUl+KKkKwaCWP8YTXA/n5mI2dmaxDcaQCAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8574
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[iopsys.eu,reject];
	R_DKIM_ALLOW(-0.20)[iopsys.eu:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org,lists.infradead.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-269052-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhail.kshevetskiy@iopsys.eu,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[iopsys.eu:+];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,iopsys.eu:mid,iopsys.eu:dkim,iopsys.eu:email,collabora.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8B6CD1B2B47
X-Rspamd-Action: no action

Add SNAND node to enable support of attached SPI-NAND on the EN7523 SoC.

Signed-off-by: Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 arch/arm/boot/dts/airoha/en7523.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/airoha/en7523.dtsi b/arch/arm/boot/dts/airoha/en7523.dtsi
index b523a868c4ad..31191b8d1430 100644
--- a/arch/arm/boot/dts/airoha/en7523.dtsi
+++ b/arch/arm/boot/dts/airoha/en7523.dtsi
@@ -203,4 +203,24 @@ pcie_intc1: interrupt-controller {
 			#interrupt-cells = <1>;
 		};
 	};
+
+	spi_ctrl: spi@1fa10000 {
+		compatible = "airoha,en7523-snand", "airoha,en7581-snand";
+		reg = <0x1fa10000 0x140>,
+		      <0x1fa11000 0x160>;
+
+		clocks = <&scu EN7523_CLK_SPI>;
+		clock-names = "spi";
+
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		nand: nand@0 {
+			compatible = "spi-nand";
+			reg = <0>;
+			spi-max-frequency = <50000000>;
+			spi-tx-bus-width = <1>;
+			spi-rx-bus-width = <2>;
+		};
+	};
 };
-- 
2.51.0


