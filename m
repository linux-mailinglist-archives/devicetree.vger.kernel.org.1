Return-Path: <devicetree+bounces-16232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 061107EE117
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:10:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 431FDB20B10
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 769993065C;
	Thu, 16 Nov 2023 13:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YrORh9VO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B376E193
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:10:00 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-5098e423ba2so1091915e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700140199; x=1700744999; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g+caM/fGFqwg+mNVYtjWtQ/3+CQtaaIeq8SYK74zbQE=;
        b=YrORh9VOpiVZtXUyPfjBS5YRh+TqaRo9/4D7fSOl6au/cYTMIiJuOg4MJ4TjYXRlEu
         a2uLFsnii+r5klRCiQJk9omHHLA4c6BLUUipmtBmYIWGUNlGWhz4fnwOcimAiWeOlGOf
         OXsUu8M1HY3yVuk1i+WOawHMz4xrbAdY1L6UWBGVJxabNA7fU25oz4fYwmamY8cLaiPu
         eg1CKmeKXgAw40XNM0NDV8OYyA9gjFGsa2ojw9JGlLS/H7TMXWXzDmFcS72zoBPtljix
         lGZgSM7fn14uhyNg8URoBw0LTtVdB2gEhSfn0Bb87fveE4lxCyjVg1aWlS9detxm0XIQ
         8KCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700140199; x=1700744999;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g+caM/fGFqwg+mNVYtjWtQ/3+CQtaaIeq8SYK74zbQE=;
        b=BfIrtOXVBT1N0kesUg30HgPUzg7/yGlOg2Rvq+18BZziIhMY8+U9sdqus6IzBndDZM
         mkvz6Hfu9SwaVgXfb9C/UNVrp2kBatQkktGw7xB6fN0OEXVl9arPFXT1ijNwxRuIMcTr
         JtKPO61paLCqI4URfb2DEeTsxWH07NE3BWh21y0pbBK+qn2IiiqYJb3wNHode2Psosui
         yeU9HXDCKXYQ3dihOvt2TBK1am5vBcdQ5g49bMzk5/tVxxse0L1Yv3e0fGn/Va9lF0YI
         nipHQ30Aj7YsxdCRxu3Qt8Q4lxmef/hY793cP1V4IVz27jwOuZiqw8dxesKTElLNlaKY
         j/fQ==
X-Gm-Message-State: AOJu0YyA+Hp4jawnrX+2AEWkNK6uaGpIutN2LejG1hAfTiFFkLTAkzV0
	95coi6OzB72lVxNZ7YOovp4=
X-Google-Smtp-Source: AGHT+IEx188eMVfx2JFN4RQ/a3OZYRbagamvEiD0/93G0nYiihguTjkmM1ueS+77Cz5i4/SKzp22nA==
X-Received: by 2002:a05:6512:4002:b0:505:6cc7:e0f7 with SMTP id br2-20020a056512400200b005056cc7e0f7mr2343047lfb.44.1700140198822;
        Thu, 16 Nov 2023 05:09:58 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id cw18-20020a170906c79200b0099bd7b26639sm8390652ejb.6.2023.11.16.05.09.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 05:09:58 -0800 (PST)
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
Subject: [PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
Date: Thu, 16 Nov 2023 14:09:52 +0100
Message-Id: <20231116130952.5099-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20231116130952.5099-1-zajec5@gmail.com>
References: <20231116130952.5099-1-zajec5@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

This fixes following validation errors:
arch/arm64/boot/dts/mediatek/mt7986a-rfb.dtb: spi_nand@0: $nodename:0: 'spi_nand@0' does not match '^(flash|.*sram|nand)(@.*)?$'
        from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#
arch/arm64/boot/dts/mediatek/mt7986b-rfb.dtb: spi_nand@0: $nodename:0: 'spi_nand@0' does not match '^(flash|.*sram|nand)(@.*)?$'
        from schema $id: http://devicetree.org/schemas/mtd/spi-nand.yaml#

Fixes: 885e153ed7c1 ("arm64: dts: mt7986: add spi related device nodes")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts | 3 ++-
 arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts b/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
index bcb3ebb85d70..2f884c24f1eb 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-rfb.dts
@@ -237,7 +237,8 @@ &spi0 {
 	pinctrl-0 = <&spi_flash_pins>;
 	cs-gpios = <0>, <0>;
 	status = "okay";
-	spi_nand: spi_nand@0 {
+
+	spi_nand: flash@0 {
 		compatible = "spi-nand";
 		reg = <0>;
 		spi-max-frequency = <10000000>;
diff --git a/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts b/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
index 48fe50e67177..57dcaeef31d7 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986b-rfb.dts
@@ -152,7 +152,8 @@ &spi0 {
 	pinctrl-0 = <&spi_flash_pins>;
 	cs-gpios = <0>, <0>;
 	status = "okay";
-	spi_nand: spi_nand@0 {
+
+	spi_nand: flash@0 {
 		compatible = "spi-nand";
 		reg = <0>;
 		spi-max-frequency = <10000000>;
-- 
2.35.3


