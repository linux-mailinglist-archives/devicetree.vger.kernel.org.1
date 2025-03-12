Return-Path: <devicetree+bounces-156842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7F4A5DAB4
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:45:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83470179C81
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D45E323BD18;
	Wed, 12 Mar 2025 10:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="irDXNeaj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B09223F260
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776234; cv=none; b=EKeMC7gM6yi14IrbsdTX+UAtQpHzMz5gzvbbBbBZPFIzopbIHCMdtmpdSepcDhdaEnCzzGrKSKbtbUvbEGr1kH79kXkMt7Gff059ZBl/R0TV2HaOOv9FM+tvgio6+2/QDFu1hne888VoISwqA0TMFf5cBWZDRbxqlPAE/OEb3xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776234; c=relaxed/simple;
	bh=E5HHwUQ5W46oZ14AYATkIXSSrCcrAZBPe8OWfY2dZGQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vekd/ncTJbKNeBPaMnyCp+5HsqtrSdAQADDvGqGx90vgBQ+dnVycsTqlU4AnQvDf5xB6Zl4Q3oMqYAwxKvcKVSfbPIGB0u/srXS6W+PDUdrP+qVIIT4at2NKGt9PGndaX+KwxEkqtyTY6GVzGPiXld5Rz9B3lsYf1FO+vKI8aPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=irDXNeaj; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2fa8ada6662so13836842a91.1
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741776232; x=1742381032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=L51FLDBP/NVINxb14cO3l0go6Z1l639IzpDfowui3bI=;
        b=irDXNeaj4pbye9y+Q5j3WEXXsu/kghUwhTRGPCv64kQiyV9nrSP1/0m6R/IXzRAsjI
         26wixjVhXtkXgNTCh5HMhb/bTx0Sc1NbcTrbeKWvdnmrcNbF9tIgl08yZD2ZBbWgT7+Q
         M9Gk+QHAsdSodSLAZY0GSKgDq2QglHsu4I4YQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741776232; x=1742381032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L51FLDBP/NVINxb14cO3l0go6Z1l639IzpDfowui3bI=;
        b=WRg2UxXKZm2Iw8zuybm9s8NcOQfLNC0DRh7WbQYTdTNLsEL/qVcEiA0Je9et9m1p4Z
         Uka/9nsu5Tx8yZqp3LkHQ3kok/E4TRp2w/8Xr8N+x1yC350EygmABIlzNKnlgXJGs9gi
         guTm0htfT+Y/+YavMs0a9XiDezeCaZG/SFVnBR3ViufpWnx8eIMljtitB1uUDT+cZhhV
         GDD5sTCaClr43f57QeBfeMKJtP/UNNNwrSiDlHmdYk5f/oFcI3Psz+X+PokTo1h7WLD2
         2cy6dz+KAmkQSF+ES12btXEyFer5rJuNxIWPoW//UC6vQVCdxl5jMwTzcA0XjAhRAHCH
         EUkw==
X-Forwarded-Encrypted: i=1; AJvYcCWnzjoiixr2FeiGHmMlF1kV2PXj4uVkfVRRrkx4hYzbp/gDQBNVs4bVkJOUGQzkOHRyJXj7VSUBNLER@vger.kernel.org
X-Gm-Message-State: AOJu0YzXkAYQKuffiCdRTyFwteOjMxwKjNJodyr8eqQIkYGPssuzGMGe
	LcDTVEGWuiZc+n5DFpXNm8EdeJdYA2S8Pm31KpWSQv3PCCeGLsEYp8mYhLvQ7w==
X-Gm-Gg: ASbGncvlwbTr2+a8F4ArQOJDAQ+jTiZWWRfTXrIGPsmB2aVMQSGlxVvy+ZihxGqsQdf
	n2/hG7P+YxH4epzouVjwaBoC7ZCfRlDzslUpAABeBFNC197m9MQrFG6KUXjqWVwhaXDI/cczwfq
	9flOSGiwmz7D+HZM5pu0kNAY+1OZJlxa8hUZxIwX5GfgzXN+jNMkRIh4p2k3ejOLbCp0q7oH7JF
	O98oYayaI0KtV6OTGK6e2pGFTD3yzJ0B8/UmW3+sso0lJLhZ0KerSvanoiAphks7JRr7Xpgh+Jg
	8ZPkDUDyWFz+z+JfRibxBR7lP3WNbtRsGJIzTdpXTALi1J6xxFrwpdf6MFrxWVA=
X-Google-Smtp-Source: AGHT+IFwYKsuYFk05Yb2ZLG7oOnOSu3sTQBXUECA3daxKB2RdxKe0gDbN37+1iCGZOUpVOTrPKRIXQ==
X-Received: by 2002:a17:90b:4f87:b0:2fe:b774:3ec8 with SMTP id 98e67ed59e1d1-2ff7cf13a91mr25942847a91.23.1741776232319;
        Wed, 12 Mar 2025 03:43:52 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:b5ed:b71c:fb14:a696])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3011926599csm1405675a91.35.2025.03.12.03.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:43:51 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH 0/8] arm64: mediatek: mt8186-corsola: Consolidate and add new devices
Date: Wed, 12 Mar 2025 18:43:34 +0800
Message-ID: <20250312104344.3084425-1-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

Here's a follow up series of the I2C component probers for Chromebooks.
This series enables the component prober for the Corsola series of
devices, combines the two existing Voltorb SKUs, and adds a new
device, codename Squirtle.

Patch 1 adds a new HID-over-I2C touchscreen from Elan.

Patch 2 merges the Voltorb entries in the device tree bindings into one.

Patch 3 adds a new entry for the Squirtle device to the bindings.

Patch 4 fixes up the existing device trees for the component prober to
be active.

Patch 5 merges the device trees for the Voltorb device.

Patch 6 adds a device tree file for the Squirtle device, with I2C
components ready to be probed by the prober.

Patch 7 enables the prober to probe trackpads on some devices in the
Corsola family.

Patch 8 enables the prober to probe touchscreens on Squirtle.

Please take a look.


Thanks
ChenYu


Chen-Yu Tsai (8):
  dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
  dt-bindings: arm: mediatek: Merge MT8186 Voltorb entries
  dt-bindings: arm: mediatek: Add MT8186 Squirtle Chromebooks
  arm64: dts: mediatek: mt8186-steelix: Mark second source components
    for probing
  arm64: dts: mediatek: mt8186: Merge Voltorb device trees
  arm64: dts: mediatek: mt8186: Add Squirtle Chromebooks
  platform/chrome: of_hw_prober: Support trackpad probing on Corsola
    family
  platform/chrome: of_hw_prober: Support touchscreen probing on Squirtle

 .../devicetree/bindings/arm/mediatek.yaml     |   7 +-
 .../bindings/input/elan,ekth6915.yaml         |  29 ++++-
 arch/arm64/boot/dts/mediatek/Makefile         |   4 +-
 .../dts/mediatek/mt8186-corsola-squirtle.dts  | 107 ++++++++++++++++++
 .../dts/mediatek/mt8186-corsola-steelix.dtsi  |   9 +-
 .../mt8186-corsola-tentacool-sku327683.dts    |   2 +
 .../mt8186-corsola-tentacruel-sku262148.dts   |   2 +
 .../mt8186-corsola-voltorb-sku589824.dts      |  13 ---
 ...u589825.dts => mt8186-corsola-voltorb.dts} |   5 +-
 .../boot/dts/mediatek/mt8186-corsola.dtsi     |  10 +-
 .../platform/chrome/chromeos_of_hw_prober.c   |  29 +++++
 11 files changed, 185 insertions(+), 32 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-squirtle.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
 rename arch/arm64/boot/dts/mediatek/{mt8186-corsola-voltorb-sku589825.dts => mt8186-corsola-voltorb.dts} (76%)

-- 
2.49.0.rc0.332.g42c0ae87b1-goog


