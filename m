Return-Path: <devicetree+bounces-23467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B504280B583
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67F271F2120F
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9E6118658;
	Sat,  9 Dec 2023 17:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fN+MLyub"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC9F910E7
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:30:50 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-50be3611794so3634133e87.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143049; x=1702747849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGxNyInPX1FnWv8EFnzseBq2mTwZXauB1MxLYzgPaVA=;
        b=fN+MLyubHaJawA+6R3EICEVv/7KUz/P5uGO1mjqSpyw8OR9IsfHpKyDFilMxTsgDcA
         YOmkpLBwjkG35UNbAUfuI2Xoz8uIIykFZtiG4mEVGuMwXVfqPbu9kR2fbwJuGvUFHniw
         /XPdhEHWsxu+QUhgsN0+wSVVIFzvakMZse31fSAq2+xo92CvWaRk+t/89ptnDJvSOlt7
         lLRVltkgbYZFf/yDeIPzO2Sfrt2efeccs/7HkCkBYKVhpbA4sP3+P7NO8tQ8sa4BpI0v
         En/DzT+a+KEaBKV4LMTaCCz4mtMw25gAkDVZbFEJkXgDcvo5CJU+1DETg1zHV+JYCezl
         fbjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143049; x=1702747849;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGxNyInPX1FnWv8EFnzseBq2mTwZXauB1MxLYzgPaVA=;
        b=Q+vFXQaW/Xwk5dW2CXB7TxPKuHO+OGqWK36ZCxKULsGdhvPnrGAYS+Xth21sjg/2kC
         CLYvAMloIw3eIWSpwa5RpalynUmYO+z8SiUy/QTqbfRaGLC+c+RGyxd90DG2OvfEYzRo
         rBjgHCR3um5ysdW8QWVCQ8rVBuzrrBT5A+s44jPfvU68bN8YL02zuofgkvoYwWgLwOL2
         hGmLrqG/mIguAycNUuIhGYnyPqXpZKMsi9hBe200rd2rRcRny8HMZyEuOFqHKu0iVx7E
         CEedqgkBlTQgP9iiklgp4EpbIXQIAMLCDOh8ZMoG9BoN6DSalxeu5a5eIZF/5DSbR/1H
         R47A==
X-Gm-Message-State: AOJu0YysYFdx7/LHSeJvNFmbUAmatL7KZ2uSB3QQFcPrniHs339jliqF
	tJLyujEmppie5HMXPsGltAznHw==
X-Google-Smtp-Source: AGHT+IGySQvOJT4d+bavrxMPm6g2MuiNYfbCA9x14FdEX50mgGtZpw9szmA1Uo+64KQmfOoK3MUyJQ==
X-Received: by 2002:a05:6512:693:b0:50b:b9c7:9f3d with SMTP id t19-20020a056512069300b0050bb9c79f3dmr1126978lfe.21.1702143048967;
        Sat, 09 Dec 2023 09:30:48 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:48 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 02/15] ARM: dts: socfpga: align NAND controller name with bindings
Date: Sat,  9 Dec 2023 18:30:31 +0100
Message-Id: <20231209173044.257684-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect NAND controller node name to match certain patterns:

  socfpga_arria10_socdk_nand.dtb: nand@ffb90000: $nodename:0: 'nand@ffb90000' does not match '^nand-controller(@.*)?'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi         | 2 +-
 arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 4c1d140f40f8..35be14150f41 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -768,7 +768,7 @@ mmc: mmc@ff704000 {
 			status = "disabled";
 		};
 
-		nand0: nand@ff900000 {
+		nand0: nand-controller@ff900000 {
 			#address-cells = <0x1>;
 			#size-cells = <0x0>;
 			compatible = "altr,socfpga-denali-nand";
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index f36063c57c7f..6b6e77596ffa 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -669,7 +669,7 @@ mmc: mmc@ff808000 {
 			status = "disabled";
 		};
 
-		nand: nand@ffb90000 {
+		nand: nand-controller@ffb90000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "altr,socfpga-denali-nand";
-- 
2.34.1


