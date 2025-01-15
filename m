Return-Path: <devicetree+bounces-138633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9976EA1174E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 03:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B95A0168BEB
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 02:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B91AE22A7F3;
	Wed, 15 Jan 2025 02:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GZrKrtZ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0499D6FB9;
	Wed, 15 Jan 2025 02:33:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736908419; cv=none; b=ZkwypF7cHpIisM/ZgIObqzDX+V7HfE9TROmc9rOxuf/yUnbIX3oEvILtj9gRfUcqE2zhUjx2lJGYEIKx7o84wXDZHeDNJ96u8w4Fdqd4m3jP1y4l8T+yjAJtGsCFUywvksZ5MF9TQjaZniN6XNH6sMwsQ+kkDyVStBrBAd6Ckt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736908419; c=relaxed/simple;
	bh=rXskYNKJx8EHrUjqhl4u2w5ArFfAPth3G5hQq/nudhw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NbtTLOkIVodNUH2HR/4bn9m/Fne2He5pEnLI+luV4UPAt53h8o4/DVuzkRfajV8BIkJyaTUF+JAWhlt+Q2KAK3gN4roA6bj/7Qzx70b5gkUcwe50NvkfoXIZ0DAqtellzPc2kljX7N62e8x0f/5l/CXnmhIt8M1YnnJuXdPI5Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GZrKrtZ9; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2ef718cb473so1260712a91.1;
        Tue, 14 Jan 2025 18:33:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736908417; x=1737513217; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S4acl8v4X7Xc6vcnsDKKEEdZ9ptXjvdjq4rSlCL1DJg=;
        b=GZrKrtZ9tq3wEVEEjhgNcyezJrjIApMz3qlFrHcnyy1kbX9k8ftcY1V4apOEVrd/rn
         1asCy5mgSAZly0j8S0SkV3W8xkqBx1/B6oSOxgqppe5jAXk+GcJsFqt6I9XeuBz6Y3L4
         XiG+3KMbRjzbORMiuNVmEEJM4ZjpY25pNzyEE2xajq2+U1uKZc8YE+a1cJv0MSbM+ZAk
         tt7hWE0Q7p2/8DsiaqX3+asm6vvQ5eL3IsWPvOpAaL2yq1CzY9dIWYjKtq4SlI1MpR/N
         DX+rXw+kHDrAsz9KM0fmvM+X9J97DWogrzZ2J0S9T0aoXVMZGzgs2SqZD7c+Sv2dADmy
         WNFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736908417; x=1737513217;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S4acl8v4X7Xc6vcnsDKKEEdZ9ptXjvdjq4rSlCL1DJg=;
        b=dZANFi2QqvpCBWa9zUCWa7OgKY/oh0HMOSI0Uo/zDVJGx/3BuBLDuaXzf9F//fYUd0
         KHkGrlaZ9bvfaflWsMtoh8dms+1d0F9aa03YQM/imIFArvE1hdaguIIXbXSsJokg58b2
         nPQWnrZq2uawZloBGm6G1ce3cJbYqpSG+nelIVhMd3X3vqtCBYSfdBHdnJQYPeETTp04
         4hvUayrj+3NSZpEJvkJkjx+CPKPonbYAO46Txl2Q67sg5Kl6kobrb77TF8igSj9eMhnC
         WpJRnInldyeS6ZjqrKfOVwQb3xavVTHcMNQ/2aEhcM0zN7mClsCU820Lmo4Oz0AC8YX4
         3gHA==
X-Forwarded-Encrypted: i=1; AJvYcCV3O10oDO78uk6m5eo2OV3zy7REshAkwjRBtJmnmLUATqAWkp0/XlyRT30xW6C+VHyZ9Io+uILY9HdI6qMQ@vger.kernel.org, AJvYcCVhT3odeOawWzir7efKyJ8sTq3o5oRQMBBuKwCu4TmQ17tBsXZRYoiV8sS9B7yTPZjMVhxno982bo9U@vger.kernel.org
X-Gm-Message-State: AOJu0YwgGfGU8MfmmeRkLAfqiqD9v7Vii1oSn8CiZZrJWIuBnRIZBTHS
	tXmlO5mZ7BcA5nuBAhwjx710AL9HYAezRMYR3pIbJnvgoa4FJx0B
X-Gm-Gg: ASbGnctgxSrns5/8d5paLat4o3D+2XajcRDJMzvL8FbFHTDJ5UvP8TaxeIVyaTl5Auv
	dNkk/+kEfEXDIYLnOEzeylqzf6Bw1aRi3xeEVJl/c8SIIZ3ttKHy1j/XRzcY0iiE/wKMJPkLF1i
	BYUUHvAOp8utlLPXhZuwTUcvJS1mIeXESvIix70GGr23QrKLKrp+3cqhkdsvdPR2CyEgpWODWYh
	5QRgF6+xZ+SxDmzWKFj7B3q4TSMGao8kwKG74wqb6+jQFmk3D0dqHuoHoeykw==
X-Google-Smtp-Source: AGHT+IGcZ/eXHZZprBGPqA6wCsk3LShy21GEt+Ojmd21JLtYOCZyvRcvCqbnL+v/Y8N8VwkHv+a1Eg==
X-Received: by 2002:a17:90b:2e03:b0:2ee:e518:c1d4 with SMTP id 98e67ed59e1d1-2f548f1a2cemr15584055a91.1.1736908417140;
        Tue, 14 Jan 2025 18:33:37 -0800 (PST)
Received: from rock-5b.. ([221.220.131.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f256fd8sm72902215ad.242.2025.01.14.18.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 18:33:36 -0800 (PST)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Enable HDMI on armsom-sige7
Date: Wed, 15 Jan 2025 10:33:21 +0800
Message-ID: <20250115023327.2881820-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the necessary DT changes to enable HDMI on ArmSoM Sige7.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

Changes in v2:
- Only send patch for armsom sige7, and I will send patch for armsom w3
  when hdmi1 support is landed.
- Change HDMI0 to HDMI in commit msg because the board only has one hdmi
  port.
https://lore.kernel.org/all/20241111165026.60805-1-liujianfeng1994@gmail.com/

 .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
index 08f09053a06..b3e9ffe5234 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
@@ -4,6 +4,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588.dtsi"
 
 / {
@@ -33,6 +34,17 @@ analog-sound {
 			  "Headphone", "Headphones";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -164,6 +176,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
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
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
@@ -723,3 +755,18 @@ &usb_host1_xhci {
 	dr_mode = "host";
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
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


