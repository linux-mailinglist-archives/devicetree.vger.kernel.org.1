Return-Path: <devicetree+bounces-117804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8BD89B7DD0
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 16:07:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 920581F21535
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 15:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E88D21A255A;
	Thu, 31 Oct 2024 15:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UewkTDYa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F05336A019
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 15:07:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730387252; cv=none; b=uiVT2YHcVjM9nG4HxyPVsLuY1dXD53F8F2V+bwWzZSscaALF5a16pgsBlKYuSo2IGY7t2nOTYrEqmZgaXjFGOCzvRrV7tvK9o7uE52IMZixhdoWFpzfxnfGtGECuox6ckdxp5VA+Y9Lld1rKRjXX1LtZJOFEy7NJfJCjetRQxyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730387252; c=relaxed/simple;
	bh=COcuBig8GEG/5Qrga7lfsBTbKmx/g8I88+wIiDqBNiM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oRKPt0jDAsM/JAm8A/nM+Oj3AjVVJT1hZWJFoNVcOgrFsbYU2c5XFTliaN0cA9g6PsbYDvkuXyVPtiOVIVMH6tucuy1dAUoyjn5cQXzSrrURBmVRQkAF3AqJPi1TyhTmXKGb5J6na0VifhLl6DaWEymXhVlfGY42Lr5Ec5nf+bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UewkTDYa; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5ebc22e6362so495848eaf.2
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 08:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730387250; x=1730992050; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jlWwUEVPL4Ht5JR9rZd0qrjB4/ZUY1ibxQvg14KDPjs=;
        b=UewkTDYab6liqtKcrvPK0uEAbuYd3j7CyOYNn88ZI+V+t3v9x7lAgRkPo/dMp13oYS
         bZmesArc2f7dfj+xar5mbyxOdJbAMuBqG1dWgtYv1SRx4ze8tp1DnGUOaQH7zgAHFFU3
         WxhJDFbKZkXhS3s6nhcoVuwQQ2SJO5cv+cKGkLS8UJCTTYnxaGCPGjxz4jXqS+fDpscm
         75ycxs1WWqn63SZQ07eSRcFoSJtiJJL5Lu5+gqbC7RJvLpHHcslfbJ3r22wZcbAmxfmq
         hs23U3WcHn+jdaJfWOt7m+6+KEnbZUQbZr+UoE/chuqh9KKvjGtojwE0IYt0aEpZhoHA
         6K8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730387250; x=1730992050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jlWwUEVPL4Ht5JR9rZd0qrjB4/ZUY1ibxQvg14KDPjs=;
        b=nlJdcG9NHVzGbKf2Q1LLgSfIqyTxUTSoipHSBVh0bbGQidnkKsTRgLLtEFOWeTd8SB
         6dKsYI8SKrfVa650Eg1+mMWm/qpBL1XBv9tvo3RG3rZeVUOHCRcc/qeTihZ9E/jAEZCP
         ABtqO7JOgi2ERyCYZaf/Iu3Bu/L5yAZYGuflPH9SdARmiq1TBi/1b6uMinPXErdbwhjq
         Ot2gXyyvP5FpzuRsdkfZSeGmrbgG9ny3THNb0V98qW2utmM+R/NAY0PX3hGDSBHz/UDQ
         m+aSZXgYeO/YyL509Kk0U7QyCh/b4ReWT991L32gY7gnro5D5wgZ3Ro7VXTd5sELZt3P
         z1Jw==
X-Gm-Message-State: AOJu0YzK8j4eWwPEf/n0HAg/870fuEKPIRytozW4eKjkA41NMEGdDsfD
	KMNWY+OTiirXkvIxpD7LE3Cl4FO92HUoVPXclpUkt3v3yvfE+91H
X-Google-Smtp-Source: AGHT+IHrnnNEC7W9Gy4tyX2vX0j96eLcc1aZvHwwgyHwDkIycahdXSdL0CeVLvLWa3/QOhDfjFUDcg==
X-Received: by 2002:a05:6820:1c9d:b0:5e5:941c:ca5a with SMTP id 006d021491bc7-5ec6da771ebmr2078268eaf.1.1730387249972;
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ec704bfefdsm317330eaf.4.2024.10.31.08.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 08:07:29 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
Date: Thu, 31 Oct 2024 10:05:05 -0500
Message-ID: <20241031150505.967909-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241031150505.967909-1-macroalpha82@gmail.com>
References: <20241031150505.967909-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the HDMI0 port for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 065d44735001..3a41b9c00010 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -5,6 +5,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -50,6 +51,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clock-names = "ext_clock";
@@ -247,6 +259,29 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-0 = <&hdmim0_tx0_scl>, <&hdmim0_tx0_sda>,
+		    <&hdmim0_tx0_hpd>, <&hdmim0_tx0_cec>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -924,3 +959,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 		};
 	};
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.43.0


