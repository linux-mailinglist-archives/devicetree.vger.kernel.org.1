Return-Path: <devicetree+bounces-169836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9434FA985BC
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:37:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 771531894BE2
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 09:37:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA5CD25C82E;
	Wed, 23 Apr 2025 09:36:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Dbhj7gOF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F1022F76E
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 09:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745401016; cv=none; b=spzHiJP9JxKcru2R09l1yE1CKrEpPFny4v52Ee5SM4lW3M2M+s5u46ai6h4xyO5B3mn8PDzAqS8FxagK/lE95OvG32sNkSueoyQViIpy3lPFoisxyfTlgW7/ZJumc+NWuIlsuFpcRrrp7rzqaVFzDUp1a9u4S4LaIxRt0wGbyC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745401016; c=relaxed/simple;
	bh=ay9u22d4cvFKC85mIYrra57bfWbo2XoJZcsvh3N3gJ8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=KtDDxsgCi1jWZGzwIOHE7swTKCVTHy0nBSBNRe21D7I886A8n6YAXSdRGnfZcDRnfS9+eu65uNPMyGYsrzJqb+rOJ8gdRFMc4FDLsUWMmMwBn5jf/bMtrBl6/1lBJZUb31DoA5zv3XU2T1hHMHpgfMlyj42hBgxLOCWNOi2uINc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Dbhj7gOF; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-227d6b530d8so64555925ad.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 02:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1745401014; x=1746005814; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+QxK+Tc2ZVbe+5BePsqof8LIo5Vk1Mj0GQ50Wfpr8bE=;
        b=Dbhj7gOFV+B34YuXHtX9JuGgWgkuefUxRvKYSJhEw9ZILYOljTiMRbs9wRm/erbg/i
         +I+WS+jF/WokutrD4Jga4qdFQSTmwV4CwCBbe1VXkzhDmM5sObpq8uwZJM7hmNz2lb5S
         UTmdDdvjIYg+chSeQKeRiksAd51HF4Fr+O+by7oZlxTFilCV+qlcNTWeAZpXDhTyYnv4
         bH3TqSxMUmzGfoiQAyjRKMZesbYjEgKQQRe+Pjv+rHOXxjtoc6xWWB4dW2WzUasg3FfU
         8dcuMwOLpvByJDoOSA7TLBqVVOSRSp5amG8zN0lBb468MjCGT7v3LqXkIiLOi3P1Ghh8
         3W2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745401014; x=1746005814;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+QxK+Tc2ZVbe+5BePsqof8LIo5Vk1Mj0GQ50Wfpr8bE=;
        b=iQvQpQ7tcdhaTPvxDbU2JLMspZ3Nfna0us1mHXFP/knmpmSUmlLYn5V8NftvjbjXmj
         2prgM3Spul3VFBimJ1AP9C73YiupctdSI13JP3Mkr96Q2yoE+K3SYrkzmVvJpWYag57m
         zzngG6A0yjgUBICyxkbfb6aWlaZDwVD5uCnUAmEPwAHqP0ATxC/7grmNdD51wV4FVpsZ
         NRuhYuXc9ooUswKfUjlJZxttlW38ge39HGQ5Fbv3/ZmFrL2caL9wZ/HRBM+z22LReGNg
         YPeWKYyOaLz+g0WW45veU84PA7wcja1O295KjwIvMY14DnVuBr4KIvMWTjqx0k8GHnWD
         9OUg==
X-Forwarded-Encrypted: i=1; AJvYcCVolarirEp3rSdOUW4LPX0lt6LZlf/PNAL59MoApZPhpEouteGeaBUo4HCZqYj2U63sLa/RZO9DIIP/@vger.kernel.org
X-Gm-Message-State: AOJu0YwIph5oMu8EYCXciiN2369za+AB+ToY8/oBDDgqUZXOQt8WbV+E
	0TtSArKs03xOXRPLqowgiJ5b9hLal8ETnAQ5pF1uKT0tA4UBsCiR9sZqmFeJMJk=
X-Gm-Gg: ASbGnctpBoJPdn8sPDUInjIkDchVDwmNCLQxp2n2NZhsDC+Ix1NKvcf3W/Zwx59LOlx
	EXh6aL27QEVxLzjX+YEd0G2FlC/hJAOpFNHwVqYcUV51SXttQ+Alvj0Xqn5L6yA2DAs2RKfIf/p
	Ifv/zu44A66rfAcqe1OSpWt2zm5vzIxsMt4O4ev0ISQu06+ZUQTUakkH7IfL8OLAUoclP7yIwMv
	Aw3bNFk0+CJo9KPIjZlcoUZ7S+DXLLLZZaGM3pNFTgLIVU8HpLBcIcQvHKFyimjD8EQyuEAntrR
	drEOvD+AxB4g+J3QVan6q7qVhb7/DoG59IRU2Yj+5zL1zmuGIGh2K4prgEkPIv4qthX4+8y0aXs
	=
X-Google-Smtp-Source: AGHT+IFGuOW6Tpkgou6NY/aO5b7J0ZgNyZb2L7+1Em7PC2gecYR8PaSxzzzBVlry/acNwbDrg5EeYA==
X-Received: by 2002:a17:903:3c43:b0:223:501c:7576 with SMTP id d9443c01a7336-22c53583deamr299094675ad.12.1745401014467;
        Wed, 23 Apr 2025 02:36:54 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c50ecec54sm99557885ad.168.2025.04.23.02.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 02:36:54 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com,
	angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v10 0/2]
Date: Wed, 23 Apr 2025 17:36:45 +0800
Message-Id: <20250423093647.4074135-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v10 of the MT8186 Chromebook device tree series.
---
Changes in v10:
- PATCH 1/2: Add enum for ponyta sku.
- Link to v9:https://lore.kernel.org/all/20250328094034.3400233-2-cengjianeng@huaqin.corp-partner.google.com/

Changes in v9:
- PATCH 2/2: Add sound model to fix the warning.
- Link to v8:https://lore.kernel.org/all/20240914063122.1622196-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v8:
- PATCH 1/2: Remove custom label.
- PATCH 2/2: Change the commit about ponyta.
- Link to v7:https://lore.kernel.org/all/20240913031505.372868-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v7:
- PATCH 2/2: Remove prototype sku.
- PATCH 2/2: Disable the other trackpad to enable one of them.
- Link to v5:https://lore.kernel.org/all/20240913015503.4192806-1-cengjianeng@huaqin.corp-partner.google.com/

Changes in v6:
- No change.

Changes in v5:
- PATCH 1/2: Remove sku2147483647.
- PATCH 2/2: Remove sku2147483647.
- Link to v4:https://lore.kernel.org/all/20240906085739.1322676-1-cengjianeng@huaqin.corp-partner.google.com/

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

 .../devicetree/bindings/arm/mediatek.yaml     | 13 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 18 +++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 22 +++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 49 +++++++++++++++++++
 5 files changed, 104 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


