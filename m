Return-Path: <devicetree+bounces-236253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D69C41C88
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 22:50:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 63D934E14BD
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 21:50:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BB5930EF7F;
	Fri,  7 Nov 2025 21:50:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SLjmhy6e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12EF263C8A
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 21:50:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762552204; cv=none; b=hCIgf3JupzL1B+Wull+49TDpcycjRH8v29cdpj96duHHlAdzD2UcCATj1XvANFe6WTktypFD8G/MX165dJ3Nt9QU+jvUTxKkFBbkjXMey7wispTg5Xztm78dn81Ej95rjGe947GILdNMJmlH0EyHZHulNfbIr6YK0oYa8/wI6fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762552204; c=relaxed/simple;
	bh=qb79iW8afe0JTZbfNAmSl9TXtDd3joDO1z7lXSTcy2Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ezqeFupWfyj8Sr08DdxjBl5BjW/tc0Ekh8PBMCG08GtMK/8y+Yr3eAvwgUVIMySdhAZACwXKWTsw4zNRqiXDXMWoWhUva8xSQAQad+R9uauL/YV8ClI7VHPfyZn63b4y5HSYzz2FSkUEyiDp6l2UzxgVo+E24JvhxlCqWR40AQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SLjmhy6e; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-44fe6771b2dso205796b6e.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 13:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762552202; x=1763157002; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oruE4G6E0HzZ52urZnTY6HJtCupwgaLtwj8wmXDsPEg=;
        b=SLjmhy6eZVLWQaUoS8naGM/4iqJqrxXbwG6VlUVoXurNcX74FX7Y1u5cqWJxVnYFeG
         Cq93M6oTvphvEe4mdU9cTGFt4wA0iodzWAbXBKYHfY/14I+RvYS2Pccl6k49cxsCVp9t
         m2cXnPu9oICVEakX04TyFiV7Tc3aLst4EukZqIZg26WH9+0Jn+TQ9fMioNMmJkFv3qq1
         mMzBbzC7m+tPARwzoCdfvOFl2P0Da5TciCEEBMGPDQ5L8zOKZQMGbw7sQRDx46z6Lv97
         /nyYyn4P3FTab4Hgdi91yg2Sy/hRpxdynrq5rYonaFun7HazAeDoKQGF8/9BJDmeZCXR
         f0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762552202; x=1763157002;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oruE4G6E0HzZ52urZnTY6HJtCupwgaLtwj8wmXDsPEg=;
        b=XNkbHY3SXeEXRy5OPxsz0lWpZNshkeB7eRvHdFxSqVYX2dsrXFB6A7wO4ZCReEXajn
         4tpw9L0w6W3gC4AgsT58cZW2mIKRk6scMH7UQpaugfKHgUcebA+BrjAL/Ej/BMHrVTFU
         tQ4rjxS5GTM+iFHxxb5jTvU0kcwy0MBDXJ7JVEvzkYVsRcNGMZOfwZkRKPNFb2yzgMLM
         6kV9cEo7yakXS6ERbpOvxv7e+hHA8HVs/MaBKPNSHZmbLt2C/m5HnawktwzB7yyFC8mb
         v2S0gxsauyOqz7kqQDOLu4FeImQ2FtR3YbnE+gQbQkad1FcW3ksw9NJXsQ0TeRoLzLGy
         JhYg==
X-Gm-Message-State: AOJu0YyWOdYUDX+UAVJi97PM9RRb9Y5csbFxshQSLFujZr5YfxTLSnKC
	scnULDTppnN5SpYqmLuxLzfaehd8nQw3jiKiDPbAmkB5So5HFSREKnMO
X-Gm-Gg: ASbGncvTQssmr75d/2waEMYau3gDQ4gzGTq1ep7p4uh/Z5wnyy9bAwh2Zg1p68eqvT7
	EisGv4oFw1vj1J5RqzNPqRwMsttY2j5HIZfkfXMMXgZzj8DBAQogJFlZhHbuj4nCrcM2C0ME0Ku
	qnITPnd+p1WLSYnkEDiqEctti89iYkNpcJ7ig0TfbcjniYiKHKgx1g29Vc4H6hq7tC50BVht9aI
	+HS1Gl7vT1AnHJXeysGkVxBOYpWoUJO1S3VpPg8cjSpkc1+1R96TlUShTz4cL8o1jE1tlZM3h/k
	4MSgzBc3VkZPzE3BvELaQ6iNdT7WMjy5OBnF2gMrSC0AXzBqh0wHmOT42GSWmqHPsI04XELVPqM
	fERoq4JOpTbMe23ROTpqpoDQIaEa4djLOjgxRW9WU2ZSHS/R1oN3DCS6Qwgr8Qk8pHuM1jFS0bg
	==
X-Google-Smtp-Source: AGHT+IGnHtoS06uKQp9OJNKvErPkxz4GM53Mjudicm/94eiXH2/xC5iIjNLtSgIiCihKYR+XercU0g==
X-Received: by 2002:a05:6808:1b11:b0:44d:a817:2d72 with SMTP id 5614622812f47-4502a4028b6mr439896b6e.60.1762552201700;
        Fri, 07 Nov 2025 13:50:01 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-450027a46bcsm2787517b6e.16.2025.11.07.13.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 13:50:00 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	damon.ding@rock-chips.com,
	sebastian.reichel@collabora.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable USB-C DP Alt for Indiedroid Nova
Date: Fri,  7 Nov 2025 15:47:24 -0600
Message-ID: <20251107214724.878955-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the Display Port alt-mode for the USB-C port on the Indiedroid
Nova.

Note that while ROCKCHIP_VOP2_EP_DP0 is defined as 10 we need to
set the address to "a" or else we receive a dtc warning.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 80 ++++++++++++++++---
 1 file changed, 67 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index dee053afc6b6..174d299cc6bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -190,6 +190,22 @@ &cpu_b3 {
 	cpu-supply = <&vdd_cpu_big1_s0>;
 };
 
+&dp0 {
+	status = "okay";
+};
+
+&dp0_in {
+	dp0_in_vp1: endpoint {
+		remote-endpoint = <&vp1_out_dp0>;
+	};
+};
+
+&dp0_out {
+	dp0_out_con: endpoint {
+		remote-endpoint = <&usbdp_phy0_dp_in>;
+	};
+};
+
 /*
  * Add labels for each GPIO pin exposed on the 40 pin header. Note that
  * voltage of each GPIO pin could be either 3.3v or 1.8v (as noted by
@@ -371,28 +387,36 @@ usb_con: connector {
 			sink-pdos = <PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;
 			op-sink-microwatt = <1000000>;
 
+			altmodes {
+				displayport {
+					svid = /bits/ 16 <0xff01>;
+					vdo = <0xffffffff>;
+				};
+			};
+
+
 			ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
 
 				port@0 {
 					reg = <0>;
-					usbc0_orien_sw: endpoint {
-						remote-endpoint = <&usbdp_phy0_orientation_switch>;
+					usbc0_hs: endpoint {
+						remote-endpoint = <&usb_host0_xhci_hs>;
 					};
 				};
 
 				port@1 {
 					reg = <1>;
-					usbc0_role_sw: endpoint {
-						remote-endpoint = <&dwc3_0_role_switch>;
+					usbc0_ss: endpoint {
+						remote-endpoint = <&usbdp_phy0_ss_out>;
 					};
 				};
 
 				port@2 {
 					reg = <2>;
-					dp_altmode_mux: endpoint {
-						remote-endpoint = <&usbdp_phy0_dp_altmode_mux>;
+					usbc0_sbu: endpoint {
+						remote-endpoint = <&usbdp_phy0_dp_out>;
 					};
 				};
 			};
@@ -973,9 +997,22 @@ &usb_host0_xhci {
 	usb-role-switch;
 	status = "okay";
 
-	port {
-		dwc3_0_role_switch: endpoint {
-			remote-endpoint = <&usbc0_role_sw>;
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+			usb_host0_xhci_hs: endpoint {
+				remote-endpoint = <&usbc0_hs>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+			usb_host0_xhci_ss: endpoint {
+				remote-endpoint = <&usbdp_phy0_ss_in>;
+			};
 		};
 	};
 };
@@ -1004,14 +1041,24 @@ port {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		usbdp_phy0_orientation_switch: endpoint@0 {
+		usbdp_phy0_ss_out: endpoint@0 {
 			reg = <0>;
-			remote-endpoint = <&usbc0_orien_sw>;
+			remote-endpoint = <&usbc0_ss>;
 		};
 
-		usbdp_phy0_dp_altmode_mux: endpoint@1 {
+		usbdp_phy0_ss_in: endpoint@1 {
 			reg = <1>;
-			remote-endpoint = <&dp_altmode_mux>;
+			remote-endpoint = <&usb_host0_xhci_ss>;
+		};
+
+		usbdp_phy0_dp_in: endpoint@2 {
+			reg = <2>;
+			remote-endpoint = <&dp0_out_con>;
+		};
+
+		usbdp_phy0_dp_out: endpoint@3 {
+			reg = <3>;
+			remote-endpoint = <&usbc0_sbu>;
 		};
 	};
 };
@@ -1030,3 +1077,10 @@ vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi0_in_vp0>;
 	};
 };
+
+&vp1 {
+	vp1_out_dp0: endpoint@a {
+		reg = <ROCKCHIP_VOP2_EP_DP0>;
+		remote-endpoint = <&dp0_in_vp1>;
+	};
+};
-- 
2.43.0


