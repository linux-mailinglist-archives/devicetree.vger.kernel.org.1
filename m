Return-Path: <devicetree+bounces-139047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84885A13C31
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:27:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 487A63A25AB
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:27:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E542722B8D0;
	Thu, 16 Jan 2025 14:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="hnpwB10o"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EB422B598;
	Thu, 16 Jan 2025 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737037605; cv=none; b=m7eBovpJFA2mJ1X83CaVx8JkOVxzmdgZ1at4YXuGfVM2k97ABTIXbtWzoAxPT5MWLvocfz2/8V4qll5n/sIeXlnUig5eCeBGJH97krVo3+4UYCrTJeAbEe7WQn3kAcfX42op29Mo4dMUGo5OgR3dhxUKx6Vn/nRKJ00zA8crJmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737037605; c=relaxed/simple;
	bh=D8xwpyjZ9J6n0Ug0JC0bsR09ktmpfFbgojqTtTCsimw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BFjmdfxCi24rJQ/D4MO5yBYFo88F3BECIDpGZ/VZ0DEZbyyKoukA7x7yd3+CKcIwIVmEg1edjdNrKrxC8RRDPTPDqzaxzDYk0o46HesDOG5Zvj3UrNRQKOXSAjN4P7wFuZD9U8Piu0XktMDyRt++AspvOGGgDYjwayvP/aaFw/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=hnpwB10o; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737037602;
	bh=D8xwpyjZ9J6n0Ug0JC0bsR09ktmpfFbgojqTtTCsimw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=hnpwB10oFf10vvLPJDnp6Gz4aUoMbk4CIFL0k8EvYZokpj6RanPPBEqLaZIC9/IK1
	 3UkAYje3mnjX/6a1nS402vBdQNYaq8oZA9YpCN6kJlXUYqa4IgsANj9QNGyulWarqW
	 ABCijlzf/EBtwJswRmx87W6hg9n0eItv4hDh5oU4Sw2UUPa2FHtCxWg2P3VB8e/HO9
	 APG1VktnX41csm8W3VnI6i0D/rrqeBl5gL3buKcDGREbIK4qRO0l61gzTAhoLMkyCI
	 sUqp4YrKF35hDtyp8bbLpmNF5vcsGYjiK+rpp7ZOb0MfdsdFehO0MXGrLoB4XTQ9kZ
	 1SEudfD6TVJ0w==
Received: from fedora.home (lfbn-tou-1-1147-231.w90-76.abo.wanadoo.fr [90.76.208.231])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: laeyraud)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4B16717E0F75;
	Thu, 16 Jan 2025 15:26:41 +0100 (CET)
From: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Date: Thu, 16 Jan 2025 15:25:58 +0100
Subject: [PATCH 2/3] drm/panfrost: Add support for Mali on the MT8370 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250116-mt8370-enable-gpu-v1-2-0a6b78e925c8@collabora.com>
References: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
In-Reply-To: <20250116-mt8370-enable-gpu-v1-0-0a6b78e925c8@collabora.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737037598; l=1890;
 i=louisalexis.eyraud@collabora.com; s=20250113; h=from:subject:message-id;
 bh=D8xwpyjZ9J6n0Ug0JC0bsR09ktmpfFbgojqTtTCsimw=;
 b=envH7p+Ko8PBRZPwLmK+n7lslwoc9tRVDfNeh8MfNhxSq9NM8LDTJPC1M78qLRu/tXxGEjkYr
 30TByGzgJdrByZ+ThSm+C3aKd/ovnZiAB9zjLt/YyrknCUuG2bGQvKi
X-Developer-Key: i=louisalexis.eyraud@collabora.com; a=ed25519;
 pk=CHFBDB2Kqh4EHc6JIqFn69GhxJJAzc0Zr4e8QxtumuM=

This commit adds a compatible for the MediaTek MT8370 SoC, with an
integrated ARM Mali G57 MC2 GPU (Valhall-JM, dual core), and adds
platform data using the same supplies and the same power domain lists
as MT8186 (one regulator, two power domains).

Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 0f3935556ac761adcd80197d87e8e478df436fd5..1d51b64ed0f0660cc95263a289d5dad204540cfd 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -837,6 +837,15 @@ static const struct panfrost_compatible mediatek_mt8192_data = {
 	.pm_features = BIT(GPU_PM_CLK_DIS) | BIT(GPU_PM_VREG_OFF),
 };
 
+/* MT8370 uses the same power domains and power supplies as MT8186 */
+static const struct panfrost_compatible mediatek_mt8370_data = {
+	.num_supplies = ARRAY_SIZE(mediatek_mt8183_b_supplies) - 1,
+	.supply_names = mediatek_mt8183_b_supplies,
+	.num_pm_domains = ARRAY_SIZE(mediatek_mt8186_pm_domains),
+	.pm_domain_names = mediatek_mt8186_pm_domains,
+	.pm_features = BIT(GPU_PM_CLK_DIS) | BIT(GPU_PM_VREG_OFF),
+};
+
 static const struct of_device_id dt_match[] = {
 	/* Set first to probe before the generic compatibles */
 	{ .compatible = "amlogic,meson-gxm-mali",
@@ -859,6 +868,7 @@ static const struct of_device_id dt_match[] = {
 	{ .compatible = "mediatek,mt8186-mali", .data = &mediatek_mt8186_data },
 	{ .compatible = "mediatek,mt8188-mali", .data = &mediatek_mt8188_data },
 	{ .compatible = "mediatek,mt8192-mali", .data = &mediatek_mt8192_data },
+	{ .compatible = "mediatek,mt8370-mali", .data = &mediatek_mt8370_data },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);

-- 
2.48.0


