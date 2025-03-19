Return-Path: <devicetree+bounces-158897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9CCA687C4
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:20:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89683882F92
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 09:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4345B253F01;
	Wed, 19 Mar 2025 09:17:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fqvb9XcT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51A1F25334E
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 09:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742375877; cv=none; b=fZHfXVnPDV9Ol58yXTL8WJ8p7NlKjvjktQiB/Js87V7Sto7YDBNZZqLSpJq8qRv8TmPnAnRSajSP0ApkSedqRbDHGiTdWcocQJ+o4BgXsdvcxV6fAJhjSd+rZZ2r9yl9EgaQhML/9iqLdAPxrbnWY6Qt7tX1HD/fH9MUYYKxonc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742375877; c=relaxed/simple;
	bh=G/PQgzYwrYLYsv/3Tx21aVxfqG3KRo86XzpWAbXD6Ow=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ardAuXeUP6JRDBaQ0+o9+O9Wr7YRKHHAl2gWilp70hnzXmTzwptC+ALxPZcEe2rAgbLgpJB0A/xd/MuW0o0c3pfDMG/Hi6TQJr/wOU3JFAR4nrm9BW3iIp5DPSfQXjASqBf/IvHptnnqyc2p328a7dZg+NBrCQuzZytwE7kCeRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fqvb9XcT; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39133f709f5so4043553f8f.0
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 02:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742375874; x=1742980674; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MatIsPF8IuzJGTj4rqzD5SEaynR7KV/+RlpqBdYnhsQ=;
        b=Fqvb9XcTfRzkbiNj7uB2sd1ZrN6eRfgSSOON3qcypf101Ons81bD8YEM8P7fFkJ+vv
         Dr/inQ4V6bcHc/bSBZ84L6lDcyYqdv7jXDQ4VNN2Unn/YQpaOEmATo+DBH9+RNPFz8bU
         ZteylGpRguI1b/1xiBL12YoM5SIOaRL51uVqkLKvjpeaAdK6aRnb7rHBQ6LsNUHAooAs
         PQHmecUOutNRbF4Z9SPLBbhnCSvp1NT2KXA4ob7emNTSb45kvhdkasbKok0PDU6Djk5G
         Svb52qxVJf2rjyXt/kCqdz8amF6Bq5k9EqrUBhxUFH6k9OEIHy/nE79/Vd50GqyvBp4e
         MYXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742375874; x=1742980674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MatIsPF8IuzJGTj4rqzD5SEaynR7KV/+RlpqBdYnhsQ=;
        b=XdyG4L+q0ccIrItiX3BxNJto2LxDGY1M/kHDLu84L41H1qNxzqvJ+fz2CLNn79gVG/
         zcEdFmKix69UL+pJTiqAqtX+NrglIEuBn0Hr5HRXq/l2++HURsyeXgSSGsCGQ0kLTySW
         GxpvAVZIm+SMsQqNo2bxcwUxk2ivo0UoURnt3eOsJueXY9YNfiseWDRq4jYakUYoOr2X
         weGNJKq7gAZ+0VmEAAAQ6NmF9mMqheu4zZl0KIr25DnvvchKP6l0PBKXTksR1Y7FHLxI
         /H/s1EaTZIKgLLoZESvFeLuvCOTki5kKM7BclvXqgCnWncFgFhKgzUbgdm3oJB2q5uAg
         R/rw==
X-Forwarded-Encrypted: i=1; AJvYcCVB/2GLMtdlJG1w7xETDGu5IMu5N8D+spdcSUrJRs1/Xxtc2wylmakfnjVjsv+wInB6SkhbwUqq7LLb@vger.kernel.org
X-Gm-Message-State: AOJu0YzJxfpsiNM7VRsz4wghOBPvrbBcUa7ed9XxB9zHgTP4Vyg0S9Pg
	Y7TrfmcFYcLyzuJCX2kx4traOSWskIIRaXRWRaG7uAzWSdYv4pqjl6ud77MgoWI=
X-Gm-Gg: ASbGncuUp5AKX+x8evE0JShd96mxexHaPcr9XehU5GVi5YV0jkqM5x7Xvc7FodK34cG
	+1csbrcz425Q3tNMDhdchmRV8CSSYu0mpRDQ9roUIamvikABoNC6mERmTp/b1MS1Vh3KTmvxSyp
	oZbGz5bcPY+FGtXSxBzGFIYviyy4myd5n6F2QlOyjr92cisV4XrHYzvh/E6tt8wc8SfNSZiGQbP
	UAPzb76vcac/jHAZmhFIR+lj+fIZxveWN60yh0lWcXXnYevZoHCEEDxSbK/m00V+wuDy5o++oFq
	HvsUMPiL3xL0vyLUOTm4+2cPEG4z7fiDtOzvsaeJR7w6MTM6O8kf6NLHkkrFoMDkPK6hYw==
X-Google-Smtp-Source: AGHT+IF2OI4R8vpQRvrvPUiz9MYuf6mjmby8aJEe+xnR6Wn2dDxTXW6xtohznPik5sEd2lnjFnvXNQ==
X-Received: by 2002:a05:6000:2c7:b0:391:4674:b10f with SMTP id ffacd0b85a97d-39973af9236mr1231112f8f.36.1742375873640;
        Wed, 19 Mar 2025 02:17:53 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-395c82c255bsm20023810f8f.23.2025.03.19.02.17.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 02:17:52 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: broonie@kernel.org,
	andersson@kernel.org
Cc: lgirdwood@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	konradybcio@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	johan+linaro@kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: x1e78100-t14s: Enable audio headset support
Date: Wed, 19 Mar 2025 09:16:37 +0000
Message-Id: <20250319091637.4505-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

On Lenovo ThinkPad T14s, the headset is connected via a HiFi Switch to
support CTIA and OMTP headsets. This switch is used to minimise pop and
click during headset type switching.

Enable the regulator required to power this switch along with wiring up
gpio that control the headset switching.

Without this, headset audio will be very noisy and might see headset
detection errors.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index b2c2347f54fa..f39c51c809e8 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -22,7 +22,7 @@ / {
 	wcd938x: audio-codec {
 		compatible = "qcom,wcd9385-codec";
 
-		pinctrl-0 = <&wcd_default>;
+		pinctrl-0 = <&wcd_default>, <&us_euro_hs_sel>;
 		pinctrl-names = "default";
 
 		qcom,micbias1-microvolt = <1800000>;
@@ -36,11 +36,13 @@ wcd938x: audio-codec {
 		qcom,tx-device = <&wcd_tx>;
 
 		reset-gpios = <&tlmm 191 GPIO_ACTIVE_LOW>;
+		us-euro-gpios = <&tlmm 68 GPIO_ACTIVE_HIGH>;
 
 		vdd-buck-supply = <&vreg_l15b_1p8>;
 		vdd-rxtx-supply = <&vreg_l15b_1p8>;
 		vdd-io-supply = <&vreg_l15b_1p8>;
 		vdd-mic-bias-supply = <&vreg_bob1>;
+		vdd-hp-switch-supply = <&vreg_l16b_2p5>;
 
 		#sound-dai-cells = <1>;
 	};
@@ -367,6 +369,13 @@ vreg_l15b_1p8: ldo15 {
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
+		vreg_l16b_2p5: ldo16 {
+			regulator-name = "vreg_l6b_2p5";
+			regulator-min-microvolt = <2504000>;
+			regulator-max-microvolt = <2504000>;
+			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
+		};
+
 		vreg_l17b_2p5: ldo17 {
 			regulator-name = "vreg_l17b_2p5";
 			regulator-min-microvolt = <2504000>;
@@ -942,6 +951,13 @@ int-n-pins {
 		};
 	};
 
+	us_euro_hs_sel: us-euro-hs-sel-state {
+		pins = "gpio68";
+		function = "gpio";
+		bias-pull-down;
+		drive-strength = <2>;
+	};
+
 	kybd_default: kybd-default-state {
 		pins = "gpio67";
 		function = "gpio";
-- 
2.39.5


