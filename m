Return-Path: <devicetree+bounces-185141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F046EAD6973
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 09:49:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82A2D3ADD4A
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 07:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DC7221A433;
	Thu, 12 Jun 2025 07:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="NFDpA2JO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDB1212FB7
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 07:49:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749714556; cv=none; b=XEFMTojzq9DLl3NKm53zQv5Dud5agOZy+ufUYHqZeQqWNV04tNNrdGthqagZHRHpSMvmeCDjvBf51Zclp843wJFxxpOgd3bUuBd05fugc5htkzHpANTau8rgrRocGBESRXFvQr1usahatkpBVtT1hhbkwVtbyNmz6FcQgK1djIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749714556; c=relaxed/simple;
	bh=Ffdfr1sEODkXZPRydcXgdeSHlcRT1dYDjdYvx7GZvao=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EanVmbckMymWwc/ihc3/zWVNfzR8bH7xEe1jYYOmhIxaEQp34eDyqMlTkVT6uY1HT1zBNCMPqsBoBKWwPqpmgcsym2UdV8X63nmFn0mcRpf0VVw70xG3JA1JG6OrmXXLq3qyDNGNJa5UUp37RNmRhk0lxWED959AwYnqamyAs/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=NFDpA2JO; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-23508d30142so8261975ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 00:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1749714554; x=1750319354; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SPFuYxHVFr0kVDYRfxXF8FfjITbYZAv5cDjlCNLKod8=;
        b=NFDpA2JO8PIP5SmVdoy76mqnrIt4Oq81UpJeJJSq7nqaIfw0IWcT41ahDFrE4mMO5S
         n6V0i0bccqqEket+xrgOAbL3CB4KFIfMA88ti/dWqoi0NUFuvNB2KzgDIxwe5R+vur2n
         KVKMSI2MOykzDPJhMICsGs4BsKUs0NhgnZV4c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749714554; x=1750319354;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SPFuYxHVFr0kVDYRfxXF8FfjITbYZAv5cDjlCNLKod8=;
        b=A7qN1kx9zYUsvy3uC0O67TMgmF6xm61ZhmYUQHb9h6uQkVD9RB60PQLYPAVIsKUlOq
         TPno6KcuciQtKFAP4P+MCof+XqvLHsW83DvrDbijnTPVa3xsIEg+Nvdioqzy1DxpI7hb
         04Wi7o1DDDMCTPaY9YaGoJoTnh3X1Kfo+LL2JWDA/AKAL6P25evn8ISXG+78YiFGH4vV
         YOPnYwck9J+hQTH180kFyOMMIyEasXYs71hT4O5grEMU7aYfN3mLkwhmJ1hW8kCK+Wad
         m/kTOJioydy20cDj8txcFc7iuXdA0RXb5omt0/J+5nSfaH0tuZIr+wviJ9Hvo3Zx8MRN
         MNEg==
X-Forwarded-Encrypted: i=1; AJvYcCVc8aFedzVw3piRdtkvHnEHUR6nh2e0Rmas+Mt4s55mhQqyIij+74ozB14JBmWBUDt9AVVL0/lN9oFb@vger.kernel.org
X-Gm-Message-State: AOJu0YzWMXKqFU3+dxb7Dw8LvcUBgYG39xn031FFvZzbh0CqqsrK9nIv
	ZuVvonXe61F+zVuqeQimgEelecMNQJKLkCz7RFXXv9wUZcKKyLZopl/FcOJ/pgOghw==
X-Gm-Gg: ASbGnctwi0EcTnhhbv6rV1pLfDcW64MKjRQ3yPyKSqe6QxsBsSd2KfEGQbP2BEb+/VU
	l8E330nJPpQRwrPWAon68YPIDGLjTTFqCTIrrd2/JkmMDGBVJK5GDlw/JbNju96zpLywAGWbmlc
	vTAom65Zu4VDPCVXAR9Z5rGdz5jt/jpuJfQmbX2x4WEymZRXXxuinwRJdD09uvV3dEI6HYlOpYk
	qr/v+N8CtVErTl1ip//eZBFt1ro9CgAQxYLUfBlkZnlY565Is8JrQz8Gs9ogjSbN2HltBTZEApr
	55b94+6Rim7Cu5oQFJzG99A01KYcIH/2AQj6VE1KtxCsIHqmWZHkkESqtc9N8+wYSSi+UGAtZ13
	ujqE=
X-Google-Smtp-Source: AGHT+IEL+zvm6Pa+DO1Fnyj+R5YFcjNFtCXH/bW/rjNfe9qMH6I9WeUJgnkT/5fLkDBtWeqN43Q0Rg==
X-Received: by 2002:a17:903:1b4d:b0:234:8eeb:d809 with SMTP id d9443c01a7336-2364ca62bc0mr42902035ad.43.1749714553790;
        Thu, 12 Jun 2025 00:49:13 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5b9:e73a:2e58:5a47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2364e63d42esm7893295ad.74.2025.06.12.00.49.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 00:49:13 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] ASoC: mediatek: use reserved memory or enable buffer pre-allocation
Date: Thu, 12 Jun 2025 15:48:51 +0800
Message-ID: <20250612074901.4023253-1-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc1.591.g9c95f17f64-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v3 of what was just a single patch "ASoC: mediatek: re-enable
buffer pre-allocation on some platforms". Links to previous versions:

  - v2: https://lore.kernel.org/all/20250424102509.1083185-1-wenst@chromium.org/
  - v1: https://lore.kernel.org/all/20250401085659.1222008-1-wenst@chromium.org/

v3 is simply a rebase onto next-20250612 to resolve conflicts against
Mark's tree. I believe the main conflict is from my other series
"mt8183-afe-pcm: Shorten source code" that Mark had merged earlier.
Also, Angelo picked up the DT changes, so they are no longer included.


Original cover letter:

Angelo requested that these platforms use reserved memory regions if
possible, and fall back to pre-allocated buffers only if that fails,
to align with other MediaTek SoCs / platforms that already use reserved
memory. The series covers MediaTek's MT8173, MT8183, MT8186, and MT8192
SoCs.

There are three parts to the series:

- Part one (patches 1 through 5) update the DT bindings to allow having
  a memory region. The text binding for the MT8173 was converted to YAML
  and also aligned with current usage by addition of a power domain.

  Note that the MT8183 text binding was _not_ converted. It is
  drastically different from what was landed in the device trees. Some
  time is needed to work out the differences. I might try to recombine
  the audio clocks (which are actually part of the same hardware block)
  as well.

- Part two (patches 6 through 9) update the audio frontend drivers for
  the various platforms covered in this series.

  - Patch 6 is the evolution of version 1, now defaulting to reserved
    memory if possible.

  - Patch 7 adds support for >32 bit DMA addresses to the MT8183 driver.
    This was missing, and prevents the memory regions, which are
    allocated from the top end of main memory by default, from working.

  - Patch 8 and 9 are just some minor cleanups to reduce the number of
    "&pdev->dev" style dereferences. They are placed after the other
    changes to make it easier for the fixes to be backported.

- Part three (patches 10 through 13) add a reserved memory region for
  the audio frontend on the various platforms. (This part is queued up
  and therefore not included in v3.)

  For the MT8173, the change covers the whole platform. In practice
  there are only ChromeOS devices.

  For the other platforms, only the ChromeOS devices are covered. These
  are what I have available for testing.


Please have a look. I assume the DT binding and driver changes will go
through the ASoC tree, while the device tree changes will go through the
MediaTek tree.


Thanks
ChenYu


Chen-Yu Tsai (9):
  ASoC: dt-bindings: Convert MT8173 AFE binding to dt-schema
  ASoC: dt-bindings: mt8173-afe-pcm: Add power domain
  ASoC: dt-bindings: mt8173-afe-pcm: Allow specifying reserved memory
    region
  ASoC: dt-bindings: mt8186-afe-pcm: Allow specifying reserved memory
    region
  ASoC: dt-bindings: mt8192-afe-pcm: Allow specifying reserved memory
    region
  ASoC: mediatek: use reserved memory or enable buffer pre-allocation
  ASoC: mediatek: mt8183-afe-pcm: Support >32 bit DMA addresses
  ASoC: mediatek: mt8173-afe-pcm: use local `dev` pointer in driver
    callbacks
  ASoC: mediatek: mt8183-afe-pcm: use local `dev` pointer in driver
    callbacks

 .../sound/mediatek,mt8173-afe-pcm.yaml        | 98 +++++++++++++++++++
 .../bindings/sound/mt8186-afe-pcm.yaml        |  5 +
 .../bindings/sound/mt8192-afe-pcm.yaml        |  5 +
 .../devicetree/bindings/sound/mtk-afe-pcm.txt | 45 ---------
 .../mediatek/common/mtk-afe-platform-driver.c |  4 +-
 sound/soc/mediatek/common/mtk-base-afe.h      |  1 +
 sound/soc/mediatek/mt8173/mt8173-afe-pcm.c    | 66 +++++++------
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c    | 56 +++++++----
 sound/soc/mediatek/mt8186/mt8186-afe-pcm.c    |  7 ++
 sound/soc/mediatek/mt8192/mt8192-afe-pcm.c    |  7 ++
 10 files changed, 200 insertions(+), 94 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/mtk-afe-pcm.txt

-- 
2.50.0.rc1.591.g9c95f17f64-goog


