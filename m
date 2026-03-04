Return-Path: <devicetree+bounces-270935-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKXkFbL4p2mtmwAAu9opvQ
	(envelope-from <devicetree+bounces-270935-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 10:17:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AE51FD700
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 10:17:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 616CD3005792
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 09:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF7B3932C7;
	Wed,  4 Mar 2026 09:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="nZ7KJvkb"
X-Original-To: devicetree@vger.kernel.org
Received: from CY3PR05CU001.outbound.protection.outlook.com (mail-westcentralusazon11013031.outbound.protection.outlook.com [40.93.201.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C24386C15;
	Wed,  4 Mar 2026 09:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=fail smtp.client-ip=40.93.201.31
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772615514; cv=fail; b=QJtwesQUy/iDoVhdDTg05D9JucKBppXrKtFuKJ4Ndwgv20oPRiGz8qWTPU/cOxxSSFeZ6/eGxWc8ef9gw9NX6dQMM6utLhAfhzMzrV7O+OawzV8abmrS1xi5gAEARh4i33gVQErUJdqRzLvaaiBnOhkN603hoBaQbNaKK819mPo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772615514; c=relaxed/simple;
	bh=2qKzPBXTmSbbkdrhJ71J66HasTCRxQPhbpVLmO1Vmtw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:To:CC; b=rnPj6Ka5JNf9rwzTk2Qq/J2pUzhNEYbsB5T41ftx3QGoSdgBVSn3KEXg9x8toWGTB3gm3bxkKP5OmQvt+5HtqqOp5zfdfsc/NNdnvXivjo6EW4gJdzWDQd1eHC9CvnrxxkAyJIsDIOJMAIDL+vWR8ARJBEo+6wWVlfk6bzDxSMc=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com; spf=pass smtp.mailfrom=ti.com; dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b=nZ7KJvkb; arc=fail smtp.client-ip=40.93.201.31
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ti.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ti.com
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eumX/8ZN2CHGPcjRBa81LkzR0bayL734L9C/dxdUkGD+x/tjR2lPfxbpaLxyA+GEsGpfbIFJdQ2ujCB9v/4mzIBg2CB1XtBsLupA54kpGIzO+Ziyd/jX07TLyzLGuueb4vY7RE33VIIc3Bg1UOmTI39PkW4uX6Ix4Qn+OPRk34aWlW9xRi2Dt+1aZvlFtiL6CTSql28jNf4UcgQ8Kk4mh6Iywe+RAiIex+DGzNdvD6SRA10sHsYaGv4O0fsgEJHOxKYNWy5Z1e3tGyzF9VIf+9q7/Q+IguoSVFYfCrSkhK/OfDEqEGyf2yBziPsPKgigsLSbnK1FQmfkr0hXa14LfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d1ku7K70/Sa/jEMUfBMIWD7BFpoeLVw7+cKZ9Rv/p/c=;
 b=VQFmKxjOFGpcyGk5374TONsPC+NebCPNd2AQ6GYxwdsPImYsmppNKZa5ieoe4XV2CNWmUZYbZWc0UEzX4ggv1646bUV8OzxYgJfQo595PTQFS8MN/iO1v7a1HYiwqUMGwKVlMkEbD2+W7t9Zba+bBKR3S/OnD7rukzxo9QhSvdUDYL57F9pUO/SO2Z+SNv1w4rflBEbP7IEaGKkRUQ5YtRb3L5jw0FTUbCejmSJy8ZkoHcaylT/t/65DGCW1J1tDzIzf089rjJ6FiUKnJNfX2XYPBDRAbNIEKfHiWqK9sfP0yz8uFfpKSamfdmLYKGe/eET7NvMb4Z3qZZGNMr2ZxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 198.47.21.194) smtp.rcpttodomain=kernel.org smtp.mailfrom=ti.com; dmarc=pass
 (p=quarantine sp=none pct=100) action=none header.from=ti.com; dkim=none
 (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=d1ku7K70/Sa/jEMUfBMIWD7BFpoeLVw7+cKZ9Rv/p/c=;
 b=nZ7KJvkbmHNNlY8xe+mGOv8DjGWNyQieZ3GvUnMdLZqCerMSIafSMAjFYWphvp6dchdOJlZ5Hg3lYXmu3Ud8ESUEaX05qxDhrm+9bmGfT6kab6a/xtNzx0Bt+v9gKM/Rf5s+H3Sei37La8ko7WoFGION173yKlBhoJzAn3fm8JE=
Received: from SN6PR01CA0017.prod.exchangelabs.com (2603:10b6:805:b6::30) by
 PH7PR10MB6532.namprd10.prod.outlook.com (2603:10b6:510:203::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9654.18; Wed, 4 Mar 2026 09:11:49 +0000
Received: from SA2PEPF00003F61.namprd04.prod.outlook.com
 (2603:10b6:805:b6:cafe::58) by SN6PR01CA0017.outlook.office365.com
 (2603:10b6:805:b6::30) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.9654.22 via Frontend Transport; Wed,
 4 Mar 2026 09:11:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 198.47.21.194)
 smtp.mailfrom=ti.com; dkim=none (message not signed) header.d=none;dmarc=pass
 action=none header.from=ti.com;
Received-SPF: Pass (protection.outlook.com: domain of ti.com designates
 198.47.21.194 as permitted sender) receiver=protection.outlook.com;
 client-ip=198.47.21.194; helo=flwvzet200.ext.ti.com; pr=C
Received: from flwvzet200.ext.ti.com (198.47.21.194) by
 SA2PEPF00003F61.mail.protection.outlook.com (10.167.248.36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9678.18 via Frontend Transport; Wed, 4 Mar 2026 09:11:48 +0000
Received: from DFLE203.ent.ti.com (10.64.6.61) by flwvzet200.ext.ti.com
 (10.248.192.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Mar
 2026 03:11:24 -0600
Received: from DFLE213.ent.ti.com (10.64.6.71) by DFLE203.ent.ti.com
 (10.64.6.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20; Wed, 4 Mar
 2026 03:11:23 -0600
Received: from lelvem-mr06.itg.ti.com (10.180.75.8) by DFLE213.ent.ti.com
 (10.64.6.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.2562.20 via Frontend
 Transport; Wed, 4 Mar 2026 03:11:23 -0600
Received: from psdkl-workstation0.dhcp.ti.com (psdkl-workstation0.dhcp.ti.com [10.24.51.24])
	by lelvem-mr06.itg.ti.com (8.18.1/8.18.1) with ESMTP id 6249BKWt3789067;
	Wed, 4 Mar 2026 03:11:20 -0600
From: Aniket Limaye <a-limaye@ti.com>
Date: Wed, 4 Mar 2026 14:41:05 +0530
Subject: [PATCH] arm64: dts: ti: k3-j722s: Add main_i2c4 device node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260304-j722s-main-i2c4-dt-v1-1-03f79f0cdf97@ti.com>
X-B4-Tracking: v=1; b=H4sIACj3p2kC/x3MQQqAIBBA0avErBuwUSq6SrQQHWuCLDQiiO6et
 HyL/x/InIQzDNUDiS/JsseCpq7ALTbOjOKLgRS1SiuNa0eUcbMSUcgZ9Cf2ttHGeGVCYCjhkTj
 I/U/H6X0/Nk/A7GQAAAA=
X-Change-ID: 20260303-j722s-main-i2c4-dt-8a1344d04ffe
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, "Tero
 Kristo" <kristo@kernel.org>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <u-kumar1@ti.com>, Jared McArthur
	<j-mcarthur@ti.com>, Aniket Limaye <a-limaye@ti.com>
X-Mailer: b4 0.14.3
X-C2ProcessedOrg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA2PEPF00003F61:EE_|PH7PR10MB6532:EE_
X-MS-Office365-Filtering-Correlation-Id: fe43490b-e3c3-4d04-d1e4-08de79ce10b6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam:
	BCL:0;ARA:13230040|36860700016|34020700016|1800799024|82310400026|376014;
X-Microsoft-Antispam-Message-Info:
	74Qey+VUbSBXdrBqEaoXGJL4NWu8dkrfAtEcGyD9YXkam07VCJnHlOEVRoTs+srqyVJN/+bvPHhHI5DyskW58/3hVajyrcSrnHijeD1FBNytVkI783/6Edcu6EckkRYNSfmf+M6tlQIkVlbN5M6csP9hpVWwRciNXISOE0iSfxQHh2zGaH0OprN7mvf67mTuM86wz8hJx2DF5rM2L9YxQHCHxAPCj6HF93sfo5olCJN5nV2IzMVk2Zcmvlt9JkjtNDtm7Zyh2FPRnOobnhnS+3QhgI3Q30isffwtT9tWNLfLl4SNkw/YlMSJ0kXFHLLlfIl/GBfE6GxdYr4bd5kDbCTGLIjD1pxRQyKoQNLrc8N61y2l33CXoPGep2hAz+ohcSYuXX1gaHcxzypYtWnqJk/47efsRTg9YS1ajSh+ZhQl27vP2F0XeBzZHmwS2OY65Q09cwNmCV0PnbrR0kHUBh0VL5cBd/GwAqtcsQBJK9VoUK0htvM77PbkpJpQqrAaEe9L4hRTE+3G/rfsygMQjoKwwlME35h372X+Vi5WZVnn/L3pN6+A3Stm976oVDGmv4Yzf9rklW0pQGmK5veqcmESpUl86wrmbfpaRukqOrL/GpGYLmgZ+CQG/GyM+csHi0NEJ08onnBwDW/ksei4Q3Nao0n5LAQiKc1xXhdK1hvI4pA6sRRNSpYILcr3LZpPirIK5aIlJWIQJoZo+0cof3AoxiDlJvfcIl5m3ipoWEw=
X-Forefront-Antispam-Report:
	CIP:198.47.21.194;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:flwvzet200.ext.ti.com;PTR:ErrorRetry;CAT:NONE;SFS:(13230040)(36860700016)(34020700016)(1800799024)(82310400026)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0:
	2h3dAlBo0orfcn9LekItguaoRZGJXLWRlfQOtE937NF6eG4hvRJJCTEf/dsmTS9wOpuglNeVbCF8XEdJsI9iWM2bRFVYEFACNeCmEQOiy4rqwl6R4xy1o9IIbRdPulNqHN04TXMl0Jc6O4n5LJiHFey+IYUUgmzxGjirQpL+NuTNqGjI2hd3XKJkLOe2mOWM6N93v95JukYLdHYuzbF0ZVFhh1XR7bqR71sotJiHhWlfY+jcjC8B1xatfH93Px6CI2KkHYPptwARcwI1/Ug/R8P3imKbEskLSDBOloejbA5rETAnSO8pP3/SnuLBX+UsDWv9n5HVz2rII5EDZgvGydiQckNdcaG/cbPcX99Te4oRg+HsiCGGERbC2QCIppu6x9eNgqrSLVa0cY22qzIIWqDZjNZ+7nsDlsTeqDnruJR9NfdLthZubXWWG5AJQJqu
X-OriginatorOrg: ti.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2026 09:11:48.3427
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fe43490b-e3c3-4d04-d1e4-08de79ce10b6
X-MS-Exchange-CrossTenant-Id: e5b49634-450b-4709-8abb-1e2b19b982b7
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e5b49634-450b-4709-8abb-1e2b19b982b7;Ip=[198.47.21.194];Helo=[flwvzet200.ext.ti.com]
X-MS-Exchange-CrossTenant-AuthSource:
	SA2PEPF00003F61.namprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR10MB6532
X-Rspamd-Queue-Id: A3AE51FD700
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_REJECT(1.00)[cv is fail on i=2];
	DMARC_POLICY_ALLOW(-0.50)[ti.com,quarantine];
	R_DKIM_ALLOW(-0.20)[ti.com:s=selector1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270935-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[ti.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a-limaye@ti.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Action: no action

Add missing device tree node for main_i2c4, and the corresponding ranges
in cbass_main. Interrupt for this i2c controller is routed through the
Main GPIOMUX Router.
Base address, Interrupt IDs are taken from J722S TRM [0].
Device, Clock IDs are taken from TISCI docs [1].

Additionally, the I2C4 is the only interrupt source to the GPIOMUX INTR
router that generates level interrupts, while all other sources generate
edge interrupts. Due to this, the router needs to handle interrupt-type
on a per-line basis. Modify the router node and its consumers to
specify the interrupt type corresponding to each interrupt line.

[0]: https://www.ti.com/lit/zip/sprujb3
[1]:
https://software-dl.ti.com/tisci/esd/latest/5_soc_doc/index.html#j722s

Signed-off-by: Jared McArthur <j-mcarthur@ti.com>
Signed-off-by: Aniket Limaye <a-limaye@ti.com>
---
Note:
Support for per-line interrupt-types was added through a recent series
[2], which was already merged in.

Testing:
- Enable I2C4 (additional DT patch) on j722s-evm and run i2cdetect [3].
- Add testcode to ignore the NACK interrupt, which results in an irq
  storm -> showing that GIC is actually receiving level interrupt from
  the INTR [4].

[2]: https://lore.kernel.org/all/20260123-ul-driver-i2c-j722s-v4-0-b08625c487d5@ti.com/
[3]: https://gist.github.com/aniket-l/844925345316adf9f65f04c8cdedd62d#file-j722s-evm-main-i2c4-working-logs-txt
[4]: https://gist.github.com/aniket-l/844925345316adf9f65f04c8cdedd62d#file-j722s-evm-main-i2c4-irqstorm-logs-txt
---
 arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi | 13 +++++++------
 arch/arm64/boot/dts/ti/k3-j722s-main.dtsi              | 13 +++++++++++++
 arch/arm64/boot/dts/ti/k3-j722s.dtsi                   |  3 ++-
 3 files changed, 22 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
index 0e1af2a69ca2..f130c7cb998d 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-j722s-common-main.dtsi
@@ -543,10 +543,9 @@ main_spi2: spi@20120000 {
 	main_gpio_intr: interrupt-controller@a00000 {
 		compatible = "ti,sci-intr";
 		reg = <0x00 0x00a00000 0x00 0x800>;
-		ti,intr-trigger-type = <1>;
 		interrupt-controller;
 		interrupt-parent = <&gic500>;
-		#interrupt-cells = <1>;
+		#interrupt-cells = <2>;
 		ti,sci = <&dmsc>;
 		ti,sci-dev-id = <3>;
 		ti,interrupt-ranges = <0 32 16>;
@@ -558,8 +557,9 @@ main_gpio0: gpio@600000 {
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&main_gpio_intr>;
-		interrupts = <190>, <191>, <192>,
-			     <193>, <194>, <195>;
+		interrupts = <190 IRQ_TYPE_EDGE_RISING>, <191 IRQ_TYPE_EDGE_RISING>,
+			     <192 IRQ_TYPE_EDGE_RISING>, <193 IRQ_TYPE_EDGE_RISING>,
+			     <194 IRQ_TYPE_EDGE_RISING>, <195 IRQ_TYPE_EDGE_RISING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		ti,davinci-gpio-unbanked = <0>;
@@ -574,8 +574,9 @@ main_gpio1: gpio@601000 {
 		gpio-controller;
 		#gpio-cells = <2>;
 		interrupt-parent = <&main_gpio_intr>;
-		interrupts = <180>, <181>, <182>,
-			     <183>, <184>, <185>;
+		interrupts = <180 IRQ_TYPE_EDGE_RISING>, <181 IRQ_TYPE_EDGE_RISING>,
+			     <182 IRQ_TYPE_EDGE_RISING>, <183 IRQ_TYPE_EDGE_RISING>,
+			     <184 IRQ_TYPE_EDGE_RISING>, <185 IRQ_TYPE_EDGE_RISING>;
 		interrupt-controller;
 		#interrupt-cells = <2>;
 		ti,davinci-gpio-unbanked = <0>;
diff --git a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
index 9ee5d0c8ffd1..ddf20e44f0ea 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-main.dtsi
@@ -154,6 +154,19 @@ usb1: usb@31200000 {
 		};
 	};
 
+	main_i2c4: i2c@fe80000 {
+		compatible = "ti,am64-i2c", "ti,omap4-i2c";
+		reg = <0x00 0x0fe80000 0x00 0x100>;
+		interrupt-parent = <&main_gpio_intr>;
+		interrupts = <178 IRQ_TYPE_LEVEL_HIGH>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		power-domains = <&k3_pds 257 TI_SCI_PD_EXCLUSIVE>;
+		clocks = <&k3_clks 257 2>;
+		clock-names = "fck";
+		status = "disabled";
+	};
+
 	ti_csi2rx1: ticsi2rx@30122000 {
 		compatible = "ti,j721e-csi2rx-shim";
 		reg = <0x00 0x30122000 0x00 0x1000>;
diff --git a/arch/arm64/boot/dts/ti/k3-j722s.dtsi b/arch/arm64/boot/dts/ti/k3-j722s.dtsi
index 059c65ece183..1b36dcf37925 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s.dtsi
@@ -160,7 +160,8 @@ cbass_main: bus@f0000 {
 			 <0x00 0x0fd80000 0x00 0x0fd80000 0x00 0x00080000>, /* GPU */
 			 <0x00 0x0fd20000 0x00 0x0fd20000 0x00 0x00000100>, /* JPEGENC0_CORE */
 			 <0x00 0x0fd20200 0x00 0x0fd20200 0x00 0x00000200>, /* JPEGENC0_CORE_MMU */
-			 <0x00 0x20000000 0x00 0x20000000 0x00 0x0a008000>, /* Third peripheral window */
+			 <0x00 0x0fe00000 0x00 0x0fe00000 0x00 0x000f0400>, /* Third peripheral window */
+			 <0x00 0x20000000 0x00 0x20000000 0x00 0x0a008000>, /* Fourth peripheral window */
 			 <0x00 0x30040000 0x00 0x30040000 0x00 0x00080000>, /* PRUSS-M */
 			 <0x00 0x301c0000 0x00 0x301c0000 0x00 0x00001000>, /* DPHY-TX */
 			 <0x00 0x30101000 0x00 0x30101000 0x00 0x00080100>, /* CSI window */

---
base-commit: d517cb8cea012f43b069617fc8179b45404f8018
change-id: 20260303-j722s-main-i2c4-dt-8a1344d04ffe

Best regards,
-- 
Aniket Limaye <a-limaye@ti.com>


