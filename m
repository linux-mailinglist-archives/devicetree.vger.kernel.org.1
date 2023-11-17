Return-Path: <devicetree+bounces-16785-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E160D7EFC19
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 00:24:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B5CB281390
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 23:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A1EC4642D;
	Fri, 17 Nov 2023 23:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mnb0yIFB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37AB793
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 15:24:08 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50a938dda08so3675266e87.3
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 15:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700263446; x=1700868246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XQ+B/L8i5I4moYPo2ebVEMU/rIESTe0wmqEektzIRIA=;
        b=mnb0yIFBFbaywjEj7uh6xh1jfdAc3ubduNWXydIj5rkrj0d9FeNfZJxfN82HRRYJ9a
         AInphNguJ1hRnd9qUtaVEBCP2ZffWfINqcmDddbJY+hU0LG86y+g9KkCm1GpWMJoWh+t
         Ojt74urGHCN43QSUeOxqkEbOUuyLo2Fa4fBhBNgeHC7u8URQRY5tqOWd3d816RfqI24x
         At5q+D33jqUsD7ak6VcbrMLTl9Olpn6lFgWDpMMFK9+VZ+WwR0fX+DWqNOsrZFyrIFzx
         710MyHJB6cRvbu7jQmqDE/BB+G/7mlGjLyXrKEhww5bC5BrpdnBkqkSOFbbqDNz82B/U
         5Vcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700263446; x=1700868246;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XQ+B/L8i5I4moYPo2ebVEMU/rIESTe0wmqEektzIRIA=;
        b=Tojz184tNYqrbv7gY3sdkSWGiNc9gm5Qf7Im6rXXVVU5SnGR1UENCd+4JjpFpxkrv3
         nwFKZv7YhZBGnhSwwRrWDhEHHITqn/eqYeOr+7gmJxd1jCOCP8GhVpPTcpRxgOnUb3AO
         W1iIgphUlFObTUkZY6XOMRcKIw09zFBQ6FNl2dJ9x7pSOYshcF75RmtJQ6VEwUSVQKEK
         2ZAccGs5hZJeJyyevENmpnMH+Mz25DiEDChXnTwF0s+lro/1KpLznJXvWtZRYRX3v6ur
         OtlynnLaupeCnIF9+DoUYpHEfVvUiw1QHkpgOqJ+621QLedvr5QwubzehbPAXjmpl9sV
         dSIQ==
X-Gm-Message-State: AOJu0Yz/JI/CE7epWz7lSws7wKYN6RLnZgegc3a7lbYuIe2ujOCdJtve
	Lq39ureENWuBtEyrV8KDs7cdoz/0jb5swg==
X-Google-Smtp-Source: AGHT+IHbL8Fipc6DqYjMonL8xSBpXYLVPeX4bMf4q0OhHuelxRNX5XGpO3vo0CzO5eB4Qth5TzTZoQ==
X-Received: by 2002:a05:6512:1111:b0:50a:a6b4:de4f with SMTP id l17-20020a056512111100b0050aa6b4de4fmr102354lfg.36.1700263446191;
        Fri, 17 Nov 2023 15:24:06 -0800 (PST)
Received: from rafiki.local ([89.35.145.100])
        by smtp.gmail.com with ESMTPSA id l6-20020a056512110600b00507d1cc0458sm382789lfg.51.2023.11.17.15.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 15:24:05 -0800 (PST)
From: Lech Perczak <lech.perczak@gmail.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Lech Perczak <lech.perczak@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH] ARM: dts: nxp: imx7d-pico: add cpu-supply nodes
Date: Sat, 18 Nov 2023 00:23:52 +0100
Message-Id: <20231117232352.101713-1-lech.perczak@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PICO-IMX7D SoM has the usual power supply configuration using
output sw1a of PF3000 PMIC, which was defined in downstream derivative
of linux-imx (see link) in the sources for "Android Things" devkit.
It is required to support CPU frequency scaling.

Map the respective "cpu-supply" nodes of each core to sw1a of the PMIC.

Enabling them causes cpufreq-dt, and imx-thermal drivers to probe
successfully, and CPU frequency scaling to function.

Link: https://android.googlesource.com/platform/hardware/bsp/kernel/nxp/imx-v4.1/+/o-iot-preview-5/arch/arm/boot/dts/imx7d-pico.dtsi#849

Cc: Fabio Estevam <festevam@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Lech Perczak <lech.perczak@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx7d-pico.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7d-pico.dtsi b/arch/arm/boot/dts/nxp/imx/imx7d-pico.dtsi
index c5eefe89cd99..8d5037ac03c7 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7d-pico.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7d-pico.dtsi
@@ -108,6 +108,14 @@ &clks {
 	assigned-clock-rates = <0>, <32768>;
 };
 
+&cpu0 {
+	cpu-supply = <&sw1a_reg>;
+};
+
+&cpu1 {
+	cpu-supply = <&sw1a_reg>;
+};
+
 &ecspi3 {
 	cs-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>;
 	pinctrl-names = "default";

base-commit: b85ea95d086471afb4ad062012a4d73cd328fa86
-- 
2.39.2


