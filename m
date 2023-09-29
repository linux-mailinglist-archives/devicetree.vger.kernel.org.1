Return-Path: <devicetree+bounces-4482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A3C7B2BAC
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 07:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F15221C20958
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 05:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD17E187F;
	Fri, 29 Sep 2023 05:41:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C2E185D
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 05:41:42 +0000 (UTC)
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB872105
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:15 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5345a3dfe3bso8959475a12.3
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 22:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1695966014; x=1696570814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cPgz6zkkuP/QvbsAnjGs89IXSWE24BO+d6az/jrPNY=;
        b=N/fYhnvRLb36lt1eapguKiqxqVYNlsqrv+Ui3l5CPTtLJ7m3pLF6ZOuQnZay2XCm2C
         QP60ou75tAJXPncyqANmlJBMWwQcRiSHrWsfOMSR5/0/z47BAnxnCGjVmQ4aohQg0yad
         BAeL2dOfyNn+c3ppwIcDQ0ERlSjRHOyDa+K+ziuTZjb1MY/2AZ15l2abLRJXc0FM1V7x
         t58L5FiJSUSMU45CQJTwp2+KD+vJIuy24zxFLiclNNmXGibLBhhmEQviuxd5oE4/xUWp
         v2kw8KWsKJuwmq11vP4u+ACZrQEZjKmwXEXT9adm+pUhbVmDQ5r2cPkBoiJ+0BU+qfAk
         Eczg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695966014; x=1696570814;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cPgz6zkkuP/QvbsAnjGs89IXSWE24BO+d6az/jrPNY=;
        b=sFLyFzfa89LOxInemyTlwtIJhmiZBz27aWPgAyfmtCXknjX+QSQceHqw4fLfeXUg67
         qWQOyNSfh9aw9eokOTPZ58RKVMr6faTjVbxt2SvqNR4gikXpYENe4vMDAlHYU+XZEngm
         DuUdXZNp3yICnloVhV3Zrjh7bAvarBxTwXcUmVUx4J0/MAmL1zn+1pF1vpOwoNxwxzMK
         YZ256+GpmkNHRCKBgQFu+ZT8OBks3ygueVBCfnhEmM0Hb06H7hwdsqqvsu8An4MTNBgQ
         E6vJjwwocyrHJZTP1+f0Mgug5Khk7xiBMfIyfojp6Za4vjjXaUF4n5Rzsc3qHHGtqENe
         /Bhw==
X-Gm-Message-State: AOJu0YyM1V4S/vnsMAYlhGYSHf8R7/0HhdSmArOzd8JKm3uuKZngS5KJ
	MzCsBfVJN80ur61FxZKy45tXag==
X-Google-Smtp-Source: AGHT+IFpSPh8yayTTchhgUGo5UVhQZBeySgfo2JdyqmupZ/CM1UnRoYelTOunDOQMI3TLbCEj6KiTg==
X-Received: by 2002:a17:906:10dc:b0:9b2:bb02:a543 with SMTP id v28-20020a17090610dc00b009b2bb02a543mr3227213ejv.74.1695966014250;
        Thu, 28 Sep 2023 22:40:14 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id z19-20020a1709063ad300b009a1a653770bsm11971992ejd.87.2023.09.28.22.40.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 22:40:13 -0700 (PDT)
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
Subject: [PATCH v2 27/28] arm64: dts: renesas: r9a08g045s33-smarc: add initial device tree for RZ/G3S SMARC EVK board
Date: Fri, 29 Sep 2023 08:39:14 +0300
Message-Id: <20230929053915.1530607-28-claudiu.beznea@bp.renesas.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add initial device tree for RZ/G3S SMARC EVK board.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- modified compatible
- @Geert: I haven't added you Rb tag as I've added
  "renesas,rzg3s-smarcm" to the compatible list

 arch/arm64/boot/dts/renesas/Makefile            |  2 ++
 .../boot/dts/renesas/r9a08g045s33-smarc.dts     | 17 +++++++++++++++++
 2 files changed, 19 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dts

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 7114cbbd8713..254983ca56a1 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -86,6 +86,8 @@ dtb-$(CONFIG_ARCH_R9A07G044) += r9a07g044l2-smarc-cru-csi-ov5645.dtbo
 dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc.dtb
 dtb-$(CONFIG_ARCH_R9A07G054) += r9a07g054l2-smarc-cru-csi-ov5645.dtbo
 
+dtb-$(CONFIG_ARCH_R9A08G045) += r9a08g045s33-smarc.dtb
+
 dtb-$(CONFIG_ARCH_R9A09G011) += r9a09g011-v2mevk2.dtb
 
 dtb-$(CONFIG_ARCH_RCAR_GEN3) += draak-ebisu-panel-aa104xd12.dtbo
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dts
new file mode 100644
index 000000000000..7d775d10a97e
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Device Tree Source for the RZ/G3S SMARC EVK board
+ *
+ * Copyright (C) 2023 Renesas Electronics Corp.
+ */
+
+/dts-v1/;
+
+#include "r9a08g045s33.dtsi"
+#include "rzg3s-smarc-som.dtsi"
+#include "rzg3s-smarc.dtsi"
+
+/ {
+	model = "Renesas SMARC EVK version 2 based on r9a08g045s33";
+	compatible = "renesas,smarc2-evk", "renesas,rzg3s-smarcm", "renesas,r9a08g045s33", "renesas,r9a08g045";
+};
-- 
2.39.2


