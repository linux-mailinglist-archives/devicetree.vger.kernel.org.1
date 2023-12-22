Return-Path: <devicetree+bounces-28072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ED181CB35
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 15:17:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 316211C20896
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 14:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF46A1C693;
	Fri, 22 Dec 2023 14:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="i5oXfuCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6932A1CA86
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 14:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33697caf9a6so306168f8f.1
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 06:17:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1703254653; x=1703859453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zTCtiAYsIrdczm+vNuwSAVpVmlGA1EeEBWyvRKgRmh0=;
        b=i5oXfuCFQRtqOTgvD5HGGltaD4g595dkGnnDqzZoL2/nbozFVtNgNMu18Bw546CimS
         hX9zXHvRi6F/UBeK1gbLsRxoFkz+Iv5UmIKJwzVaGwuZ12I7/Buunw1OM4krywi91c7Q
         4IGR3T/Pi30x4tt7s26gv/Cp/VCQMZQulF6M8JyVImb+E+fLg/i88Ty9m3Hd9BmofreV
         NpvBZwgHiluDBQWaN1Dk2uF8SpNB2PV7m9180Hnjcg7Q3D09dvBUR4SH2pasZ6KW1tpL
         P6NP+t5e8qTnNy0w34eH8BSBNr7l0Uo9Qyg3IBBxT7v+4aYfreBHpmB32QeRiERAeITt
         WniA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703254653; x=1703859453;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zTCtiAYsIrdczm+vNuwSAVpVmlGA1EeEBWyvRKgRmh0=;
        b=REac9Scq1fxDjhxk8peU4BSSt4Ne/7mgz6pCU19KevoUCkl/uLC817kUX/10ZhIVmH
         NqTo6CHXfHrwTXC3CYW15s1Ty1ZEjl8VghyKq8rAn/B4oHVkPpQTNATUJ33Q3Fa2N4uV
         hnjn2CYFe1IbAt94OxusJJoPGnKV1upXoAsFcted4CbbFTw1dyTHlwB1MgftHt+Jhi79
         SZzH349ZV8lwblkRjvwuW3ogdC4tkEDSbmySWjD7zQK0EWihVNDRYQ11jZGppf6eqIne
         jN9E30Xhay0tu/BvDgv1WcnTQXTf39RHecz+uG3xocDdbWe7st1NLBj7tZuhVRDXxKva
         reqQ==
X-Gm-Message-State: AOJu0YzeRHVoZa8ic78hT9cGUjrGPo9u7gLc0qfhe5eAUvEJ4WPUk4nL
	Avmtq0OPiYQ2duuq6U+2aFvczpqX+vxDCg==
X-Google-Smtp-Source: AGHT+IFzYbsQit22hpqse7aF3yZ0jFLLRkeTU3nP7KV/VSSNrYpwjsM1nPIBi3AQvfheLpTgmpYioQ==
X-Received: by 2002:adf:f212:0:b0:336:88aa:8ff0 with SMTP id p18-20020adff212000000b0033688aa8ff0mr1210064wro.35.1703254653564;
        Fri, 22 Dec 2023 06:17:33 -0800 (PST)
Received: from localhost.localdomain (host-212-159-138-247.static.as13285.net. [212.159.138.247])
        by smtp.gmail.com with ESMTPSA id e4-20020a5d6d04000000b003367433118bsm4441870wrq.78.2023.12.22.06.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 06:17:33 -0800 (PST)
From: Shantur Rathore <i@shantur.com>
To: 
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sigmaris@gmail.com,
	dsimic@manjaro.org,
	Shantur Rathore <i@shantur.com>
Subject: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
Date: Fri, 22 Dec 2023 14:16:16 +0000
Message-Id: <20231222141616.508073-1-i@shantur.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

USB port regulators should be controlled by PHYs
so we remove always-on property and let PHYs manage the
regulator.

phy-supply isn't sconfugred for the TypeC port and now that we are
removing regulator-always-on, we need to fix the phy-supply
so the PHYs are able to turn power to type-c port.

Series-version: 2

Signed-off-by: Shantur Rathore <i@shantur.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index bca2b50e0a..f7273f7990 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
@@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_host_en>;
 		regulator-name = "vcc5v0_host";
-		regulator-always-on;
 		vin-supply = <&vcc5v0_usb>;
 	};
 
@@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_typec_en>;
 		regulator-name = "vcc5v0_typec";
-		regulator-always-on;
 		vin-supply = <&vcc5v0_usb>;
 	};
 
@@ -859,6 +857,7 @@ &u2phy0 {
 	status = "okay";
 
 	u2phy0_otg: otg-port {
+		phy-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
 
-- 
2.40.1


