Return-Path: <devicetree+bounces-245117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8213DCAC5D0
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 08:36:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 846053011A48
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 07:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1924D22258C;
	Mon,  8 Dec 2025 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jF83d6t6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85ECE1D5ABA
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 07:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765179203; cv=none; b=c2lAx2cKFIp/nw4z/esRyH29v3KEQ7UCgRhfj/LoeiiMR1JNf3QdHaId4h83MLAndEMRoGaDZ7zKeNjUQVDpYEGP/TNJ0BMItt/9/ATLELflQwokeEKhzZdtKCIoFmJFDSqGarzrWviyQNUhd/A6bwjsYo80u8CbVa5Yp4dgMeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765179203; c=relaxed/simple;
	bh=1woAU+kMoR0/fJ7Wow1xhE4tFX3TI8tP6d+BP2vx/S8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Oz8cFe06KFyvGjykyp2650zHizYzO9um7S3Ke4lZjSezRjqrKEAuIav22JvrQ8FxDmjF6deVVCtwA0fxnN7AhWgn2dZ8gGozyl0dID5w1yQQdOEbmVNy4cHlzn1buVHoTGkaV2BmQFZ2Mo7crW9ToKQbtHccKtDvlFqPzz9rRWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jF83d6t6; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7ba92341f83so5652574b3a.0
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 23:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1765179201; x=1765784001; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NyQDsChLDL6jT72ChDthaQRy9RBzZNMPITBE61ZJLnQ=;
        b=jF83d6t6I6uYpguwG9exR1m42bcKNIpAa8pnN8aPUgcj4VsWAoImNfuAT6x8zD1Tfa
         mYuDhRXOJu985k3PSTJhCDDedEZP6rLEIvMyHAlSq30zqMBW6J+TXssgvl20I+qrd6UY
         3mt4ZnslhDPUa3ZqT0/j879ALSvCSYOOCl940=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765179201; x=1765784001;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NyQDsChLDL6jT72ChDthaQRy9RBzZNMPITBE61ZJLnQ=;
        b=AawmwVg9LhPApZDTgVcYwYm945FX/87Rlz4X5vu2AM4o8ZSlh8CM/AyVTXjgMKhtD8
         bqXWOsOm1eQWAZ7FNUg2QSX29P7HHybiy46ecLGEK8X3UTZ+sr/ubPdiBpjFH2G5rm0x
         WJsP9q6SQhYu4VK53RIAZcOSIYztbllKZwBK5wzFjwUr1qx+y4c8YMWh9vjBrCAkXjYD
         AbTrhCrAyFgaB4H4GD3d70Q5yAWS4OCajcL6aDS/MgMKXO6AWssVaofhuN5WICsd7o2Z
         7tAH5oWuTEzgWD/P9iIHxx8DpvThwICtDqI5DuA3dHWGLud2Kahxii5247LhCzen1kub
         D9RA==
X-Forwarded-Encrypted: i=1; AJvYcCX+la/IuJdv+DMJQ57f64RIsMt/uslhV0T/74tgPChYSbyc24YDz8PjY70AQZrvF13+ePM7kwFGRW0r@vger.kernel.org
X-Gm-Message-State: AOJu0YwQliawuHlwMY7Z0bAdqp+F5PjmWkYgNdWvjQI/MvaDRQmqd+aw
	TXS2u2N2jwb+9CIfMFU7IGc3hcJqIQvJHtzg6ymalQfiRd1gBrDd4r/4J400rqLvgQ==
X-Gm-Gg: ASbGncs5Fgx/RRvMCirT6eSEmVGbtiArx2TVFEwsPCISFn00h/mqF3VDZPni7RMcFyQ
	JRs7zl3YT1ezLa0PYUGyTNI76YYkY5lBtso+rLS78NSfrVnUMIXriYWzzXXqCtiB3Qm96cUUFFu
	3MrZj3wvRc0mBAqohE2CcAOoWgLv5PLZEBTNdoRITbB0gd6xVnvmIHnD+wwLzuX3+uu3j3nBBKi
	YJm9NxxF3rtJILnISoQYz+aBkkD06MQMwmdj3ETDO2yqfoYxufJGivAGPpsEv55Cdl8SJEwWIOq
	agPjRJaCvo8oLVzHUQJcr17Dh/KGqHtRW1eHEeY1v5qp+CNlY4yCKnSovbYhQ1Hj80K72wGRZvs
	QP+opAhI7UcBVmGBG95WupzQG80EfYohEAKeX2J7jX7OqnlbaToDV3wMHapyWUXzg+jfxqQyqLE
	cI2Iak2Vc1NCzs9bNsNBLJdchMT69dsGgWvdfJJHwWOtaQ3d/jhyWSuMXC+q+vYR1/exKvFp6Dq
	ZhK/zU=
X-Google-Smtp-Source: AGHT+IEpE++3dA75IMHMKAaS3JdE4z7HPqUzGxOP5Ceo/1TnC8Mz6fZ5YZ3Fa1JU2YjE0X3fF2tBDw==
X-Received: by 2002:a05:6a00:ac9:b0:7e8:450c:6193 with SMTP id d2e1a72fcca58-7e8c6daaf97mr6721158b3a.42.1765179200901;
        Sun, 07 Dec 2025 23:33:20 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2a00:79e0:201d:8:d31e:c84f:5cc1:d554])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e29ff6b56esm12127686b3a.20.2025.12.07.23.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Dec 2025 23:33:20 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH 0/3] arm64: dts: mediatek: Split Ciri into overlays
Date: Mon,  8 Dec 2025 15:33:01 +0800
Message-ID: <20251208073306.75279-1-wenst@chromium.org>
X-Mailer: git-send-email 2.52.0.223.gf5cc29aaa4-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This series intends to serve as an example on how we could reorganize
the Chromebook device trees into a common design base DTB and split-out
DTBOs for component options. There will be no SKU-specific DTBO that
handles changing the top level compatible and "model" properties. If
these are important or needed in place of the generic board strings,
the bootloader could be made to insert the correct ones.

A separate YAML file is created to keep a mapping between the composite
DTB and SKU-specific top level compatible strings. These are needed to
build a FIT image that the bootloader can then match the correct DTB
with its own known compatible strings.

I expect the last patch, which drops the SKU specifities and adds the
YAML file to be quite contentious. However I think it would greatly
reduce the number of source files we have to manage, given we have
or will have dozens of SKUs for some models.

This is related to my "Device Tree Metadata: How Bootloaders Pick DTBs
and Apply Overlays" talk at the Device Tree MC at Plumbers [1].


Thanks
ChenYu

[1] https://lpc.events/event/19/contributions/2025/ 

Chen-Yu Tsai (3):
  dt-bindings: arm: mediatek: Add generic Ciri "base" board
  arm64: dts: mt8188-ciri: Split into base and overlays based on
    components
  [EXAMPLE] arm64: dts: mediatek: ciri: Drop SKU-specific overlays

 .../devicetree/bindings/arm/mediatek.yaml     |  4 +
 arch/arm64/boot/dts/mediatek/Makefile         | 26 ++++++
 ...88-geralt-ciri-audio-max98390-es8326.dtso} | 40 ++++++---
 ...88-geralt-ciri-audio-max98390-rt5682s.dtso | 81 +++++++++++++++++++
 ...188-geralt-ciri-audio-tas2563-es8326.dtso} | 18 ++---
 ...88-geralt-ciri-audio-tas2563-rt5682s.dtso} | 46 +++++------
 .../mt8188-geralt-ciri-panel-boe.dtso         | 10 +++
 .../mt8188-geralt-ciri-panel-ivo.dtso         | 10 +++
 .../dts/mediatek/mt8188-geralt-ciri-sku0.dts  | 32 --------
 .../dts/mediatek/mt8188-geralt-ciri-sku2.dts  | 59 --------------
 .../dts/mediatek/mt8188-geralt-ciri-sku3.dts  | 32 --------
 .../dts/mediatek/mt8188-geralt-ciri-sku4.dts  | 48 -----------
 .../dts/mediatek/mt8188-geralt-ciri-sku7.dts  | 48 -----------
 ...eralt-ciri.dtsi => mt8188-geralt-ciri.dts} | 54 ++-----------
 arch/arm64/boot/dts/mediatek/mt8188.yaml      | 51 ++++++++++++
 15 files changed, 244 insertions(+), 315 deletions(-)
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri-sku1.dts => mt8188-geralt-ciri-audio-max98390-es8326.dtso} (59%)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-audio-max98390-rt5682s.dtso
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri-sku5.dts => mt8188-geralt-ciri-audio-tas2563-es8326.dtso} (78%)
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri-sku6.dts => mt8188-geralt-ciri-audio-tas2563-rt5682s.dtso} (52%)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-boe.dtso
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-panel-ivo.dtso
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dts
 rename arch/arm64/boot/dts/mediatek/{mt8188-geralt-ciri.dtsi => mt8188-geralt-ciri.dts} (81%)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188.yaml

-- 
2.52.0.223.gf5cc29aaa4-goog


