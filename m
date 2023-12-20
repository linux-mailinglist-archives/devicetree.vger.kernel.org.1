Return-Path: <devicetree+bounces-27533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA69181AB56
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:56:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E6E1285AC3
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FF694CE01;
	Wed, 20 Dec 2023 23:55:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jY0oCY2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 015D14CB43
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-7b7f6caf047so7178639f.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116514; x=1703721314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=06i8yMe3unqllEnKE3Q0g5bmBjz7Qwg6DF0FrSTHOkw=;
        b=jY0oCY2QW6zKPDJqJpJOqXHd3PRfdue/GA6fECqXaBquJjPXOnp2KG3IDeRaDEOqcA
         0LUz1TlyIn7Kl2GW4tyaE7Zt/ZQx8F6LYees8joXLw4CthNDOQ+wn5+xuf5HZ2Hr3+G4
         oL0/U9/1YLZH4UlA2l4CkVqPxDv7pASHgwNzo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116514; x=1703721314;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=06i8yMe3unqllEnKE3Q0g5bmBjz7Qwg6DF0FrSTHOkw=;
        b=a0mptv0T3+0sUKB9IAZUUWM+Kft1sDdeld1VlG4UwcLqaa8aibW0BGvYChtRipcAEa
         VJCVjqxh4VCFHWjmitNwmRDAAJPiM1gmwxSQ4BEVVgoGvzLYvbn9PZtSY+VRF318HSE1
         jv6hXVKdix0od7VzR/HWA+IP96qwxnjLsKo1FfY/LGuHHWU+z+0VrEZWiVAOgx2vxiUN
         QPOnialxEkOd66QIgPuzpseTPJgw4iBUe1pw1cHLLUnOZAEoEF7UR6GiS6lrztqfnx9D
         hbVBFw7tbqZYVMrM9YhtPEwqYdMnGhAz7e5fM6vkdGRuz5WMltQ6ep5pGtp2RBeZKxi9
         R1Pg==
X-Gm-Message-State: AOJu0YwPO0xUO0Rha35PB/DNGnwrqBNxKBIinY901+uHliEbjqfA55Qx
	GrZNlbkRB0ZECc2ZZo/Gb7uYzw==
X-Google-Smtp-Source: AGHT+IFtNsaq0EzBRu4Ew+8zNVmj75dDLgrwZJJB/sP75mn6dWM7HXO8w8QE3J+d103cQRFMUtPPIw==
X-Received: by 2002:a5e:8b0d:0:b0:7ba:7de5:609f with SMTP id g13-20020a5e8b0d000000b007ba7de5609fmr1200517iok.38.1703116514370;
        Wed, 20 Dec 2023 15:55:14 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:14 -0800 (PST)
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
	Alim Akhtar <alim.akhtar@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 07/22] ARM: dts: samsung: exynos5800: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:21 -0700
Message-ID: <20231220165423.v2.7.Idc995ce08a52ba4c5fde0685118ddf2873fc8acd@changeid>
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

 arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
index f91bc4ae008e4..9bbbdce9103a6 100644
--- a/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/samsung/exynos5800-peach-pi.dts
@@ -949,6 +949,7 @@ cros_ec: cros-ec@0 {
 		reg = <0>;
 		spi-max-frequency = <3125000>;
 		google,has-vbc-nvram;
+		wakeup-source;
 
 		controller-data {
 			samsung,spi-feedback-delay = <1>;
-- 
2.43.0.472.g3155946c3a-goog


