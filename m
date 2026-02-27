Return-Path: <devicetree+bounces-269026-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GMPfOgXmoGnDnwQAu9opvQ
	(envelope-from <devicetree+bounces-269026-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:32:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E271B13B1
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 01:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6721E303B7E2
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 00:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0018E222597;
	Fri, 27 Feb 2026 00:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b="Q7ikQnkg"
X-Original-To: devicetree@vger.kernel.org
Received: from BL0PR03CU003.outbound.protection.outlook.com (mail-eastusazon11022088.outbound.protection.outlook.com [52.101.53.88])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DBDF1A285;
	Fri, 27 Feb 2026 00:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=52.101.53.88
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772152296; cv=fail; b=lwas6wn1YMPYaGX0toVrSZ3sOVNk+s7m39wl1LHLXkLKzFmqLpJv+nbBPza4jU1k3HpZgczOHFD5jchATgvVn/S6cbILraA2SiqeXBMCl1IBQPmmFIcdGPNeZpuo0tbnIomapVztNHpL5qlWxKxgOvegZqojsnciGexHTNVmLgs=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772152296; c=relaxed/simple;
	bh=f5c5fudnuO/b92XXnCI08/EBFRV35IQ3PC6gU7eS3dg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KonhsBwGlEh9kjKa28NxuuSryu0TFyrndj6WRfdHtSCf/j1oSTYelh0w1d7GZMOSzSLeXqpyo4vL4MGfbtqqgEnN5Xzq6x9HFaffyx8ZZBGsm8KJ4aguF5gJfiCaIIwijJMrU7wObCyiaZTNMz7b52UJYodUfS8TgoXK5r11APo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com; spf=pass smtp.mailfrom=axiado.com; dkim=pass (2048-bit key) header.d=axiado.com header.i=@axiado.com header.b=Q7ikQnkg; arc=fail smtp.client-ip=52.101.53.88
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=axiado.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=axiado.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CnJsCw99kGkH+hw4BQuqPkQxKEiXOA2mtGqViYXWMDbCjxg0sbadJAsaMArMZfg3EYgkH8rAne03YYhV93WB0luGW1dJWWp/aYSICrFEFCUOku03ofU7R91BCSuzTwZrrq7Hhe+oUI7ECvZO0/NZpL0wIDg+NrnUk/cp6cfvhvU7Gg25oYOn0lT1FwpH0VTKfC10e/0QPWDLxx86apv1INYP04GZ5mM2BnxBKoX2kIiE0k1wofkKXx/zb3QzzER8nQ2JnR0f4UQGzwDWw6wxH4NKopoTumA6ZOgPUv5DPYZ8ahcNCptiWbEFEWq00BUg4cCVWaYnjDh90cc7gF2rsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hCMLQSYvtIqya9aEyo6BVCUSmqrlsEsojIsJtj/t038=;
 b=FdTTuu+7ShCLidEI63UjncZ51HlT9Ray443UCcSdgGUpoFsZp7kXMqeS2GQmQjE9Y2kgcACVIKhIuIQOmEYxduYsR7KNeU6tw5df3GVf5Cn+TayFEVRMxP+m8yGg29lVssutvxIVg2xKmgvWEosuwmyxgqrlszoTnyMAYqoGb1oW0zJoyylcjz8Z1HYZtExwDoI6ToMNQ+SaX44rmjoXsfNSw0LEQsrOY2ajzzFwUNvpt9+lEHGlthACIj9knEKcIWcWuOIcElr+40Oh6uoE7ue6+o00rrwYiNqezV7Bie+3fJLqm7m5ktXIpnrTZWinTuq2gULZY04hsbc/bNnEew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=fail (sender ip is
 50.233.182.194) smtp.rcpttodomain=axiado.com smtp.mailfrom=axiado.com;
 dmarc=none action=none header.from=axiado.com; dkim=none (message not
 signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axiado.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hCMLQSYvtIqya9aEyo6BVCUSmqrlsEsojIsJtj/t038=;
 b=Q7ikQnkg1ki7ssAS8K2cw7ZOPki21oPJ5v81FEVGccuk9pRyEUrQ9/tenafjZV6LNX0HoB+QrocKwS2KCTjkA5JdWfjwd7O/+Bi3HzUKPHRjR1ku/nUztq0qMEv4RKJmFMAcC4JrjCrGuifkILYjCijmppjiVdt1xAZoL3s5+t/uI3KkhvgA8+aS+rqnu7AMxfQUzaf+LMiqr7ltMmKZwEOz6WvEcgYwA5GK5dfrqsHpWbf8bgybLRrsIrWb5Bbef5dWYZX+PR7lji7M43mLiKEduKeNCQ4A61HmHWpBzlMccWRlLJ6iFQ6S9ge/iGLYK2kyjc0DYVbaOhXzVpaFKg==
Received: from SJ0P220CA0015.NAMP220.PROD.OUTLOOK.COM (2603:10b6:a03:41b::19)
 by SA1PR18MB5904.namprd18.prod.outlook.com (2603:10b6:806:3ef::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.14; Fri, 27 Feb
 2026 00:31:30 +0000
Received: from SJ1PEPF00001CEB.namprd03.prod.outlook.com
 (2603:10b6:a03:41b:cafe::f0) by SJ0P220CA0015.outlook.office365.com
 (2603:10b6:a03:41b::19) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9632.23 via Frontend Transport; Fri,
 27 Feb 2026 00:30:56 +0000
X-MS-Exchange-Authentication-Results: spf=fail (sender IP is 50.233.182.194)
 smtp.mailfrom=axiado.com; dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axiado.com;
Received-SPF: Fail (protection.outlook.com: domain of axiado.com does not
 designate 50.233.182.194 as permitted sender)
 receiver=protection.outlook.com; client-ip=50.233.182.194;
 helo=smtp.corp.axiado.com;
Received: from smtp.corp.axiado.com (50.233.182.194) by
 SJ1PEPF00001CEB.mail.protection.outlook.com (10.167.242.27) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.16
 via Frontend Transport; Fri, 27 Feb 2026 00:31:30 +0000
Received: from vm-swbuild02.AxiadoRD (unknown [10.4.1.182])
	by smtp.corp.axiado.com (Postfix) with ESMTP id F30304186B59;
	Thu, 26 Feb 2026 16:31:28 -0800 (PST)
From: Karthikeyan Mitran <kmitran@axiado.com>
Date: Thu, 26 Feb 2026 16:31:26 -0800
Subject: [PATCH v3 1/2] arm64: dts: axiado: Use lowercase hex
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-1-a3b095989823@axiado.com>
References: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-0-a3b095989823@axiado.com>
In-Reply-To: <20260226-maintainers-addition-and-axiado-ax3000_dtsi-update-v3-0-a3b095989823@axiado.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Prasad Bolisetty <pbolisetty@axiado.com>, Tzu-Hao Wei <twei@axiado.com>, 
 Axiado Reviewers <linux-maintainer@axiado.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Drew Fustini <fustini@kernel.org>, 
 Karthikeyan Mitran <kmitran@axiado.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=995; i=kmitran@axiado.com;
 h=from:subject:message-id; bh=BGjstTWXM8EwzVmreSW0TuWco+4YYKACGi0r3fNb8xU=;
 b=owEBbQKS/ZANAwAKAfykr3bAxbrPAcsmYgBpoOXhTSUc6bF2/Nsk5beF58Rbo+UWFWI8L1KvX
 SRK+7oc9MqJAjMEAAEKAB0WIQQykBiJeI5kfMQLrdj8pK92wMW6zwUCaaDl4QAKCRD8pK92wMW6
 zxdoD/0dTxHQ6S8r5BjcZk0+//6gu8AHkfnQD8w9O05Odh+Z3Fx3vj7bzXTZnbJeXODnYee/4Pe
 9bj4yvtLRzrvvSkwMy8d6tQPOQJA2jvHT/uiziR4aKb4jmQSnxlY3BYVprd8p58Qtg8Nnl96hFf
 sGv/tNflkGjzf8TN0jSBrPnVinQqcbVKBNUqvINe8/q76W4KPjjwvAHZWxSEYCBRJFwJs2C49wj
 pI1IUGuU6FNW/j85OE9yeEQvfLfqQFkuyJsZ9vmmoe6aAiiWHDPY4LZszVzSaG/lkHSNi2F9J9n
 +HsbE8jrii3O3Ykv8irfjgVswNQSCErGZbO+00kdq4d7bjtkglTsMnQ/0t4pWM5XaU43Fc3t8Cj
 mYZYCOW7iEJzg9broKnTLfy+sji798e5FMok94iYqZqYk//zU5kuxc85Dk6OFBO5Ova855ycZh1
 9bpaV+T2zL+qJE2tykdb9Qi7qOTecEFnB17itLQEEcCPwHK6MhUfy2BlVf1rrHRnjxTlgnBMOpw
 LOYX4qxwIsCijuXeIB32h3Qakzrp8e+hGwK2vD2m3jMu8YU7v+QpRAEQji7/i0D+nr5kmrTDTfz
 01RNgWR9lq1ZHtLMSaB3tHblKetbqUwnr3hQgAlnvquRsHchZEOqowVK33LoF6RHl5DnhDVxwq/
 qZcEbEJ41gOEG1w==
X-Developer-Key: i=kmitran@axiado.com; a=openpgp;
 fpr=32901889788E647CC40BADD8FCA4AF76C0C5BACF
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PEPF00001CEB:EE_|SA1PR18MB5904:EE_
X-MS-Office365-Filtering-Correlation-Id: f3ab0484-8920-4304-febb-08de75978d27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700013|82310400026|376014|7416014|1800799024;
X-Microsoft-Antispam-Message-Info:
	cQiubVSgZSfwmKJOlpKRcDo9htHMXU0s2cklpNZ9KkXMzW9uA2txrV8bwRWFZz/Jugxm/fnXhyYB721NLaaY0obR1iHJAURXsPexZ8jFPTouUON94DgF0Dzg1BBOsH+7QWX+H0pOsHMrcdeJ1Tk+G7ucHUzTN2hsA3ESkZgvpCVpmewQzZ9VrcVIk/5VuR3H0yxHDGhvSN0IEgLldkIL8CUUndWxV71BXWjxUNCI+dzIF7VmXVqSFBSoWn4m2wzT8p1c0dpeHhsORYUOPWGP/4VAlac52l29x+6RsHydVfoZTor0M0zwmX5iM7Yt80q5TVc5QknH9zviMhEXmI5Osjc1hrDRwaVfq+/pkho4OW5ng6tm5e+aqOt/EUMXYfTpLTGqH25c30+5vvp8wphLxYLwYvbUe/i+myDAPFoN8EdyWaBRI5TNmxGpt1jy1RucgkAhEDCgEgSmU84NYRufXFNImVDWS3tUc4jWoUKeV5sTWiXjElZYCwSvVReo4/XUk0lrzUviTUuznXSfCq3DINNDuZkDSf3xM7tDSrX/Tt+LlrKdxiEEM6d5LdpwRDjV3H7FiLIL7gweCkJjAOCQK0Wy6MbM09MvMo0O+TKwoHpGBpcm8pcrtPxiJtpoAVXJ0zV3wYrwY9Lqp3ws2Ds/VWg/V7AjTrUW8hVCuooa8ZnX/MmQbP6F8IsVUunxVXjeLMD7bdVha/39gsS8jWpiv1AHj3Pw9r4J5XB+JS5jDNlyBnHexa9FLpSb0j8m+AXztWdBbNvxEeJQQkUWBwgBCAfycc+GiwtwDQr1eOHtyBQttFk5X/DnRTlLTuaTI6Rm
X-Forefront-Antispam-Report:
	CIP:50.233.182.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:smtp.corp.axiado.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(36860700013)(82310400026)(376014)(7416014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	+uQGRvPuVp0Romfq9xmGbdXXQsRbyAFCv1/zK4CzYriQiihtHoLSI+aOHrFlJL/Op+7FN0HPtLtWD/+ex9Z3wrGHL85QALPR4WPDrgsoNTKua1klvWH2qVjwwk9CtSmY0009ZpG8cl0JN5f4JC0cBBjOLXFTwhSf3TnKo1Oj5RZsSIZky4yfXj9MGkMxwEQb9w91zawGxa8z+UDWe5dPqdUqBv4mIS+bGzvGFQ4iymWu91VZuAAamh1FhqJ30LxSntnF7weVHQtchMPB1k3BXy1pYaQFyMw60Sp/vQzt2YfCl+11yo2t1n8Ggmai3fk2muT/Z7/RYEUziKih7JMGdnwshGqQRga2EpzvIWuTW6+Y1pQ7t7P2unsNaelsQDrWl0lykySWBcLtJRkfH+7BxSe09/rXMNtG3rXf3b1WLMsFJEbk+pTYOcOwITqzbQPq
X-OriginatorOrg: axiado.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2026 00:31:30.1240
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f3ab0484-8920-4304-febb-08de75978d27
X-MS-Exchange-CrossTenant-Id: ff2db17c-4338-408e-9036-2dee8e3e17d7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=ff2db17c-4338-408e-9036-2dee8e3e17d7;Ip=[50.233.182.194];Helo=[smtp.corp.axiado.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SJ1PEPF00001CEB.namprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR18MB5904
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[cv is fail on i=2];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[axiado.com:s=selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269026-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,axiado.com:mid,axiado.com:dkim,axiado.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[axiado.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[axiado.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kmitran@axiado.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[4.204.163.64:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 48E271B13B1
X-Rspamd-Action: no action

From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

The DTS code coding style expects lowercase hex for values and unit
addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Reviewed-by: Tzu-Hao Wei <twei@axiado.com>
Signed-off-by: Tzu-Hao Wei <twei@axiado.com>
Signed-off-by: Karthikeyan Mitran <kmitran@axiado.com>
---
 arch/arm64/boot/dts/axiado/ax3000.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/axiado/ax3000.dtsi b/arch/arm64/boot/dts/axiado/ax3000.dtsi
index 792f52e0c7dd..d515f3141529 100644
--- a/arch/arm64/boot/dts/axiado/ax3000.dtsi
+++ b/arch/arm64/boot/dts/axiado/ax3000.dtsi
@@ -480,7 +480,7 @@ uart0: serial@80520000 {
 
 		uart1: serial@805a0000 {
 			compatible = "axiado,ax3000-uart", "cdns,uart-r1p12";
-			reg = <0x00 0x805A0000 0x00 0x100>;
+			reg = <0x00 0x805a0000 0x00 0x100>;
 			interrupt-parent = <&gic500>;
 			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>;
 			clock-names = "uart_clk", "pclk";

-- 
2.34.1


