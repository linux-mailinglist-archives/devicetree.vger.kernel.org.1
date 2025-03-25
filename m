Return-Path: <devicetree+bounces-160499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D96DA6F4BD
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 12:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6393E17098C
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 11:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CED9257452;
	Tue, 25 Mar 2025 11:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O37S5wV+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE602566C0
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 11:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742902875; cv=none; b=UBfeg8p13Kob6XUhCrU9tss8/Xbug7LNNwshqhqPoh2OjOyw6kpKM05nwmJhN58r9rOP/+tfbtwfx0aERzVR1i62saEz0Qf1kQZh3YKrY8gF2xBfH3iul7tvW5r0FxN333AqS6/7KYnjeJjiWUhcLPhOcoj+CWMqPpl+g0HIVQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742902875; c=relaxed/simple;
	bh=4hK5NwvGZj3PELV41E3//V4IRXz5oGNBj9IGYps+vOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OEYfhpQdQ5j3rnusDa1GNY6xrgc5Dts1ppxMeIzMUxDRTAM+3ADZh2TsCbYcuEoCkZB+WiFavYZNq3w4Vhg1K45u1eGTVap0B8oh6hOxgMqetEFJ+wnLMY8kcg6DUxrmbuKT8VSErm+8zR7i2sBV6E1az8ZvMnMpHEZrE0FPn6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O37S5wV+; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43948f77f1aso36456045e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 04:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742902872; x=1743507672; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LHH3q92f3jVI2cl1PwT0LmA+qhtDvCooULm9gmNkwck=;
        b=O37S5wV+iqpX8LHQLqDuBub3v39fJGQ1jyfFmU5HgS1AsV6pBmA00c4M0oJU2vSSSy
         RhQnb2/5QHg18hkf+Ayg5tGQkQz7U6R8jui0UnBLcJWv4COW6MTfyrqDnbtJmk1IYWaP
         MsNDYDcbEClzxgGIVWAjY87akqe7w5eaZHTM63o+jNya7GNn5akIBv0Bb5tVpemnQYul
         8ycHGqhi7H9cQ9s8d9V3MkC9NBl6n+7213xOjRfFdpRG45ZyXYEOqv4UAtlCGeoDOsUy
         cqJYWsGLq3QhZnBtCHjzW3O5e90rw/1X/ByTdSfPPwZOnf/ePaZ8wd2VbVqO6qTmyKBq
         KYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742902872; x=1743507672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LHH3q92f3jVI2cl1PwT0LmA+qhtDvCooULm9gmNkwck=;
        b=o9g8NqibdvPx3kDX5eRIGiWhxWdHtw2R5e6ToqSn7OWL3XI5yaALpXbQQ+krr4zyDe
         zm0j3F46m70Ud4hGgyF2mmSMAkxRV8nFcga45zjx9w3t3EXPu/69Oc7FQhdFDntgrQp0
         O6IC6Be4ZGwA899PGaEX72ylqMqdH6wbh6LnNGiq+cvJRzpuhPheOlDtrfLnBio9RMSw
         dNqx09DBznlGoZtv1vrRwHgehkvidWg9b/hbYGEIP/pHyPuu1LRLKRseto5OSJj4Ddwp
         FzWntvoBHp4F8t/qaws24RpiQwG8w+UBKxOOy2AwP1QvCWJlwJPXaStzluMupgqUU92j
         ss8g==
X-Forwarded-Encrypted: i=1; AJvYcCWaEDF/jE2iYj8d6XSsSbsp/LB/yl40lA+UN1gYLBC064sFSdeVppbbXgbKxulezPfEme5i5/ez9SzE@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ0l1yy5GGhpqOoUcLFVGgmGBkt0umZkas+1ILM68CYOvj/ikC
	kqM4W4Bsd/ZeVzy5V2A7gsSzobTv3ccfDJnUrIjECNUgCCzz6vmqkGFNyf9d/90=
X-Gm-Gg: ASbGncsSm/WMEeVqz0CLZldo/W7qFo4WTGn7amhIuAVN2w7XDT+URTMrfG3fvQyN7so
	YgnONTPDjcpmtP8zpaJPJ5nAPjRrlQz0M3I6upaUyQyBbDmBn38uidzi7rdPFoPY8Rnxt+WmszQ
	SuYGAMOIg3+twncj87yOd3rVpjXjHokz9bqRbRuLKCAXVte+yyMrFFOFq/fi3xV+VX1AoyA1WQo
	s2MklWK42pP4OflpcPyV63MJubDY+T3lEPnaq6aKSTJfY+Q9BiRQNLGLDrULSF/sbMl9DEYr6iw
	2rHn+WhFnVbd2eKRGYQ9kmbRujPG2xf7zXJCap+9fhnITsI77R6LWghr98xChCvDs9flBg==
X-Google-Smtp-Source: AGHT+IEMuI1g0ZU02+lOgr8fYYCjQ7o8X4OMjftQEoVT08K9es8AYYCt3BGby4k10kE/8HnyILx4Lg==
X-Received: by 2002:a5d:59a6:0:b0:390:f6aa:4e72 with SMTP id ffacd0b85a97d-3997f8fabdbmr14153166f8f.18.1742902871718;
        Tue, 25 Mar 2025 04:41:11 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a6326sm13213330f8f.29.2025.03.25.04.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 04:41:10 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: peda@axentia.se,
	broonie@kernel.org,
	andersson@kernel.org,
	krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com,
	luca.ceresoli@bootlin.com,
	zhoubinbin@loongson.cn,
	paulha@opensource.cirrus.com,
	lgirdwood@gmail.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@oss.qualcomm.com,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Christopher Obbard <christopher.obbard@linaro.org>
Subject: [PATCH v5 6/6] arm64: dts: qcom: x1e78100-t14s: Enable audio headset support
Date: Tue, 25 Mar 2025 11:40:58 +0000
Message-Id: <20250325114058.12083-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250325114058.12083-1-srinivas.kandagatla@linaro.org>
References: <20250325114058.12083-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On Lenovo ThinkPad T14s, the headset is connected via a HiFi mux to
support CTIA and OMTP headsets. This switch is used to minimise pop and
click during headset type switching.

Enable the mux controls required to power this switch along with wiring up
gpio that control the headset switching.

Without this, headset audio will be very noisy and might see headset
detection errors.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
---
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
index afea82616bc4..34d1d8927484 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
@@ -41,6 +41,7 @@ wcd938x: audio-codec {
 		qcom,tx-device = <&wcd_tx>;
 
 		reset-gpios = <&tlmm 191 GPIO_ACTIVE_LOW>;
+		mux-controls = <&us_euro_mux_ctrl>;
 
 		vdd-buck-supply = <&vreg_l15b_1p8>;
 		vdd-rxtx-supply = <&vreg_l15b_1p8>;
@@ -149,6 +150,16 @@ pmic_glink_ss1_con_sbu_in: endpoint {
 		};
 	};
 
+	/* two muxes together support CTIA and OMTP switching */
+	us_euro_mux_ctrl: mux-controller {
+		compatible = "gpio-mux";
+		pinctrl-0 = <&us_euro_hs_sel>;
+		pinctrl-names = "default";
+		mux-supply = <&vreg_l16b_2p5>;
+		#mux-control-cells = <0>;
+		mux-gpios = <&tlmm 68 GPIO_ACTIVE_HIGH>;
+	};
+
 	reserved-memory {
 		linux,cma {
 			compatible = "shared-dma-pool";
@@ -604,6 +615,13 @@ vreg_l15b_1p8: ldo15 {
 			regulator-always-on;
 		};
 
+		vreg_l16b_2p5: ldo16 {
+			regulator-name = "vreg_l16b_2p5";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2504000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l17b_2p5: ldo17 {
 			regulator-name = "vreg_l17b_2p5";
 			regulator-min-microvolt = <2504000>;
@@ -1461,6 +1479,13 @@ rtmr1_default: rtmr1-reset-n-active-state {
 		bias-disable;
 	};
 
+	us_euro_hs_sel: us-euro-hs-sel-state {
+		pins = "gpio68";
+		function = "gpio";
+		bias-pull-down;
+		drive-strength = <2>;
+	};
+
 	usb1_pwr_1p15_reg_en: usb1-pwr-1p15-reg-en-state {
 		pins = "gpio188";
 		function = "gpio";
-- 
2.39.5


