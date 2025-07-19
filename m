Return-Path: <devicetree+bounces-197841-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E3B0AFB5
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 14:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FD2B565198
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 12:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A3FF2343AE;
	Sat, 19 Jul 2025 12:11:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from srv01.abscue.de (abscue.de [89.58.28.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD6F226D1E;
	Sat, 19 Jul 2025 12:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=89.58.28.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752927101; cv=none; b=mPhORX2xSAeDRhB988Qm0uvzASra3dfAZg6c0eR5ng/lDrXwrjPl9J4X6APnPYuCZI+K7Xp4emxgaHLJmlYjNbifn4zhV2UkzWAVomLACfxLkmKhdI0wpGHozXFHtng7Y5JysCpGjOCTr/DinbghnDa0V67Ntm8PRu07uCzY9jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752927101; c=relaxed/simple;
	bh=CJ32DjOptoB7KvxuPypA+ror4zNwEHUflLxk4bWDq+s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ANRcwOnP1BcOpKiEFusb5Tc221URM0mQovtENnkp84+thOicgGHDbWe5a6xTcPYjoNOGR9NCXHv49d492yRIqDNC3+e6Js7RFK6Lm3UMzMtqCYR96sUIv+Pz2QFsN/cetUD6nzQHwUeiVoFUe+Q8Ese7rJ6bRbTSCh7NlAJiVEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de; spf=pass smtp.mailfrom=abscue.de; arc=none smtp.client-ip=89.58.28.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=abscue.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=abscue.de
Received: from srv01.abscue.de (localhost [127.0.0.1])
	by spamfilter.srv.local (Postfix) with ESMTP id D5E5B1C233E;
	Sat, 19 Jul 2025 14:11:35 +0200 (CEST)
X-Spam-Level: 
Received: from fluffy-mammal.metal.fwg-cag.de (unknown [IPv6:2001:9e8:cdf7:4000:ceae:3606:9020:cd4f])
	by srv01.abscue.de (Postfix) with ESMTPSA id 42A791C2341;
	Sat, 19 Jul 2025 14:11:35 +0200 (CEST)
From: =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Date: Sat, 19 Jul 2025 14:09:48 +0200
Subject: [PATCH 12/12] drm: sprd: select REGMAP in Kconfig
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250719-ums9230-drm-v1-12-e4344a05eb3d@abscue.de>
References: <20250719-ums9230-drm-v1-0-e4344a05eb3d@abscue.de>
In-Reply-To: <20250719-ums9230-drm-v1-0-e4344a05eb3d@abscue.de>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
 Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Chunyan Zhang <zhang.lyra@gmail.com>, Kevin Tang <kevin.tang@unisoc.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>
X-Mailer: b4 0.14.2

When compile-testing this driver with all other drivers disabled,
sprd_dsi.c fails to compile due to a missing definition of struct
regmap_bus. Ensure that this does not happen by declaring the
compile-time dependency on regmap in Kconfig.

Signed-off-by: Otto Pflüger <otto.pflueger@abscue.de>
---
 drivers/gpu/drm/sprd/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sprd/Kconfig b/drivers/gpu/drm/sprd/Kconfig
index 1afcdbf6f0ee3304f2297835241c9bb10d422154..828384d42c5aac4bf194558f22d9a77f7c693572 100644
--- a/drivers/gpu/drm/sprd/Kconfig
+++ b/drivers/gpu/drm/sprd/Kconfig
@@ -7,6 +7,7 @@ config DRM_SPRD
 	select DRM_GEM_DMA_HELPER
 	select DRM_KMS_HELPER
 	select DRM_MIPI_DSI
+	select REGMAP
 	select VIDEOMODE_HELPERS
 	help
 	  Choose this option if you have a Unisoc chipset.

-- 
2.50.0

