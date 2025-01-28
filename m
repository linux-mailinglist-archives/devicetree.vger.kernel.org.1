Return-Path: <devicetree+bounces-141506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D6BA20FC6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 18:50:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9F0E1670B7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D768D1DB34E;
	Tue, 28 Jan 2025 17:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e73HTaAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1832F4315F
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 17:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738086632; cv=none; b=HqTU2tQanx3BlbOqtgJnfYcprgChmHICqRUqHk36ZshrPHbiRkwmY9+LzZEng3vd0eqAVVIuvw67i3LPKI9XUvcgGytnfQuJ23fkctAmIww1CVUhE5coVRx4SeDvj5i+blX5jDfFfl6m9VRkFYzwHP1SXF7vlseou7ma5KXtDPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738086632; c=relaxed/simple;
	bh=uzJlcIgsydT+BpFfWw07Y30pepetGda6/QxJvbs5oHs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NNrE+4/Uv2dNQ2fual78MzTrQtdettOGZYOLHJkhzsToTNroqnyVM+qNPyUEtp2rOBLfJJpAR+F7L2eDEXKzWRO+6vR/PgLuNvJZJed+okG4cuW/WZQiT5AK2IZRXzNxCiOEcLx6KSr1Pe7GWdirZPK26BMUaypS0iX/8ywlWI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e73HTaAA; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43634b570c1so42386685e9.0
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 09:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738086629; x=1738691429; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uIVrQl/xphZReyMY/mk+ecHcMX+B/pfDRrf+HZhkxM=;
        b=e73HTaAAPGRc+gOJ6VubFvkfNcPf1g6Bei0Gwoo/dSQWGiVpb4JTwBtjr5lZX5a859
         gVEPPvMXeCvQUK0597BAiEGCN4R2r12NnHnXHMEJPU+lVZpEt1EWMP5zh4yoKdij3tg5
         U0BlK3mO8K73q/z30fE7bMY1Mz+VJrElahO3/0NurE5HPlC+Xx1Cw4+65cgQDmp3LKIH
         KTCaprVhXbhUqlr3qvbZvXZNBPrloz8SzOEC6Lp3o+DrKttDkxZ8SPiJHF2rOrRk4LMO
         y2f8hS4cDwQsAX9npeJhUx4+G4G4lOH0JWvihqOxcZG3i31gOjofayhVJ93+I2bXOJ52
         NPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738086629; x=1738691429;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7uIVrQl/xphZReyMY/mk+ecHcMX+B/pfDRrf+HZhkxM=;
        b=rLCWMtHjkZ7VsroAWU/ss9L0EEYHWa2djt5VTeaM3p0Y7ki4y0NqL10URJZpOjeRYg
         JLUGxFyoqhglX+JbbH4+v399W+xhhbXdJ9uQJVHmGYTNJ374TSZR+gCHp36m/dVoQVpT
         WQU5GsZAxiQXDdK7DtOsSzNh/6WE/evpohHrh++AraNbNwK/wX/jQJCUa0tFmmIwwm1s
         efkA6YX75I5/pOYksQgOW3sa6UlzFJhNMEQGU7wAiNwqQrMwfDm6GFenJzqfd6+ny76w
         mr6fwXx5m4xlfNdY/Drq5WJl3LJa9KoVKHPHDNPq2SZsr+15+5zFEUSAedWgkvINpMl4
         W+TA==
X-Gm-Message-State: AOJu0YxRIHcPFpxncSl8040wVrhJPLyZQCYQCCOW85wzJHBMn4EKWZir
	cidjB93fgTvFiPRrMxBRlSB726r2MLk3tgAH3tXBsHVaTn/MlcDTh8zWG6+V
X-Gm-Gg: ASbGnct4NZTCCy4L5eDbJ2Mxd4v673/IKfPUQPAcG/0DC6JOYiIcZmnuaQ+9ACr1bNY
	20/OU7Ul6+29pabIkFTbM0z0cYV+3OPoQvnTfVrxW21oPmNmtFO0jUN0poJj54MgUoimLsdtv91
	Bh9eri14b4qgNqIl2OybwdUM26v4ZvL1wNQYut2OVPYxqwsJf6r0aI+JV+5Yen7BbQGTQcukbmO
	Q/8gtHGifLRC5oSS6b3Vks9+spItPU8UJ9CGAFy7uHpfJT20kBzC1T6UFYOb7QuYhQftlPzt8Qq
	kcy14yENj8jfUky0umYHQEYGUQ==
X-Google-Smtp-Source: AGHT+IGij9jBiqX8hytsn51SMKi92Oywynh9DqEORx7eCtHCv+Az1nKey150d5PgCAG/tRaGZH+HfA==
X-Received: by 2002:a7b:c44d:0:b0:434:9fac:b158 with SMTP id 5b1f17b1804b1-438a2b59615mr310195405e9.1.1738086628950;
        Tue, 28 Jan 2025 09:50:28 -0800 (PST)
Received: from localhost.localdomain ([89.47.239.252])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd4fa57csm185040135e9.4.2025.01.28.09.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 09:50:28 -0800 (PST)
From: jomadeto <jomadeto@gmail.com>
To: devicetree@vger.kernel.org
Cc: jomadeto <jomadeto@gmail.com>
Subject: [PATCH] arm64: dts: amlogic: add Magicsee C400 Plus TV Box.
Date: Tue, 28 Jan 2025 18:46:47 +0100
Message-ID: <20250128175008.15745-1-jomadeto@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <PATCH>
References: <PATCH>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Chinese TV Box with Amlogic S912 octa core, 3Gb RAM SoC, 64Gb eMMC.

Signed-off-by: jomadeto <jomadeto@gmail.com>
---
 arch/arm64/boot/dts/amlogic/Makefile          |  1 +
 .../boot/dts/amlogic/meson-gxm-c400-plus.dts  | 41 +++++++++++++++++++
 2 files changed, 42 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxm-c400-plus.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index 2fbda8419c65..cfbe3e999101 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -67,6 +67,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-nexbox-a95x.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-p212.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-vero4k.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxlx-s905l-p271.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-gxm-c400-plus.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-gt1-ultimate.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-khadas-vim2.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-gxm-mecool-kiii-pro.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-c400-plus.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-c400-plus.dts
new file mode 100644
index 000000000000..929c774428f9
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-c400-plus.dts
@@ -0,0 +1,41 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2016 Endless Computers, Inc.
+ * Author: Carlo Caione <carlo@endlessm.com>
+ */
+
+/dts-v1/;
+
+#include "meson-gxm.dtsi"
+#include "meson-gx-p23x-q20x.dtsi"
+
+/ {
+	compatible = "magicsee,c400-plus", "amlogic,s912", "amlogic,meson-gxm";
+	model = "Magicsee C400 Plus";
+};
+
+&ethmac {
+	phy-mode = "rmii";
+	phy-handle = <&internal_phy>;
+};
+
+&sd_emmc_a {
+	sdio: wifi@1 {
+		reg = <1>;
+	};
+};
+
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+	uart-has-rtscts;
+
+	bluetooth {
+		compatible = "qcom,qca9377-bt";
+		enable-gpios = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
+		max-speed = <2000000>;
+		clocks = <&wifi32k>;
+		clock-names = "lpo";
+	};
+};
-- 
2.45.2


