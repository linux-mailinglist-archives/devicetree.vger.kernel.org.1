Return-Path: <devicetree+bounces-8876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED71B7CA612
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 12:54:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75739B20DE9
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 10:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7D120B16;
	Mon, 16 Oct 2023 10:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="eXl5/yyC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D763208C3
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 10:54:03 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DA40E3
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:54:01 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9b1ebc80d0aso677954666b.0
        for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 03:54:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1697453640; x=1698058440; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LwYnEVWbvuqB6MXp+cQtdDUOxrrKVsKddWrqllszA1o=;
        b=eXl5/yyCvdQlK5UouywXTfhnTiT9KYVW4ya6G5yPlrHgx25QXsj2Le9bZ4+Vs0H/oA
         lWbrDE6ABNdvuSFOaPVTQENoP0eWFBRoQlXSH+jkAshUZ7qPP0+Zqd/DidjJu0+Hx0dU
         CzLc6VGXzZ81gm8y9V+7XtsB5dcGDOPc9bPkc7rsZpCJ4CGjzEzabpva5wfms87Fl71B
         98WTdGEBZNcaaWpSILRlgB8l90VB/q8w7o13tnbU4/kUC2YzNuwnF3OsmFhPdqUaqazb
         8Wku2PGkoJ8mClF/H+R4V4rbwTqPZLJZhkoEvjnkKn8KCIHpnXJxETLmDuWm8z1W6C6R
         KdrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697453640; x=1698058440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LwYnEVWbvuqB6MXp+cQtdDUOxrrKVsKddWrqllszA1o=;
        b=Wjg4ZH5OdlqvOPL0+P7m9im9rHAiqnxo4h+4eyC5Bok/LGN+F2HqtIq5ZSeLfFc7ui
         A+qltpQDI220VKRzX6GvKpZhuOy8tkd6XUC1qtjGzOFluMIjaiZhEcbXaA7nT170JtyR
         lCMkh2LD1dhk+yDxTMgttLk3ryeketwQAYEms+r2CULOeEk6Ug8GnY4kKSCN9QUqS1Od
         HsRcqifrcE1l5eR8nzg9RWj5ffMUvNOkXgjIRCTQ5VANxYqP/vWhziBwJb0ME5A0y/UG
         ZvEjEgYQSP/FHCcgFM8n0QeXx4QyhsXg9dlrbryHIvKNMYezb19t5eS0iDanRP6ltH/g
         S7eQ==
X-Gm-Message-State: AOJu0YyAjjgWQsg5OmupGH7lQQOhh9POqKBF0Etj1Lm6pnGdTMYulb4s
	jS+hsz/RwPQTqpRWiZStdrQyxA==
X-Google-Smtp-Source: AGHT+IEjIvVc0QCAzuso0fzKKPnIm8JNogGoTmRKjHnxysV8FfESq1C5vOhwCdZDlYc9Ut+uexlXZw==
X-Received: by 2002:a17:907:7711:b0:9ae:82b4:e309 with SMTP id kw17-20020a170907771100b009ae82b4e309mr29378148ejc.0.1697453639868;
        Mon, 16 Oct 2023 03:53:59 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.103])
        by smtp.gmail.com with ESMTPSA id v2-20020a17090651c200b009a5f7fb51dcsm3818126ejk.42.2023.10.16.03.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 03:53:59 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 2/2] arm64: dts: renesas: rzg3s-smarc: Enable SDHI1
Date: Mon, 16 Oct 2023 13:53:44 +0300
Message-Id: <20231016105344.294096-3-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231016105344.294096-1-claudiu.beznea.uj@bp.renesas.com>
References: <20231016105344.294096-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
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

Changes in v2:
- change regulators' names to regulator-vcc-sdhi1 and
  regulator-vccq-sdhi1
  
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 65 ++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index e7073a09ed2e..214520137230 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -11,6 +11,26 @@
 / {
 	aliases {
 		serial0 = &scif0;
+		mmc1 = &sdhi1;
+	};
+
+	vcc_sdhi1: regulator-vcc-sdhi1 {
+		compatible = "regulator-fixed";
+		regulator-name = "SDHI1 Vcc";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&pinctrl RZG2L_GPIO(2, 3) GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+	vccq_sdhi1: regulator-vccq-sdhi1 {
+		compatible = "regulator-gpio";
+		regulator-name = "SDHI1 VccQ";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <3300000>;
+		gpios = <&pinctrl RZG2L_GPIO(4, 2) GPIO_ACTIVE_HIGH>;
+		gpios-states = <1>;
+		states = <3300000 1>, <1800000 0>;
 	};
 };
 
@@ -19,6 +39,38 @@ scif0_pins: scif0 {
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
@@ -26,3 +78,16 @@ &scif0 {
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


