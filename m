Return-Path: <devicetree+bounces-101171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 53297970BCD
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 04:32:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC8BEB20D5F
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 02:32:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6FC714295;
	Mon,  9 Sep 2024 02:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="AdQ4vhz9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C4414267
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 02:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725849123; cv=none; b=E1QFZ4aI+ysD9v/zK+0i8F4f1WNDP8jc/Ihplh7+TzGkio5eXqkPSnNZMo+UK6bgpYfBCEiClLCzgD7nuXF1yhQibR5mt0GMcrexLrTM/ADtDYzH7diyrUwjyl+QcMytcKiQc36Fqa3LYU4MRDjryJ79bv6Zj8oRd7UQZXGD4wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725849123; c=relaxed/simple;
	bh=EfOr3VUloNkzyd1jFObX0TIdqDg19AEy0ziFiOQcyQg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OACwJin1WebQUFDDcNP6ZBocKbi+Af3apx8gAYaQm9mk4qjyr2A5LJaJ2hm2dXWyaculFlZ11pyk2eSdjhdnj6Qx4qVEG5QEb0zn6j7WxqAVFd8jNzVpzCI5XLedq37ZiEoD+wCXozOHJ0h5LpvuDueWVgf5rA4pUJmZ515fynA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=AdQ4vhz9; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2da55ea8163so2705147a91.1
        for <devicetree@vger.kernel.org>; Sun, 08 Sep 2024 19:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725849121; x=1726453921; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h3jsBoK6osKU+9RLD62g9RUso5s5R8d15TnY03wmQ6c=;
        b=AdQ4vhz9GncSXqsJ6WKjzNrJdechL23gcPX4X2PxKqvRP+DcF7XW7ufrrCqhVuMo39
         1vIRwE94ncZM61c+dT0M1lGGsA597V/EP3eQwLVCunxGQKif4hBn8DP2n2n9RxgxOdB/
         qGJnwXlwHc7nZmaaRaJ1Ra9jITmvjXoroS8sloWZNSu6mkfuVUXmXyXskiSBude8EeT0
         UMlKA0r/MzU1dHfhFlqntUB0Q8RwQytOCGvOnynyUZNxCYR5Fwtx82bCKxI+yU1WhmY9
         mW+nIaoGWGNoes5nR4bby7fbF9O1nMW9POKYQDtqvO9t4/Y3qfTcrRzGKEB9EAKwTnTZ
         IkXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725849121; x=1726453921;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h3jsBoK6osKU+9RLD62g9RUso5s5R8d15TnY03wmQ6c=;
        b=L+3dH/EnWlxV73wNUd1h7d+kCxhLXms17VYaaqNklMnswtiofIR5fdtXAzPasJ1z5h
         E4Q7BzOIRq31Jgydp2njLVj5bZSo1YT3VM/9uOCQThAQEboTugtR3OxmJp7FClL+pVsU
         VwgUqfE+eQA5+NiBVD2QO+/Lb2xhZUXuvl26RrswzadXIWgRK7T9x+LVctGZwJyE0ioJ
         otDluQtL0cNn9NM41omQQpqYGCH85tUQgCRa5uE8iCqlsxCIlQfAqiUyoc5ysjj3WXAd
         ntLTo1yx2taApIJgMWKIvy11Enr1i1Fr8Kc0ZrkzM1glDPsz4LkAw2cbxZ+KcHA/dxg9
         6ClQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfxfDvaFCWaIhwnAPtmIt7/MK8fSFiABwx3VOhEfIvcJq9XE9IB+hysbxEuuaxl44l+Qa3d1xtyqfa@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuu3o/c+UuHpyEUhLeSQ9TAi0HqZh3CtoPRfnXFwnHKUHLwJrX
	qUaewcYidGaLo0Wz9S7s0a8yshVreC/vqzzocpaYWLTqhdiqDnyyh6fj874hOqY=
X-Google-Smtp-Source: AGHT+IFdVpSBGSpWYYHDlsrmgHjef/BjQGNN3o4DAAfwJWFtVeibofNSvovQsC/WeLsU5p/ooe4SLw==
X-Received: by 2002:a17:90a:be15:b0:2cc:ff56:5be1 with SMTP id 98e67ed59e1d1-2dad50831d1mr8627025a91.7.1725849121016;
        Sun, 08 Sep 2024 19:32:01 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db049873b0sm3323645a91.47.2024.09.08.19.31.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Sep 2024 19:32:00 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: hsinyi@chromium.org
Cc: angelogioacchino.delregno@collabora.com,
	cengjianeng@huaqin.corp-partner.google.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	hsinyi@google.com,
	knoxchiou@google.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	matthias.bgg@gmail.com,
	robh@kernel.org
Subject: [PATCH v5 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Mon,  9 Sep 2024 10:31:46 +0800
Message-Id: <20240909023148.1677936-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CAJMQK-imYrDTuycVzQxkfbkZuHehE8uwc+qS2w=UDShETsBvEw@mail.gmail.com>
References: <CAJMQK-imYrDTuycVzQxkfbkZuHehE8uwc+qS2w=UDShETsBvEw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v5 of the MT8186 Chromebook device tree series.
---
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


