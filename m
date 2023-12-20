Return-Path: <devicetree+bounces-27538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0072881AB64
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:57:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 338311C23EB3
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 451EB4E600;
	Wed, 20 Dec 2023 23:55:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cqCgo5MJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2F64D10E
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-35fa08df8afso858035ab.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116518; x=1703721318; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QGItW2tX+Z99WO9rLTZWRRLNJGNHjPVu0HpOP7a3OKs=;
        b=cqCgo5MJ+zQltH6gmsqAhQd4bBYDYD4ULm26qgJFLOYE+2YZbgxbNwmguh+wk27J02
         DBvVHmleH5W96tR06KqERKOQcstAhANlSmRTntAYo/fd4lmNtzaNUGEsJCq0aTzALpfu
         pWLELdH++kpUjhZ/Y5H54SwLm4T9mCbemWhwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116518; x=1703721318;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QGItW2tX+Z99WO9rLTZWRRLNJGNHjPVu0HpOP7a3OKs=;
        b=fkiCYJQe+R5t5Zx8y2qzK6Znw/JPYQ8UkfeJpKcpw1uzCia92qFKP2T9BnN67HoxK5
         Y771bA+bkFcWLtq/RO15xV1lnbDeUcTJNUo8CyfytzGU0jo6VxbrTiNjrhStMwKG/k8Q
         Jp2q2vbtnVEWf315FEvnbX1eF359R/clRuUr8IO5hzNZZiFr7uLLH0bkgJ/+ZMpzxFzy
         3i9zIB56wqGcRhA1qsBNHGB88gx+/jC79omrOL1So4fU4zvhV0XOAItVICAarQRBfTGG
         UqXhoTzuaBUc6k9uRgp8u854nzXwKIG1o1/Q2NRmruSjPtBHqR2KdF6yyZbMSi1zmvjD
         hx4A==
X-Gm-Message-State: AOJu0Yzzpywbu+YnaRRoeXUa0HWkwA9hi+6BhCMcREyoGC9vtRDTFFaY
	ayhWlUHDkf0GzWofteQe1rNetA==
X-Google-Smtp-Source: AGHT+IEeTSi14BnWNyhDnJXCHg/iyGa81oQJSiNqZOmCD0hxTMyfI0gkwqEmm1ElucJzYwa6n9C2iA==
X-Received: by 2002:a05:6e02:3892:b0:35f:b4ef:ff2d with SMTP id cn18-20020a056e02389200b0035fb4efff2dmr5733161ilb.18.1703116518133;
        Wed, 20 Dec 2023 15:55:18 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:17 -0800 (PST)
From: Mark Hasemeyer <markhas@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Raul Rangel <rrangel@chromium.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Mark Hasemeyer <markhas@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 11/22] arm64: dts: mediatek: mt8195: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:25 -0700
Message-ID: <20231220165423.v2.11.Iee33a7f1f991408cef372744199026f936bf54e2@changeid>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231220235459.2965548-1-markhas@chromium.org>
References: <20231220235459.2965548-1-markhas@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The cros_ec driver currently assumes that cros-ec-spi compatible device
nodes are a wakeup-source even though the wakeup-source property is not
defined.

Add the wakeup-source property to all cros-ec-spi compatible device
nodes to match expected behavior.

Signed-off-by: Mark Hasemeyer <markhas@chromium.org>
---

Changes in v2:
-Split by arch/soc

 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 5a7cab489ff3a..4292b72566bcf 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1067,6 +1067,7 @@ cros_ec: ec@0 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&cros_ec_int>;
 		spi-max-frequency = <3000000>;
+		wakeup-source;
 
 		keyboard-backlight {
 			compatible = "google,cros-kbd-led-backlight";
-- 
2.43.0.472.g3155946c3a-goog


