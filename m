Return-Path: <devicetree+bounces-160170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6641BA6DAB7
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:03:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 197CD1893FC5
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A825261364;
	Mon, 24 Mar 2025 13:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zseKWQZ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B56025FA28
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:01:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742821278; cv=none; b=usrMNmfr7OSoFv5ut6xdNJWiy847Z9gp4f9jKtccY1DRc+vMT8K5wyfkgRQX/VTKH82qdFXO0BohPgMD4FUcq7HAG0bqy6bBHVmcNgd3tNHlFTwPP4YyOuOB+llbjL03MKRnRl1SnU+piRzG7bfVoNWOV0SObfQItMojc62N+HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742821278; c=relaxed/simple;
	bh=4hK5NwvGZj3PELV41E3//V4IRXz5oGNBj9IGYps+vOQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cM3mrGbd/i807HQh3ko0Eixn7uImp8YFruxfg+u83Ib6jbXFWWyKbaONml7CIYrfWN+FqK/5nd/LUBQca+F/qTDBdr3RriR5D4bKH5IUGCparMVhONUHGlrgI6oXBVTQTcO+vKxdyPBs+QfsHU44eSZDzUYhUXvvJZ866+pj4bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zseKWQZ1; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43cf0d787eeso47030685e9.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742821275; x=1743426075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LHH3q92f3jVI2cl1PwT0LmA+qhtDvCooULm9gmNkwck=;
        b=zseKWQZ1gxUG0tcbCLCQLMHB1wbLR4Zw2JVmEYvdvKQO4NWr6xH8VEoo431zWwWjj1
         rQ55pWEh47umQHhitPabr5c7C8fIcoH/cn6t6108ByjdeJUPaUYRtaOjoy05EgRPvGHD
         /gquTLMwNrbwUNxc4SQe8ezuT3jK3iyrDLzft9E/XYTlQYYQDsnO4y5yAwLBnC/PQUnH
         qNEh8PzEIHKrcEnf/71B6UORF3+886EvEURvbU9F7EqpnHV1TWnZdGwhu/wT+T13Obpt
         e/ZtTJFHKdGPoD4qdrqfouK+QCN8+Dow4ou2wRhUhVScg5J220DK80h5DOnqdYK3e0cg
         Ks3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742821275; x=1743426075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LHH3q92f3jVI2cl1PwT0LmA+qhtDvCooULm9gmNkwck=;
        b=PyGIH1aH1ia7jBPH/A39gCHDyQR0eDHKNdpIwDwxO85Qxv668nrRtE53dO1WTYw0Gl
         A44zQK7xzGg6WWnS/T9kglNwmF2HhHGj7CLUP2trv4w4SgRsq9iTOZcK42a4PEA/iA2o
         QZTzhoWx0YA4ulx3IMY3avhCwIgS6Ave8jmtxtUt1abHnVXmwUeFQ7uVt+X9U25Pg7Ro
         srDJ1lkoeoHDdKEnnaBTF7S4VAx+eCkpJ3eNFiCMwhu8ZetMTbUHfSTI9ETrEdZU3O0z
         lT92ymtujJJbTf4bY1NcaAIeQxGKX4HAmKQuuZ9RGXbGxmOGPe8vY0xgYKO7dEwByVFR
         v1wQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4SCZ7Ks+YKjfsFi194u/NGEt9RsN35hCEKxPS8M9Bsg06AVUmWkZLRgJv/eWTko/o+UDGq5pHEu5t@vger.kernel.org
X-Gm-Message-State: AOJu0YybdmzaECpUQGIp2aVOM6oQN1GL3F0759B8h9+mz8swhIbRxDWT
	Dd39QagClRsqB2kaSBocbSPsYF3QW4Kl11e7V0VbYrfT0+xgwChp7VFgC64R5xk=
X-Gm-Gg: ASbGnctplKRTHF2MMyG/I2m7ss2ePdlueXxA81MunBpBrESVYdSv+s6n4HGCI6algKs
	ZEAiLrSRJO8C4WetEt730hCLzCika6iAetZJ8B4+4JVxqfCVyOxtvDGTrv9WQkCemRKMteh/HkC
	mTc14gfcFORjmUce2g1s0yIlDPxsR268g77BYPQeTbsp00j8sUy7ShqdPMIgzOPfzyMewGMPnIc
	jygn43ivbJWyXEse+sZSbHMSI4U3f+5Kj8DhNL6jqDtuaFSfss3+OiaH+RXTdWy7yb74EsDjTyJ
	QLWuO6D944YtHPmnsgUjsN5dbGPD+pbyHs5JJopFQtcTd+Qbxwty0vQect44aweKbQJ4Jg==
X-Google-Smtp-Source: AGHT+IGeenGXBUxGWQuSKN6iBis1h2PL0x44PYgwRi+E3q/OLy/gfMO1oiAs9uaXyCp/vP0FDPrvPw==
X-Received: by 2002:a05:600c:3110:b0:43c:f44c:72a6 with SMTP id 5b1f17b1804b1-43d509e3394mr108748655e9.2.1742821272912;
        Mon, 24 Mar 2025 06:01:12 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d4fdbd1c7sm122275975e9.40.2025.03.24.06.01.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 06:01:11 -0700 (PDT)
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
Subject: [PATCH v4 6/6] arm64: dts: qcom: x1e78100-t14s: Enable audio headset support
Date: Mon, 24 Mar 2025 13:00:57 +0000
Message-Id: <20250324130057.4855-7-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
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


