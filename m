Return-Path: <devicetree+bounces-242659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5B5C8DAB7
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 11:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F127A34BABB
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 10:01:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D5E329C6E;
	Thu, 27 Nov 2025 10:00:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HCfdwuGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D221C13B
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 10:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764237658; cv=none; b=NTPKuF+mxLyMeB0GHITfjW29/duMvE6tAeU3AAg5dam2KpuzSmdlmj928YOD5fjthzcE6IW+naWHPqMgVMaoQiVOXsqL16K1Sq/2Xowg7mqQiL+5qvgcipIdvf/YJ/Jw6A4wPbwi5Mp00VMHTacY2i1xVFkmjcJv6gq/EtiGYt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764237658; c=relaxed/simple;
	bh=xI4TGa3Cd79DsFwxoLL93nEI8+XXnA/lRKaFQB1Mxl8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=cC+9YJhc+CcimBRZeAbpDCbAjRDKd/ZvjdDk2+5LxsYqs1tFATgrz80+2H6JjT49rXBBN2h/C3LVZ9Y+ynj+ycu9M/4qRkXm+Tr1I4s3dB9WTrl6DA90Jif+/GjfOpHd5wqBa1Xbz5jSapS1z8x/9nLGdX74pDyL2c7D2VdxQpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HCfdwuGl; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-29853ec5b8cso8554595ad.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 02:00:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764237656; x=1764842456; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lXLMTwsVE5PrrxBMxsVCoUcLv2OfpkJJM3iox2q0QmM=;
        b=HCfdwuGl9klEb12bgA6Kxo7eTtFIYg3JMpSGL6ZCVYYm9J3HBXZgf9TtlTLo0LOu4B
         8Zv5qVXqAR6ALQ6bWdwztgZzpmqCn52JHMGjrH3fOQWfA+pI5OMnmrQ4/v7axfG0M416
         1IxpxijrFLe6dSXXsny0epoqoWzB0LZW+NBVk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764237656; x=1764842456;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lXLMTwsVE5PrrxBMxsVCoUcLv2OfpkJJM3iox2q0QmM=;
        b=RcGBv93dmzUPmlHR2BYhKpYCaNV4raUsfOMoUZT65nt69DEsQ5ItHiVEzQYUN8jh4e
         Ft/nkpnc1Y/qgJc68qbKp6m76L8nKEw7+LKWybbw/aB+92hHqjZheaaaN8z2DNrQOhjj
         xuS8JGGr7X9kRXyLpwmIa0uxzCR+2lplV0yR6zXw7ppV59feP1RuAk4V1vO2lJRFMNG/
         NoS42yLsD9PzjD5yz+x4V1E2N2nodhm81u4nYALfkv1w8KbK4r33B/avfNNhZxnr5N+y
         a/euNdrerMTk4rF+BYhFrIHhZlyyTFanTnnXOL0LGIocBFvxSHhjIZj/cCe0ZvPfYQrr
         nnuA==
X-Forwarded-Encrypted: i=1; AJvYcCXpfvOxN0EEiDtzTFlaiUa6OhQRAHa4g0V/f+UPZ9x5GiwKk05+elyxxTT7ql3Na2/qdP4yWfAAwNJE@vger.kernel.org
X-Gm-Message-State: AOJu0YyhOCzlea7zCY3+pXp3QS9TXTPEvssjaHITHYdxS7mSkqdT8O5k
	JXrPNYJr+B6jC6G46evFGLfVP654MTTd2ChkIHPDz/g9Ir9dk/DdwwEjqPlIV+N2v5Aoxbi3/0G
	OUi4=
X-Gm-Gg: ASbGncuQUAuq4cOs+TuSlaThxS8AUGdLrN4jcUNbWgx9srVeaIrkpogO4YFFqbpZgW1
	/OgLDBy+V+YYOBAVU31lY7uCJtV+ZqM7nQTEtudc+kz/mcEF2TLYOuptzV4xf0jVIFv/OBDX42P
	CEo6UL5nmIg5971GGLBjIgrG2D/eamCkeOUcOfAg2tYCyYiYK7Y2veXMajGjhOeb1kB77fJXRsj
	hLvI25dQOJMH86Jr+ltmOxn5HJ6EM4Bg8Qjx2hJIk00WfxopxrMZYHa2MvLg6Ve4LWkkbogeFDt
	twB6MMZVkH8sq7kqh9L9Q0oLOr3TXxWv8xJXEMyE5tMmB2Z5bvZPSwDJ93DJqDve+KSMFrptENj
	6Gug6Wlvf9JF2VkGgE2MfyURt7xUZ65PsHnqqKtA59JKNJ36nqpUntnq6XWg1n72KoQehFp9umb
	eSqAESiYjeD+zYyUjfscMId6uj/nJtmI0MSUOBIcJBHsnFTgxgMmovdns2NK/IB8+cXdvw
X-Google-Smtp-Source: AGHT+IHivfNnrfK3dtvJit5EMEyVA6t8fLK67j9PbneBRp9gDarid+L6oRuRF/o2DijnRZbB5oV9KA==
X-Received: by 2002:a17:902:e551:b0:295:3eb5:6de1 with SMTP id d9443c01a7336-29b6c684abbmr298506555ad.34.1764237655717;
        Thu, 27 Nov 2025 02:00:55 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:4917:2ae3:8ebd:4ff1])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb29fbbsm12490515ad.49.2025.11.27.02.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 02:00:55 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	soc@kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8195: Fix address range for JPEG decoder core 1
Date: Thu, 27 Nov 2025 18:00:42 +0800
Message-ID: <20251127100044.612825-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.487.g5c8c507ade-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The base address of JPEG decoder core 1 should start at 0x10000, and
have a size of 0x10000, i.e. it is right after core 0.

Instead the core has  the same base address as core 0, and with a crazy
large size. This looks like a mixup of address and size cells when the
ranges were converted.

This causes the kernel to fail to register the second core due to sysfs
name conflicts:

    sysfs: cannot create duplicate filename '/devices/platform/soc/soc:jpeg-decoder@1a040000/1a040000.jpgdec'

Fix up the address range.

Fixes: a9eac43d039f ("arm64: dts: mediatek: mt8195: Fix ranges for jpeg enc/decoder nodes")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
This was introduced in v6.18-rc1.

Maybe have the soc maintainers take this directly instead of waiting?

Also, I'm not sure if this error could mess up the JPEG decoder driver's
internal tracking.

 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index ec452d657031..c7adafaa8328 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -3067,7 +3067,7 @@ jpgdec@0,0 {
 
 			jpgdec@0,10000 {
 				compatible = "mediatek,mt8195-jpgdec-hw";
-				reg = <0 0 0x10000 0x10000>;/* JPGDEC_C1 */
+				reg = <0 0x10000 0 0x10000>;/* JPGDEC_C1 */
 				iommus = <&iommu_vdo M4U_PORT_L19_JPGDEC_WDMA0>,
 					 <&iommu_vdo M4U_PORT_L19_JPGDEC_BSDMA0>,
 					 <&iommu_vdo M4U_PORT_L19_JPGDEC_WDMA1>,
-- 
2.52.0.487.g5c8c507ade-goog


