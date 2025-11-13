Return-Path: <devicetree+bounces-238310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 970A2C59C29
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 867D73B3A5C
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80287319879;
	Thu, 13 Nov 2025 19:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdpjcNtE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68BD2FFF98
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:32:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062336; cv=none; b=tDQ/ml7QK4QhjlaN3Cm1ENxQRe51eO+4D+0lH30K5Xg0RwLyG9V+VWZ2Z8nXBQr7vMwUKIXqdaRsoPXJ08zV53kKEeCyBEafdSIAcFYMX/gQHG6TbPGVaSp4oK5i2phjx9mIx4iU/o9LwWOisW+D9n1QxPxO+ysranwekjwItBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062336; c=relaxed/simple;
	bh=tFzpyLvSLkuLaUTHc/3hJxzsOg1YTG0YF+znMIbNzGg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RH49vEYzqsgCEO2ASrKt4YfXrVZxg+y/5LUEjBcsu8GIgW9LqfTyLCES5yGGtI00PzlOf2mR1LbZW1pfk7vzAyYmRoV4GxGsBYh7FogYDZ9kzBjFBKLgXyys+oS4hmhtK/SZQHs1kGcTFzjJzDmwcm7FQb/D3+5T0j6hMyOF+Vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdpjcNtE; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7c71c875304so418497a34.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763062334; x=1763667134; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=mdpjcNtEJyU9aBlFIoLufhQoqvbW0y3nHoekOoFjQZNUtZB9Buv6B/fTdSihnuv67v
         Z2+EcuFzObZMzjlpoAulaeKkg2Bj9H51UBctPELppFG19y3gcBiwc0rnbOmjybyrE0Ik
         RfF/QKfR2kzWr1P4rTE5iaVwRCQLsAslMmxIU1x3DglWAIfQ2WZrMxgHCCkq/9mmMEK/
         AEQ3OGAR/3SE5jozJlF+P0cIEOaPS37MoFo3TWp8Z77KfGhGDQC2IPaKjw1pMshs9yZs
         H6J4JIxktgPHLs9+M8e1JjyxGmXoqPqetOI3zD644juy/btO8z/aSIXVNyeFOJJ3a8Um
         PQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763062334; x=1763667134;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IXmVFPMQ40Hruy/E9zAx+RGPm4uKA5BjVJYa0KPmt0c=;
        b=NVXQC8WhYPWy9t3i4Mfi6AhbOgzKRskle0ZGYnBQEeEXYGUNyPBQu3TEeKsg/EBSVS
         m8uN8vJKmFz+RxKY1jcuxG2IjDHiVY8t2HIG31mo0/QmI8cXBm5T3lr6B5AXfjRzDIHm
         ZPGxHqGG8yQu7BgYzyOuCYUXYRl71YMW9x/3bCoyEcpLKycgo5x9c3PdXgRy8MYUExWS
         uf5y4PaU+ZLU7R6spHip8dhdEE6l1NgAFy8gT2O6+OYsgGmrCVoxCCArmy5WSrvFi1H3
         QhLh4VazTIAHnmIutqhHhntAgWDVxZNYqPcTGb82C8rQfz5FYtoM9GTMCX3EqAc5NG4Y
         /rng==
X-Forwarded-Encrypted: i=1; AJvYcCUaFKm7toC/NWveEMwrpFQ/8Ukom4j/adIkRplTC99v8L2ibmsph3pOSQSBEZ2r1TBPXoXpNuSwJjHo@vger.kernel.org
X-Gm-Message-State: AOJu0YxR8r3FMxMF3XQAzEDyCXPc7bl5/RKAORq1v0h5Z7jLgKDUlAa3
	rEDGf9V2gkf8pV6kvCiwxmwuQzECXFLRcLi6WzJ3InH3U3LFVzpQcOp7
X-Gm-Gg: ASbGnctCCioZwCinlv7c5q9u7AnaqwRoTAua+CePWR+2QLEHmvBxuveN0Qh7Zzro2wm
	WAKSNL26UE9WX4Q/QxQZYgFgG4yDkrVpaaKqNgp38doLKnI7CH19zbqP/koeRWaDQbAqpR7YCPG
	xMgrpCJIN+WUCcugHysWlxc4YWE6fhCfiXBuozxlkWU9VJWMpp2wXcnrds8zhx34PmD+j1EwZEz
	lCNOZcEJRNuL0OzYKewT++R0LcIkHQNyUFom/u5yxAnbAJ5k4qMvIysAMCR34frY6qh1Ih39ani
	5x6ef2+ZTGh9nv29G1nKU+9M835Wg8cxuq+Hn5BgEKqdkKh+4zwTITtndddZc+B64QY8o2u/NGy
	vVub4fQkrKb2plS0n0MMUD595ry031hNb4YJnZC9Ng6aLeN11c+NuVhFVJWzpRt/kgG7x1rKT+D
	owpJ1Smq9a
X-Google-Smtp-Source: AGHT+IGfs1HSOKgCkHh3+23cdx5vycxiMAoNuzjFkoYhUV+ov5/IFKg29WJ9qWAyfuSrgzsn2nyxJw==
X-Received: by 2002:a05:6830:660a:b0:7c7:1c77:f107 with SMTP id 46e09a7af769-7c74455a378mr562121a34.34.1763062333910;
        Thu, 13 Nov 2025 11:32:13 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a392fa5sm1693527a34.19.2025.11.13.11.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 11:32:12 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org,
	devicetree@vger.kernel.org,
	conor+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	rfoss@kernel.org,
	tzimmermann@suse.de,
	jonas@kwiboo.se,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	jernej.skrabec@gmail.com,
	dri-devel@lists.freedesktop.org,
	andrzej.hajda@intel.com,
	andy.yan@rock-chips.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Laurent.pinchart@ideasonboard.com
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add HDMI to Gameforce Ace
Date: Thu, 13 Nov 2025 13:29:39 -0600
Message-ID: <20251113192939.30031-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251113192939.30031-1-macroalpha82@gmail.com>
References: <20251113192939.30031-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add support for the HDMI port for the Gameforce Ace. The HDMI port
has no HPD pin present (the manufacturer's devicetree states the pin
is reused for an additional face button) so add the attribute of
no-hpd to poll for connected devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index f5894672fcbd..b98e1a3369dc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -300,6 +300,20 @@ amp_headphone: headphone-amplifier {
 		sound-name-prefix = "Headphones Amplifier";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		ddc-en-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&hdmi0_en>;
+		pinctrl-names = "default";
+		type = "d";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
@@ -498,6 +512,34 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	no-hpd;
+	pinctrl-0 = <&hdmim0_tx0_cec>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>;
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
+&hdmi0_sound {
+	status = "okay";
+};
+
+&hdptxphy0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -746,6 +788,10 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &mipidcphy0 {
 	status = "okay";
 };
@@ -842,6 +888,13 @@ charger_int_h: charger-int-h {
 		};
 	};
 
+	hdmi {
+		hdmi0_en: hdmi0-en {
+			rockchip,pins =
+				<4 RK_PB3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins =
@@ -1416,6 +1469,16 @@ &vop_mmu {
 	status = "okay";
 };
 
+&vp0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
+
 &vp3 {
 	#address-cells = <1>;
 	#size-cells = <0>;
-- 
2.43.0


