Return-Path: <devicetree+bounces-16230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8737EE114
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C9DA1C20832
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F9C130645;
	Thu, 16 Nov 2023 13:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZbvjrwRB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE457181
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:08:24 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9d2e7726d5bso106814366b.0
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 05:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700140103; x=1700744903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ewa/RO/c2nNV9BqZXYhhMq1WyzGVfFe1cICq2jP+i3Q=;
        b=ZbvjrwRBs2JfdPAF2hiKaSV5La0hA5EQDtTETtRcdod5KXAYNEXWXCPKKvP8rCk3Zb
         JXFbEOqCXc/LDDOKpNv0kiFs1KDNiJrUNkfaNmt2eruZNKY9u6JEoI/EpozqtBm09akV
         kD6Kt6TkKTltDYyYvUJxBcd6IjfmK2ciqLR+r96klg6m/7H5972kFugcOgv83FnwY9Oz
         GrpWnYdYTagV0O3lmM0nJu5TM0Dfhp5OoJ11Cq1/O6eFB+Qr9zY/IYBaAz8OQjPfyPgr
         cNPKM64BhOvIQTaC8zG5PI/BXx6nHCkxv7q29yuTsaAdUSrsVLBHDXZON5t2LSlA6GPV
         glqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700140103; x=1700744903;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewa/RO/c2nNV9BqZXYhhMq1WyzGVfFe1cICq2jP+i3Q=;
        b=Z5vKsH7FNb8iwA0BqHbOcQY+NNas08s1pLwcfeyB0MjdXuQRlzok/eQnZfWEBvQnBU
         HdXtHQJv/95Q69qQZ/0L1AzDBv6JAX5Pwf1n7HACdFjkKGhvMW/mKGPkTgm1WZOjVCd/
         SJzxKeCAPYn3fVYKC4oH5lf9fQ/X9v5eQadVoIB5gxDB74iAsmsdrv0y6kZw4MjXEpWu
         PZchoijpBUPcjeOFBrwKUOPmkt6RRibO6wuxj+08N3zp6ecVbpn3degy5JWsysx0kXnK
         nG1Amvoyl7qrRZcUjiU4kdmA7uOb71ycKwIQ7uaUpfoIt6RmnB0Se4mLv1F8doWh4O/7
         zasg==
X-Gm-Message-State: AOJu0YxiuifvUPnMcXX8+i34vjFrHFdz5SuBzPZy9I+q2GqGk/t+GpPs
	Y5D+EfeAJkxTWBE5nLYSJYq5rtxBYZw=
X-Google-Smtp-Source: AGHT+IHVuYL+1VlYakZtvkRco8laP3tpnuEfUx0y1nDVLHShdfNJc8z8ihZGXgeJGqFKdg+MjA7dCQ==
X-Received: by 2002:a17:906:774a:b0:9e6:da40:50e4 with SMTP id o10-20020a170906774a00b009e6da4050e4mr13395959ejn.7.1700140102989;
        Thu, 16 Nov 2023 05:08:22 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a3-20020a1709065f8300b009e505954becsm8375833eju.107.2023.11.16.05.08.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 05:08:22 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan node
Date: Thu, 16 Nov 2023 14:08:16 +0100
Message-Id: <20231116130816.4932-1-zajec5@gmail.com>
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

This fixes typo and resolves following validation error:
arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pwm-fan: pwms: [[54, 0, 10000], [0]] is too long
        from schema $id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#

Fixes: c26f779a2295 ("arm64: dts: mt7986: add pwm-fan and cooling-maps to BPI-R3 dts")
Cc: Daniel Golle <daniel@makrotopia.org>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
index af4a4309bda4..ba65e3e72bf6 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
@@ -43,7 +43,7 @@ fan: pwm-fan {
 		#cooling-cells = <2>;
 		/* cooling level (0, 1, 2) - pwm inverted */
 		cooling-levels = <255 96 0>;
-		pwms = <&pwm 0 10000 0>;
+		pwms = <&pwm 0 10000>;
 		status = "okay";
 	};
 
-- 
2.35.3


