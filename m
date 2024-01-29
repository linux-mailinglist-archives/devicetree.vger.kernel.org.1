Return-Path: <devicetree+bounces-36419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C49841101
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 18:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C94AD1F22C94
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 17:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C4376034;
	Mon, 29 Jan 2024 17:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rZOKeLV/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5959576C97
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 17:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706550128; cv=none; b=Ozr8Fa9Gt6f+4ta1yXzCn30Na9Lt8Eu1N+4TByh7lJtbd9sngYCFbR2I3rLoRoEBCYDjhW4EyEqAKq10E2pOLxW6G+jOItVoC9r8viP7B1ov+tpXAw9bbm71CrITNRYD5QyBVjL/WxYM9cJqMEriNnurn65gqhF+gHWnU8cxm+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706550128; c=relaxed/simple;
	bh=NdU2LIEnp5ujFawnyZ2tpXI9lweTV2bJLnqL5ZSnYQI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=uzxK1ROi+AX6wmOpv+J/RV9PTATinm7+HuxUHdr9po9J3BOsCJep/yXvLFgzntv1NGd8MrdNzhAO6fWhv99UuhXQnCw9ffjH2/bO5ArtKajTkiApUAp7WUYDQizpYfSLQTxiaP7mB1HCAYT3Bb9g0zvFjTkpfqi3o+/8hITsQhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rZOKeLV/; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a35e0532900so117322566b.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 09:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706550122; x=1707154922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvAE0+fmvTQFFSzj6Dft6tKLSUPrgAbTsR8MYrmwQCs=;
        b=rZOKeLV/lH7u5IPLu1QfLdNHJQ7OrBnIXnWkTGCENEQ0omr3ryRFjji108WlvTDAkE
         yM7EaZCUI9IuncfW7EF049ORbMUYKyHsVU9nHEhy8Spum20e3zvnaVcz6IZGeKVOQJQh
         rKpV2uq6/9KTkcmBFZfoiXIiKGTA14PkhZJDH/ML4Gnua5spzCYQyFGYf8cyuVrOSv0y
         3Ah9dCYKGU3x5wpR58cey7Wo7Q9NMMqEy7xxeOOUHUeoeRt97Ge3GYV8DirdaLJ8nMy/
         yD2RbNVc41vwtViSvj1ZJq8Lm3dtuq2iHQHtmcW+towZPCA+lNA/Twpx/BWmPObAAAlV
         ofvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706550122; x=1707154922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lvAE0+fmvTQFFSzj6Dft6tKLSUPrgAbTsR8MYrmwQCs=;
        b=ReU7Ler5xo1h1psBb2l6DD71sgvSo6vLgHxelk1jNLLBaCG4J8kvShl0cEN4L+zp33
         548UK+eETfrljcweuD/yqGXu/AQInkpY7CWFEEzj4XKkerLKD750RMkyZskFIkqkANh5
         UzKw26FBKOhptj9knTAz65Qq9XZ2mivwDuYTpGu+wU13VB+/1vKAlAFpYAKPYGE758Fj
         7oDmf0Z6gJJrYCVUmb06cdoNNS3YDh07B9/k4Iu9c9jPAicDSJ2nA8C7ohIByap3G7RT
         VSN77aSwzwqQd5yIFWthYmqOwpq7+dXfJc0o1Wu2+tzH7RY3eUgLzLdJHp7EJLmM4cpk
         Gn8Q==
X-Gm-Message-State: AOJu0YzfBWdIekZ218CWNbskhSHqOTVVRiElTG3Vbb+2IwsddCOOanoe
	GWgcYuIJ5BFkJe8IOjQjn8QeQuFJE9O35dlnzoN8AwdUY9MM7sQ7t0guKLH056M=
X-Google-Smtp-Source: AGHT+IGG2qv9SLqdP+/Zs4jChkXZSXrjt3vkMjG+GIKLzgCVLAQHQNFisHcQxMZERY7VMS4PH/RvlQ==
X-Received: by 2002:a17:906:fa04:b0:a28:fe84:f2c6 with SMTP id lo4-20020a170906fa0400b00a28fe84f2c6mr4933587ejb.15.1706550122504;
        Mon, 29 Jan 2024 09:42:02 -0800 (PST)
Received: from puffmais.c.googlers.com.com (94.189.141.34.bc.googleusercontent.com. [34.141.189.94])
        by smtp.gmail.com with ESMTPSA id qx25-20020a170906fcd900b00a311a360433sm4237765ejb.143.2024.01.29.09.42.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 09:42:02 -0800 (PST)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <andre.draszik@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org,
	kernel-team@android.com,
	tudor.ambarus@linaro.org,
	willmcvicker@google.com,
	semen.protsenko@linaro.org,
	inux-kernel@vger.kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 6/7] arm64: dts: exynos: gs101: define USI12 with I2C configuration
Date: Mon, 29 Jan 2024 17:40:09 +0000
Message-ID: <20240129174151.1174248-7-andre.draszik@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240129174151.1174248-1-andre.draszik@linaro.org>
References: <20240129174151.1174248-1-andre.draszik@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On the gs101-oriole board, i2c bus 12 has various USB-related
controllers attached to it.

Note the selection of the USI protocol is intentionally left for the
board dts file.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

---
v2:
* reorder pinctrl-0 & pinctrl-names
* collect Reviewed-by: tags
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 30 ++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index e1bcf490309a..9876ecae0ad8 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -451,6 +451,36 @@ pinctrl_peric1: pinctrl@10c40000 {
 			interrupts = <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		usi12: usi@10d500c0 {
+			compatible = "google,gs101-usi",
+				     "samsung,exynos850-usi";
+			reg = <0x10d500c0 0x20>;
+			ranges;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			clocks = <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5>,
+				 <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5>;
+			clock-names = "pclk", "ipclk";
+			samsung,sysreg = <&sysreg_peric1 0x1010>;
+			samsung,mode = <USI_V2_NONE>;
+			status = "disabled";
+
+			hsi2c_12: i2c@10d50000 {
+				compatible = "google,gs101-hsi2c",
+					     "samsung,exynosautov9-hsi2c";
+				reg = <0x10d50000 0xc0>;
+				interrupts = <GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH 0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				pinctrl-0 = <&hsi2c12_bus>;
+				pinctrl-names = "default";
+				clocks = <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5>,
+					 <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5>;
+				clock-names = "hsi2c", "hsi2c_pclk";
+				status = "disabled";
+			};
+		};
+
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;
-- 
2.43.0.429.g432eaa2c6b-goog


