Return-Path: <devicetree+bounces-27536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C96B81AB5C
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 00:57:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 190BF1F24296
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 23:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 894834D595;
	Wed, 20 Dec 2023 23:55:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Qo9MLcsk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f52.google.com (mail-io1-f52.google.com [209.85.166.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8214D10E
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 23:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-io1-f52.google.com with SMTP id ca18e2360f4ac-7ba8c218fe1so186339f.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 15:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703116516; x=1703721316; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KIM4NQPVUw5XQPjNCJNZ+EzGM62sn2zFTK1BxHqm24=;
        b=Qo9MLcskKcLDqgh9ODct1NaD2Sm83R1IYP/VUPLNG60Que+2w2mQjLI1zD8+Ti7FjF
         N6i7dy/6b76Yj8dvZz926CCHAEuQ39jNWcZA4ON95pXdcop1JolsE+MRE9mfkWAi3Jje
         mcz+Ocl6PEDflBJrnzFUlYT/otX+dm5ztsUAM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703116516; x=1703721316;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+KIM4NQPVUw5XQPjNCJNZ+EzGM62sn2zFTK1BxHqm24=;
        b=hFo6XiLhD9IfOp0oQnALGfFGX6aahJpp3VpKLTs41aVrN01hGysEpDU6FvuMsDDQeq
         5vvSWW3I3PRaowSbQUcJWtgcbT1FQugq+xw6ADyoJWOBL3nbluvqnEeIhQYGA2bQ+AIY
         qY1qLPw9hmw3ZrSiS10UjfyJeNPX5ZN5yHQcEpxTScFOjJ5Pg6RtS5SVjaqBptfJFZCj
         zGKeKse0xaujEkT5yKiiwxTlHKiTycM6xqyXlVTFVAlmWCRaWszKa9/x9J28ZJC3Lv0S
         Rop87wJ7Ivy277x+bIxRJmdIyLBBkTeWDWM/T6xMhoyqRimOHP2gukNwxPGhPqeDIyRK
         xVeQ==
X-Gm-Message-State: AOJu0YxFV38Jn5MbvIJ44YUeGPlGpsXTa6atzZGV+wZ7B+89ZWGTy7Gx
	ulSHqa5vURIdeWSjzm8QuNKepg==
X-Google-Smtp-Source: AGHT+IE5Fh0GQqdpS6aUnNljRA1kzY4Iqpzlbmpa89jfkHQhQpYtqbFAles2BemXZpQUZLiye2NH/Q==
X-Received: by 2002:a05:6e02:3205:b0:35f:7db1:3f9a with SMTP id cd5-20020a056e02320500b0035f7db13f9amr10498168ilb.34.1703116516382;
        Wed, 20 Dec 2023 15:55:16 -0800 (PST)
Received: from markhas1.lan (71-218-50-136.hlrn.qwest.net. [71.218.50.136])
        by smtp.gmail.com with ESMTPSA id bp22-20020a056638441600b0046b39a6f404sm177805jab.17.2023.12.20.15.55.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 15:55:15 -0800 (PST)
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
Subject: [PATCH v2 09/22] arm64: dts: mediatek: mt8183: Enable cros-ec-spi as wake source
Date: Wed, 20 Dec 2023 16:54:23 -0700
Message-ID: <20231220165423.v2.9.Iba4a8b7e908989e57f7838a80013a4062be5e614@changeid>
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

 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index 7881a27be0297..06cbf29d16215 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -922,6 +922,7 @@ cros_ec: cros-ec@0 {
 		interrupts = <151 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&ec_ap_int_odl>;
+		wakeup-source;
 
 		i2c_tunnel: i2c-tunnel {
 			compatible = "google,cros-ec-i2c-tunnel";
-- 
2.43.0.472.g3155946c3a-goog


