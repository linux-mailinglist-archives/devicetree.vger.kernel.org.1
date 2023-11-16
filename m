Return-Path: <devicetree+bounces-16231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6277EE116
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:10:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 559C3280ECC
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F61930647;
	Thu, 16 Nov 2023 13:10:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EYpxr6WP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E063C182
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:09:58 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso116484666b.1
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700140197; x=1700744997; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/CmDRN4e/HQ0MmpQTQ9Amu51he+/R067td0lYeM4NG8=;
        b=EYpxr6WPzWRHGpNyYKca73kIXjuV2/eJMm7Dbc+Cm30wptngqfzxAQ5hCGYaaBqwYn
         G8yv2yW35L45epjoSd1fC/ZQepWWxlxX7moPLutxpIVJjQ79upGRvMo3Jtz3a/eRH/fS
         QDi8Ix7kLw5QAsJzLgS2UNq5GpKfbxewHeB5n2oXUcoXzVLqVj9ZRP1drRKBT8W8/Yt6
         BmZwIHJy5KpO5n+HxSu/B97mXUAvQHExZau5mGpGHTcmDSN+HcapZvchG2z7I03bV97s
         VKd9BPVR/4LmjQtcqb5QYJDf5h3sXCcPBJit+1e3kGA0Ib/exyCo19Fm9bj7TPYCHgzz
         0SJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700140197; x=1700744997;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/CmDRN4e/HQ0MmpQTQ9Amu51he+/R067td0lYeM4NG8=;
        b=Ng7J/RyZ07jN+QuvJPZtRT3NAFYdHf5gA9hNtlNMfLtuXwWl7fxDoLYxBgl5GLtDFk
         pS8xmbnSarMwhfpjiWd+qP96mdtGtuKMXM8IMoUrS33s9q4qWC0H3ffblLCdvK1FkCjl
         ZEbZR8qO5+0gQBIfF9Ah5zBESanwcg9N6/DcoElfKH7b7Upiq9EywDXr+1oaBVtsjVLD
         nJL04ZdW8Z9Ihwze9F1gmkZP3xu/X3Ij6o+FZA871eFVQIZYVSIOgLVyfaIhQQe9gd3F
         k2iUpLm4qW1cx0bA71rn0MosPv/0c15Jt3SGMIiedyJWVVwiZQt894A4hVV4W6WPLVg9
         HdnA==
X-Gm-Message-State: AOJu0Yw4pX5pqLv/Ts4ghksDFo5a4gHmp75F8MgK/oNdYWgm8u5LFre7
	ziV3Ph/9AT7/TmZFdUAjSQcwSiyCkoY=
X-Google-Smtp-Source: AGHT+IHicHcKzKBlDNseHjmXhJBxUOloYbBkiGJMT+T56kBgUZhVTDk3+bKnUOHZu6AG4mc9RVxzNg==
X-Received: by 2002:a17:906:ca5b:b0:9be:30c2:b8ff with SMTP id jx27-20020a170906ca5b00b009be30c2b8ffmr11765124ejb.61.1700140197010;
        Thu, 16 Nov 2023 05:09:57 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id cw18-20020a170906c79200b0099bd7b26639sm8390652ejb.6.2023.11.16.05.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 05:09:56 -0800 (PST)
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
Subject: [PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width properties
Date: Thu, 16 Nov 2023 14:09:51 +0100
Message-Id: <20231116130952.5099-1-zajec5@gmail.com>
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

This fixes SPI setup and resolves following validation errors:
arch/arm64/boot/dts/mediatek/mt7986a-rfb.dtb: spi_nand@0: Unevaluated properties are not allowed ('spi-rx-buswidth', 'spi-tx-buswidth' were unexpected)
        from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
arch/arm64/boot/dts/mediatek/mt7986b-rfb.dtb: spi_nand@0: Unevaluated properties are not allowed ('spi-rx-buswidth', 'spi-tx-buswidth' were unexpected)
        from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#

Fixes: 885e153ed7c1 ("arm64: dts: mt7986: add spi related device nodes")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts | 4 ++--
 arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts b/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
index 3ef371ca254e..bcb3ebb85d70 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
@@ -241,8 +241,8 @@ spi_nand: spi_nand@0 {
 		compatible = "spi-nand";
 		reg = <0>;
 		spi-max-frequency = <10000000>;
-		spi-tx-buswidth = <4>;
-		spi-rx-buswidth = <4>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts b/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
index dde190442e38..48fe50e67177 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
@@ -156,8 +156,8 @@ spi_nand: spi_nand@0 {
 		compatible = "spi-nand";
 		reg = <0>;
 		spi-max-frequency = <10000000>;
-		spi-tx-buswidth = <4>;
-		spi-rx-buswidth = <4>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
 	};
 };
 
-- 
2.35.3


