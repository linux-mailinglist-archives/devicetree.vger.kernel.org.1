Return-Path: <devicetree+bounces-129591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 585C79EC439
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:25:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4266A167945
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAC0C1C462D;
	Wed, 11 Dec 2024 05:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="DMSb6su4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189221C3F39
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894684; cv=none; b=Gtzvla1Y23B1Qkv4CTEUO1FWzm9kLpvAXHDSN7wGEQhQsvJLXe3TCSeB/v5mG4Shh90NNB+3HfcIfNtRPh1i9hMlHSe+TxIoUBPi7CfP6Q/tk6q/ZbrA5rAwe5uFVK/pCYwmD9w104RAXApuWfjnhZtZzLzciCYSXPBXmHz8yMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894684; c=relaxed/simple;
	bh=YNKsFutMMS8C2a4IbjiKBdMpGWmjP9Ig61A9OxtVkJs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ZtTwXj7iSInBVy6IHo45AcAAcG3og7rRCC4rH0JOQWzVI1sW61d9kkDmJTEilLQlY19gtMzLKQQcrmd6eQsmN7TlYju3J16Nja78Ps61kRznS3xhcABlhqdi7dKHEe+h63hBbOrWhROMD1iQbpLqv0Dbzu0JXavrFKQUJHTOl0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=DMSb6su4; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-7e6d04f74faso232157a12.1
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894682; x=1734499482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tY7r3wEjIkXTlIAMLJz+ui9MVhaOPU6f72Mx3sHGkok=;
        b=DMSb6su4FUENZ3YJlpDVnYAMdLVXGRAQYYpcs1dRbTuizQ9D4vrCDnEStc/JLsb30a
         qIww3HV6XV0sRfYzKwnzkyI7UIjmfQlHawwm0fRYFgnE+8Kylju0L8tKt1Lbx0GTngrP
         yAnyn5APumRqC2IgMa2QRDJWmRqj4mriUMSU0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894682; x=1734499482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tY7r3wEjIkXTlIAMLJz+ui9MVhaOPU6f72Mx3sHGkok=;
        b=fU4h/9t30CLa95dVnUgnBJJE3xZzNQmnQMWflasw0Xe+Zb9R0EOiaa6C89465fcrKa
         eEPhDrZG4/0HHGJ8IkjXcK/cSfwUQUXP2+4wXVD+ab9DgSAouxrwvUmOKdTogDEwDiE5
         BKXsv06k01YTgdhdiqDICsIoG2byt9zC4cZDM2qHedsc1Iu5p5yllhBn9YrHhm5hyNzE
         gIgTCXwwrApyYdzCH40su9zbtGOWlue8mW7+VSuZf2wyBL4SkLhVXQrFyBEOY99z+I7l
         a3u/5qcAzyOTgkF5zgPEhk71iz6XzxYOl4rs/J5n2FOEr7B8y7ieJn4OCN5gh8/oCq/y
         4+2w==
X-Forwarded-Encrypted: i=1; AJvYcCVlPYDHiWpBhzTyCgMCSuJmFfdh/B8bAyyNW9VBzbkP2NsfvQT6ySHqa3qJWTa2K5V/rP8+AUbulw/H@vger.kernel.org
X-Gm-Message-State: AOJu0YzRuEl+sZ+LQw6ab2FyEdbRXCa0n18Cmk/fhKbQoOvfCS0LWmvl
	49noTFptwaCxr5oTmAyf5P5ILpI8J0SJlakuq8KnngsHjehea69F1OCH8jPjlw==
X-Gm-Gg: ASbGnctN4E6ZGllfA/Doct0OU8bJyZ5f4PK897ZhCe7IVmxy0bIdub8tlYa2GWHBjFX
	JPuQ+ReXlI+Attd595v+s07AbmDw5GeJBLHZJMjh/CKAsXUzHp0DkX7MehKmllHu3V2yBQl9HOm
	rvlRmESUhRayVqMAGZPfNFuFsjd5xNGE1z3lsnIyKvEz5FFaLeDQGXt4gW5pweD4UhjFz/IiRVl
	tZg4TdVUdRQe5CmEwJKkWw/nFv4lk6yK7BPfkoNcw8YYEz0tGHzU2JdLfcVtAfvzsle8za8
X-Google-Smtp-Source: AGHT+IHPBmMY46nd40L9l8B7rqf5OCepHo36t8dy/i4aNYeTnSBw7vMG0JUR5wQ8qEOw6/U4VQW7Bg==
X-Received: by 2002:a05:6a20:d8b:b0:1e1:a48f:1212 with SMTP id adf61e73a8af0-1e1c26a8ecbmr2331768637.4.1733894682401;
        Tue, 10 Dec 2024 21:24:42 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:42 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/8] arm64: dts: mediatek: mt8173-elm: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:21 +0800
Message-ID: <20241211052427.4178367-4-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
In-Reply-To: <20241211052427.4178367-1-wenst@chromium.org>
References: <20241211052427.4178367-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "regulator-compatible" property has been deprecated since 2012 in
commit 13511def87b9 ("regulator: deprecate regulator-compatible DT
property"), which is so old it's not even mentioned in the converted
regulator bindings YAML file. It is also not listed in the MT6397
regulator bindings. Having them present produces a whole bunch of
validation errors:

    Unevaluated properties are not allowed ('regulator-compatible' was unexpected)

Drop the "regulator-compatible" property from the board dts. The
property values are the same as the node name, so everything should
continue to work.

Fixes: 689b937bedde ("arm64: dts: mediatek: add mt8173 elm and hana board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 23 --------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index eee64461421f..b91072f4723f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -946,7 +946,6 @@ regulator: mt6397regulator {
 			compatible = "mediatek,mt6397-regulator";
 
 			mt6397_vpca15_reg: buck_vpca15 {
-				regulator-compatible = "buck_vpca15";
 				regulator-name = "vpca15";
 				regulator-min-microvolt = < 700000>;
 				regulator-max-microvolt = <1350000>;
@@ -956,7 +955,6 @@ mt6397_vpca15_reg: buck_vpca15 {
 			};
 
 			mt6397_vpca7_reg: buck_vpca7 {
-				regulator-compatible = "buck_vpca7";
 				regulator-name = "vpca7";
 				regulator-min-microvolt = < 700000>;
 				regulator-max-microvolt = <1350000>;
@@ -966,7 +964,6 @@ mt6397_vpca7_reg: buck_vpca7 {
 			};
 
 			mt6397_vsramca15_reg: buck_vsramca15 {
-				regulator-compatible = "buck_vsramca15";
 				regulator-name = "vsramca15";
 				regulator-min-microvolt = < 700000>;
 				regulator-max-microvolt = <1350000>;
@@ -975,7 +972,6 @@ mt6397_vsramca15_reg: buck_vsramca15 {
 			};
 
 			mt6397_vsramca7_reg: buck_vsramca7 {
-				regulator-compatible = "buck_vsramca7";
 				regulator-name = "vsramca7";
 				regulator-min-microvolt = < 700000>;
 				regulator-max-microvolt = <1350000>;
@@ -984,7 +980,6 @@ mt6397_vsramca7_reg: buck_vsramca7 {
 			};
 
 			mt6397_vcore_reg: buck_vcore {
-				regulator-compatible = "buck_vcore";
 				regulator-name = "vcore";
 				regulator-min-microvolt = < 700000>;
 				regulator-max-microvolt = <1350000>;
@@ -993,7 +988,6 @@ mt6397_vcore_reg: buck_vcore {
 			};
 
 			mt6397_vgpu_reg: buck_vgpu {
-				regulator-compatible = "buck_vgpu";
 				regulator-name = "vgpu";
 				regulator-min-microvolt = < 700000>;
 				regulator-max-microvolt = <1350000>;
@@ -1002,7 +996,6 @@ mt6397_vgpu_reg: buck_vgpu {
 			};
 
 			mt6397_vdrm_reg: buck_vdrm {
-				regulator-compatible = "buck_vdrm";
 				regulator-name = "vdrm";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <1400000>;
@@ -1011,7 +1004,6 @@ mt6397_vdrm_reg: buck_vdrm {
 			};
 
 			mt6397_vio18_reg: buck_vio18 {
-				regulator-compatible = "buck_vio18";
 				regulator-name = "vio18";
 				regulator-min-microvolt = <1620000>;
 				regulator-max-microvolt = <1980000>;
@@ -1020,18 +1012,15 @@ mt6397_vio18_reg: buck_vio18 {
 			};
 
 			mt6397_vtcxo_reg: ldo_vtcxo {
-				regulator-compatible = "ldo_vtcxo";
 				regulator-name = "vtcxo";
 				regulator-always-on;
 			};
 
 			mt6397_va28_reg: ldo_va28 {
-				regulator-compatible = "ldo_va28";
 				regulator-name = "va28";
 			};
 
 			mt6397_vcama_reg: ldo_vcama {
-				regulator-compatible = "ldo_vcama";
 				regulator-name = "vcama";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -1039,18 +1028,15 @@ mt6397_vcama_reg: ldo_vcama {
 			};
 
 			mt6397_vio28_reg: ldo_vio28 {
-				regulator-compatible = "ldo_vio28";
 				regulator-name = "vio28";
 				regulator-always-on;
 			};
 
 			mt6397_vusb_reg: ldo_vusb {
-				regulator-compatible = "ldo_vusb";
 				regulator-name = "vusb";
 			};
 
 			mt6397_vmc_reg: ldo_vmc {
-				regulator-compatible = "ldo_vmc";
 				regulator-name = "vmc";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
@@ -1058,7 +1044,6 @@ mt6397_vmc_reg: ldo_vmc {
 			};
 
 			mt6397_vmch_reg: ldo_vmch {
-				regulator-compatible = "ldo_vmch";
 				regulator-name = "vmch";
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3300000>;
@@ -1066,7 +1051,6 @@ mt6397_vmch_reg: ldo_vmch {
 			};
 
 			mt6397_vemc_3v3_reg: ldo_vemc3v3 {
-				regulator-compatible = "ldo_vemc3v3";
 				regulator-name = "vemc_3v3";
 				regulator-min-microvolt = <3000000>;
 				regulator-max-microvolt = <3300000>;
@@ -1074,7 +1058,6 @@ mt6397_vemc_3v3_reg: ldo_vemc3v3 {
 			};
 
 			mt6397_vgp1_reg: ldo_vgp1 {
-				regulator-compatible = "ldo_vgp1";
 				regulator-name = "vcamd";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -1082,7 +1065,6 @@ mt6397_vgp1_reg: ldo_vgp1 {
 			};
 
 			mt6397_vgp2_reg: ldo_vgp2 {
-				regulator-compatible = "ldo_vgp2";
 				regulator-name = "vcamio";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
@@ -1090,7 +1072,6 @@ mt6397_vgp2_reg: ldo_vgp2 {
 			};
 
 			mt6397_vgp3_reg: ldo_vgp3 {
-				regulator-compatible = "ldo_vgp3";
 				regulator-name = "vcamaf";
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <1800000>;
@@ -1098,7 +1079,6 @@ mt6397_vgp3_reg: ldo_vgp3 {
 			};
 
 			mt6397_vgp4_reg: ldo_vgp4 {
-				regulator-compatible = "ldo_vgp4";
 				regulator-name = "vgp4";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <3300000>;
@@ -1106,7 +1086,6 @@ mt6397_vgp4_reg: ldo_vgp4 {
 			};
 
 			mt6397_vgp5_reg: ldo_vgp5 {
-				regulator-compatible = "ldo_vgp5";
 				regulator-name = "vgp5";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <3000000>;
@@ -1114,7 +1093,6 @@ mt6397_vgp5_reg: ldo_vgp5 {
 			};
 
 			mt6397_vgp6_reg: ldo_vgp6 {
-				regulator-compatible = "ldo_vgp6";
 				regulator-name = "vgp6";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3300000>;
@@ -1123,7 +1101,6 @@ mt6397_vgp6_reg: ldo_vgp6 {
 			};
 
 			mt6397_vibr_reg: ldo_vibr {
-				regulator-compatible = "ldo_vibr";
 				regulator-name = "vibr";
 				regulator-min-microvolt = <1300000>;
 				regulator-max-microvolt = <3300000>;
-- 
2.47.0.338.g60cca15819-goog


