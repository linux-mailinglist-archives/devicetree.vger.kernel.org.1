Return-Path: <devicetree+bounces-136487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F028A05571
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:34:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 434F11887F56
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 08:34:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B8B1EB9F8;
	Wed,  8 Jan 2025 08:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fZUm2b2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1F21E32DA
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 08:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736325273; cv=none; b=ZhZTjrC0K5aD6Pp/osgbYRkeBal0Dg55Mn+vVBaVQfcvTFb3r/OEwAYEeCkmXIMAV9VoOKdUrquDWO0NVbM0Cb2zY5fT7aLwWlZrfgwCc+/dgQMQ4uvIyIdVxDwTOTo/znXwY9Yxgj7/UZ4aBfHJD1UztUAITZxz/8nRyhPUwKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736325273; c=relaxed/simple;
	bh=XEuVxeYxilRGUzODNmGYr/WhJeM6SI0madWdpZlJ1pI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Bx+E6EZd7A8mkccc1KjWS+6lAS/PsfpC5b4N4dDbVY2F0JsNnYXcjQenNrsWfhHOKxFk+KDjacTc+odIQFuw9tQBVCooPRnryoHNJQCbLk3UkCexDZ8e7/1EBN48SZ2c98KCeEjzXIeYNItutbMRZ32VsOsr3Oe23DnxjkIH/o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fZUm2b2U; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-21631789fcdso7588945ad.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 00:34:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736325271; x=1736930071; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6hfaIU/yPmRs9H27LP1GQSu+5nTkg84M2KD+Fv53tNQ=;
        b=fZUm2b2UP+NzNf13VOjm25tmlMMVB6KR5prmzGBxeMvimvS31uK7ZXVxJ9Dm5ghVnG
         QCIBARMN3mDyD8fjknAS1KfDfVCIM+ZapGXRA0VZ59KQminP57XNmYLswgKwe6NXqQ0a
         II5HeUQAbaLxVIo8ARZYHlvgA3O/+kf5pzYEU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736325271; x=1736930071;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6hfaIU/yPmRs9H27LP1GQSu+5nTkg84M2KD+Fv53tNQ=;
        b=QNUjQyT3NVAovxMxK54AKBX8LpKGr4V7QRilAi158b4o4R1IYhSnwTFXWHS9XCT1Bw
         whAJq+oDps47nqA/gdSYtizlmi8foLw2VDm1sidqseVZwoZ1aWkQHFBBO1YqPUXtrh6h
         Nx8s06Zp2IEdCwsNGPIAB7AddYSFvhYncJnImtEpf7LHbK5Wv/jZq2AWRLZfs0x3oaoS
         QsOg+lXK2d7AdHz3UjOh4eohoPnOZnyweHZ8guV6izDlEFcAKx4CPQFk6zWkkV7Ec5Ch
         WedfIPWryE5unzKhNUIDoru12sJDrvJ58nf06F349VwxTiJvug5G2Wi2Tnmbu/2pcrZH
         opPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVfzpSxB18gcDCfpU+ynwxHAUr3iuQKX63g+gYX4lX3+b1xAtqLmM1ZTZVT+zhpUV7yUO7Xa3FzgjZy@vger.kernel.org
X-Gm-Message-State: AOJu0YwkLKxhuXuTJzlInC5tK+FwAwtZgrrauiyq0xNyWmqk5L9fBfI6
	/FY/W7kd83nb2hLNiS4sYvJowuj5fI9XKcsCvKxLmYB07kcSMdLVERHuy4+31w==
X-Gm-Gg: ASbGncucYyn7hFQ+1rwULKL62G5HU/4W2yIMEVy/Ds59qu7/d+mKSKBTWX2TqV7QAlF
	8f70lTx+qel1x33EXMlQqgspzcVqcGeMHlmjYMoHDFrdVoR4GqhzAfCAGYwDsIyfki++3eLoo3g
	A9ztsysHo5L5a+fiYoiOgt0HCg+KvXtsgguKqHilKhIMwEj5xc0NVOfnQFnjIeHstHBuVdl4hla
	4aolGmr+LoQkDOTSbP3EsDvFNveWlYU4bnh5RMyeeqKrMf8ubyNdmJu/zXpyRNClZAP5ShC4Qc=
X-Google-Smtp-Source: AGHT+IHh5Ox0Chj79W0aML3FVEC2y3iYMrkJc9FjsPLlxqd39yrbKX0TlyMbXPcw3G6R3PveYRKL4A==
X-Received: by 2002:a05:6a00:aa05:b0:724:db17:f975 with SMTP id d2e1a72fcca58-72d2174e8a3mr3807524b3a.12.1736325271398;
        Wed, 08 Jan 2025 00:34:31 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:511d:2d5f:1021:f78f])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8361b7sm34602275b3a.74.2025.01.08.00.34.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 00:34:31 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	YH Huang <yh.huang@mediatek.com>,
	stable@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: mediatek: mt8173: Fix disp-pwm compatible string
Date: Wed,  8 Jan 2025 16:34:22 +0800
Message-ID: <20250108083424.2732375-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20250108083424.2732375-1-wenst@chromium.org>
References: <20250108083424.2732375-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The MT8173 disp-pwm device should have only one compatible string, based
on the following DT validation error:

    arch/arm64/boot/dts/mediatek/mt8173-elm.dtb: pwm@1401e000: compatible: 'oneOf' conditional failed, one must be fixed:
	    ['mediatek,mt8173-disp-pwm', 'mediatek,mt6595-disp-pwm'] is too long
	    'mediatek,mt8173-disp-pwm' is not one of ['mediatek,mt6795-disp-pwm', 'mediatek,mt8167-disp-pwm']
	    'mediatek,mt8173-disp-pwm' is not one of ['mediatek,mt8186-disp-pwm', 'mediatek,mt8188-disp-pwm', 'mediatek,mt8192-disp-pwm', 'mediatek,mt8195-disp-pwm', 'mediatek,mt8365-disp-pwm']
	    'mediatek,mt8173-disp-pwm' was expected
	    'mediatek,mt8183-disp-pwm' was expected
	    from schema $id: http://devicetree.org/schemas/pwm/mediatek,pwm-disp.yaml#
    arch/arm64/boot/dts/mediatek/mt8173-elm.dtb: pwm@1401f000: compatible: 'oneOf' conditional failed, one must be fixed:
	    ['mediatek,mt8173-disp-pwm', 'mediatek,mt6595-disp-pwm'] is too long
	    'mediatek,mt8173-disp-pwm' is not one of ['mediatek,mt6795-disp-pwm', 'mediatek,mt8167-disp-pwm']
	    'mediatek,mt8173-disp-pwm' is not one of ['mediatek,mt8186-disp-pwm', 'mediatek,mt8188-disp-pwm', 'mediatek,mt8192-disp-pwm', 'mediatek,mt8195-disp-pwm', 'mediatek,mt8365-disp-pwm']
	    'mediatek,mt8173-disp-pwm' was expected
	    'mediatek,mt8183-disp-pwm' was expected
	    from schema $id: http://devicetree.org/schemas/pwm/mediatek,pwm-disp.yaml#

Drop the extra "mediatek,mt6595-disp-pwm" compatible string.

Fixes: 61aee9342514 ("arm64: dts: mt8173: add MT8173 display PWM driver support node")
Cc: YH Huang <yh.huang@mediatek.com>
Cc: <stable@vger.kernel.org> # v4.5+
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
index 3458be7f7f61..f49ec7495906 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
@@ -1255,8 +1255,7 @@ dpi0_out: endpoint {
 		};
 
 		pwm0: pwm@1401e000 {
-			compatible = "mediatek,mt8173-disp-pwm",
-				     "mediatek,mt6595-disp-pwm";
+			compatible = "mediatek,mt8173-disp-pwm";
 			reg = <0 0x1401e000 0 0x1000>;
 			#pwm-cells = <2>;
 			clocks = <&mmsys CLK_MM_DISP_PWM026M>,
@@ -1266,8 +1265,7 @@ pwm0: pwm@1401e000 {
 		};
 
 		pwm1: pwm@1401f000 {
-			compatible = "mediatek,mt8173-disp-pwm",
-				     "mediatek,mt6595-disp-pwm";
+			compatible = "mediatek,mt8173-disp-pwm";
 			reg = <0 0x1401f000 0 0x1000>;
 			#pwm-cells = <2>;
 			clocks = <&mmsys CLK_MM_DISP_PWM126M>,
-- 
2.47.1.613.gc27f4b7a9f-goog


