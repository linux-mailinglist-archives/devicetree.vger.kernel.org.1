Return-Path: <devicetree+bounces-99815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF7196B454
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:21:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E20E1C24CC3
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 08:21:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2B412C81F;
	Wed,  4 Sep 2024 08:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="oKaymwrX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13194155333
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 08:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725437715; cv=none; b=seVv+jSbz6gqr3UefOfpkf5f40x2Cd+tIP/dgEz27nzf31Agsy5aa/ddpK52mK+OwPF6JPfF2g4a7/P2ScOy4KzGoSkCdodT13BJAsrqojM0XNU+mwdaGNzKAGJ4EiXQLZ3woqMVaDB/RRnVD9xkG/811kRGl9Vb9BGaInmXFR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725437715; c=relaxed/simple;
	bh=Nj45w+G+TO1Z6Higf3RO95zlGzd8ecq4uKKPC6pMGDI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DixdZFo19t5u8iHaFeFPfER3ctHmWEBlDF0HU7sNaCwheBPXZTaKSGCDZRRY3sVIlq3Xc6awVA5Ptl5DalrmZRfxHMyQPhhWTON9VKjkLMKXEFrAz3/5NYqREy7PSgYhSrxd6wtkB/YOSgR2t22jSV+wLK0E9A8bGqZzXziKs2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=oKaymwrX; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7d4f2e1d11cso436810a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 01:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725437713; x=1726042513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3Vg5PX8kGrMXGtA5vCBEf0DJJleopQ7dF/auLyYJl/E=;
        b=oKaymwrXa0DSBFJ7DjiOm7WlWYpTszF0z+HvNzAizaBFNW7yr7tgD3qflMxX+6VxoS
         wCXf297C74EvGt68DsFO+WZuYQ8h7Ybc0CRNiP7Si/ihrbQN7qIjONSw744Ec1YBB4zV
         2l1fIQPs7aquLwXR6DSkXjP+BhYTvmmbuWjXeI1cbCegXRyz1RFCx2kfswjZX3umJ8oY
         80LvK+3Kh/WrKHuQkrgXJrhL4gcf3B2rchIu4bCNvUR5YhXjaCgD6iZPbohFj+L67NpR
         finLel+t4NgyZjhndnx4/PlFo6InehscB7bK/KUhDf+3EUjbIpQhgT7hOosbls1lr492
         9D3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725437713; x=1726042513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Vg5PX8kGrMXGtA5vCBEf0DJJleopQ7dF/auLyYJl/E=;
        b=tYOGbL+m5TMGzEa1hS3WcjFNpjiaa+Lr5KoIAlmyUZ9BucPPCRamGYXD43adhG6tJx
         ToEkGmDYpF9dZzLEKkzn0c1LW0gKiGTI5+Dzg8XyQ8kQCH1O6HHe6hEAKPlzr4ShBP0f
         sgwUxmYne3rA2finidPL85tBFlRHRR8Y7oGrIm4x9L1SF3ruGgg66cFHaGlsmuT3J+Sv
         yPE+BIkYBalWENnKvjVC0t76e3GSdS6uRUbhPbtXu3xkEYDcjCOhkVQx6/MV1vBUQK8F
         s1gY8U/IK4MwGtritSrHe5SBx3b03CLCf54uAJkJVYgCtv4J1Z3/7X06pK7nfHxqmbzZ
         5GMA==
X-Forwarded-Encrypted: i=1; AJvYcCU4EsawYB12pgHX7hIiQLn5NByLbn+SGfSR7gGt5Bwpc0FoKZ0tvhZBWiVOO/b5WNyCaDhBw5zXc9oi@vger.kernel.org
X-Gm-Message-State: AOJu0YzPKU0nXEBRSYNRCYu9ziPvAcSjacuPmWN2gMfGnRLlCyHyIlg9
	MAaLvy1NaI3yAHofoGKnhHWOjTZpt4KQIBuNpAHa+GeIQ9R61+EsStjbCmHPUIQ=
X-Google-Smtp-Source: AGHT+IGQTuy3EdutFWgRY9ekGLsHfjdaIPiMHwuEXBmtWuFhcvhHmp0JqdGpR/97ULY3I9kGwoQ9PA==
X-Received: by 2002:a05:6a21:78b:b0:1c4:7d53:bf76 with SMTP id adf61e73a8af0-1cce10aafe2mr19982244637.38.1725437713297;
        Wed, 04 Sep 2024 01:15:13 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206ae94980esm9024145ad.84.2024.09.04.01.15.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 01:15:12 -0700 (PDT)
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
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v3 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Wed,  4 Sep 2024 16:14:59 +0800
Message-Id: <20240904081501.2060933-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v3 of the MT8186 Chromebook device tree series.
---
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


