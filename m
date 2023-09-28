Return-Path: <devicetree+bounces-4156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBD57B16A8
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:56:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 377D6B20AA9
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F251339A2;
	Thu, 28 Sep 2023 08:56:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF86D3399A
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:56:29 +0000 (UTC)
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 550FFCD3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:56:26 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-77433d61155so495981185a.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695891385; x=1696496185; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qgeyQ9XqFkXYBeBValgSP4KCftxD8NcYA2elGZ0g2+A=;
        b=QW5jewgaysjglS7C96AkuVPDBX2M9rozQnByhhmO7GLm/7r9bbzn8C0+uq6taanrUl
         lk3bUBSeEMXz6N6EMIKOtAk8Rn9wkQQ8AKJ1g/ygaqt3MVA6w1N9azMkzp+fmeK0gW0+
         xREhE3rcJRYoe92+Dr59O5VEtVcJeIp6RdySc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695891385; x=1696496185;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qgeyQ9XqFkXYBeBValgSP4KCftxD8NcYA2elGZ0g2+A=;
        b=Kx/tDmlSOHgRpbKk7TzQ8SSAEUvbjaY5icnZ/FDSTQHQfjUtbvwJmoOi5Onkz6klQn
         evSSkqsiZpwMuDcAGEZeDuzEKpPLbxTUbi7cCqxUOpmTPljn/uIaJQOkrjv17qFmGnjD
         NmJ1vdtjFiNkWK4qCmIcEU41yCAUTzYtpdg/j0VCz8Z6HFjpxCn+DjgPFOz51PH34EFc
         xymUL5jiEjP/AIdUa6J6xVGf4z2w3Nek3heoRbb1QlBH1GgVYGQsIGSpDyZ7klTu7DMa
         EqohMBABRiCHsAcb9/koC+myq2F1K9wTauG55jor30rLL4ZocKNtIEicSn2LF5sPKcP2
         3P/w==
X-Gm-Message-State: AOJu0YyY/+urNoMNsklSDkrQfKFpw451O4OOVo3+Os5UL5xA3F9dhReU
	qnO4fA6wuZnPeyv5HWHcvBSdYg==
X-Google-Smtp-Source: AGHT+IFqaLEZNfjA5pU7uen9wRPCrpJO5khkqsKxmyJDY4pM7Sk8LJdyfVsz0G2Qn3psaxuRQUKg3Q==
X-Received: by 2002:a05:620a:2191:b0:76e:ec77:10a4 with SMTP id g17-20020a05620a219100b0076eec7710a4mr561459qka.77.1695891385357;
        Thu, 28 Sep 2023 01:56:25 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6747:c12a:dbfd:2cc7])
        by smtp.gmail.com with ESMTPSA id y7-20020aa78047000000b006879493aca0sm1754016pfm.26.2023.09.28.01.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 01:56:24 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Lee Jones <lee@kernel.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 12/12] arm64: dts: mediatek: mt8183-kukui: Add PMIC regulator supplies
Date: Thu, 28 Sep 2023 16:55:35 +0800
Message-ID: <20230928085537.3246669-13-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20230928085537.3246669-1-wenst@chromium.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The PMIC regulator node is missing regulator supplies. Now that the
binding supports them, add all the power rail supplies. Most of them
are fed from a system-wide semi-regulated power rail. A couple LDOs
are fed from the PMIC's own buck regulator outputs.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index ab2eb4500643..bf7de35ffcbc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -103,6 +103,14 @@ pp3300_alw: regulator6 {
 		regulator-max-microvolt = <3300000>;
 	};
 
+	/* system wide semi-regulated power rail from charger */
+	reg_vsys: regulator-vsys {
+		compatible = "regulator-fixed";
+		regulator-name = "vsys";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
 	reserved_memory: reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -404,6 +412,26 @@ &mt6358codec {
 	Avdd-supply = <&mt6358_vaud28_reg>;
 };
 
+&mt6358regulator {
+	vsys-ldo1-supply = <&reg_vsys>;
+	vsys-ldo2-supply = <&reg_vsys>;
+	vsys-ldo3-supply = <&reg_vsys>;
+	vsys-vcore-supply = <&reg_vsys>;
+	vsys-vdram1-supply = <&reg_vsys>;
+	vsys-vgpu-supply = <&reg_vsys>;
+	vsys-vmodem-supply = <&reg_vsys>;
+	vsys-vpa-supply = <&reg_vsys>;
+	vsys-vproc11-supply = <&reg_vsys>;
+	vsys-vproc12-supply = <&reg_vsys>;
+	vsys-vs1-supply = <&reg_vsys>;
+	vsys-vs2-supply = <&reg_vsys>;
+	vs1-ldo1-supply = <&mt6358_vs1_reg>;
+	vs2-ldo1-supply = <&mt6358_vdram1_reg>;
+	vs2-ldo2-supply = <&mt6358_vs2_reg>;
+	vs2-ldo3-supply = <&mt6358_vs2_reg>;
+	vs2-ldo4-supply = <&mt6358_vs2_reg>;
+};
+
 &mt6358_vgpu_reg {
 	regulator-min-microvolt = <625000>;
 	regulator-max-microvolt = <900000>;
-- 
2.42.0.582.g8ccd20d70d-goog


