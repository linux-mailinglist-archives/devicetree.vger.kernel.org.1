Return-Path: <devicetree+bounces-161534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF9BA74673
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 10:40:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D1A37A17CD
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 09:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 132142135AD;
	Fri, 28 Mar 2025 09:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="SszOUnzM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76ADA1DE2D4
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 09:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743154851; cv=none; b=NdK3Nj1BifuKwjDXypeU0XPv0Smpdu4UNqcjlhWECqitjUymmqkwbdbwNEN5LYRTrlLt8Gs+gEgZW8jdL8qWm5QJXNCkAZJf1yAjZxwdrV20YY7Y/nSlAi0p108IBbpka4pMCGC/xtjxMsC8IqMuiqn5Z3qNAlxYkkTjLD4JQ4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743154851; c=relaxed/simple;
	bh=J/E1teosypuOT98TQ3SC0NHR3R/cWdfmSa9jsLcUlCE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fq/WLtyWjZoD5u0BWRbJ07N0KWUvdvKPQ6yTanWbVkwHdZyA6ANq5ZGA3ZJF4A9e/3phqMLCKqX1E0akWjFQ73kwVzjjKbVU64VEDdllP66h/o1qyTpMpCAbay+O79kimXtPK51CNTxZC4DP07eZx92/gEjV7tiZOMIsiF2rUQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=SszOUnzM; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-227c7e57da2so32945765ad.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 02:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1743154849; x=1743759649; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lVf1OxT8PGj4PYemPZVHKfGsO8vE6CKP1+cnxJtI79Q=;
        b=SszOUnzMi/X58bqhOkaDQlg60J4mK2/s8kWmeSF0yjfvqeQGCAJwx9hjhMdGISQtsQ
         w6LFrV1LI78T/IvWoGAdxrvPNxxqEeY8Ek2Fip4dogKcFJiif4uxYej2w0lVEPpm3S74
         FYcVVH88M6tyzOY/qSlYJK7OAaRIDgijb4xuDoOJ2OGgDgh45Q3PqWSe33NzapQpdp2A
         8o6F1AXZKCw1FxEK1Bj/K9uNB0/oPkEMIdVQVe1ZIGYPkjoyCFVyLxwe8h9x7F+hrG/c
         aXHioGyix/veMqTMxqggLdwMOjQfk1JoulbZHu+Ead0n2MhVaY8t1SVHsnAaz9nPsaRy
         FsWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743154849; x=1743759649;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lVf1OxT8PGj4PYemPZVHKfGsO8vE6CKP1+cnxJtI79Q=;
        b=RssS2P9dyjgxLe2Zmq2X+0STtOhm2fRbifcAiqu8OOMPUwGhSaZqiiG0PtIyLfiV0S
         iVF3mMrbciE9N62y826Cybcloo9FYWxp3/RGpC/QLvE15J8+dG3zQOPxn+sr2fv5LZi3
         g969fw7u4oUmDMs1AJGT2kARYw7SRMn8gQQSPGp+zI5YzwShOgmmFsyqI5j9pu2c8HZZ
         H8WrrmZ6phdQRzyWJkgsA8XU8pjsVsE5FvVSIoasEs481kgIsXFlLIQT9mT1Ks0UMlx6
         bE7sDtwRWkz56Z4WlGSCPCCnRwfvIJAPhQaygFPxr8++xD57RqzxTISTINbmNPoYWBBL
         GOhA==
X-Forwarded-Encrypted: i=1; AJvYcCXP4ZAVXKyjAv7iqCNUaGqhDuIHrynW4M38DFDDjLJy73Ft6hAspr3w6u4/KCVA0IPui+LMCOaVJ7Gk@vger.kernel.org
X-Gm-Message-State: AOJu0YzlMHIgbnwZlrVBtDZIdBBAQSL176kEaH5ntBBK+ErHNkCKfO2L
	vfDi2K6K23P9gfBjcnUjqgopTL+MS6uB2MHVufOf5rgnR8qTFbDfzHAlhyknS4M=
X-Gm-Gg: ASbGncvtLfXTLfLm2lCkh4TdsrQQ7LmkQ5DqJ+YmSkqVzAdplSMMhQ0AxbHI6YHwidR
	6WCoRD0O7NpIljxa38E3dLiEdaRE/BhlZ9tgu4PyKkPb7OP7UFif06mgE0zty/RohVQb6CZA9aZ
	EdKevvbtbTc9uczLu7SpBro+XS8jsyR/cWc8K6TbQvFJoDcrHxSfNo0fqwztl7jE0+axPwcqGui
	hBHJN/Uh9XAkuQfOlDXfxNa0YNZ1FPWhyMGIRYXFWJ6N+l5Nu7T6SLnjU3JTXFtWIdETv6EX8NX
	XCJ2+HDrd1w72d0T+jM/nIZN2NABmHFbAmxF1qszY/XFR3KskoTBVfl0/8Dqlhuts2oaiEaoai/
	6YGY=
X-Google-Smtp-Source: AGHT+IHlMk3FT8wV80BXMjlruAdNjtASKILfG6spB3x0ZSEswoz0sZWSrejxGN07tV3Fa7SmSJ5ASQ==
X-Received: by 2002:a05:6a00:3392:b0:736:9fa2:bcbb with SMTP id d2e1a72fcca58-739610e3485mr11701752b3a.24.1743154848458;
        Fri, 28 Mar 2025 02:40:48 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7397106c7b7sm1283012b3a.116.2025.03.28.02.40.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 02:40:48 -0700 (PDT)
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
Subject: [PATCH v9 0/2] arm64: dts: mediatek: Add MT8186 Ponyta
Date: Fri, 28 Mar 2025 17:40:32 +0800
Message-Id: <20250328094034.3400233-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is v9 of the MT8186 Chromebook device tree series.
---
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

 .../devicetree/bindings/arm/mediatek.yaml     | 10 ++++
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 18 +++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 22 +++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 49 +++++++++++++++++++
 5 files changed, 101 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

-- 
2.34.1


