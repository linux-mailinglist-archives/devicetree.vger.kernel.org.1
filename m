Return-Path: <devicetree+bounces-20260-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D7D7FE9D9
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:40:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B1AC1C20C4F
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 07:40:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F87020DC2;
	Thu, 30 Nov 2023 07:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kSrfJDXc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A83B8196
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:48 -0800 (PST)
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-6cbe6d514cdso614120b3a.1
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 23:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701330048; x=1701934848; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IkpXrLW2063q1m94Ct7XMex/vBu1O/g0kp41KKzoVbE=;
        b=kSrfJDXcZgZPd9dhXdowCD0y7Hcm82RjcPf0aeWhlCvwG3mkDCQ0/tXE35oqR9eteM
         aYytM+1yFqlyRlj+zvfjl5+fXBCFeu+nc4waINDp8gN388vY3fwhYm0k2rbQJ/lAkXRE
         DMWt++HMCTGwMuW3vKCQOK9/pKV3pm7l6z6Fo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701330048; x=1701934848;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IkpXrLW2063q1m94Ct7XMex/vBu1O/g0kp41KKzoVbE=;
        b=smT0tuDXQVq+eqU1NvfNk65CCIP1QkelLCZfrZ8B9fWb0AKZXbHueZfsEIgYQ6DQ0+
         WiM1bzSLGBJZsw0vmh8QGaGYMJKzStvQ4uHV3ZgzpaR/dAV7VoWUutLMnrD5iU3apfsO
         r9zfLpiB/Nc689v3Ys0FJQDIwann+OXEKUu5Yii8QQuEQKemJIyI06Xw4PoTb9lAQW2M
         dU5wq68nqO5JAZkO1IelSDNdT6qsrG2QwySb/y2v6ZwUORcZCB5Ifx9fkSjy0Gd8jTi5
         bgrXfGdcpu9ArihjBCnn11R2onuQD1zbPwDciKmYhtJXXiqD9mN5m3MTfBnNzMtozHQ9
         32DA==
X-Gm-Message-State: AOJu0YyYdCS4opGykXDdbrO/E6ezOROit0etZL1HmrHgMKBjFXZYfSkP
	hnHQ3WhnMQn3vG95OtA6Db0AOg==
X-Google-Smtp-Source: AGHT+IHBrA2Ajkr3pUowl6+raRAc06e8yaFp0DgaWh6/FLZNLmhoUFHQvZ6F8XtSp7ig/5Si9AoLdw==
X-Received: by 2002:a05:6a00:6c85:b0:6cd:edef:4b02 with SMTP id jc5-20020a056a006c8500b006cdedef4b02mr313263pfb.26.1701330048161;
        Wed, 29 Nov 2023 23:40:48 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7c8f:dafd:65c3:2bcf])
        by smtp.gmail.com with ESMTPSA id p35-20020a634f63000000b005bd3f34b10dsm612870pgl.24.2023.11.29.23.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 23:40:47 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 2/3] arm64: dts: mt6358: Drop bogus "regulator-fixed" compatible properties
Date: Thu, 30 Nov 2023 15:40:30 +0800
Message-ID: <20231130074032.913511-3-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231130074032.913511-1-wenst@chromium.org>
References: <20231130074032.913511-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Whether a regulator under the MT6358 PMIC is a fixed regulator or not is
derived from the node name. Compatible string properties are not used.
This causes validation errors after the regulator binding is converted
to DT schema.

Drop the bogus "regulator-fixed" compatible properties from the PMIC's
regulator sub-nodes.

Fixes: 9f8872221674 ("arm64: dts: mt6358: add PMIC MT6358 related nodes")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt6358.dtsi | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6358.dtsi b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
index 186898f9384b..ad5e4022e06d 100644
--- a/arch/arm64/boot/dts/mediatek/mt6358.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6358.dtsi
@@ -128,7 +128,6 @@ mt6358_vibr_reg: ldo_vibr {
 			};
 
 			mt6358_vrf12_reg: ldo_vrf12 {
-				compatible = "regulator-fixed";
 				regulator-name = "vrf12";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
@@ -136,7 +135,6 @@ mt6358_vrf12_reg: ldo_vrf12 {
 			};
 
 			mt6358_vio18_reg: ldo_vio18 {
-				compatible = "regulator-fixed";
 				regulator-name = "vio18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -153,7 +151,6 @@ mt6358_vusb_reg: ldo_vusb {
 			};
 
 			mt6358_vcamio_reg: ldo_vcamio {
-				compatible = "regulator-fixed";
 				regulator-name = "vcamio";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -168,7 +165,6 @@ mt6358_vcamd_reg: ldo_vcamd {
 			};
 
 			mt6358_vcn18_reg: ldo_vcn18 {
-				compatible = "regulator-fixed";
 				regulator-name = "vcn18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -176,7 +172,6 @@ mt6358_vcn18_reg: ldo_vcn18 {
 			};
 
 			mt6358_vfe28_reg: ldo_vfe28 {
-				compatible = "regulator-fixed";
 				regulator-name = "vfe28";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
@@ -193,7 +188,6 @@ mt6358_vsram_proc11_reg: ldo_vsram_proc11 {
 			};
 
 			mt6358_vcn28_reg: ldo_vcn28 {
-				compatible = "regulator-fixed";
 				regulator-name = "vcn28";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
@@ -218,7 +212,6 @@ mt6358_vsram_gpu_reg: ldo_vsram_gpu {
 			};
 
 			mt6358_vxo22_reg: ldo_vxo22 {
-				compatible = "regulator-fixed";
 				regulator-name = "vxo22";
 				regulator-min-microvolt = <2200000>;
 				regulator-max-microvolt = <2200000>;
@@ -234,7 +227,6 @@ mt6358_vefuse_reg: ldo_vefuse {
 			};
 
 			mt6358_vaux18_reg: ldo_vaux18 {
-				compatible = "regulator-fixed";
 				regulator-name = "vaux18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -249,7 +241,6 @@ mt6358_vmch_reg: ldo_vmch {
 			};
 
 			mt6358_vbif28_reg: ldo_vbif28 {
-				compatible = "regulator-fixed";
 				regulator-name = "vbif28";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
@@ -280,7 +271,6 @@ mt6358_vemc_reg: ldo_vemc {
 			};
 
 			mt6358_vio28_reg: ldo_vio28 {
-				compatible = "regulator-fixed";
 				regulator-name = "vio28";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
@@ -288,7 +278,6 @@ mt6358_vio28_reg: ldo_vio28 {
 			};
 
 			mt6358_va12_reg: ldo_va12 {
-				compatible = "regulator-fixed";
 				regulator-name = "va12";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1200000>;
@@ -297,7 +286,6 @@ mt6358_va12_reg: ldo_va12 {
 			};
 
 			mt6358_vrf18_reg: ldo_vrf18 {
-				compatible = "regulator-fixed";
 				regulator-name = "vrf18";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -333,7 +321,6 @@ mt6358_vldo28_reg: ldo_vldo28 {
 			};
 
 			mt6358_vaud28_reg: ldo_vaud28 {
-				compatible = "regulator-fixed";
 				regulator-name = "vaud28";
 				regulator-min-microvolt = <2800000>;
 				regulator-max-microvolt = <2800000>;
-- 
2.43.0.rc2.451.g8631bc7472-goog


