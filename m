Return-Path: <devicetree+bounces-22612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FEE28083CC
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 10:07:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3422EB21E72
	for <lists+devicetree@lfdr.de>; Thu,  7 Dec 2023 09:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057E4328BC;
	Thu,  7 Dec 2023 09:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="fewSFTIy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C84019A
	for <devicetree@vger.kernel.org>; Thu,  7 Dec 2023 01:07:12 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-33340c50af9so686445f8f.3
        for <devicetree@vger.kernel.org>; Thu, 07 Dec 2023 01:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1701940031; x=1702544831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fczg9wafsPen1iAORs4/lUjis9zp/tI+lvQFW8HLlHc=;
        b=fewSFTIygTDkm9p9Gevi+c7FXgo9qFF2ciiP+gX6GCEtS/R5RQhhanrPnIFCOLBZWi
         uVagOBVyPJx5ZNCB9is7FXOKC+YGPc8XPq/rU3ocpf+MbIR9mw3GcE+/tbxDUTSYTM14
         VL6LtOACmCGg3i0yo67D0ZSMlEomVxTtfT1X0vsbmysxJCjdri/UAJuW+eJyIG9qV2vx
         RRe2viljFy/mTxu42IywB+9vsNbz4E3Mx1WfKU2l6FvpGQaiYwY6l6KQqE8L7AmKk7Sk
         og1s+sacGZOAfhUvGGpwTGAercvGoYfnbMojxQz2aTBIcp5fgDMS1to6Wv7YDdtYTju9
         0YdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701940031; x=1702544831;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fczg9wafsPen1iAORs4/lUjis9zp/tI+lvQFW8HLlHc=;
        b=Vzw2a7EfFeI4jjKPTp3xIN9nWfjr/e6HSfh0n4YXyDv7PP0ZjZYdc14xHoG1SZ4ntL
         iH8SJO3II1iKsgNdRqXZfDtEBAxqIBia8ziw8JIJAZLFeB+qbdEf0S6tvlFf1eZ3tJAh
         MI8H44aGxb8APe7ev/iSqq7P1VuzzMnhbHRx+QDJ/p0mrJ0NEJ2Qi1E60g7xxP+T3WBr
         LvVKPhFh/e0VjzBbbEuN8nQ932YqjlJ+Uu1skuAR/uaTMtbzpgHtvZuFw1mkRZFxk+Sg
         TpJAqAvEcdXZF0OlBb/B2owfXmHepQzFYLjhECheNqVoKcNj0wSMomLHt3dSHi+23S7N
         eknQ==
X-Gm-Message-State: AOJu0YxrJJFR5QTRD9kfcuiUuQSw1cFuq06Mq9qo+TDFJFxOtzWRWiO3
	z6w5ba443nBzXQQPqyiGP526lQ==
X-Google-Smtp-Source: AGHT+IEB1kvVa/ehNh5w94LzI6k+F8Di8MwhhGmEgFQOIc3rrUmUd3Jw6yhiiSxgJjW8hRCSEWSfHg==
X-Received: by 2002:adf:e70d:0:b0:333:3ae4:616f with SMTP id c13-20020adfe70d000000b003333ae4616fmr900525wrm.97.1701940031027;
        Thu, 07 Dec 2023 01:07:11 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:de32:8b0f:dc9a:4dce])
        by smtp.gmail.com with ESMTPSA id w8-20020adfcd08000000b003334675634bsm896035wrm.29.2023.12.07.01.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 01:07:10 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2] arm64: dts: qcom: qrb5165-rb5: add the Bluetooth node
Date: Thu,  7 Dec 2023 10:07:06 +0100
Message-Id: <20231207090706.19134-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add the Bluetooth node for RB5 as well as its dependencies in the form
of the uart6 -> serial1 alias and the pin function for the Bluetooth
enable GPIO.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
v1 -> v2:
- squash the three device-tree patches into one
- as we're only using a single pin for the BT enable GPIOs, there's no
  need for a separate named node
- change the naming convention for regulators to follow the bindings

 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 29 ++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index c8cd40a462a3..dfda57568dc5 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -23,6 +23,7 @@ / {
 
 	aliases {
 		serial0 = &uart12;
+		serial1 = &uart6;
 		sdhc2 = &sdhc_2;
 	};
 
@@ -1263,6 +1264,14 @@ &tlmm {
 		"HST_WLAN_UART_TX",
 		"HST_WLAN_UART_RX";
 
+	bt_en_state: bt-default-state {
+		pins = "gpio21";
+		function = "gpio";
+		drive-strength = <16>;
+		output-low;
+		bias-pull-up;
+	};
+
 	lt9611_irq_pin: lt9611-irq-state {
 		pins = "gpio63";
 		function = "gpio";
@@ -1296,6 +1305,26 @@ sdc2_card_det_n: sd-card-det-n-state {
 	};
 };
 
+&uart6 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "qcom,qca6390-bt";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_en_state>;
+
+		enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+
+		vddio-supply = <&vreg_s4a_1p8>;
+		vddpmu-supply = <&vreg_s2f_0p95>;
+		vddaon-supply = <&vreg_s6a_0p95>;
+		vddrfa0p9-supply = <&vreg_s2f_0p95>;
+		vddrfa1p3-supply = <&vreg_s8c_1p3>;
+		vddrfa1p9-supply = <&vreg_s5a_1p9>;
+	};
+};
+
 &uart12 {
 	status = "okay";
 };
-- 
2.40.1


