Return-Path: <devicetree+bounces-100768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BCBA196EEA2
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 10:57:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 666CE1F24F11
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 08:57:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA224158538;
	Fri,  6 Sep 2024 08:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="u1Dy4FgC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3942C53376
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 08:57:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725613073; cv=none; b=jMawqAqMqhsixsH2jRAVIThtmSJiSqixFQkREqLZZzPvkpRZtD0qLGmknVU5kzeEeTPJbm4pcV2vOTsJWfxCHs12X4XjP4wMrwifvn797Y64a/NSAKF/bkSbK0xp8LL3Ucb6Ma+DAfZnlZSAmPWKNY6eyXcfryHOyjAJ5k/HlLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725613073; c=relaxed/simple;
	bh=F+RwEAES7l1bbdWXS7Y9yutczby/1++9KHgAU9AUAYA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Czesup1gxoybUcwGuWVhOMlz0ieTb92w8iXYpJwj2q0vk4gvOYMMZSUTS48arvYqkNi03tleq5S41H7/UFScN5HTf+sJVbNoQSFJvmim27WpBbWp8sJUun7UPKFo4qy3/caDWFzm3kvymNwnSj1Y3QolGmawdVCmbebjAIFXI5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=u1Dy4FgC; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-277efdcfa63so1026359fac.2
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 01:57:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725613071; x=1726217871; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HGUemR1VhN2nMqLUgi9zXLGIZPomuw+no6hZxV3BaX0=;
        b=u1Dy4FgCuiwZuJEmJqg3WHUAO6BWQiEda7yRlGnlwbp0NVzs5P1M0UBcjoiJW5DhuC
         PgcV2tcmXEweBUy6IN+gYdQJ+osFu1x/g2ZSOboL42iiUtJVDzb2WnNeKlxQGl1xSdvK
         xIPUxsdzW3VEbl93Cw4DxLfSXYNZLYbRxU372/lpQZernVKw7dAF5UyuWa30G8PpEAoq
         9dyCOqtjyD9gcJQ7N5gCC441Wa5xn73NhPGf21WxVrCf5W524yPnkGSZgz7Fn/PpeEQd
         gMOS/Uow9aXgtlpZ1xt+GOwj2kFeCBsLXD5EVeR5GR3YimJbDxPwipyCC5BacdgkCzHP
         dE7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725613071; x=1726217871;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HGUemR1VhN2nMqLUgi9zXLGIZPomuw+no6hZxV3BaX0=;
        b=dBpBoxMChdRwgpSo7ecWxcd1vIZPllMTSMP7wfcYquiMap7COPR1zrORoNc+7n2FFr
         GxIlzYvCi7ur5bmjZvijX9ekGUlB7Y/dlARC4dopnCMbrvzfJj9AfdauyrDqRyuymMwJ
         d7pORcO2r8k+x82l1yVXdQ7DkBC8yp41y5NTZ2t4k2V7xWZtLtkndAd8KWN7I4yt7vXm
         YusCjrsVs6sASVwXPeju34VqlUzl5zp5IW2NIp5KE5VB1I0zDzBFaA0TmwrLPValrJTH
         AFP8EyYJRtt4wpBVWHp3OVvr2see27KN50/BMVhsPTElEI9K3NqJIv9D/MlQ0O19jcbi
         IWHg==
X-Forwarded-Encrypted: i=1; AJvYcCWMo9O3m9jJySqsdd2uLH0ZMuJqTJgTfZDjYINtSyzMyLQnmSEWxgFaRFHmo0u10ABM3d6fw/3dwfkv@vger.kernel.org
X-Gm-Message-State: AOJu0YxgR32QdznGm8uy0lblxjPYJ+UuUohPvuG8pIX+qHf8eTvyyIgP
	Fz3jPjoZKgevidc755J1fGDNymclA7H8cTwdfqrpAI0+WYdeeCqTzA94Px6KPLo=
X-Google-Smtp-Source: AGHT+IFk6WA0QFBBPEfr+oxwj7x0SWhji/tk64+zlRIENA9+hoq0FUcNrJY4D3BBYjbPQUuMA8Ocbw==
X-Received: by 2002:a05:6870:8289:b0:260:f43e:7d89 with SMTP id 586e51a60fabf-27b82db9750mr1951434fac.2.1725613071057;
        Fri, 06 Sep 2024 01:57:51 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71798286219sm1439166b3a.57.2024.09.06.01.57.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Sep 2024 01:57:50 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v4 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Fri,  6 Sep 2024 16:57:37 +0800
Message-Id: <20240906085739.1322676-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v4 of the MT8186 Chromebook device tree series.
---
Changes in v4:
- PATCH 1/2: Add more info for Ponyta custom label in commit.
- Link to v3:https://lore.kernel.org/all/20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v3:
- PATCH 0/2: Add the modify records.
- PATCH 1/2: Modify lable to label.
- Link to v2:https://lore.kernel.org/all/20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 2/2: Modify the dtb name without rev2.
- Link to v1:https://lore.kernel.org/all/20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com/

Jianeng Ceng (2):
  dt-bindings: arm: mediatek: Add MT8186 Ponyta Chromebook
  arm64: dts: mediatek: Add MT8186 Ponyta Chromebooks

 .../devicetree/bindings/arm/mediatek.yaml     | 11 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 24 ++++++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 27 ++++++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++
 5 files changed, 108 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


