Return-Path: <devicetree+bounces-114810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5DA9AD143
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 18:43:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 00F3D1C21F16
	for <lists+devicetree@lfdr.de>; Wed, 23 Oct 2024 16:43:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03B631CC8AC;
	Wed, 23 Oct 2024 16:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GHf+JiCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F0B1CBEB5
	for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 16:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729701824; cv=none; b=KiC9rfSQWtmB2GCoMrA0X+GcAbDOGtzpwaS82fr9XCXmIDL7hx1fqpcdRURDx2bfZq4V+Scx169RNWt6bL+nFJ6sUP52S2HCEmGiVRYVn3+ZFDFhshWgEkugqN2OYnZqVgzt5wmkLqxH3OLAHA7AKlQruMrhDAQmcuDVGpVl6jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729701824; c=relaxed/simple;
	bh=zkfLbDctrosqCs91D+xjgKgFoIyRe1zUq10nlypJK2w=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cBzj+vf8jI04A6Qz4goNjP6Yd2nbSKqXeo0VKRfWNtviBohAYGtLprhUtIjk2wKGvRPcAtCxP4wF1fKWul1S6fITZ3CrdyryJHmgix+DZcBnvXKbdRAhIl0xyyW0oiWaR/pM3gvZofYb1P7KmVMmGF+FSn/uZWYLS7XUVKaf04o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GHf+JiCI; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7181caa08a3so8943a34.0
        for <devicetree@vger.kernel.org>; Wed, 23 Oct 2024 09:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729701821; x=1730306621; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XbAEQp9IlcObfJg16Nbp35ZDF7R6MmeV3O52vm29o4Q=;
        b=GHf+JiCIZWNUS05bxXFN8HknUgbkvGCfsxdIESvfW2vjP0lO7wiep6XSQXHTLCvjYu
         q2SUYNdG+j7IeamZYgQKWBwianXyZXicNjkYaF19HUR1WD7Mo49N7m8hKY6gvwTXWFE2
         vuuWNylRbW454f5lyx61Cm/0TpVvwJprvRvC/GL5GXrY0t3n6HNLJXgU6tCAT32YmQp9
         eLmMBUAtI/o2dnA0noisboM3GNh8oi5RbcXMn7BcoTzEuJtte8B2pH3V9QRozse4Y+jn
         9EvCGgR6sjqjdPxVIiEcCXK7QKsHwBO57djnpT9Bhl9/+NHWjeE+7yJ9gBbrq7JDd2x9
         l3Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701821; x=1730306621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XbAEQp9IlcObfJg16Nbp35ZDF7R6MmeV3O52vm29o4Q=;
        b=Be0TnTZDiYAS5p1o+bn4ATMA1+3jcMdGxHHc2l6cYJUO+6BWcvaLiyjLWvjzT7N34B
         Vf2YvqxgowdGMJGVR1/w9TTx3VKGR0soNgxxOtcppLLDOPCmrTqZX5DPAkV7splgDope
         QBfyrAQpXwGVIWzXOSDJskr9+Gg0HZoGwUhJ15yhUd4n/ZxQ/qhv4mthpTiMMGuh5t7L
         N4sSCxCaF/SV8Woyiu0TvQvW3I1oNztnzrmDhkYIxxt95SKf6dvnoWHOqbAlLRI+PGVF
         GPdmhPbtsKQnSTkqAvaEhM/3KL9FRMyw62Vcw7dvYHxZ5q61Idp1RBfF8GAo2XShZezE
         y+/g==
X-Gm-Message-State: AOJu0YxJzf4krxORSjAa8Kq7njLY0a+2R8a1XsiMen61QNkg0iiRm8B+
	9m/TUq1J3qAfcHP2yrr8WHnZn2eg6uiX457vhGRjsLq8V68LFTbi
X-Google-Smtp-Source: AGHT+IFI/wLrdamr7GU1kFZaUKj9R5crsNO81QZ1JoAHFx1j4CLac+CYdttdHMkC1XF1wvXxr6Ks5A==
X-Received: by 2002:a05:6830:65c6:b0:718:15a9:505f with SMTP id 46e09a7af769-7184b2a2775mr4189478a34.14.1729701821051;
        Wed, 23 Oct 2024 09:43:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7a0948esm1861367eaf.15.2024.10.23.09.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:43:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova
Date: Wed, 23 Oct 2024 11:41:04 -0500
Message-ID: <20241023164104.66282-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241023164104.66282-1-macroalpha82@gmail.com>
References: <20241023164104.66282-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the HDMI0 and GPU for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index a4b930f6987f..547b3ca881e0 100644
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
+		type = "c";
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
@@ -242,6 +254,35 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
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
@@ -919,3 +960,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
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


