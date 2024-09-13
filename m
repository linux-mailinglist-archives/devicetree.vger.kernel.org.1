Return-Path: <devicetree+bounces-102556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2642B97773A
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 05:15:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C3C871F21CBB
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 03:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6994D1411C7;
	Fri, 13 Sep 2024 03:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="CkLKGNUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D5D7C6D4
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 03:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726197320; cv=none; b=XwtvbM5mhQacQy64J9TB06SPobjcIuiqIjLOgtZpYw1TH2RaFAVtxMkixtV2n+cjS9EeQWD70IyZ0jv9tZAqjDiBJcxIJhW1eUi2sRDRG4uP20KP9D6h9rb2q4ZT29fdVw1DHfJGsn32wixArAWoltgFPemmgY8Q6JRtRbZAbXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726197320; c=relaxed/simple;
	bh=O1nRybY3WHILiizboxWZqhBDUZ1pmXpB4BtJYX4QUHk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=TU7bZ6pgFPZsGtCb3IOZJRuYCa/icR69CaciwIm6iKRNiYdZT87azuhlIGAORvNJv/80XRL9oRtSmydHaikvKlHQF7HyOSlM2hv3oUo6T2rMP8q25uXS+soFfrM2uBOHjovYk+5999m4GA45D7VpHtsW6onyUB/yqTGu938s/j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=CkLKGNUX; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2059204f448so15753975ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 20:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1726197318; x=1726802118; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TubZ7clM1MJ6sPd0lA2DkuHJ4eIzYwhY6qHr+nDS2JY=;
        b=CkLKGNUXjbg6KZ1FKcbBePFbd8AF+JT+Y4bP9ytCBgS7deWLafCQ8RGMDgwNesJa+t
         JwzDNqJBJUalmKr3LiTTVm9+Hgo5I8OJjUGS6T8omUECjsLjsouMExbgsSXPqgtp06yB
         iQTSs57g6RBQALO3jice0pDsMtzlDbTLCrhj8GyZ/tHxJNhLSaNGnl8TfP3KuidkYvni
         K/9mB49KcutunnbsNNczyCkUWqBhIy2pl89JOHLCrIM/d/u6AoJTik7hXcDpJZZ9d0v/
         oMBe+veEEJg7o9uFQigI0QV+gq8+P0HSpyOZhLFjVv5aRvCR/iRNmVUVY7qu3CdjQ3Yr
         udPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726197318; x=1726802118;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TubZ7clM1MJ6sPd0lA2DkuHJ4eIzYwhY6qHr+nDS2JY=;
        b=uLq2fb+olrmsUnZgcyEe3clovcUAnIy62WiWIU5tU4FSRitP8j6xJuJedT5KjKStda
         v2D4g4y6Cz7JYo/9tU7vM1rVbTFFDp5Vmx2KANTnvwRVVlNHXJXGEEUb0Kg/ufaLjyTz
         E9UdnKDBFczR8sc7SxtCBEXW6UAIE34wEXi3AgtV/a2C0AJ2YaXHmSZs/W6NH/E2EiU2
         7OMdeFYOIzeOGPqqEDeXVVMnpna8nrNsf06zsWNtqvvdsEXbdHA2tdenDy/mgAescGUA
         57UEcCdxaQ5KBH2mmgIjJf8IWeVhUJYLRqbMIWyxDgJtFVsmJ0e7MRaXsFBY591CkiOY
         p0RA==
X-Forwarded-Encrypted: i=1; AJvYcCUHUBWtsEQGoH4Y2/CDQz2EJfZcuvQZ15/6bSTXR6ZWIqsTHqL5elFQiGI1wAE6Jg7KIwLIQFgNOYz9@vger.kernel.org
X-Gm-Message-State: AOJu0YyuhS1plyMR4iAzFjjsfdR72sdzdEpz0zQ57XQHyRYqn4mfr7jI
	qMPwgBWOm96bIrR5S58MzPiJChs900Bjplt0XY+nLemIKEDD07Kj1gLhsyn6YbE=
X-Google-Smtp-Source: AGHT+IE+iazR4De+MBDM48Q6idkzARa1pEpWsipiV6SxZvqaRt2xeoupHSj0UJ9RkX/BCJ/hb43PSg==
X-Received: by 2002:a17:902:d2d1:b0:206:c5cf:9727 with SMTP id d9443c01a7336-2076e39a4d1mr73694465ad.31.1726197317886;
        Thu, 12 Sep 2024 20:15:17 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076af45432sm20382305ad.91.2024.09.12.20.15.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 20:15:16 -0700 (PDT)
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
Subject: [PATCH v7 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Fri, 13 Sep 2024 11:15:03 +0800
Message-Id: <20240913031505.372868-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v7 of the MT8186 Chromebook device tree series.
---
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

 .../devicetree/bindings/arm/mediatek.yaml     | 10 +++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 18 ++++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 22 ++++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++
 5 files changed, 96 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


