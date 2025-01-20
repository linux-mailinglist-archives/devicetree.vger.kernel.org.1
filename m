Return-Path: <devicetree+bounces-139859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C27AEA17319
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 20:23:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAE583A6E90
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 19:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59EDA1EE7C2;
	Mon, 20 Jan 2025 19:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YP6Fifft"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797031EF0B2;
	Mon, 20 Jan 2025 19:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737400996; cv=none; b=TgtsLSC8q3+5ngA4LbL86+6Y292Gc6Qc6Zxge/QioWhwc4FoJQ6n2x9hEZ0JQQCAjgJgZSjXwu7M45HVvG6ZinxMH5f81tn4Yn1R3kbRgUwbgF2LwRhe+TAlbQzfuN5RQR8vSV1WaQ13DUv12+kEw5T+cJOqZgmaoQQi6jshloY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737400996; c=relaxed/simple;
	bh=//LokAOrRA/EeaT7c38MIMn9xv0OF0OdXdgFumo2L3E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LFoXmBELQrOl94Ibl76/vDkEszQG6kr5Af2A10RJftHjDJiyIKUWUPzlzN7sEUIHyJRSl9DdKB15mJYIxcpBeK3b/gGUJAxNH1px5eBpyJaaGcE+ldj5Fuacr1mHVBLvInKp4M0fxJLT+uf24M2t0Dco4BpedM5ahl1l2gOBj8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YP6Fifft; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso5278731e87.0;
        Mon, 20 Jan 2025 11:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737400992; x=1738005792; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CerU6xvl9lcXiaDqDUt8ZKpDTAlJGqkJkLTkeLu13Uk=;
        b=YP6Fifft375XRY2SZnBMTvIkxFENTvbTVYUlMu7YAZG/Vm9mYOOxRUtC9H0iRZOBMe
         UdB2RrFtcQCRBOtABcLl/HFaKODj09JLV8TNtDxzpRbz1LL5NaBs+ik8nUyw2rA/vl/R
         N54cv5CncvwU49k5Aw5Anv8tLRShSHNXSNTU7YXb/p2fr2sTDQm1cWrLnsNgjYWNtpyR
         BKQ4jElhSjSirg30IeoHuhizpIx3TgJNbhrZ8w6Pk9jo8NMRXeYHkZcpcAaHUU88dJpR
         dVDd52iczdwewI2UQuhaFAbbTzqFwB05JzIGe9lJeMJ3zvtcz/WD1njcv9K4g9Z3eTyw
         n8UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737400992; x=1738005792;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CerU6xvl9lcXiaDqDUt8ZKpDTAlJGqkJkLTkeLu13Uk=;
        b=pde9tci+UEbgBq1dZBJYLkcE2wuEPxZZeY0lM6BPoXZx8BJdo8rNPBmvG3HcpjhVav
         Y29NzcF7LHa5PHb1CaeTdan4t8IykC8gOQzSVL3rIfyS7szVH+bVMa0FwrvEELEkbgpx
         yPg6lWOy0Wrzk0J/PVBaZYT2rSi/ZL0lNzSo4RW9F1+XlBFNVYd5UIS68kYBJ/G+pLCr
         bfVV0LWmtqyQeap5nq8Q9voAF6ueHwWm4Srw8oxMgmCgxWg/vde0k8bGDOudmOPuKIP9
         tvcKlK1UQVzBm2eZuIkJh7yjLRrMfIozoZo1QuXDJteFt629X3cUtcrBJOSXeH5T9yJb
         sVNg==
X-Forwarded-Encrypted: i=1; AJvYcCUKEdZKHIHWgHqr8/LrWAXIoc/ZPVKZOke4fQrznHtZX2RD7AQB9Q9y35iVcJmMZH5rxylB+m6wGUiCi+k=@vger.kernel.org
X-Gm-Message-State: AOJu0YzbLOrZj6G0ADEji483zDKxHrVMPfCJL8qXxtZUv6zeZ8lQ9U3s
	4v2plu2j/eziVyPpmH1WNIG3em4CszoxuWIl2fEuxP6NvXEgO01b
X-Gm-Gg: ASbGnctiqvJSS3axQtQBnIhXXY1H/hbjTiyV1oOnb3DrfRJYVJYDndwD9mx2Qz9xFl5
	PnH4Z8OjAluW9UNDdv1gZUc56ZPYjlWtljArRL9vXPSGgctXU5qAL6jIL4bl/sr6IQdTlQMSude
	yHnTyyvYjTaiIgIZbrDmq4tieCIstV7iHCVPwU6EcaUJOOuVcgu8ceyYj5TDwXX5sDB93n+Rqkr
	iAnMTP+GGGm1ABrDF83LWMh5Hd/bUR4bUOGD4XH2Kd0R7T9txpF62/5uai9zRGL+9AxNhQ=
X-Google-Smtp-Source: AGHT+IHf2PZbpFBhm6xQF3fctlNvkttb0vgzfqpVAIWgHcDB65Se341pGvnkDgcpLLDfHvKr17lOlA==
X-Received: by 2002:ac2:511e:0:b0:542:98bb:5678 with SMTP id 2adb3069b0e04-5439c248293mr3381366e87.25.1737400992347;
        Mon, 20 Jan 2025 11:23:12 -0800 (PST)
Received: from [172.30.32.150] ([185.204.1.212])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af78fb0sm1460156e87.247.2025.01.20.11.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 11:23:11 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 20 Jan 2025 23:22:47 +0400
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable automatic fan control on
 Radxa Rock 5C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250120-rock-5c-fan-v1-2-5fb8446c981b@gmail.com>
References: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
In-Reply-To: <20250120-rock-5c-fan-v1-0-5fb8446c981b@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737400976; l=1557;
 i=alchark@gmail.com; s=20240125; h=from:subject:message-id;
 bh=//LokAOrRA/EeaT7c38MIMn9xv0OF0OdXdgFumo2L3E=;
 b=b//UblCwgSfsCubs+uRP/+gxXObDUfoo+IKG9h27aNXw/OVa7YQkqZJFdMFxG4gh+/RMZt7JV
 trcFo0mQya+A1AmnYJ1eIpQ3nvSieGqS7QJX7s7iuErEwIhD6cuvSeQ
X-Developer-Key: i=alchark@gmail.com; a=ed25519;
 pk=xRO8VeD3J5jhwe0za0aHt2LDumQr8cm0Ls7Jz3YGimk=

Add the necessary cooling map to enable the kernel's thermal subsystem
to manage the fan speed automatically depending on the overall SoC
package temperature on Radxa Rock 5C

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 32 +++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 1b66a69cf0f8795d7305852fa7fef3d0672ada7f..6e56d7704cbe0dc06242cb39df56b2fc9d6bc774 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -68,7 +68,7 @@ led-1 {
 		};
 	};
 
-	fan {
+	fan: fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		cooling-levels = <0 24 44 64 128 192 255>;
@@ -417,6 +417,36 @@ rgmii_phy1: ethernet-phy@1 {
 	};
 };
 
+&package_thermal {
+	polling-delay = <1000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <55000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			temperature = <65000>;
+			hysteresis = <2000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
+		};
+
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pcie2x1l2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20x1_2_perstn_m0>;

-- 
2.48.1


