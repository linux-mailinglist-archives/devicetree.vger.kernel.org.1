Return-Path: <devicetree+bounces-84764-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F8C92D722
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 19:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AAA9F1F2615A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 17:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B0419753F;
	Wed, 10 Jul 2024 17:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LsLq3ko0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4006D1953AD
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 17:05:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720631122; cv=none; b=h1JsuMhW5iwnE1UNWJStb8oNLoGYYgQkv9W8NaXNrjBqCX+8OT6oVnd57DVanajhvZJp+FXshUviXjkXI4e5ugDr1pXH1PJyZgCNCya+9/pYISfAljIPXWl0oW+3xdCWHbKsNM/jxCjU1KVh05dq0x0GAvES4aw6iJVIy7eE4JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720631122; c=relaxed/simple;
	bh=UtGbOemBnLSiS/SSxde0/IPn7E11HeciK/KMJx5zgzg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UXzPUYLvuezBbEO4l/pUwxj4pnf+5YayJIpysm48fJvZh4nQ1sEkVEvaoo+plXbUrKVjH1weMi7Ud9ya3iJ/4e4Y+QEP5IhzG/sduR0guzmCELW7t8Pji2oRn/IvZUQhenLpFNKAwjytLlL7xkQBGHT890vvJEG6KtDKkB6NP3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LsLq3ko0; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52ea2ce7abaso16221e87.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 10:05:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720631118; x=1721235918; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ejuDXxzDzIH7zcxYcOPWRk3uTUuzsIoqRWToUCtONmU=;
        b=LsLq3ko0dEzIxVV03b/Sxfq0ohjNb7DdPmSl2uFnq3WU8jJ13/fccWpT/ATmUPgcuK
         k+Csu+TO8PGmCRyBNyasjp2FDjQ6cdZ0QWIkNL+nE6vkuo8WHimXlRTY/p1FfcfgJw77
         56F45oodFpoGj+RMHwrm/oso9eAwGI7HNKdFS04ZzT1Dl6LYrSiPlCI+Tu9v6AdfNo01
         MG8DlqovWQHyPCVAoIFBCM4aZsHPWJFf19TJQodeKj9G7fN94BMGYuwI7ekFHJ7b9GXa
         LmcUNCVAjfqLIVOmox8yTG6IhYL5ef86ZbR/j/j8VUUohaZxhlaRGoG8deaQXsplmYTt
         Sc2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720631118; x=1721235918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ejuDXxzDzIH7zcxYcOPWRk3uTUuzsIoqRWToUCtONmU=;
        b=YZpLYMhk9Y9b1m0WKtC2QIdULIwcLARjbSJK+EYU8DpNTVjxi7QG2x6+vLjk7MbY85
         p3V7nbUOoze6BGuG2OSlMJh0RBynsK08qgz1ES4Tmfcl9z2SyFYjrUh6TPIlyNrLh+pR
         0Jm9hzv8avHR3cnrFHeE/R2Xl4RYxlLOMqSS3CABQ2EbRUVPogEC0Ax7Irwlzsy8lW7R
         NywSqkAwr5TZFPMJvi/jnb3CDyN51xAKn6kEZko+8O+dt9pqWv7x+jC4rpQgMug7gW9P
         pHb+rtBTdqEeZ9aCDvG/PQ5PZ14Gqkdvd6GnIk1xEh9IkfLx584EwtEEIAgLrTRwEp4u
         2fgA==
X-Forwarded-Encrypted: i=1; AJvYcCVQiyxAXjnfc6TjK/cWmPwiGc0Ch8BeK3VPq/NSSSn+7zSjp0Tf6B1eSea8xZ4y/gwDfpXDKzJ2giRgZ5PWP6FdgVxA9VNArPdVlQ==
X-Gm-Message-State: AOJu0YxICkG95BHEpANOZcTK1w+/jjvHh1iepHeWgPGbGBPD+eOk5PTj
	cCqTT+Ieomp1FS3hXrGgUQsN9+83M/4HBwA7jZ9jqfbVh7XxvXSEB/jsL0t3LRA=
X-Google-Smtp-Source: AGHT+IEdzDMqSpFrgPIKMoDSkhiU2e+ql+AL5vU9wurvK32RxWDhsTOWJlgEkSrVCpO+E3+Am+YAjQ==
X-Received: by 2002:ac2:4281:0:b0:52e:9471:e533 with SMTP id 2adb3069b0e04-52eb99d5fb9mr3803124e87.66.1720631118372;
        Wed, 10 Jul 2024 10:05:18 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff1f:b240:65e6:93ca:5f80:ea9b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cde7dedfsm5838446f8f.24.2024.07.10.10.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 10:05:18 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 10 Jul 2024 19:05:00 +0200
Subject: [PATCH 4/5] arm64: dts: qcom: x1e80100-crd: Fix backlight
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240710-x1e80100-crd-backlight-v1-4-eb242311a23e@linaro.org>
References: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
In-Reply-To: <20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.13.0

The backlight does not work correctly with the current display panel
configuration: It works after boot, but once the display gets disabled it
is not possible to get it back on. It turns out that the ATNA45AF01 panel
needs exactly the same non-standard power sequence as implemented by the
panel-samsung-atna33xc20 driver for sc7180-trogdor-homestar.

Switch the panel in the DT to the new compatible and make two more changes
to make it work correctly:

 1. Add the missing GPIO for the panel EL_ON3 line (EDP_BL_EN on CRD and
    enable-gpios in the DT).
 2. Drop the regulator-always-on for the panel regulator. The panel does
    not seem to power off properly if the regulator stays on.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 6152bcd0bc1f..7d6800dd9b8a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -268,7 +268,6 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		pinctrl-0 = <&edp_reg_en>;
 		pinctrl-names = "default";
 
-		regulator-always-on;
 		regulator-boot-on;
 	};
 
@@ -724,9 +723,13 @@ &mdss_dp3 {
 
 	aux-bus {
 		panel {
-			compatible = "edp-panel";
+			compatible = "samsung,atna45af01";
+			enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
 			power-supply = <&vreg_edp_3p3>;
 
+			pinctrl-0 = <&edp_bl_en>;
+			pinctrl-names = "default";
+
 			port {
 				edp_panel_in: endpoint {
 					remote-endpoint = <&mdss_dp3_out>;
@@ -785,6 +788,16 @@ &pcie6a_phy {
 	status = "okay";
 };
 
+&pmc8380_3_gpios {
+	edp_bl_en: edp-bl-en-state {
+		pins = "gpio4";
+		function = "normal";
+		power-source = <1>; /* 1.8V */
+		input-disable;
+		output-enable;
+	};
+};
+
 &qupv3_0 {
 	status = "okay";
 };

-- 
2.44.1


