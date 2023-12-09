Return-Path: <devicetree+bounces-23536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FC580B81B
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E53F4280F1D
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:37:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 332FC1E53F;
	Sat,  9 Dec 2023 23:36:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="CoHKkDHt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2081B123
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:36:53 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40c3ca9472dso11265705e9.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:36:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702165011; x=1702769811; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYYU1x78IPUuzbhoiwMxDZ66s1bw3Uj1uSYC3CI9Ffc=;
        b=CoHKkDHtJ/Rr/EXuFsYliUBkXIhJWDAewkALXO9uNp6Ru1CRBE1D6HXuXAJ4QycQ51
         jLy1aFxzUMsiUajns5Xs5Go8/sRhuMcqPyuHysZ0oPfHsIKnHlvgWxnOA9qlnfjc59ET
         toS6NtKiki5QuADI/Rdtxa7wl5Ok/tNVpRNgH0GeF7fvYraF+D7miBQO+HjpFzD0fbJb
         fQZTGgrWhfKcHSOPcV1+UjMAZGtnsGEzz0Q2Swj/wzbWNNef2hYktABGL+fOmF4OmJBw
         /vcM268T7GuRzicrAhoGEZv/hRafFGbeif0fJSMKlf1DPyRMHXsPgb/qhFbyy7wpVXUQ
         S3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702165011; x=1702769811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AYYU1x78IPUuzbhoiwMxDZ66s1bw3Uj1uSYC3CI9Ffc=;
        b=J7cu88BtAu0XbhB+a92Xfr6gj/R53ZuNfEYmnobjWW7cPExhVrQ7o/T7vOGIMU+LFA
         zveOIo6R6QY25buiEmvBSLaG6+sB9TmvRmFznWjKIlBOS4O6X8gQVnxJCH9JFP5YYA/d
         33Q/r0yDNTPQkvxrqIPhe70uy4LAmXzOxSRZsnDPhbVtpmg+GdYJ1hje6Mwh5qOaEo6Q
         NvzJl7AWRm4X1Cw0pQsgRYpFjcDlio4Cit46mJ00vSkq80Ug+u+yopw6LOzkGKut6SxU
         3NazGgcRXoydAyeDoIw3G9c7jeMmu10gBcmmVrEM5oILrNyrE4HvINWTfq5yzocNfAUK
         eGKw==
X-Gm-Message-State: AOJu0Yz8lTZ7dylitwf6KMKP9tVcPVPG7touGvROpV57gLNenJYYm/Kx
	U3E63K8BHKB/n+5wZfU3UtrPfA==
X-Google-Smtp-Source: AGHT+IGVNoiaYBfiOk+d/jQsCSMpewzgt4JgqKjme9LAspqITcJHUASRoLP5rkaIwYaUpaI4GJBL+g==
X-Received: by 2002:a05:600c:188f:b0:40c:2e1c:8f8e with SMTP id x15-20020a05600c188f00b0040c2e1c8f8emr735719wmp.219.1702165011564;
        Sat, 09 Dec 2023 15:36:51 -0800 (PST)
Received: from localhost.localdomain (host-212-159-138-247.static.as13285.net. [212.159.138.247])
        by smtp.gmail.com with ESMTPSA id fc7-20020a05600c524700b0040c44cb251dsm139854wmb.46.2023.12.09.15.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:36:51 -0800 (PST)
From: Shantur Rathore <i@shantur.com>
To: 
Cc: heiko@sntech.de,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shantur Rathore <i@shantur.com>
Subject: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
Date: Sat,  9 Dec 2023 23:35:36 +0000
Message-Id: <20231209233536.350876-1-i@shantur.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231209232109.348999-1-i@shantur.com>
References: <20231209232109.348999-1-i@shantur.com>
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

Typec port has misconfugred phy-supply and now that we are
removing regulator-always-on, we need to fix the phy-supply
so the PHYs are able to turn power to type-c port.

Signed-off-by: Shantur Rathore <i@shantur.com>
---
+ devicetree

After this patch the ports were confirmed to power up and down
in u-boot when doing usb start and usb stop.
At boot the regulators were off, the devices connected weren't
powered up, on usb start the PHYs are able to power on the ports
and on usb stop they were powered down.

At the boot, the ports were powered down which was again powered
up by Linux kernel when booting up.


 arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
index bca2b50e0a..bd2824aa48 100644
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
 
@@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
 	};
 
 	u2phy0_host: host-port {
-		phy-supply = <&vcc5v0_host>;
+		phy-supply = <&vcc5v0_typec>;
 		status = "okay";
 	};
 };
-- 
2.40.1


