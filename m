Return-Path: <devicetree+bounces-148672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91173A3D051
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 05:11:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 878AC189D118
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 04:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B52D41D516F;
	Thu, 20 Feb 2025 04:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CUKnT7ep"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213DD1D7E5B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 04:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740024667; cv=none; b=IQEDGemFi0I2idNo9LodJb3966ti+KfCo+WysZrfA9oy7wLipWkIGffVXelm+Cdobu/9lYaGj8HonMRkjx0iQiuSMp7Y6BRJqTbFFuo9WbrLaopjVnB8FxySSU/Vzz7SEZsTgjeBH4ZUyZXHKn7UZyvCZJVNZhLa1ysu+++wrbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740024667; c=relaxed/simple;
	bh=wyWvglaHvbLr5A1/ZJSSnph2Fzpw3exTfhQN0r4Ourw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JMDTcC7WB7zwgjARKaarp2Xv6ekaHizAKrj8sdUZn9k4DRNKqzhMLiuT8PKsNVh1ufGS3KoYJbjDDBAnQaxUNYmUuNphEzbSPm9IGgZbc69BHnEr82NQAeZOGudL2/Jy46TIPtk39QnN2K5ffDFN2GffciysE8bS82vSpGybE+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CUKnT7ep; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7272dae0604so272983a34.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 20:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740024665; x=1740629465; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f0Jk5DjPf8kGEkzOhcTQC9chMDKvl9vyAtJcg2idJsM=;
        b=CUKnT7epZIOa+SF2y+mR7NGZHfI/9SbYHXBj0I8h+4OVWB/L1m29+ZY6gtNOoNOkjL
         Zoz49sEJei/03U5HjQeyH6e9ZHUI8pEpUEBuJTdmI8U9VzliFAz2ioTuSVGKyb7UIkEl
         g5+klugm/oKOoHxkIoklR3b7FepWVXPfRByieJKR7aOWjzTS/j0UG2px7aKR/a2S0ebw
         X5zOHVBkLKGYAK7rLGfVGWUg7MkF/C0MOg2HD6y/NDXhAP61+qejJRXxpw5hYfdnpScG
         tFB/e6+GCRH7jwao38Adg3NUus/Ki3eAlMkSWWt/sCOAIp2SLZOXpHb6unuv0M+lYRMe
         88mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740024665; x=1740629465;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f0Jk5DjPf8kGEkzOhcTQC9chMDKvl9vyAtJcg2idJsM=;
        b=stSWDFGrSD14GY0GEXpRZASNbzdUpjgtlqMBCLs96q6dao4KvlkG2xBLguwZL7IZaI
         CzJCRXgy7zUAvxbi/xffxiXP1HFdx1hiUwZdgvcwH/bD4HRNP4OAXuN8Gqa1hRUtxugC
         xV5INAxVQ6J0ZpnDDoWr8EB7g5QGjQUW4rlCGWlcfCGr/fLe1dsNH3UvugR1FENmb+Xg
         e0H6SIQ4oI9dnyZz5Vm3WF5/JCYH/0yQLwX0ZZMlxipQScbv9z15HWqM+zTzAB+zZlG2
         K+SE2+e2w0ZN/iDPkwkCGTwC05DxjMqV9Y9OT0xYBYnTwJ1UBPDaKINyfCEhv2tb19hJ
         4Puw==
X-Forwarded-Encrypted: i=1; AJvYcCXZpmMh9uFH26bKmVVQPQ7cNpGjzHNYLwdaf+/xk4cq+CNoqy/Ju1elOvNkuMcMf2F3UQSZC4J1VFWW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0XYxsWSavtIprSzhbrQ8hUA07D79s7C6eZqNNL0h3Pdj+ZgAH
	pF/pp4+C9j2xno2CI9omV9o8V9hiAFKOs0ax+nNuDUYH8rRuxIkl
X-Gm-Gg: ASbGnctpN5h7942ToA9kjccfellCFhJuiYNMxTPHO3X2rnrzoC/JKRpK49xfttZgNsV
	juVhLBHVWjIld7a9+KjHC1DYVZZBlFaOX02o2O5KkF3MGD+z7Jn3scsEexrxI8OTlgWCAE2R5+N
	46CLM+BMBqNTJRvkKV/SWi2gu0N2/YMBXmA8jgd/TENI+jGSR9Xeuy0odqLYUs0/FYGNheVDNxR
	OCXzAWldtZ7J29FkRjkSXP40JfcV9YIbXPP8MOr8NL/mpB/mbTKm7lrPdcXcAGt1swR6EUwhZ8+
	TsMrkuh9P7tkrM7DbEN5jQ1e
X-Google-Smtp-Source: AGHT+IEDT3C8LK0nuarC7egRgKfpQfO4rWBdNfojWxtSEg3bpFiZsKlVvLy6hdQVmNMmvRwYmyp03A==
X-Received: by 2002:a05:6830:3897:b0:727:423c:95d1 with SMTP id 46e09a7af769-727423c9870mr1314462a34.1.1740024665010;
        Wed, 19 Feb 2025 20:11:05 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:20f3:777f:5ae9:b018])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-727378237e4sm1025875a34.47.2025.02.19.20.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 20:11:03 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH UNTESTED v5 3/4] arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Ultra
Date: Wed, 19 Feb 2025 22:10:09 -0600
Message-ID: <20250220041010.3801-4-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250220041010.3801-1-honyuenkwun@gmail.com>
References: <20250220041010.3801-1-honyuenkwun@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the only HDMI output port on the Orange Pi 5 Ultra

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 .../dts/rockchip/rk3588-orangepi-5-ultra.dts  | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
index 93561b7a0938..5f673ad51686 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-ultra.dts
@@ -4,11 +4,46 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588-orangepi-5-compact.dtsi"
 
 / {
 	model = "Xunlong Orange Pi 5 Ultra";
 	compatible = "xunlong,orangepi-5-ultra", "rockchip,rk3588";
+
+	hdmi1-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi1_con_in: endpoint {
+				remote-endpoint = <&hdmi1_out_con>;
+			};
+		};
+	};
+};
+
+&hdmi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx1_cec &hdmim0_tx1_hpd
+			     &hdmim1_tx1_scl &hdmim1_tx1_sda>;
+	status = "okay";
+};
+
+&hdmi1_in {
+	hdmi1_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi1>;
+	};
+};
+
+&hdmi1_out {
+	hdmi1_out_con: endpoint {
+		remote-endpoint = <&hdmi1_con_in>;
+	};
+};
+
+&hdptxphy1 {
+	status = "okay";
 };
 
 &pinctrl {
@@ -23,3 +58,10 @@ usb_otg_pwren: usb-otg-pwren {
 &vcc5v0_usb30_otg {
 	gpios = <&gpio4 RK_PB1 GPIO_ACTIVE_HIGH>;
 };
+
+&vp0 {
+	vp0_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp0>;
+	};
+};
-- 
2.48.1


