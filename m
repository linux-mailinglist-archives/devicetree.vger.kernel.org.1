Return-Path: <devicetree+bounces-18813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C049C7F8BCC
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F15471C20CF8
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:40:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5872912E7E;
	Sat, 25 Nov 2023 14:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="2CM6AQ0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E86E5C6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:53 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6c33ab26dddso2167582b3a.0
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923253; x=1701528053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4ENEteNl+//2u346EvCiephALRIREObeECdE1r8+5c=;
        b=2CM6AQ0o987PUnoKHIPXcV0DCVrG1SSqwuumVhZIuVJetmMxGZUJ55aPzMjC7vhuYS
         0mNW97apzPMjQHgeQWFYIpibcAOeg6coaqAepBUumoFTUeiXNr3Iyo5zKT8uaQFiKKdG
         /GChlURP1lB72RhliXxJ8oiSRcbs3otbKdTJNj7cey5uHH0IITmdSPS/D+ohca2ctyUi
         xKmPzc/whQc8kefss7ptkNo6U7kYrv4OkgVERZhf2MCzcpScb2vFM9TOR9xWW43M1VVf
         Klj2iX6Rq93/Od7XgGTIN1IzVyD8LTBwAWT1CtiTn2xbSgDLml/ppw3+ABaEEkxxUUir
         cPdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923253; x=1701528053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4ENEteNl+//2u346EvCiephALRIREObeECdE1r8+5c=;
        b=C/MSxv3c9JiQVZVzl7Ujo4thOUWOaC3rHa+jA5gwa2iKe4uwYFjsnWMu975Jn9Xf09
         h2gAwklHciLmJ3y2p9m9YmZ0NoYonJFHhuboAoaQKZisnHv2beHW/bdPWhCi94Ts0bSr
         O74INZPQm/vHs8c77bqVIYSiHunwxqpyNRUUwcddLSsOTk2HzOQrDt4XnBYoHpT4E+au
         l8KzaZqzjg9Rt+5iMpo2T7u2U+U+f51UEmBGmVJ5OvXo2tBdVeGS1e1DWBhpQ28z9PLc
         T+ZpOLIU1bzj+gILXw4rz7i4+KN7iE8spSLz3eq6ISE8wEkYc+Qw6fHLy9nwBJm+P+cv
         BRcg==
X-Gm-Message-State: AOJu0YzEFaVBes3kkEv6YJ8yKfhJ5Q5cMB5VaDPJbGuOhnviQYZi7LFO
	f3jboVuY/Eo8Ct8pdm/VuDEtEA==
X-Google-Smtp-Source: AGHT+IFftCuVyAW6J+Dwe4q2ltPuhl8xH27IdHvjzuJL/Qtuf5qo6hgwDMf4KO7KWUUT9q0Y4llbWQ==
X-Received: by 2002:a05:6a21:3714:b0:18b:8147:91fb with SMTP id yl20-20020a056a21371400b0018b814791fbmr5185762pzb.19.1700923253487;
        Sat, 25 Nov 2023 06:40:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:53 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 09/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
Date: Sat, 25 Nov 2023 20:10:11 +0530
Message-Id: <20231125144012.58668-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A-IO board has 2 port USB2.0 Host and USB2.0 on E-Key.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 77fafcdc6fdf..58ab6dcf691c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -48,6 +48,20 @@ vcc3v3_pcie3x4: vcc3v3-pcie30 {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -135,6 +149,12 @@ hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 /* FAN */
@@ -179,3 +199,38 @@ &uart7 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc5v0_sys */
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.25.1


