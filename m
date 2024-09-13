Return-Path: <devicetree+bounces-102542-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CB67D9776A0
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 94DBD28202E
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:55:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AEB78C1F;
	Fri, 13 Sep 2024 01:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="cS2v6l40"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0E6BA27
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 01:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726192517; cv=none; b=E+YiSnxPij9EmUx0U3JFsNFa3UE3XdI4OdgepQSuzAXBgA8+D/fyIFY752bX2oZb1mc543xtr0xOAn5lZcdrjZ1DfEku875EK0xhRlR8wG0cSumui6ORxr4wzQg6u+6Icwx9jhmj74drA+9naN+u/y9SSWzn3+Fdq+xr4rHae/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726192517; c=relaxed/simple;
	bh=UgE1yGDUQ+CbC/t2QIGqv5v6C/QuQxR7umJ8vrHCvJQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=gis8C0wMh4a7Fv/v4v+FBUiwDqaVWRDzeZ5Xl1Q2DS3wBNsAtWCoFkb2NRwX3HFLbCSzqWib3OOsJnj3mhdau59BQVQ2GZW8NN3AX+rfq33sGVEUoQ2rMcXicv5Br/iqZ94bpF/xYqjTlNiBgn6HbWxBB70LL2byBc0KMlF9n1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=cS2v6l40; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-206b9455460so13276395ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 18:55:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726192514; x=1726797314; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IMxkeNdrxiqikuKLTukYhJ/j/5AL+Bs96CDGSxnXGSg=;
        b=cS2v6l408n0xmb7VmScOarcYLsea4mC9mlg6g4eXsOyJtPI55R35A+qdvhW20uzK1C
         IX5BE6XAxFoVlBGD3Wmydln4f8Oj1fNgTinoNSDw+IRIFvnU16WTdFhKBKXED2F4b1z7
         Lf48A4kOZcQ2FUsO6eKzjJDNeJootBYAvlnBlhorgRRyxQ3PmvKFiSINe4IXKMskF9Hg
         eck4yQb/IXA9u2xijvqJvQRqDOAukFIEP1+0ulrVtgu+N0VH8c5GjPu2fAqM4TppBdkz
         aUoTs2bBrOG9XIoex0HhWkQ2z8wNQfXwbsf87X8+rtnKT07+w7/AclUXpfK91m8//rc+
         p/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726192514; x=1726797314;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IMxkeNdrxiqikuKLTukYhJ/j/5AL+Bs96CDGSxnXGSg=;
        b=h6fMDrteUf5Dw2AQPdLpfY1QyDCFzyEyGD3iSVxjER/wD/exknHO/JLaBE9/y4Ya/R
         Tge7+QgTOHu95xW+LSXmFaw/x9iqdSYwlOv3MnpikgEWHMOldLX31Awtr95XQqUaenIV
         5EFtII/Bpimeb5tgD4uNiFMqe8S2CC5HPnH8NW3pIX85KqE3f/H1HzCd1U/sbh6jhr6U
         Re/FQMNjmLk2CYQu8IAYiRpSD4pHkl6wsuC2JfLtWGHiYJrLjADAexmwWphRhCDk5xg6
         JvO+jQUMy052ghMPNzBRN2Ol99azORffyTNBK4mXSs8hNdEw/uzAEZIsGAWsKMWQPAMS
         kfww==
X-Forwarded-Encrypted: i=1; AJvYcCVGW4Eqqe1AgCV9+aAC+eKJCzjFpeVNKH35dzyRElGK88DOEWwr5Vqb4h0XiYai/38++wJAnvqthYDR@vger.kernel.org
X-Gm-Message-State: AOJu0Yzs3KlXpaXPuDJW/oeLWD/vwwiCLzxydYM7GfYW6atVIPWotooa
	CV/Vr3FRQK9VUWRP2SQ0Y627PwFmFW2uiDBAkDrKVuV6VapPca1iU7BjCE2fVUs=
X-Google-Smtp-Source: AGHT+IGxrtDK2oxIlkCa8nrZNGoU6o2v1wR+o7ZOWg02JmyUm3+u/KgHhFUU6pBBIaZ4YEIAqXAk3Q==
X-Received: by 2002:a17:903:32ce:b0:205:6121:1b2d with SMTP id d9443c01a7336-2074c5d24aamr135964765ad.3.1726192513808;
        Thu, 12 Sep 2024 18:55:13 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076af49210sm19896605ad.99.2024.09.12.18.55.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 18:55:13 -0700 (PDT)
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
Subject: [PATCH v6 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Fri, 13 Sep 2024 09:55:01 +0800
Message-Id: <20240913015503.4192806-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v6 of the MT8186 Chromebook device tree series.
---
Changes in v6:
- PATCH 2/2: Remove prototype sku.
- PATCH 2/2: Disable the other trackpad to enable one of them.
- Link to v5:https://lore.kernel.org/all/20240909023148.1677936-1-cengjianeng@huaqin.corp-partner.google.com/

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

 .../devicetree/bindings/arm/mediatek.yaml     | 10 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 23 ++++++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 27 ++++++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++
 5 files changed, 106 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


