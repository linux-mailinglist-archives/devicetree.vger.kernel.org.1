Return-Path: <devicetree+bounces-141852-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D242DA22CF7
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 13:31:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A5011889045
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 12:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 121711E47A3;
	Thu, 30 Jan 2025 12:31:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="DorLOpSm"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1E21B043A;
	Thu, 30 Jan 2025 12:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738240286; cv=none; b=K/wSGkAkMxSQRAOqml6WTTeF+F0nH/iTSWyeI6J9uX4sJ2n7deER0DdEHLfGforJuXdezLCrs76surQ4SvLrW+Q/PQIp/iWF3bTa3qoDPILS/iujitEL9PFvv274An4OjUox+YYdZDd1jEpdW//8ORiR54MNNmzO7YRrFlbouDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738240286; c=relaxed/simple;
	bh=93P5ZXHodgRz2/DZJHG52x9JGTE1DP1XAy3V1flSNRM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cbsMEwfq8G/Bq2ZNBHC0xFL2imvCgvxIWY65w7LxudYdX8SHKcV5zKsRVjfjb1jdgmGko6bGtz65A5zLMwoqJD3r8Gxx88WcOptkw1fO/TDoLEtixKGyqka21q5q3sQ37lnzZJVqTWaVzRXec8VE5/TojOVZy3O61h3Akl7ECg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=DorLOpSm; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1738240282;
	bh=93P5ZXHodgRz2/DZJHG52x9JGTE1DP1XAy3V1flSNRM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DorLOpSmA8H+QGiEPuWaTYVCcZPO2kA/fb228oMM2O1Aid7EgEXj36ZmYy9db8zFB
	 TTrKNMZStyx02apZdoaIQBD6TK3ur/o7u8+SHjRu1Qt3E5tmYqkidseVv3bCmmGgVY
	 7hq3H4rLnn3ZuHfUshPH18a19ou+Kk09WTQ4VG9LLPSVyJlzdEH6Lt3ZFg/uApnqxM
	 zUQNdO599Qfxwbelv3oPHfkwbNVUJy1wDl+15ZWtCDdTGinEpNQHEafurwVJWBhtIT
	 xAi1G32/VA7wMCZEX8+sW87Ss+6hgGov7UiIwgpZTo0K9WdDMxWJm0JT1ZHSmwrY1+
	 0vG377m4+Hypw==
Received: from yukiji.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 33CD717E10D3;
	Thu, 30 Jan 2025 13:31:21 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Thu, 30 Jan 2025 13:31:00 +0100
Subject: [PATCH v2 2/3] drm/panfrost: Add support for Mali on the MT8370
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250130-mt8370-enable-gpu-v2-2-c154d0815db5@collabora.com>
References: <20250130-mt8370-enable-gpu-v2-0-c154d0815db5@collabora.com>
In-Reply-To: <20250130-mt8370-enable-gpu-v2-0-c154d0815db5@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Steven Price <steven.price@arm.com>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738240278; l=1123;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=93P5ZXHodgRz2/DZJHG52x9JGTE1DP1XAy3V1flSNRM=;
 b=N6UtDwnG820Ja6QmEOtTIDM2xlq+nyy2jgencPUCTPXYODCgxJ/NgTlaFFdS7qvHKxw1tOEVt
 qujoDiMacIeCzr9WLEQ7R6quQVNICEYyPQ7e+4Frfuidy3rh32JkwJ3
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

Add a compatible for the MediaTek MT8370 SoC, with an
integrated ARM Mali G57 MC2 GPU (Valhall-JM, dual core),
with the same platform data as MT8186 (one regulator, two power
domains).

Reviewed-by: Steven Price <steven.price@arm.com>
Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 0f3935556ac761adcd80197d87e8e478df436fd5..7b7e9f6f620659a7fdcb5d907ebc4f01eca876e0 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -859,6 +859,7 @@ static const struct of_device_id dt_match[] = {
 	{ .compatible = "mediatek,mt8186-mali", .data = &mediatek_mt8186_data },
 	{ .compatible = "mediatek,mt8188-mali", .data = &mediatek_mt8188_data },
 	{ .compatible = "mediatek,mt8192-mali", .data = &mediatek_mt8192_data },
+	{ .compatible = "mediatek,mt8370-mali", .data = &mediatek_mt8186_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);

-- 
2.48.1


