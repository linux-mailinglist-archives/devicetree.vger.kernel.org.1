Return-Path: <devicetree+bounces-4479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16ED27B2B86
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id BB9DB2824B7
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:40:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C2CD2119;
	Fri, 29 Sep 2023 05:40:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224D5211F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:40:32 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A9651FE7
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:11 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-534659061afso8138657a12.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695966010; x=1696570810; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EiMN4iAomSYzsnYh4FbTjlQllZnWEOpw/8D+l1h2fjk=;
        b=IKHnYsRNb2uS9QIZlGeNzGeL2A5vlkisyd1BDqeeo+ousm5EUVOedPu1v0w47FOCDZ
         1yWUKeqfVPreAwTGQcNiH8+BcpDsk5Kj9YfRQTrRMldK+N9y1yVmHbjU1D6Y8i0gpzKr
         pPvEbwr5WyDlLnJkb9KzLKPKEbib2jrvW1y5eQ0jW4Z3ThezfSMxckuffbtpq+S1uNeb
         4KxpeA89UNfFqphSKCSHfoE0wPgohTLn4ohhnyFDcxqUqO//ZDwGQHt37avq8qWCkmFh
         xpmyeTyzloXFMpYpoVuX018nhggxQnSq3MS/vCCU8CvvlPv+LSmiIWtj7UIK+/gYJfJi
         6WgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695966010; x=1696570810;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EiMN4iAomSYzsnYh4FbTjlQllZnWEOpw/8D+l1h2fjk=;
        b=ZCUYUjxea/is4zmZ+kEJFMIoQWtRwHxQEakPy6jWTYLutCk7tH9yLKF+kmkjzxpZ0e
         lEvvIERYAD0fQ/ERNNId0uOUcMrwfZDkxQGnvxG9nhpe/feaUzD5iqN0+W+HLqjaeuGN
         pHgJTaliI0IQKEYgDPq5Wbb41UJkoXpilwDjnMoL1otLt5e6QNjeWkrhENAHFgCYXHKQ
         S3wZEktX5QxrUNt/azhEdSh1Cp42sHr1XBtImtHoHjl9p0Kuvaor5Nr+xcFPIdx5mrDt
         ZfaDqx50h96Mz3YBmy/Oe4KiOK4hnqmThSV5C4XM/8W2tYGKLvQU1qudFi2kn2jPENhH
         zSDA==
X-Gm-Message-State: AOJu0YzmdSgw2gFzNRvY7114PDDKF5vdeddJZnjiDSI49n82WanYiNL2
	+FOuA1RscaW9QreLisY4nIULkQ==
X-Google-Smtp-Source: AGHT+IFYJ0/ox1lCTBKrCVFvWl/loERm0gAT3y1iJHmEDHCLHh/UA5xT59zUFo3GjLMZmuC4oVX4QQ==
X-Received: by 2002:a17:906:3116:b0:9ae:546b:786b with SMTP id 22-20020a170906311600b009ae546b786bmr2541209ejx.33.1695966010310;
        Thu, 28 Sep 2023 22:40:10 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.40.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:40:09 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linus.walleij@linaro.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	magnus.damm@gmail.com,
	catalin.marinas@arm.com,
	will@kernel.org,
	quic_bjorande@quicinc.com,
	konrad.dybcio@linaro.org,
	arnd@arndb.de,
	neil.armstrong@linaro.org,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	biju.das.jz@bp.renesas.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 25/28] arm64: dts: renesas: rzg3s-smarc: add initial device tree for RZ SMARC Carrier-II Board
Date: Fri, 29 Sep 2023 08:39:12 +0300
Message-Id: <20230929053915.1530607-26-claudiu.beznea@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
References: <20230929053915.1530607-1-claudiu.beznea@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add initial device tree for RZ SMARC Carrier-II. At the moment it
contains only serial interface.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- inversed the pin naming

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 28 ++++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
new file mode 100644
index 000000000000..e7073a09ed2e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ SMARC Carrier-II Board.
+ *
+ * Copyright (C) 2023 Renesas Electronics Corp.
+ */
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
+
+/ {
+	aliases {
+		serial0 = &scif0;
+	};
+};
+
+&pinctrl {
+	scif0_pins: scif0 {
+		pinmux = <RZG2L_PORT_PINMUX(6, 3, 1)>, /* RXD */
+			 <RZG2L_PORT_PINMUX(6, 4, 1)>; /* TXD */
+	};
+};
+
+&scif0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&scif0_pins>;
+	status = "okay";
+};
-- 
2.39.2


