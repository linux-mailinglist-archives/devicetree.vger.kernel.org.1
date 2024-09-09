Return-Path: <devicetree+bounces-101363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B1C97165D
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 13:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BE261F23151
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 11:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F27511B3F2C;
	Mon,  9 Sep 2024 11:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="N7j+n0yi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B4038DD4
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 11:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725880670; cv=none; b=BkFD2cPdAVSzpoQ7ev5iKvUgAQ2SXxrmfsNC6yTpn7YN5VPS+4mM+Moh1xJG0oYr5+Jeza6pj7uuTt74CpW9kS33cyn/iW7G6EOYFHKthqIeGF/ygZ3UU34V4GGCoClcReyGZYViv7gMkQztJfa7aUkQ3zGhX6SO+XmpxJN772A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725880670; c=relaxed/simple;
	bh=3Wh+gFu8G3X40L3E2sqTtojgsNsurQMEzVjPa+QQCbw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WGLrRa9BsS4/1A+3rm1FVbA1N7Z6UxLcGvSX7iVc23bCnykpC9ANmKB8JDMlHEqoYVsEWZX4ZrvTlFfuxfOgZtiuPRgRsfFzjpyZizN1KfahxkeA7DpAfce3n3yKWpCuwoU0HqdMU0CZMs1aryC3Cbd4Eq7/x+XCKXlgOqGYemw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=N7j+n0yi; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-20551eeba95so36696015ad.2
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 04:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725880669; x=1726485469; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ItggMhPxBJY0gkMC49qQS6udiSlXnBocVGSqlKISNN0=;
        b=N7j+n0yia1MDBGE7RXIs2ELb8bt1BuoRX8QDShli2k5D6lZNwNw/MKBS4gZ9BOJw66
         6YOVVlC2p+FD295eCNpf/iIEMNrrN95lftJTsZDOpX7uf7bIgI5NOa2IAKlHT98MmxwE
         GtYks5cjyNUY+/C87O+2LRs9JhLwBuKXjOjj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725880669; x=1726485469;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ItggMhPxBJY0gkMC49qQS6udiSlXnBocVGSqlKISNN0=;
        b=Bm0TcwyO/zuDY7cGWKv37SKL+jKzxZqFZQePkQiXvmo2jm1JDkEj3yX0JpxK03kiI1
         NjZZCxnf1ZP8Dv/a6h1YwtcbsxFHti0V2RupryaHqCLbM0Nq3oj3mkgAst90fXxoPCGW
         qBrgYcnM0H1/gsFfUTLzq8/F069kgSn6kg/H/F16exOJ0bPwTrbAPVYnWJAdWMtYClFJ
         JdtJSoCNG+V4Dh40GU3U61bLxctio2NW+zHmgEyr0ztwia7wPiyms7n0PXIXuXlKfGLl
         SBN+sf8/EZrdex+bHO5BP0GpoZl4OSeV0HyS8AZ2oDjlP5m3EA1MXqX8hz+tZ1TPw8Lk
         7FHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaDg49msXCSTe/M04lG5su2hH3TjpCk0tRRlVtUtvrMRE1aT8EHfWprEeoiuMTSb2s9bMVLipZyyOu@vger.kernel.org
X-Gm-Message-State: AOJu0YwQR4PjMrZe8Ws4wzAznTw8qMJC30UfbrL3IB5Irj8rmgCP8UmB
	Zk47+/IRvEsOyruv96cSzwyG16jnTgx0dlDmdHeci2CJEmFzi1Cqq02Hv80qrw==
X-Google-Smtp-Source: AGHT+IHLRIdt1H28qhwk89qwzoD4cvjGIQS4KVJ/THMcfTnhxGfANJw6cSATeXiB2t4rxipOAgrC6Q==
X-Received: by 2002:a17:902:d48a:b0:206:ba7c:9f2e with SMTP id d9443c01a7336-206f051490cmr95199095ad.25.1725880668502;
        Mon, 09 Sep 2024 04:17:48 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:6647:6d5f:dd48:8f5c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20710f1dc55sm32039745ad.186.2024.09.09.04.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 04:17:48 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabien Parent <fparent@baylibre.com>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 00/13] Several fixes and supports for MediaTek MT8188 SoC
Date: Mon,  9 Sep 2024 19:14:13 +0800
Message-ID: <20240909111535.528624-1-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.469.g59c65b2a67-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This series contains several fixes and patches to the MediaTek MT8188
SoC.
It aims to add more fundamental supports and lay the groundwork for
introducing MT8188-based boards in the future:
- Supports for CPUFreq, SPMI, IOMMU, PWM and audio.
- Fixes for CPU big core clusters, missing dma-ranges in soc node and
  power-off sequence issue in vcodec pipeline.
- MT8188 CHECK_DTBS fixes for dt-bindings and device tree.

Note that there are more changes for MT8188 SoC on the way - PCIe, MIPI
DSI panel, DRM, multimedia encoders and decoders etc. I'll keep working
on organizing those changes, and I believe the feedback here will also
help me improve those before posting. Thanks!

Regards,
Fei


Fei Shao (13):
  arm64: dts: mediatek: mt8188: Add CPU performance controller for
    CPUFreq
  arm64: dts: mediatek: mt8188: Specify CPU big core cluster
  arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
  arm64: dts: mediatek: mt8188: Move vdec1 power domain under vdec0
  arm64: dts: mediatek: mt8188: Add missing GCE clock names
  arm64: dts: mediatek: mt8188: Update VPPSYS node name and compatible
  dt-bindings: power: mediatek: Add another nested power-domain layer
  arm64: dts: mediatek: mt8188: Add SMI/LARB/IOMMU support
  arm64: dts: mediatek: mt8188: Add PWM nodes for display backlight
  dt-bindings: spmi: spmi-mtk-pmif: Add compatible for MT8188
  arm64: dts: mediatek: mt8188: Add SPMI support for PMIC control
  dt-bindings: mailbox: mtk,adsp-mbox: Add compatible for MT8188
  arm64: dts: mediatek: mt8188: Add audio support

 .../bindings/mailbox/mtk,adsp-mbox.yaml       |  12 +-
 .../power/mediatek,power-controller.yaml      |   4 +
 .../bindings/spmi/mtk,spmi-mtk-pmif.yaml      |   1 +
 arch/arm64/boot/dts/mediatek/mt8188.dtsi      | 352 +++++++++++++++++-
 4 files changed, 350 insertions(+), 19 deletions(-)

-- 
2.46.0.469.g59c65b2a67-goog


