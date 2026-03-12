Return-Path: <devicetree+bounces-274689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDyBIprhsmmWQgAAu9opvQ
	(envelope-from <devicetree+bounces-274689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:54:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E23D0274F52
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A74C316D489
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351763F0A8A;
	Thu, 12 Mar 2026 15:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HTWJcXv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0EC43F0745
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 15:50:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330623; cv=none; b=nYSZNSuNw91kiPdRkHrkT4BFgvf8lYc9qy6XHslyiLAgfMDSRdzhX2hK82qHA1vESWtnDhU5VO3L2nvaIwIhBL0UZc1FHQFjJNo9weMX4ootfX+nfoAKlzl5FDPsDxLeg1ZDGgJL0DHIBX5CFiDqQ/fxO4nl1PDwYI0JcUgzZok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330623; c=relaxed/simple;
	bh=eg8ypgw5ZqfczO8GaLg+1+WWvtaYju8g3PHYUIABZr4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=PKB4xcAB7HOuvoy+GkOwdhZC5FtpmFhZ5ZOvEDIcmiwHQBb+SxJW2uUWxsMYJFlHscYnzV/p0LNSViisQUWBDMSIVQF9rqGHJdzN0bvdWVvtdYG7qtl1fJPGZqdKJuDhIyWVKfDo2hEMN1P1zupoBSlYBBXw5FDDEzJi9hlr6qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HTWJcXv1; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so13138965e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 08:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773330615; x=1773935415; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=godpTaFXAY2ep8bhfkFW/rBnOk7asG87yrTm6n99gBY=;
        b=HTWJcXv1frBLYwg1gZfaX5sDypfPfF45XUImqAgj+ZotTUvOzgPXvpcLQQJBeuFgCB
         5ycDVnAEaJ9y7JU0FPAoqiDTldJqEydWAbCaGlJ8Dc8lvNQOXcH7pcgqCXqipI9lCjR+
         SaYFkJvMVc8z8SwBjgbg+3cokzLqM8+/xJPRbYQkBfyEdk1e5ldYqPK8GJmhUmLNfMqr
         K0SaDGgiZo5kXr/2rwg9TE9V38cSwUpvfxGHjfeBKSdRajktewtwRPM193+EhW7ciMkE
         fIMfWFcpt6S3A2kiyMSw1SgRl4qOC52Utai9K+GfR0Tb/pY98msJiYsZjEHeVi3w+So6
         wzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773330615; x=1773935415;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=godpTaFXAY2ep8bhfkFW/rBnOk7asG87yrTm6n99gBY=;
        b=o+d0SMWUIwtLdMHWOH+D5obopNwT5OMRUkQ4uCrS1yLbYSP3GcZ+JMRTY/LaiqBImg
         yoVbMbG3TBc9iGS8urnEcmxVTkDq/8BA/EtUkTgFOpoqgwvfBdJa3Wyt+9S3rTeJ+Ozc
         0Z4jwODHJPMDdQ27g1oFCfABeKct/EwB3lyuV+G/a+XPELGG1MH9BirE6oxpcI0Cf/n1
         KREWe49qhf4LAnpXecjYrNnyJMbuquKWl6sWNYBsCf6V75EinN/oIKceaP7Q8SPkkyYu
         WtSoNbCBzyV/vEdxJH5w9uglQ8kjJAZR9G/5ZZAse+ygXWBDVENML3jLUAiEVXOQila9
         DE4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXUv2nO+5hk34pbDlHoQlvZKO6gTGQ/NcAwklzEEoBmD161lj70+es2uY2h/3NZ5XpoBKbhlg/FtJQW@vger.kernel.org
X-Gm-Message-State: AOJu0YzPTPinqW1KLfHuRT3I2P5wJlkW6KyJmHN6AiLySP4sDUhv07VL
	8YdR7xKhBS6dzGCU3dLQdGsJsgMCattjN8T5efUeI3wgQ37VDd2pysAWzJE1/M9vjkI=
X-Gm-Gg: ATEYQzzm9BckjIUc5mR/dEkBwWYYkmlop5lpYMgLCbOAxCWWwnC3kv3NLeGrfjfnYJx
	E45+u/DhriU3Wm/aguZB/xww5EQB5ElY7pcZcbS5CC2lgtDNRtc14gy8XuqWKy2fTSKG870oEsD
	vMv8FfXDNtep2/pbaaK9+Zc0ncHd2U5t3gfGKUmCn/mf9lJdW2OBACCzGn9ZTnWkbAc3MiXbZgA
	A+ZHj/Js4TjuhOtZ7/7/Z2SkFSsAYMSjiaJhawdh3CUrp1W6lAX3+UlZ95aMSfH5JpZDUTGBHhL
	mbcX+nU9niAsSAEEGNxW0yRLRFuVXMRqf7UW0F0kOw5i3Cm6JhTZoBKBiQPJKaUZL+fPInTjB/6
	270aFvfIWejNKmNz/HnGXbpq6HuBn48W3KdGoAxYzszk/JLh+zmmfumr+abqhE3gK/LW281qZ80
	mZXF+7oczY9wN/bZJtNcIafnWdsO0BIFg=
X-Received: by 2002:a05:600c:37c3:b0:485:358b:e80c with SMTP id 5b1f17b1804b1-4854ad76a80mr122016195e9.0.1773330614674;
        Thu, 12 Mar 2026 08:50:14 -0700 (PDT)
Received: from localhost ([2001:4090:a244:8139:5278:cf5a:3494:5e80])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b65fd3dsm143086075e9.10.2026.03.12.08.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 08:50:14 -0700 (PDT)
From: "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
Date: Thu, 12 Mar 2026 16:49:01 +0100
Subject: [PATCH v2 7/8] arm64: dts: ti: k3: Use memory-region-names for r5f
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-topic-am62a-ioddr-dt-v6-19-v2-7-37cb7ceec658@baylibre.com>
References: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
In-Reply-To: <20260312-topic-am62a-ioddr-dt-v6-19-v2-0-37cb7ceec658@baylibre.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Suman Anna <s-anna@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>
Cc: Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Sebin Francis <sebin.francis@ti.com>, 
 Kendall Willis <k-willis@ti.com>, Akashdeep Kaur <a-kaur@ti.com>, 
 linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 "Markus Schneider-Pargmann (TI)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=14721; i=msp@baylibre.com;
 h=from:subject:message-id; bh=eg8ypgw5ZqfczO8GaLg+1+WWvtaYju8g3PHYUIABZr4=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhsxND+YW9r5sfuzD9GXfCc7e6YXz4g4satwx0+nwnLUah
 2fz5RXHd5SyMIhxMciKKbJ0Joam/ZffeSx50bLNMHNYmUCGMHBxCsBE9jsz/NP+Pj/qzZbMutbZ
 wkyeN1x3Z+qqHrVcb3l8WfSsWMN/pWIM/4xXl7zlnM+izO41b274epHE+DNFtzmF71gv3d4fFSf
 wmQsA
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274689-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[msp@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,baylibre.com:email,baylibre.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E23D0274F52
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the newly introduced memory-region-names to all occurences of
ti,*-r5f. This helps adding a name to each memory-region so it is
easier to see what memory regions are for.

Signed-off-by: Markus Schneider-Pargmann (TI) <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-ti-ipc-firmware.dtsi               | 1 +
 arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi              | 2 ++
 arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi              | 2 ++
 arch/arm64/boot/dts/ti/k3-am64-ti-ipc-firmware.dtsi               | 4 ++++
 arch/arm64/boot/dts/ti/k3-am65-ti-ipc-firmware.dtsi               | 2 ++
 arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi              | 4 ++++
 arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi              | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi             | 6 ++++++
 arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi              | 3 +++
 .../boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi      | 8 ++++++++
 10 files changed, 38 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-am62-ti-ipc-firmware.dtsi
index ea69fab9b52b0458a830c03adbccbf3c2842a9c9..ad247f53fe82da57504e5ffc0351c8cc3c4a0e67 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62-ti-ipc-firmware.dtsi
@@ -48,5 +48,6 @@ &wkup_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_r5_0>;
 	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
 			<&wkup_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi
index 950f4f37d477a32b5eb5f66c97daed4c8fd09aca..06d4e815b1670beafb8852b76a3f6a79295ce8ca 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-ti-ipc-firmware.dtsi
@@ -66,6 +66,7 @@ &wkup_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0>, <&mbox_r5_0>;
 	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
 			<&wkup_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -77,6 +78,7 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster2>, <&mbox_mcu_r5_0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
index d29a5dbe13ef7e66e7df8e8c3542ab5c4dc64262..5d7f701420e2d8308b637f3064c560e485ed85f2 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62p-ti-ipc-firmware.dtsi
@@ -45,6 +45,7 @@ &wkup_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_r5_0>;
 	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
 			<&wkup_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -56,5 +57,6 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_mcu_r5_0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/ti/k3-am64-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-am64-ti-ipc-firmware.dtsi
index 6b10646ae64a62e19067b80bead7c99643d1702b..51fd9b68f58d1f8ae3a7a77a48f74a77c2c795f3 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-ti-ipc-firmware.dtsi
@@ -126,6 +126,7 @@ &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -133,6 +134,7 @@ &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -144,6 +146,7 @@ &main_r5fss1_core0 {
 	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core0>;
 	memory-region = <&main_r5fss1_core0_dma_memory_region>,
 			<&main_r5fss1_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -151,6 +154,7 @@ &main_r5fss1_core1 {
 	mboxes = <&mailbox0_cluster4 &mbox_main_r5fss1_core1>;
 	memory-region = <&main_r5fss1_core1_dma_memory_region>,
 			<&main_r5fss1_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-am65-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-am65-ti-ipc-firmware.dtsi
index 61ab0357fc0de01df641b887b47e88ee26b4f2fb..e5f37cfd18bc55c86e9970cbfd25d354371ac079 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-ti-ipc-firmware.dtsi
@@ -52,6 +52,7 @@ &mcu_r5fss0 {
 &mcu_r5fss0_core0 {
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
 	status = "okay";
 };
@@ -59,6 +60,7 @@ &mcu_r5fss0_core0 {
 &mcu_r5fss0_core1 {
 	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
 			<&mcu_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	mboxes = <&mailbox0_cluster1 &mbox_mcu_r5fss0_core1>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
index 9477f1efbbc61d0befc56368436ccbc5007a1411..d65f68c7d43210b5af8eff52c5cec6ddb54e5c68 100644
--- a/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j7200-ti-ipc-firmware.dtsi
@@ -100,6 +100,7 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -107,6 +108,7 @@ &mcu_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
 	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
 			<&mcu_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -119,6 +121,7 @@ &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -126,5 +129,6 @@ &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
index 40c6cc99c4056009e9ff66adb831400b8842de9e..5d4fc26b413b22a9c2168e5d37f04475511a75a4 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-ti-ipc-firmware.dtsi
@@ -219,6 +219,7 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &mcu_r5fss0_core1 {
@@ -226,6 +227,7 @@ &mcu_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
 	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
 			<&mcu_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss0 {
@@ -238,6 +240,7 @@ &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss0_core1 {
@@ -245,6 +248,7 @@ &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss1 {
@@ -257,6 +261,7 @@ &main_r5fss1_core0 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core0>;
 	memory-region = <&main_r5fss1_core0_dma_memory_region>,
 			<&main_r5fss1_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss1_core1 {
@@ -264,6 +269,7 @@ &main_r5fss1_core1 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core1>;
 	memory-region = <&main_r5fss1_core1_dma_memory_region>,
 			<&main_r5fss1_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &c66_0 {
diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
index ebab0cc580bbb2fb2b101450ea7def0bf717be0e..5253d028da0946e6dd619c0adebdfcf88400cb14 100644
--- a/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721s2-ti-ipc-firmware.dtsi
@@ -190,6 +190,7 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -197,6 +198,7 @@ &mcu_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
 	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
 			<&mcu_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -209,6 +211,7 @@ &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -216,6 +219,7 @@ &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -228,6 +232,7 @@ &main_r5fss1_core0 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core0>;
 	memory-region = <&main_r5fss1_core0_dma_memory_region>,
 			<&main_r5fss1_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -235,6 +240,7 @@ &main_r5fss1_core1 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core1>;
 	memory-region = <&main_r5fss1_core1_dma_memory_region>,
 			<&main_r5fss1_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
index cb7cd385a1655375931bac1d65fc766ae174234a..a59c3648d8056c8a759fcc536e51bc9adb04a62b 100644
--- a/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j722s-ti-ipc-firmware.dtsi
@@ -123,6 +123,7 @@ &wkup_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_wkup_r5_0>;
 	memory-region = <&wkup_r5fss0_core0_dma_memory_region>,
 			<&wkup_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -134,6 +135,7 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_mcu_r5_0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
@@ -145,6 +147,7 @@ &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster3 &mbox_main_r5_0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi
index 455397227d4a1081a1579061208b7e92db32ebd1..d08fd3ff8a8902b7dc1f0f55c251e5546f1bdd2c 100644
--- a/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j784s4-j742s2-ti-ipc-firmware-common.dtsi
@@ -262,6 +262,7 @@ &mcu_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core0>;
 	memory-region = <&mcu_r5fss0_core0_dma_memory_region>,
 			<&mcu_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &mcu_r5fss0_core1 {
@@ -269,6 +270,7 @@ &mcu_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster0 &mbox_mcu_r5fss0_core1>;
 	memory-region = <&mcu_r5fss0_core1_dma_memory_region>,
 			<&mcu_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss0 {
@@ -281,6 +283,7 @@ &main_r5fss0_core0 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core0>;
 	memory-region = <&main_r5fss0_core0_dma_memory_region>,
 			<&main_r5fss0_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss0_core1 {
@@ -288,6 +291,7 @@ &main_r5fss0_core1 {
 	mboxes = <&mailbox0_cluster1 &mbox_main_r5fss0_core1>;
 	memory-region = <&main_r5fss0_core1_dma_memory_region>,
 			<&main_r5fss0_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss1 {
@@ -300,6 +304,7 @@ &main_r5fss1_core0 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core0>;
 	memory-region = <&main_r5fss1_core0_dma_memory_region>,
 			<&main_r5fss1_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss1_core1 {
@@ -307,6 +312,7 @@ &main_r5fss1_core1 {
 	mboxes = <&mailbox0_cluster2 &mbox_main_r5fss1_core1>;
 	memory-region = <&main_r5fss1_core1_dma_memory_region>,
 			<&main_r5fss1_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss2 {
@@ -319,6 +325,7 @@ &main_r5fss2_core0 {
 	mboxes = <&mailbox0_cluster3 &mbox_main_r5fss2_core0>;
 	memory-region = <&main_r5fss2_core0_dma_memory_region>,
 			<&main_r5fss2_core0_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &main_r5fss2_core1 {
@@ -326,6 +333,7 @@ &main_r5fss2_core1 {
 	mboxes = <&mailbox0_cluster3 &mbox_main_r5fss2_core1>;
 	memory-region = <&main_r5fss2_core1_dma_memory_region>,
 			<&main_r5fss2_core1_memory_region>;
+	memory-region-names = "dma", "firmware";
 };
 
 &c71_0 {

-- 
2.53.0


