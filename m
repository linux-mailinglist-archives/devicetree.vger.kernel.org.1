Return-Path: <devicetree+bounces-75751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 51271908846
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 11:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B3CC528BD93
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419B619AD84;
	Fri, 14 Jun 2024 09:46:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DqyVInjM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FC719AD46
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 09:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718358416; cv=none; b=o0cJj0MN2v+BoihsBk8Uus32KkEJTEyakYmNtOHUyJOPevWnpeKP8rwA/N0V4x8z77qukUECWiSYgamgvwUCq1Y1mRjRx2XAhRkTPeEK/zHlP3aBC07os5/fJugyoAohZGis55Ntc4CrfxWKi2wObMUsRMx3X/xeWdWPu2SwYlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718358416; c=relaxed/simple;
	bh=nByrzHQVmba7wlYPh/i+rKZ2wbIt+maV5ijzXe+5jvY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ryYs2An9zXnCdQK+bpE2vR/852k3kxf3tMooK5EcNtcWtegpCv51cZkBiZtIQGjbcFiDAXc8S1wpbcDDsGBYt20rf3FWkzH74vbqFkvXDR9yStRRkfibyw7dLTFIT5KMrtUm9PXbYN4ZshI+CD303vvL+Nltbt09IZwUkNDiKvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DqyVInjM; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so260959766b.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 02:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718358412; x=1718963212; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gVGhPsD6Qfn4mBoK6MEbCiA4reC20IqmZAzrPH10YVc=;
        b=DqyVInjMWxVwSXLIW6CM5HUy7Fc67YYd/xhxsNAik6Q9V6EJKzmLNW/izYHrp1l0lC
         92TF2Wv3OeMEWwuUaOs1YOHfcWpuLd+cD1QAqPofkj63CivmY0MJgOJ/P3Mmi/l+0QTV
         e/loo6/4hW7ynC5pTCZEU4nlAN/bww4Y/vaOfQurlwYI7I/aAG5REuzKVLSz6yfwuZov
         gA1XQGguPqUReJf5IDaGKVj6tA1DiaSrsBqBSL9566iOhRKZ8kirl4rWYmBuF1pQXCRG
         lpiqsqMvjMv8wkD8o84Fehj34Iwt90MKAdAnStelA3d1sQsyUbjtn3gRufbqDGPtjbMb
         gLhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718358412; x=1718963212;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gVGhPsD6Qfn4mBoK6MEbCiA4reC20IqmZAzrPH10YVc=;
        b=e4SXZjHqVo8JLE77aehO4jb3Mi2a5mUiSMkxV2kisB38bKBZd1nhgOUMhIQppqLD1l
         VazRompSMvYimTRGLnYYlO4gDRQHGInPK63N33GwrqhD2xrQUzo/TeVm628ntaULIIHF
         +p2bQLJ35SjIQQV++j77I7f02vj9rRzV3AQC7Wo9d0zdXmwOATiz+L6UgS914jj2fPA6
         k8tAo2CPzm/kpoVYr9+Q4bfnjdl0GWvewJiJSC2H63MOCDiohNw423nRu/knT2/TYu4l
         ehciEdCwLyUOXbcG84MrhlMV0DI2p7ecC9M0HIxfnK4Vyc/ZJ1C4d9JiG3PHSE/rcO16
         xokA==
X-Forwarded-Encrypted: i=1; AJvYcCVgKhcZ1lbmT0JNdet7Ciu+x1k0k8TlfODO6I3nmbderfoT9eB2vZ3mlsFTcDR8rKgwKkzFqP/s3JbwdZjKAJWPlcujtpiA0tZKLg==
X-Gm-Message-State: AOJu0Yzy3oYpb3/x7uaP87dDEt+9iRoxnws9NuvcLEXKilot5qJ+ICd6
	fNZrIL4zidTH3jCTT5WRKgUOWEnIEFI/TpDtekVtwgnDuRy6KCbz98Xph+dhKeU=
X-Google-Smtp-Source: AGHT+IH/LDguxtaznqvBqHTXoDXKR1YtqV8s6Uw3ZXJ5iaYlCO/PXU8Q0KzXgYZ1uinkHqB6v8mPPA==
X-Received: by 2002:a17:906:d296:b0:a6f:5c1a:c9a6 with SMTP id a640c23a62f3a-a6f60dc1fb3mr131861666b.62.1718358412444;
        Fri, 14 Jun 2024 02:46:52 -0700 (PDT)
Received: from [127.0.1.1] ([78.10.206.163])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56f9c84csm164966366b.222.2024.06.14.02.46.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 02:46:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 14 Jun 2024 11:46:08 +0200
Subject: [PATCH 09/22] dt-bindings: thermal: qcom-spmi-adc-tm-hc: reference
 thermal-sensor schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240614-dt-bindings-thermal-allof-v1-9-30b25a6ae24e@linaro.org>
References: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
In-Reply-To: <20240614-dt-bindings-thermal-allof-v1-0-30b25a6ae24e@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Guillaume La Roque <glaroque@baylibre.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Vasily Khoruzhick <anarsoul@gmail.com>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Anson Huang <Anson.Huang@nxp.com>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>, 
 Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Pascal Paillet <p.paillet@foss.st.com>, Keerthy <j-keerthy@ti.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Scott Branden <sbranden@broadcom.com>, 
 zhanghongchen <zhanghongchen@loongson.cn>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-stm32@st-md-mailman.stormreply.com, 
 Florian Fainelli <f.fainelli@gmail.com>, 
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1468;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nByrzHQVmba7wlYPh/i+rKZ2wbIt+maV5ijzXe+5jvY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmbBFnx2UWSDHo+/XWma/SEORKk1DYqhfHrmfFB
 s92YeqphpmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZmwRZwAKCRDBN2bmhouD
 13HND/9ckrgPCXja3KiiMLzGorRecAp62uvkPQ6LsfsLVuRIxVjiHoY1BBKonPU6hWZAEq+Tt+X
 4jtQa/8unqFtVgfvCYPZaHXEGXZ6DLLuDD2uIuyvOuY7lH3Hw8UEq7f2ZSlkwvB/lQ6d0bPO6np
 RpXfva25J2qsdGmYRZAkcTYKzoDH1Xck9wgAC4vJjjsJodAfNuvSUhi+exREatcraSypvxBRRnM
 FDSlZQlQD+DHl39m+hwOw9I4KMUBErZu+LPP23ycIiZKZVIk4MUwW76pHHW1OyrPcgWWQsGKpDV
 7fAk76yOzQzGcT+87ZIEwo91EqkfmHob1lIFftcZXg4MbGupo+WohmuGnEmBF8zM7XFBR6CzfrE
 kHhxFb1fjy3y91+BRv61A7RIeUUSEIxGqoKHwZsgd3/nuaNszYOuEkLaCZqz38Gq9Ze2Tk03Fxg
 c/6myrMsDjdieOWmmWuAa4uE0kPzlp2s1Io22FVNjayBkBtFXx6LBSbavJAKQe8Cwn8bUzp++xM
 r5s66EvGxCCmACdoC0MnSf8ZSnXZ5N4QNP9AHBCpDEWs8ZyanwkYGJdbzcZ7T8hv39/azotgYH0
 gHWysyp8Iyi/dtlOwbsGyUtktWZHejwFVbnMm4lATDSFN/g6C7e+YKS//Rk3UWh6QHjk9w1Jlqo
 zXfuMK1rXijC2oQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Device is a thermal sensor and it requires '#thermal-sensor-cells', so
reference the thermal-sensor.yaml to simplify it and bring the
common definition of '#thermal-sensor-cells' property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml          | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml b/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml
index 7541e27704ca..bfad8130a042 100644
--- a/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml
+++ b/Documentation/devicetree/bindings/thermal/qcom-spmi-adc-tm-hc.yaml
@@ -8,6 +8,8 @@ title: Qualcomm's SPMI PMIC ADC HC Thermal Monitoring
 maintainers:
   - Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
 
+$ref: thermal-sensor.yaml#
+
 properties:
   compatible:
     const: qcom,spmi-adc-tm-hc
@@ -20,9 +22,6 @@ properties:
 
   "#thermal-sensor-cells":
     const: 1
-    description:
-      Number of cells required to uniquely identify the thermal sensors. Since
-      we have multiple sensors this is set to 1
 
   "#address-cells":
     const: 1
@@ -106,9 +105,8 @@ required:
   - interrupts
   - "#address-cells"
   - "#size-cells"
-  - "#thermal-sensor-cells"
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


