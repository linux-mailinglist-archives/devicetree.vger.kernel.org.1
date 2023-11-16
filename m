Return-Path: <devicetree+bounces-16239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EDF7EE17C
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14D34B20A8E
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:24:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 515533067E;
	Thu, 16 Nov 2023 13:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ctppWjCP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FD0CE
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:24:25 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5079f6efd64so1040930e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700141063; x=1700745863; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ger2Z8U1lRgsBXzdzavomjDiQueaaZiNkYBOoYjoWjo=;
        b=ctppWjCP4/QB4yP264byuCVknNQ64nKdLNeMcvOoPZMlPKYoJJnXVYEF118nEsXqEp
         b7XB91oTDxyIF3YhROlrj4vWkAG7QoKEkSz5J0zN8mPz1TJscqnQwBblgc7M4bFs8xfJ
         0qtSBJe4OGbxLtTIWZtRtNnZR2P9US8lKd7cJtI62d6cjyILpIyBIC75JGcy0qLeMGR8
         d5EfRACFTiyzRNhlsKhgbGPwiBuivOiho6k+j7xDLhAJyVzON+xKgSqq4OnZ7qek7z1h
         EDJ/C3Hi/I9aq2FDB+kl1AGgwBGDCR7ynbdjRRPETfEui3vGEQtBpqzWgKytjkFm7SGC
         DFjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700141063; x=1700745863;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ger2Z8U1lRgsBXzdzavomjDiQueaaZiNkYBOoYjoWjo=;
        b=jQN6HNu24iUsGlimMLJD9XzdRCcicBsgFUK/vlMwVJTLOMF7moRo9nigpJQGFJpjdz
         b7bAD+/7oRgpJzF6u2ySjZy3UY/75ImBB8jO8+SyUHxYE19isU+B/ljdjCBNaDmq3yd8
         X3P7MB+q65kp4YH+ubRnuUNMnsayEgNbd4vrvMphdKLSBTHNn53SWNbcAkmngLskWp/S
         vDFx2y1mU7DTQdhtbnpNJXuTjeRilteVmDuZPZtdCh+zgKrAmULRExqgU6WNCKvkJDKg
         Qv47RlGLt63Wus1Px4xNVdIWO7Ehd2Jy7QvcqWESzDEpuP3CJX3BrhR7o4Td7bBNEYLA
         sQ8w==
X-Gm-Message-State: AOJu0YzU0fXIyRLZrbUryJf4mu/2n4I9f46s4lI3SUfFnQe+OU7bc0LQ
	P+0KUa1EnnXVYjn2M+AQ3ao=
X-Google-Smtp-Source: AGHT+IFA6hzF3g0U9a9QOrnN8WdEnwPxDn5j5xQTguRSg4pEzZAiAQEqfpdyw2xmT85DAaxpGe8P5Q==
X-Received: by 2002:a05:6512:3d90:b0:507:9a49:2d3d with SMTP id k16-20020a0565123d9000b005079a492d3dmr12924292lfv.31.1700141063217;
        Thu, 16 Nov 2023 05:24:23 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id w21-20020a170906d21500b009b65a834dd6sm8399647ejz.215.2023.11.16.05.24.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 05:24:22 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Sam Shih <sam.shih@mediatek.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: mediatek: mt7986: drop crypto's unneeded/invalid clock name
Date: Thu, 16 Nov 2023 14:24:11 +0100
Message-Id: <20231116132411.7665-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

According to the "inside-secure,safexcel-eip97" binding "clock-names" is
required only if there are two clocks specified. If present the first
name must by "core".

Name "infra_eip97_ck" is invalid and was probably just a typo. Drop it.

Fixes: ecc5287cfe53 ("arm64: dts: mt7986: add crypto related device nodes")
Cc: Sam Shih <sam.shih@mediatek.com>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index 24eda00e320d..017168453ec5 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -234,7 +234,6 @@ crypto: crypto@10320000 {
 				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "ring0", "ring1", "ring2", "ring3";
 			clocks = <&infracfg CLK_INFRA_EIP97_CK>;
-			clock-names = "infra_eip97_ck";
 			assigned-clocks = <&topckgen CLK_TOP_EIP_B_SEL>;
 			assigned-clock-parents = <&apmixedsys CLK_APMIXED_NET2PLL>;
 			status = "disabled";
-- 
2.35.3


