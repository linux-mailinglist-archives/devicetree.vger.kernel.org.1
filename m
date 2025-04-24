Return-Path: <devicetree+bounces-170128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ECED1A99DC0
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 03:09:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 212EF44811E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 01:09:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B42642A83;
	Thu, 24 Apr 2025 01:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="tv5Y1nYg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 716A82DF68
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745456939; cv=none; b=jX5YApBa5d7+MDnt8dEjIqNAdr97LbkcjrAEyHl3W7hMomJi4mIARPmbPbocZLSROCpELwbb9/f039Yt5e0D1KxVc32PRVXdLYoxVmR4hfgIfun32De6xdJm7STmufzreIGDTnpuJPPBrGdm2Th8QMA2G7A5Yl1uTLyOKDxLl/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745456939; c=relaxed/simple;
	bh=r/Wf+jfdsb0cuBQZ+dONOZlNzlyDtVkBfehZ2Z9pVIk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GRT0tlrY/UAdGPf1SB88tPh46u/0xkjgs/T7/SKttG/PL44pCjsXSUq7VxfNN5sS6lt2WydrLGaVZYGFlPPlnnFCDfpbv79G6LMYfyUKJ0pS6TqUa/NU7tepgm55LHwje5vf9Af5oXvJyqu5YaX3IYiZ9xMPjeIO6qoPRz6vzAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=tv5Y1nYg; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7394945d37eso339765b3a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 18:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1745456936; x=1746061736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=96K+mNY7OtOPr52dzDB019LRxvI9XjhygxeglXZ6I3Y=;
        b=tv5Y1nYge23PIPsmTjDcNdaJ5k9B/y7C/WRPadljdkFU7RCdpFFF2zaELhlEFB3Nhq
         /34fgiah8Xm7ISdhC80cXdXAAIjs1bm8xSLP6k57xiwKwd8pgVMZ7Haj+MP3oGaygddE
         WnALFJHzX+ZSWIJM9K9pZbec44zwnnnNZ7ZI+4/MKLf6HESdc6AOkSEWz3UDpjSslAxL
         2QHu4ZoNCVj4OuDKsVbGvuZuOuYbZuJHNDK2ACaoDd1oV1DD6fwWEvqxrSppBLA8dP5n
         O46istpGmkvPEPO8Pc2wpnPwXDobImQ2mH+rsG5jStfDnvVN1Tubk3VkiYnleuHQitrr
         /dlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745456936; x=1746061736;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=96K+mNY7OtOPr52dzDB019LRxvI9XjhygxeglXZ6I3Y=;
        b=ufl/WTEMHiEW6u7VUfCFcFbCqvg8k9mqILsNjCuf+A1rH052z2FWCdpsY+MeSJLYL2
         8rlGaPOrz1RDcwrlgmUDwjkqr9ChnV5ZR3AtlXIk1xRV6bGLMyzy6Y7KKa08gqDGxplF
         xSiRa3o4zXkXHP+jkvXTW/jhapXXUZYbDlsTIL0NURVPV4olq65H6mu7EgCqZgceOoNi
         QQhG/NKgSbTbX/r2I4DZ5TkN0WS8E0kcXEnuMUMJK6ugp1BlwjbJCTDN+O97d0GFQ8Jq
         GOsfvpsS9K9F8ruQmMc6hdt/aWvaZp5gq0ZzrcmkX5JfhchZcwb4Q13L9ZPxUBuaKKqk
         iWyA==
X-Forwarded-Encrypted: i=1; AJvYcCXxYKrJQP8fKW6fdAiVnno281Rz9fwgR5Z2ogE3xnG0XBnzmA0VHSCZ9e4D8Cz+Vy2eqCvyrrqOAqDo@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7o5gExTFmMUKRJcQIMPGCQex3WUdk6Cp5NzyeeqlKN+jqY7YT
	iRYatJJrJjITRG36qPiivwn1TSw+QrmVKXD71qJRM1BpHnG5pGEERETo4TWf474=
X-Gm-Gg: ASbGncvrMEJ4W1X+B0JhM8Nvo4aRId0hRgQFio9HkrDwpy8ljSqNWXvh30dl6q0jczS
	fnBefBMb4t2CJKUQTPa44REswXY3l3psdaQeKw6T9loZRZI+Gt6u0tydVvlUn8iRFondf4sfF32
	bn4b/ihUzCUg8XF47UdSn8DloipvjFCzArYaPCfhHNw42DRB0rvorFEQeWoOJdjcvU64qgrvGev
	KbJnAiFkuacUdSd9QHRsh/2jNJPcwFb/E5lxGa7PLQO+V7Xb703Kbom/8Oe7SGGZ4QWh1PCp82e
	+5W+tVG5zV1Q+JOuCzgVD80dIV4bFTNDLLGvcY1za+IrJJi24F5iO4t5vq2NZaNE8cLHrrt0knY
	=
X-Google-Smtp-Source: AGHT+IEjab817v1eaoeZEkx35Op0t9qrF1r28YyBnzNAO8gZBkkFNiR9lKADu4oJ6ffW4g43dcuz5A==
X-Received: by 2002:a05:6a00:1d81:b0:736:5725:59b4 with SMTP id d2e1a72fcca58-73e245c09bemr1272531b3a.3.1745456936651;
        Wed, 23 Apr 2025 18:08:56 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25941d65sm236071b3a.63.2025.04.23.18.08.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 18:08:56 -0700 (PDT)
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
Subject: [PATCH v11 0/2]
Date: Thu, 24 Apr 2025 09:08:48 +0800
Message-Id: <20250424010850.994288-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v11 of the MT8186 Chromebook device tree series.
---
Changes in v11:
- PATCH 1/2: Remove redundant items.
- Link to v10:https://lore.kernel.org/all/20250423093647.4074135-2-cengjianeng@huaqin.corp-partner.google.com/

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

 .../devicetree/bindings/arm/mediatek.yaml     |  7 +++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 18 +++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 22 +++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 49 +++++++++++++++++++
 5 files changed, 98 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


