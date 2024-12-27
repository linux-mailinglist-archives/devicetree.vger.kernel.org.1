Return-Path: <devicetree+bounces-134370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4135A9FD4F3
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 14:29:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D30A11883CBD
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 13:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958C41F37BA;
	Fri, 27 Dec 2024 13:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="HMEf6+kI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32EA41D319B
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 13:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735306188; cv=none; b=LRz4DBdQ7AoWKqFSGdVPPsspSiAwuHZjip1X5Gb6qHu7LAvflXkKYqZkaTGpV8eqbq7NvyZ+HBrjfU+FlD408tTBKK08NbKmsY81mnXmSdDXXWIj57ArEXTT6jydpueIZp5qbBNz6/YoDDZWZEp35GS8zoZgDcZfFWm9WZOQknA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735306188; c=relaxed/simple;
	bh=eEmUs+aFWCcI0GBb3YBRP+7KlNDXkeDsFUrdnMOaeEc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=IlGX4bv2w6vZ4RplP+0VBqgR3vdADwqt+J3SJJCBSvbH9p8hWvUn50ftBeWA/6bHaJqxIgamfh8TsFTtGWDzdLPOnX2lDTr2E1klaMlirYPXx/v+dzdpomEEMcVv8P50JnbHzgRToIrUm+sLMpFkUsZBZHM1op7470VaSTE0Jmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai; spf=none smtp.mailfrom=edgeble.ai; dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b=HMEf6+kI; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=edgeble.ai
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=edgeble.ai
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2164b662090so78168785ad.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 05:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735306186; x=1735910986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=w6IDrf1UQsBPwLJSTWT95TeUNn5GWIJ2Bqwzoko6qnE=;
        b=HMEf6+kIL3MYBsBx+B0kulHjz83Y5xoODXJOGgCQsx0e9L8o+JeVlyo0ufv/BnjImk
         EOd7ILWWqiF+WLFdIJBU2pSrww7R49ZTP5cQLkCIZ6S6BqfoN9FHWmYL/Ulh02pbZIuy
         hsoyT/u+wHk09SDgYRITC9phRt98bkFFzSVnag4qnws9ot2gMdRn8dILcZPopH98f1/t
         YNTBzbzz5SI9DhpMljHs6Rm+UT4EZbfgeG4Dk4aZ9cKNpmROZM9eNEuoPaQvC5HXyPii
         QCB5Ympv/XXXtLJWWub6nZPnv71CcyCc62Or3kbOfiC8EcY0gHuRPuN7Go0Vulm9wxTL
         ft9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735306186; x=1735910986;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6IDrf1UQsBPwLJSTWT95TeUNn5GWIJ2Bqwzoko6qnE=;
        b=ws2fJV0AO2TJe79vy1Y5lyS3fKVXAPuKFrMf8y5s7YY7JNeyh3rqttMdku/c06tZ3e
         xA7hF6wBJ5ThHPFIVrSmGW5K1j/XY3cGWQzA9YmC0yBzY2U0oMvVv0ED0i9lvz2Na+Lc
         RxEW6mJoYYmLFS1jyU5u4AUF2g7MPg1OgmWgu4CLBGg2ryMUXTvYbd7mQnD5a7Fbu36x
         sOGWcBYF9JUzQz0vHfJAsBbNyeIh40MhvZpzOcfG8hmc04BWxD179csF9dQCN9cOP2wY
         3KYH9Z9//P/RGOX1+sGkZGVk6KlFVjv/ED4YzSuzLYxfn59R2JARYHRRTyDGbsStik8w
         c+nA==
X-Forwarded-Encrypted: i=1; AJvYcCWMA52QERdMozphPSHfEIGHnOz6+XSKhnIe/EUYceEHo48VlewFx7WCbiYYmzWOYbsx6tUuOQ8bLEIh@vger.kernel.org
X-Gm-Message-State: AOJu0YyNLpPhhWFLY+znfyRJ6lWBojvBZfcfbsfOrWjQXhLWWQVCkrGG
	S0aYxloGxqu6LcSK+0S1VVIe4NSQ79VYNzq+YLI6EQVIzOcQ3Qo+0l+fOtlIRVY=
X-Gm-Gg: ASbGnct+IvD0MJJjLYiCr8+L6P8PRhQXcaIWwc+yV67AyycvzHl2hLwGpzEuvdbrY4K
	6T3VywsK5s5ib55Bf0LIDWLtPIIxgxfPbIAkRkE5/JHideKYQrknlITEtoYa3HGbtpXdcIcLeq0
	izwmvsnGhNW9zDZe/otUL3bBGFQgVTtWSRZ5bcKKwDQyUn4Zn5yxw9yK/WQr070t3LULM+hghjK
	+MmLNwyG4pAf60dp/SrNbUsPC2oZ8PuTvgQ2hq6Fj7KEX2mrJSPQGMGt9FjU1jVTNNatKs=
X-Google-Smtp-Source: AGHT+IG+o5PNLAqY9O3P+IZr12zVMoET16tLK/MND1ykf51ykoLr+pbcQqxGVDb8pd31oedibkO65A==
X-Received: by 2002:a05:6a00:35c3:b0:726:64a5:5f67 with SMTP id d2e1a72fcca58-72abde09893mr38212752b3a.12.1735306186439;
        Fri, 27 Dec 2024 05:29:46 -0800 (PST)
Received: from tops-ThinkPad-E14-Gen-5.. ([103.217.239.66])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbb5asm14510517b3a.93.2024.12.27.05.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 05:29:45 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH V2] arm64: dts: rockchip: Enable HDMI1 out for Edgeble-6TOPS Modules
Date: Fri, 27 Dec 2024 18:59:36 +0530
Message-Id: <20241227132936.168100-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble-6TOPS modules configure HDMI1 for HDMI Out from RK3588.

Enable it on Edgeble-6TOPS IO Board dtsi.

Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- Rebase on top of Cristian's series
https://patchwork.kernel.org/project/linux-rockchip/cover/20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com/
- Update hdptxphy1

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 7125790bbed2..08920344a4b8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -4,12 +4,24 @@
  */
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 
 / {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
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
+
 	/* Unnamed gated oscillator: 100MHz,3.3V,3225 */
 	pcie30_port0_refclk: pcie30_port1_refclk: pcie-oscillator {
 		compatible = "gated-fixed-clock";
@@ -81,6 +93,26 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&hdmi1 {
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
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -275,3 +307,18 @@ &usb_host1_ohci {
 &usb_host2_xhci {
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
+	vp0_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI1>;
+		remote-endpoint = <&hdmi1_in_vp0>;
+	};
+};
-- 
2.34.1


