Return-Path: <devicetree+bounces-7249-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4377BFD6D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:27:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 01A09281FA2
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F4089CA4C;
	Tue, 10 Oct 2023 13:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gTFrILYK"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDED4737E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:27:20 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 233CAC4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:18 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9b9a494cc59so948224866b.3
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:27:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1696944436; x=1697549236; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PTS0RsVqbjVNm/cAfof2qqXtb+VFg82/jG1YYiHr1T0=;
        b=gTFrILYKCcsIPK70wq4c8lJ5V0lvOwEru3v2+NBy/JLbnyO4AzZldFA0hixyyVlmHf
         Lg08TQXDD0Ftm2xVUiJ0rmUIqwRwc+vEArhuXqS3q+sDZBsIjJlrM4+h0Ynrnp0zIVWH
         QfDivPEcWc527hekFRsLjijnrHcHhCd2JZTULwLxo7ZklxGj8pC0XYZD5G4fwUQM2oV/
         18gNUm+TtUmXv/g7QhsJijTByBnhv/s0nxIo5eDOh2nILS1mdUBFOumetQogH9EU+iK+
         28NkN5nJ0jmQ1BikgAsVNSkSXvGiKw9O/LZ7iLQUy9uuusGuUul7Z02Clneu545aIxnt
         48oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944436; x=1697549236;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PTS0RsVqbjVNm/cAfof2qqXtb+VFg82/jG1YYiHr1T0=;
        b=BTgdJOey+UME20osdLuwhwC1snVqI5Gk2DjELhz8Eq66ZTqjUu9g2fPHS33tuy8hyO
         RaVzxErTsGpc6o0nfsi3lRGGHtNrZqLhuaw92LTWWFdQkh32n9azEwAvlanZ2rnuUqD6
         tZPP9mR61mCGAIQ+vHqCVVYIWp6cKdXUFiuqt/SZlAIOfDCJo/+VBR5ABnYqzYa8jTfh
         GqP/krk+FOu98GHxTTTUgJDkSGdJH7/ucli+kAYmGe2Bgsm9xoy/ISUx+3LZnfuhGPYX
         YItgOT7STwW4fruh+46ouPn5z7r06ac8aSNFEn5d7fc6aV1GZ6JKjz1IfR6327uZDCkv
         XzCw==
X-Gm-Message-State: AOJu0YwlfaVjbdlou1byWnOX7zhEC0b7S/OL8UTWaqIl76wwm1ode1Js
	1rsxIxyoiqbzKBXRtEkGBj/RgQ==
X-Google-Smtp-Source: AGHT+IFqR5Nd0aHbkI7c4o1xnDoLgLUB07HdkarXNaM7IrjdRUuK3ik3XgXtC93V3/O2ewGZcptABA==
X-Received: by 2002:a17:907:6c14:b0:9ae:5c99:f2e2 with SMTP id rl20-20020a1709076c1400b009ae5c99f2e2mr14341810ejc.43.1696944436632;
        Tue, 10 Oct 2023 06:27:16 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.152])
        by smtp.gmail.com with ESMTPSA id i16-20020a1709064ed000b0099bd0b5a2bcsm8526578ejv.101.2023.10.10.06.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 06:27:16 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 5/6] arm64: dts: renesas: rzg3s-smarc: Enable SDHI1
Date: Tue, 10 Oct 2023 16:27:00 +0300
Message-Id: <20231010132701.1658737-6-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231010132701.1658737-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add SDHI1 to RZ/G3S Smarc Carrier-II board. This is connected to a uSD
interface. Although Vccq doesn't cross the boundary of SoM it has
been added to RZ/G3S Smarc Carrier-II dtsi to have all the bits related to
SDHI1 in a single place. At the moment SoM is used only with RZ/G3S Smarc
Carrier-II board.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 66 ++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index e7073a09ed2e..71c0cbee6258 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -11,6 +11,27 @@
 / {
 	aliases {
 		serial0 = &scif0;
+		mmc1 = &sdhi1;
+	};
+
+	/* Reserved regulators 0-9 for SoM. */
+	vcc_sdhi1: regulator10 {
+		compatible = "regulator-fixed";
+		regulator-name = "SDHI1 Vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&pinctrl RZG2L_GPIO(2, 3) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	vccq_sdhi1: regulator11 {
+		compatible = "regulator-gpio";
+		regulator-name = "SDHI1 VccQ";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&pinctrl RZG2L_GPIO(4, 2) GPIO_ACTIVE_HIGH>;
+		gpios-states = <1>;
+		states = <3300000 1>, <1800000 0>;
 	};
 };
 
@@ -19,6 +40,38 @@ scif0_pins: scif0 {
 		pinmux = <RZG2L_PORT_PINMUX(6, 3, 1)>, /* RXD */
 			 <RZG2L_PORT_PINMUX(6, 4, 1)>; /* TXD */
 	};
+
+	sdhi1_pins: sd1 {
+		data {
+			pins = "SD1_DATA0", "SD1_DATA1", "SD1_DATA2", "SD1_DATA3";
+			power-source = <3300>;
+		};
+
+		ctrl {
+			pins = "SD1_CLK", "SD1_CMD";
+			power-source = <3300>;
+		};
+
+		cd {
+			pinmux = <RZG2L_PORT_PINMUX(0, 2, 1)>; /* SD1_CD */
+		};
+	};
+
+	sdhi1_pins_uhs: sd1-uhs {
+		data {
+			pins = "SD1_DATA0", "SD1_DATA1", "SD1_DATA2", "SD1_DATA3";
+			power-source = <1800>;
+		};
+
+		ctrl {
+			pins = "SD1_CLK", "SD1_CMD";
+			power-source = <1800>;
+		};
+
+		cd {
+			pinmux = <RZG2L_PORT_PINMUX(0, 2, 1)>; /* SD1_CD */
+		};
+	};
 };
 
 &scif0 {
@@ -26,3 +79,16 @@ &scif0 {
 	pinctrl-0 = <&scif0_pins>;
 	status = "okay";
 };
+
+&sdhi1 {
+	pinctrl-0 = <&sdhi1_pins>;
+	pinctrl-1 = <&sdhi1_pins_uhs>;
+	pinctrl-names = "default", "state_uhs";
+	vmmc-supply = <&vcc_sdhi1>;
+	vqmmc-supply = <&vccq_sdhi1>;
+	bus-width = <4>;
+	sd-uhs-sdr50;
+	sd-uhs-sdr104;
+	max-frequency = <125000000>;
+	status = "okay";
+};
-- 
2.39.2


