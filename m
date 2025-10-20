Return-Path: <devicetree+bounces-228688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F13DBEFFF7
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 10:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 265514F0372
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 08:39:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ACA72EC566;
	Mon, 20 Oct 2025 08:39:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SGd/5LmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574452EC0B6
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 08:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760949596; cv=none; b=UB+pz8i2eFDx9/KLW3WN55D/X4c6w6nzm3G9SfAg584LuNdZOKYNh6Y05n++S9XdHkak40O7+/kYvqunzN4dQ7ocfcDGce+n7sjXgrBXPzjhcECH+vqoCna4VUJx2SfPCxBw87doIHdckF+WzMGTyyK4e+b+0XIz0n9iefos6/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760949596; c=relaxed/simple;
	bh=g2wucMqTimj4B/Ivo20ub1OfTsfZvS3GyFBla5SPJKQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c50h60DA7BNqcjz7Dhn/KEAeJcTERN5awx2mNNxMGq4iRLAJTTqXwPAK1yGMp29zXIaQL2Id+DlAzi5wAVfbbJgIhC80h4KYjgmja666JHiAPY/MoJtN+4BO20LD44EwwNmWt74Zrb6j/McIUmSaWo8sNgRA9/1YcAYVhUADlLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SGd/5LmW; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-781db5068b8so3122036b3a.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 01:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760949594; x=1761554394; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Der7FNf7I/75zOWZ+nH7KDaewc2YUf74Wn4YmPEFp9w=;
        b=SGd/5LmWKnxyAmD20X5V+6DGASvrbcOzNqyWDsT1DmmUisPmrDuNZqngAh2mFG3smy
         N6rhgBCS21isEAaWNMK/UYLIcSZiFpZr4hJHcaCyNQBQaZyCHK77q79P2+xao3LbjL4H
         FwhM6GlS4XkRErUxrzVTYMDLIQ+VmXTFpdoyDMqfU4Han4DSGVQDeIRO4FcrR8geBFjY
         5RliSelGsOYMPNVWN/gMtoxXO2WH5N4xDoQKfjJ07vfuSWwSp6GdDxFXBRa4bMY9UOJ0
         P+5RdMElE1m/6CwK8DEYI4wxYo2/9Sf7T4MpjsNd2Ia3mZDYpOmYPDukoS0/Ggp3iwvr
         epjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760949594; x=1761554394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Der7FNf7I/75zOWZ+nH7KDaewc2YUf74Wn4YmPEFp9w=;
        b=ibJ0IJBdCPAWnX1qZ5U8wlR4Hqisw3Xy5L6r8KGiEcYsL75ULm8CTJsPAyHZcVGF69
         LycuUhn+k+h6pJzAE/Npx6NklPia3nNzmlDoi0KjCjdVgke3NgjO+1KyT5a5X0h6L/PG
         L5Fp3Z7gEKOaDwoQuP4Yj+s9c+8Z/AGdmLO+NrSShL9zDagWO+rHdpijawgO0SzZEIs1
         Q8S/7WFfX/8mrcY0Vytnbm67kKIZsZQanS0IkC/JkfLuaxRqexWsUnjhoRDp/ZiE8Fyv
         hUQVZdXYeBqpfZQewZbLW967ebdAZErnpbQkb3l3Sq91/9Udql7m6Io+OhK/43aB4Rwj
         AHNg==
X-Forwarded-Encrypted: i=1; AJvYcCWF/OB+xyXIykC/Pdofih6ES+5CNikhZPLqsZpe0GlY+OTv1cZ7UIMReycEWeH2Xx4/Sv4CUOqGAR8z@vger.kernel.org
X-Gm-Message-State: AOJu0YxgACNor9znxwxiiWA/VZr3TW4s6Esf+lqwcr6CzbZLvx7T7HNR
	i3ojgrjbLc6Ins0QkhuinTbuJInvQYyG/OjTmrsfnc04TwWqKQYwTm3u
X-Gm-Gg: ASbGncsfNHnj7yYcdO5O8yLy86ZvH86awu2mtdo5Hp8KOpdziEB6MDDb3bEILOkx6wF
	vlp2GjCeThZnQ2YRm1TCQ3SULTDKf7amPm8QZxeq0mKSfgC4Zu2iZuK4KwxMX1AptphPX0ridaZ
	M0tQTpK6sgpLJgVodMzm7KARw4fEPgjHIiSvQKZy02eumpz1GInc/eP+86rUus4y0HmU5NU+6rX
	OoQl5iEYzNTc/i3cO+ES7XQbhY/ZhnCOg8OvBMxgCgBDnRcX9rIJFovH9DwQStUZs9HyLHH3GHL
	F+gso5z1+wHgQphhfi+ZauDthk1koSZovouNyx2t+KltBTtIAHe9E4s21NlYFX6My9dBu/x9Fga
	SR+5rWZuyUtP4gDAI3bj/4pi01dDZeu6mV98dTE9H9f85UV+Z+o3ZfBf7p0q7cwWQS0edeaWgth
	yhfCPgrEC392lONi7u
X-Google-Smtp-Source: AGHT+IH5hJNrWZcw8SGaOXSO92jouYGCNb4bb6h9USPjEKev2+BmrDNRUvPUZjLgcO+zgva54ShEvw==
X-Received: by 2002:a05:6a20:a11e:b0:334:8d0b:6639 with SMTP id adf61e73a8af0-334a8522be5mr16850362637.10.1760949593658;
        Mon, 20 Oct 2025 01:39:53 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a76b5d0b4sm7062386a12.29.2025.10.20.01.39.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 01:39:53 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: Longbin Li <looong.bin@gmail.com>,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 3/3] riscv: dts: sophgo: Add USB support for cv18xx
Date: Mon, 20 Oct 2025 16:38:33 +0800
Message-ID: <20251020083838.67522-4-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <20251020083838.67522-1-looong.bin@gmail.com>
References: <20251020083838.67522-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add USB controller node for cv18xx and enable it for Huashan Pi, milkv-duo.

Co-authored-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
---
 arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts |  5 +++++
 arch/riscv/boot/dts/sophgo/cv180x.dtsi           | 16 ++++++++++++++++
 .../riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts |  5 +++++
 .../boot/dts/sophgo/sg2002-licheerv-nano-b.dts   |  5 +++++
 4 files changed, 31 insertions(+)

diff --git a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
index 9feb520eaec4..0e6d79e6e3a4 100644
--- a/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1800b-milkv-duo.dts
@@ -100,3 +100,8 @@ &uart0 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/sophgo/cv180x.dtsi b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
index 42303acb2b39..1b2b1969a648 100644
--- a/arch/riscv/boot/dts/sophgo/cv180x.dtsi
+++ b/arch/riscv/boot/dts/sophgo/cv180x.dtsi
@@ -432,6 +432,22 @@ dmac: dma-controller@4330000 {
 			status = "disabled";
 		};

+		usb: usb@4340000 {
+			compatible = "sophgo,cv1800b-usb";
+			reg = <0x04340000 0x10000>;
+			clocks = <&clk CLK_AXI4_USB>, <&clk CLK_APB_USB>;
+			clock-names = "otg", "utmi";
+			g-np-tx-fifo-size = <32>;
+			g-rx-fifo-size = <536>;
+			g-tx-fifo-size = <768 512 512 384 128 128>;
+			interrupts = <SOC_PERIPHERAL_IRQ(14) IRQ_TYPE_LEVEL_HIGH>;
+			phys = <&usbphy>;
+			phy-names = "usb2-phy";
+			resets = <&rst RST_USB>;
+			reset-names = "dwc2";
+			status = "disabled";
+		};
+
 		rtc@5025000 {
 			compatible = "sophgo,cv1800b-rtc", "syscon";
 			reg = <0x5025000 0x2000>;
diff --git a/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts b/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
index 4a5835fa9e96..aedf79f47407 100644
--- a/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
+++ b/arch/riscv/boot/dts/sophgo/cv1812h-huashan-pi.dts
@@ -86,3 +86,8 @@ &sdhci1 {
 &uart0 {
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts b/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
index 86a712b953a5..b1853770d017 100644
--- a/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
+++ b/arch/riscv/boot/dts/sophgo/sg2002-licheerv-nano-b.dts
@@ -93,3 +93,8 @@ &uart0 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&usb {
+	dr_mode = "host";
+	status = "okay";
+};
--
2.51.0

