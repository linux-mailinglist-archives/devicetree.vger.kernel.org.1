Return-Path: <devicetree+bounces-111405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D251399E9C2
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 14:26:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FF6E1C22A8F
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 12:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BA201EF083;
	Tue, 15 Oct 2024 12:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="RGo218E0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EC521EBFFF
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 12:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728995184; cv=none; b=PqD3tXYAJOfR72WmZ2o4NWDBg6hLA6frH54DjUMvWO3Xg/6b7TlUxjL+FN8v+UA5Bo/Gu99qCZP2Q+sXtDVnGlGLqm77YjxtjCHP+sLp6H1G0t8ScitO0l71Qadrdyv0WUVK84JxtWGbmtjg46smylTpRwLa4dxE3seXxf9PdIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728995184; c=relaxed/simple;
	bh=gChLEHUCAnqMN06YDXJelEvnMMv6kyMMOFwpvnoEE6w=;
	h=From:To:Cc:Subject:Date:Message-Id; b=K6tCNYN0pGMBEQaznRWYJj2dMuGGgktcUUduxEJ1YgtRgqeA0amH1W8un5HGTVLoRGZLFQwM0Ul7UvTV5lWEIcQiuHLkthDa342xCSXHoGtBweRLQqLucAVcmiGUdQyzLFNTZjUGm51h2TJ3fAt+KQSz65mqrcOgaNF0YtHe7RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=RGo218E0; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2e2d031c52aso434497a91.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 05:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1728995182; x=1729599982; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TAxqVXv28hN1E9g2AdYt07OnRxWBCBISUSonsrhZhRw=;
        b=RGo218E0NaLOh7uqqQBnv5iWQqOjQMfPbXoPfBXdXMOFstDClGP5G17Bs7UszbRrb7
         JvnhyAjmftOfnpfMqfTCLvuMYJQZmzRK7Uuu5EbpbXTEMeH2I/dZYwOiKQEEhCTYTfyL
         e2wKuCEZO/RAqwNUjzUaA7pQge03cVHItA2EAlLQ9aOhS7BGe8ww/kgIWA2oNS6QXKen
         EODd0AhvVsNn3rS6sKBwS1LCn/DK0YGUvLJycA2cxZa7nV9wlFuGIoE6Ui0aRMwIT8fL
         XfUgGkK7c5If3sNJlAWlk6sNWbCtCV9faO6dWIyevKBGf5QSlXaPqGFI1N7XYfvjOytc
         +ahA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728995182; x=1729599982;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TAxqVXv28hN1E9g2AdYt07OnRxWBCBISUSonsrhZhRw=;
        b=sms6HjoPWzw/0tFyA9SdNeRHp9p6krVuq5Ni9QI5982C2/NW3ptfeDKwbiaDwi709R
         Y99qgr6AAoo42kxZnI0d5jojJ+ciC7fzqq+ZJtx4BirwL4lFj0UCIt1s8I7KcHaQHh9R
         O58fWWJlAHnv3nGk6qlh3g1CVXM6AsDFQXI7vp4oiHx3wgWfeS17Rud4OCme1bvFd24w
         A5+CyDUim3GjURxxbNUfsHsO8eJo5FwWHnb24xCchFCM6CfHEDj1G3FNKIErmKA0qCp4
         tI8BHG1m2Jt5uZc8xJ5JHfQpb3lVfalchIMyJm3WxV0uXC5Nff29+0XjnbMLwas8lUUO
         dSEg==
X-Gm-Message-State: AOJu0YwL62JUa/W429Q4Xpkr/JOKv7uHYdRly2412ikSKrua+YnIjcJ0
	FY8u5R6ovrrqq71XGiekTrjU5cDRA9mfSafCLBpJwuS9pYqvThdbO77f8clANVK1+nGIldxkJZ0
	y
X-Google-Smtp-Source: AGHT+IEGHlpnJAZtdipLy3VlbZOb3D+QyT0Utpz7dB0pTEMkZhLWJL4iV3YD01cqEygPQrp+ZAwIVQ==
X-Received: by 2002:a17:90b:1d01:b0:2e3:1af7:6ead with SMTP id 98e67ed59e1d1-2e31af76f40mr5840571a91.5.1728995182180;
        Tue, 15 Oct 2024 05:26:22 -0700 (PDT)
Received: from ubuntu.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e392e8cdc7sm1592844a91.10.2024.10.15.05.26.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 05:26:21 -0700 (PDT)
From: Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	wenst@chromium.org,
	hsinyi@chromium.org,
	rafal@milecki.pl,
	macpaul.lin@mediatek.com,
	sean.wang@mediatek.com,
	Zhengqiao Xia <xiazhengqiao@huaqin.corp-partner.google.com>
Subject: [PATCH v1 0/3] Add MT8186 Chinchou Chromebooks
Date: Tue, 15 Oct 2024 20:26:05 +0800
Message-Id: <20241015122608.24569-1-xiazhengqiao@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

MT8186 chinchou, known as ASUS Chromebook CZ12 Flip, is a
MT8186 based laptop. It is based on the "corsola" design.
It includes chinchou and chinchou360, including LTE, stylus,
touchscreen combinations.

Zhengqiao Xia (3):
  dt-bindings: arm: mediatek: Add MT8186 Chinchou Chromebook
  arm64: dts: mediatek: Add MT8186 Chinchou Chromebooks
  arm64: dts: mediatek: Add exton node for DP bridge

 .../devicetree/bindings/arm/mediatek.yaml     |  26 ++
 arch/arm64/boot/dts/mediatek/Makefile         |   3 +
 .../mediatek/mt8186-corsola-chinchou-sku0.dts |  18 ++
 .../mediatek/mt8186-corsola-chinchou-sku1.dts |  34 ++
 .../mt8186-corsola-chinchou-sku16.dts         |  28 ++
 .../dts/mediatek/mt8186-corsola-chinchou.dtsi | 296 ++++++++++++++++++
 .../boot/dts/mediatek/mt8186-corsola.dtsi     |   6 +
 7 files changed, 411 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou-sku16.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-chinchou.dtsi

-- 
2.17.1


