Return-Path: <devicetree+bounces-129594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F09959EC43F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 06:25:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDE6C188B21D
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 05:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1811C5F00;
	Wed, 11 Dec 2024 05:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="baf+C/e/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70CE1C5CCD
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 05:24:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733894692; cv=none; b=R8i3UT4kRQJdwm6BBSs4u4DecySEoZUZRi1/932aVKBF0X/2+pBQog4u/rqkY4m2ojoP1jeFBqq2IvsCGrA/noRHLFBdN81BDUCRGgi9PjjfQAPZDHHtkslQZKjLh5BxlV+2WEZ3wDKhmmmuFxUCCBhporCuGnwJyY9hfLZcEaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733894692; c=relaxed/simple;
	bh=I9EBxM3lyArz3TG6S3U/v+gknX0n4b9Wtv49UMfrVKw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EzpmQSZr0uezc4DsaytwlcKhkAkJ/dFIstUTzy9Bfb00gTb7xK3/+DTh4Hh+NFm/G4Jcj6n4SmjR6GSw15ghRLQMnJ9OSWmHUMKyxoVaYBhf+g+s/rnJPW3f3zCwfJruXZYpX48+xrG8mmmS6lunYWlQZDHoTlqAguUtQ72lREM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=baf+C/e/; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-725dc290c00so258277b3a.0
        for <devicetree@vger.kernel.org>; Tue, 10 Dec 2024 21:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1733894690; x=1734499490; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OdiLjWqZCqkJzTb8taSGz82kJU+JDYdNANRgcY+U26Y=;
        b=baf+C/e/VYvg8nuduxt4/26YV8roRg40Wdz0ucrKlk3nyPbvwVy3/ZnERbVLaGHUdl
         yMVex8rI7kkgDYkAWivn1+nrXpjXycXNpM0lv9jMJ0I9Aq0al70WGCXeZu87JRfvVuTU
         AjuVMLG8JEIXahwznPmM+S9yeIcNCqbDRrYkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733894690; x=1734499490;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OdiLjWqZCqkJzTb8taSGz82kJU+JDYdNANRgcY+U26Y=;
        b=E3L4kDI5HvVcuvbAypCt9Ek5Ym/jNdK/tS5Zje3Ji4as2YpOxX3plz/L9OC+hpwQbX
         PSFUVUzPi15u/Q3qU2ow9FfZJ/1PZfVkQyuG2gZeJGrLgBQnbcrYfr++i9cu+6+4VyDp
         k/tpVB1VP6oVi9sj78iSlhaJ5kQ6/4meI2aKMAsS30pxT45yQy6ApeSHFcMPlcaj4JoT
         QrFH71Db1lMteevZ7eQgmYpJZNEmUDfLYbA7B1lKaMKXt0gHRZXMOpeKZe+FU9YmpKNj
         cSfIEnaqlg+JH40esFfSc7FQSPNt+6NO7jmNMspXDJ0riu6N7JROVK5PCT/DLhcldBpU
         MNdw==
X-Forwarded-Encrypted: i=1; AJvYcCW2VTf5FlVUUyX4MbnlQm/4RoiJUnf3BIZXiK3szF63mqKKzd/00MsHlTqNcLvmrcWVOjxYPuCqw25O@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2dhUDr6cnY+QzgcO8wsQT5otXWb2q0tDKokYrqFA5PXo9pRx7
	CoQAjrM3imnmKnNAo+8oHSuZT/KxD5SEo5fdcaYfnLMt/SV6TsxQE3lh/PGcrg==
X-Gm-Gg: ASbGncuY+hKQBLzYCf8fu74RlLLEyQPv9n3FSuQteWGoU/c6f2bSrEv0VAIQHhNQm+l
	6XM2xMxPNrYuSmwa9MegF7DA6es+veqa1GDOre2Vdl6jq2ZZWnw1QDRaqiOVUKKdObNjZgBWeSd
	RxVpk6EXMmp73Dp9HtWdl/xqmE0x0yD6ge+nzQuyQVFoSYPB12lQP8kKgKcdiG6uXqg57m9lPKL
	qHBcdtfxV9jjmFENzj+QE8vDmAwCNQeT1Hol9UqY8oD72KnkAGGBWr8eUQNvKDnOFJbDiEO
X-Google-Smtp-Source: AGHT+IE3tH05FCDWD+zKQbH/6GkwhwOe3oH+eHt/gxo//2UmKzQG0AGbv9mpB/EeA/+0SV0LYD5TJw==
X-Received: by 2002:a05:6a20:d8b:b0:1e1:a48f:1212 with SMTP id adf61e73a8af0-1e1c26a8ecbmr2332202637.4.1733894690317;
        Tue, 10 Dec 2024 21:24:50 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:4dfb:c0ae:6c93:d01e])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725e66801e2sm5397702b3a.160.2024.12.10.21.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:24:49 -0800 (PST)
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
Subject: [PATCH 6/8] arm64: dts: mediatek: mt8195-demo: Drop regulator-compatible property
Date: Wed, 11 Dec 2024 13:24:24 +0800
Message-ID: <20241211052427.4178367-7-wenst@chromium.org>
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
regulator bindings YAML file. It is also not listed in the MT6360
regulator and charger bindings.

Drop the "regulator-compatible" property from the board dts. The MT6360
bindings actually require the lowercase name, so with the property
present the regulators were likely not actually working.

Fixes: 6147314aeedc ("arm64: dts: mediatek: Add device-tree for MT8195 Demo board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-demo.dts | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
index 31d424b8fc7c..bfb75296795c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-demo.dts
@@ -137,7 +137,6 @@ charger {
 			richtek,vinovp-microvolt = <14500000>;
 
 			otg_vbus_regulator: usb-otg-vbus-regulator {
-				regulator-compatible = "usb-otg-vbus";
 				regulator-name = "usb-otg-vbus";
 				regulator-min-microvolt = <4425000>;
 				regulator-max-microvolt = <5825000>;
@@ -149,7 +148,6 @@ regulator {
 			LDO_VIN3-supply = <&mt6360_buck2>;
 
 			mt6360_buck1: buck1 {
-				regulator-compatible = "BUCK1";
 				regulator-name = "mt6360,buck1";
 				regulator-min-microvolt = <300000>;
 				regulator-max-microvolt = <1300000>;
@@ -160,7 +158,6 @@ MT6360_OPMODE_LP
 			};
 
 			mt6360_buck2: buck2 {
-				regulator-compatible = "BUCK2";
 				regulator-name = "mt6360,buck2";
 				regulator-min-microvolt = <300000>;
 				regulator-max-microvolt = <1300000>;
@@ -171,7 +168,6 @@ MT6360_OPMODE_LP
 			};
 
 			mt6360_ldo1: ldo1 {
-				regulator-compatible = "LDO1";
 				regulator-name = "mt6360,ldo1";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <3600000>;
@@ -180,7 +176,6 @@ mt6360_ldo1: ldo1 {
 			};
 
 			mt6360_ldo2: ldo2 {
-				regulator-compatible = "LDO2";
 				regulator-name = "mt6360,ldo2";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <3600000>;
@@ -189,7 +184,6 @@ mt6360_ldo2: ldo2 {
 			};
 
 			mt6360_ldo3: ldo3 {
-				regulator-compatible = "LDO3";
 				regulator-name = "mt6360,ldo3";
 				regulator-min-microvolt = <1200000>;
 				regulator-max-microvolt = <3600000>;
@@ -198,7 +192,6 @@ mt6360_ldo3: ldo3 {
 			};
 
 			mt6360_ldo5: ldo5 {
-				regulator-compatible = "LDO5";
 				regulator-name = "mt6360,ldo5";
 				regulator-min-microvolt = <2700000>;
 				regulator-max-microvolt = <3600000>;
@@ -207,7 +200,6 @@ mt6360_ldo5: ldo5 {
 			};
 
 			mt6360_ldo6: ldo6 {
-				regulator-compatible = "LDO6";
 				regulator-name = "mt6360,ldo6";
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <2100000>;
@@ -216,7 +208,6 @@ mt6360_ldo6: ldo6 {
 			};
 
 			mt6360_ldo7: ldo7 {
-				regulator-compatible = "LDO7";
 				regulator-name = "mt6360,ldo7";
 				regulator-min-microvolt = <500000>;
 				regulator-max-microvolt = <2100000>;
-- 
2.47.0.338.g60cca15819-goog


