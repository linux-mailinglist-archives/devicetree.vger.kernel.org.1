Return-Path: <devicetree+bounces-160124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EE2A6D8E6
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3191D7A1BDB
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 11:06:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0598525EF94;
	Mon, 24 Mar 2025 11:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UMWIOOHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92B225E826
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 11:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742814390; cv=none; b=agllah7gKQhMZvKOqLJOe0Rasw/dPkdqtx/4G6EN4bv/HR20fhktc1ugoQn9v4gXMRF8vNFxnTVGY81slWkj2+xFWs+uI6qX2Iqz8Ta0irWyTJlsaOtWWiEjtJHmw0eUMMr2ARDx2wNoMuqxodpUYhOXe7rR4NmPHxknK6MPIoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742814390; c=relaxed/simple;
	bh=4hK5NwvGZj3PELV41E3//V4IRXz5oGNBj9IGYps+vOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IIbZlLBHhVIdrLEKmpAJ9uVklo/VFdeZcRPmwKraqE0LVRjdbCDK2lpK+Z1rFsAqe5eK4ifIz0mKtSLge5J/A1Epw0rbxY0fNN+yhCFl5AfEUT/kP9Fz5SAVUlOgG5SoDMw6jy47dCMewk32bRGBAFZw4w/CBEGhlzxFVo2fA/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UMWIOOHQ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso30761355e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 04:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742814387; x=1743419187; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LHH3q92f3jVI2cl1PwT0LmA+qhtDvCooULm9gmNkwck=;
        b=UMWIOOHQGxZ4zX+AuqN3iCirLQn945tcf5NzPm3jisQLhnN41SPycbJ3Hq92xoCskY
         TWHy9TS7qGM6vmtWGyhYMcsI3goitpYBeQSCVW3wYhG0lgJjTq/RETqyj8lqZZU62c/A
         XqYje+tOCYqnax4BbmUM3zeSWbYGHTNwzBSHlXNsF7zKaVw+KESS557Edld/lAs4X/7+
         fVi2G6amEq2D+/fveEXRODs+Vy1glXyYbJ/+20jQXAZersciscTe43HH5GB6R1PWmMnL
         n9P4NeDu6+D6RWmoCPerUVk8QbQCFlmJAiSCl8anbEptp1AuHCyuGJAeWdUw9mAT9+P5
         AQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742814387; x=1743419187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LHH3q92f3jVI2cl1PwT0LmA+qhtDvCooULm9gmNkwck=;
        b=CkBmDhRr8nrcezOwTgHP6U/dbq9uziLytCjeYA0IUbhHDSLlXuYcsmHcscsn99CX3K
         iWNcA6vZzvuVcHoUdfGGcCBq40apQa20iTvG8pI2gDiN3TMTO6KUmvo9JWph8L1HESmY
         pm+V+TjRPaPzPu3l0iQZLktk11MvlwI9ztVQldnBnEIz3Q6wBCVBK1yoZHwcqh/X9Ikc
         EbdxJNpQ2gHkF1oxL/DKhwF+DEkp3R9oT+ypsNnXs7o/HxHf5Q+XMyiGcwjf7A256jeQ
         mFcX6TQPGBIo1dh7ijpdd7gV7bOUEt/Mcsl/lOACL6l3XCI/GyqoxGDFk6Y0X605Hn1g
         f0mg==
X-Forwarded-Encrypted: i=1; AJvYcCVvcVdJfrluebl19zG1WDnc5QcgerDx0joffmBkaFOdPm3RmCr3tcTkA5FP9hjyJe1njWh3yWho5ZIM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4GDOiG5iAjRF+Z3k7nGzkiCssFubG8Qh/8N+x7+5l/qMHhU66
	3g2cHd7EUZZuH7I3IM3N+0+K5EejKTJwtRuIzLAsnOS0MybkgvdH6gpzsT410dQ=
X-Gm-Gg: ASbGncsGz9nOCd8OuoUaHWgrYqst+IgKfQ3hgHRzYMBp6LWzgOpxkmZ6vGEoDE9L81Q
	o5coeJM14RATMwtFC/M02GetDHpe/DZJydtChuP33dTpAYJgg7cJEUSV0iFww3eeUfeqHOk3+5n
	3CjEpnMZikVEoeAsPtNCBVddytvQUEmaI0o36aa8fwuHG2FPfr4WzgCzablpbj/OP8f13FoMxCY
	3yabOJT2VRHRHrQZmnwXjxNVysjgS1Aq3wmpsuAlLLxiv2IRUXJ5mg7kPKnVzp7gCYc8uSwloqp
	WFPT1P1npyMgQiOyE+bwi8YdlCTANIcbXWej6tYldJuZkHFG5iT29xJkY1o0L6radCAw6A==
X-Google-Smtp-Source: AGHT+IG8WBPlCvVyY1KQYR/9Iquhnkhf4Qaz6J24cTBFhVpXQTdAUekDB7RcQcJow0uNLB2tPbEp/g==
X-Received: by 2002:a05:600c:1d81:b0:43d:10a:1b90 with SMTP id 5b1f17b1804b1-43d509f8691mr116342525e9.16.1742814387134;
        Mon, 24 Mar 2025 04:06:27 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fd28a46sm117236055e9.24.2025.03.24.04.06.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 04:06:26 -0700 (PDT)
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
Subject: [PATCH v3 6/6] arm64: dts: qcom: x1e78100-t14s: Enable audio headset support
Date: Mon, 24 Mar 2025 11:06:06 +0000
Message-Id: <20250324110606.32001-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
References: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
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


