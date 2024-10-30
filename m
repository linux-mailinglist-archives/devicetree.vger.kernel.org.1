Return-Path: <devicetree+bounces-117527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 440D99B6CD9
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 20:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69E951C21597
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 19:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4E31CF7D6;
	Wed, 30 Oct 2024 19:25:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jjNyWWT8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735A21CF5F6
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 19:25:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730316303; cv=none; b=BOhFU3EIEoBCK3AI2DlhOoIblbhtwGELqvydRE9EHdLJ5sZu5Cil4IR1nGdmJIC1o2su//G86lBw3k6/cBXU5AE0JBnJ2psg1zZK2VamROjanZ/c+lCFKpFS+oa8yZYm+v4qQPxiQPxhcHJBTw1qSPDUTEdXDsbLdm6MYbhdxPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730316303; c=relaxed/simple;
	bh=Bov05KDdmqHWGehq+YyqmpQVZJh5j9oP9KOkwlfWI4g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jM6XKCdrFICqKwaNATscGoUXVmwCZKiDXJA03BWU+a3XoKI+W+WVdJ5K2+Ugct+MlHjzCtj11iftndjvAjB9+jagCQPKWHgb4l4oFo+CIe4CYLc+Ep+LMw5d1juzc9c6PU7n+HfMlgd60zLmKlIIIFLkapKM4RZ7jQ0q5YDIg+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jjNyWWT8; arc=none smtp.client-ip=209.85.167.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3e5f9712991so139540b6e.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 12:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730316300; x=1730921100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OzA8BNukFWHhlgBsJYf3XljcmP8nqxT8Kq/BFuqh9C8=;
        b=jjNyWWT8PUezCOb3WWxDGWN26UB9sXsOJ72rXfl0eVa+3WCeTDZ63a+2LOvZi1ycZv
         vMcWkFfdiB4o2RQnCHI1OO1IjkKPQ5Rhy3UCs7bX9p0OS/Wi7+Ygvgqx5KWBGpwgLcQJ
         ypym9bMEhxkPQA/ZHyw2dOKjBHrA3BylzoOUdz1mknuicBmthr0VBSwd8un7dcvXBBm1
         AmwUJGuq2tsZ3wU07V8/Bqp2R5dYd8hXN13NKw+P+K9hR3AXne8MGQRAOqGlAP1X3G67
         f0/hfJklrlB0+ljFA2VHZ9ZLqMnLpdZIMvvgj2MNWdoqwtvqIGaEtXbOkQwYamAIVK/x
         rn3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730316300; x=1730921100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OzA8BNukFWHhlgBsJYf3XljcmP8nqxT8Kq/BFuqh9C8=;
        b=akZgc396KfAbiv0JnPgnJLB+bFC8X6qu/Ep50wy6LC5Eqk8vQXi8d/uRBaDlbcmzN6
         kUVaoJoHWKTzb2F8i+mN2HWVCzL6s8UGdG/n6FZhMPNJ09DNvhd1QquCvqruF2Be/ehz
         CYLSlWe9Y0fz+3ORBaUGePJZGCPW0GZqh664k4G2sOmUOWoYeX1KD4ijBNc2HIskYhGM
         Hg0ZvvJeAFjXk3MVa5VCbS1ZXrYrNkP49nCsigoKw/wh6Nrr8wtBqosxcSgJ0/F5zWsc
         x4RyF4RfMS7eSwyv725pz0Hpu0N4hbdbct1GIcuvIsms9brjLFK94TSD9MJsHIue6twc
         c0vA==
X-Gm-Message-State: AOJu0YyD4Bq+oG0xISTS07kNErj1TeS+0rcSYji9F8OtuupKovjUN+mO
	/S2eAsEMrIFa+Vo3w2L6eyPy8bjbNSnOtAlY7R0meOqws+497rL4
X-Google-Smtp-Source: AGHT+IGDjIQHAz86Sc2E5cyg3CMl4OU1oTgIFtLtOW/7+bq6Y16R3i+Xck+yJAG0957Za+Capduq+Q==
X-Received: by 2002:a05:6808:14d4:b0:3e6:2464:9f50 with SMTP id 5614622812f47-3e6384acac2mr14489078b6e.43.1730316300497;
        Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e63248d3e0sm2689204b6e.24.2024.10.30.12.24.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 12:25:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	honyuenkwun@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/3] arm64: dts: rockchip: Enable HDMI0 on Indiedroid Nova
Date: Wed, 30 Oct 2024 14:22:36 -0500
Message-ID: <20241030192236.839105-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241030192236.839105-1-macroalpha82@gmail.com>
References: <20241030192236.839105-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the HDMI0 port for the Indiedroid Nova. The schematics available
show the hdmim0_rx_hpdin is connected, so this pinctrl is enabled in
contrast with the other rk3588 boards.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 065d44735001..7272aba998cf 100644
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
@@ -247,6 +259,30 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
+		    <&hdmim0_tx0_cec>;
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
@@ -924,3 +960,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
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


