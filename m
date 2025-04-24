Return-Path: <devicetree+bounces-170368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1E7A9AA1E
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 12:26:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D04067B25B7
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BA5422424C;
	Thu, 24 Apr 2025 10:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nfEWNrtt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E42A223DCC
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 10:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745490323; cv=none; b=sH3iP/lfZDg/wFDv+za0yY6z0JWk9K3yj/6YceVJtBk8mZSKqqxeI9JgC8LukU9h41062IHHSj751czsfiJALTpCysnrdTPFnFCh5AW6IzvUyeKMLPgYOPKxqN+U/UFkNIPGDh/TRF5ZtNRhuqNeF2dl6FJfzWf5nm/aQnUy7D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745490323; c=relaxed/simple;
	bh=OndgYCrBRll0cH9zLhYKhtX8QcB/fXo+DhpoiOm3mns=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GC36mnmRcgu2mbnlwXTQCmNos00mxkQjOLlqzJadlProQBUI+6Gqpuu0PPqYn058z2oxREJhgRFbnc6WzDkDy7Bh58cjk1yRY16B1CieAh6UpwZwLg85WzzGCLNizdFjgsTMP8Tr5bSqLhBDqCj8SMQ15TvD9JlQUvyvReLUuls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nfEWNrtt; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-223fd89d036so9362825ad.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 03:25:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745490320; x=1746095120; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZiphZyoVbuU2HXJVLii+SRj3OxrxBVUtbZVtTcIK3L0=;
        b=nfEWNrttkhGm3Bj6k7Srtfh7wAZivCo/ufmssdFDrs7TmsFcEa4bpLCvfQsDzw0OAJ
         9v9oc+QxYJzhssfDUbKAVE8idxRl2RX4+vJres1pzVdpejPn5hTkzmMAbQ81o6pTJOIE
         AmXPyTKl1DreeqfXgDVvTyPsx1tVdwEjgGf7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745490320; x=1746095120;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZiphZyoVbuU2HXJVLii+SRj3OxrxBVUtbZVtTcIK3L0=;
        b=ZbH0jnPViwtH/8mvzWrMFKuVbxU1Hf4vKYghOwC3VM7cImOXScpfxaGZChpvskdHV8
         2wwPCpve0abpEOTd7UGWzGeO7unN9v+ds0HfrPaafkoG+DZpRsJ6WFWUf57txPcXn3Q/
         t+UetmdwFtMiH+kQAcNLHjuA4IhjKxt293b5uby5vq3RrqQD8ddrflt4IZe8ncUCkie7
         s79uEXnnMTPdbAXILdeWXQm/xiEk3do0H/40i08pKHp81Y7Kb3akusTwx+0nfrXh12cZ
         g5tDRLbNp12oOo2ETL0Dp/92ncP82xOCUHQbs4pbWtBHWF0a14Jgxx85Jc2rHU5pua9e
         HsaA==
X-Forwarded-Encrypted: i=1; AJvYcCX8Wn1SlUiw72SaRDSqRFVngmfEXV+DGiuoEf+/mlQPea3rwWxUwPAX5oCQzbVx31bGXH9tO6gYwVsi@vger.kernel.org
X-Gm-Message-State: AOJu0YwwpBxND9eJ5uTDIvr97zbTiXU/ES58vHL0QK1VghodY8fRtcuo
	rv1Eu095yS9rIZB6kH95NnOojcvBfLi70Fsl2ah5279/8bAfcWeDqCvdkHxlFa1YxsNsZH4rlXI
	=
X-Gm-Gg: ASbGncsMYPjTC7PsLUDEo8YafZU5ocr9TzMijhP7VNqlAYgtG4W/G5Fw1QiTfmYy6iI
	eMQhhjLLEMYY7PIiv/zRiCbxll5vlfZpOD0mj45vfP5E9UPFXjlI2hzdzgvLNCT9JiorZVHa45H
	r868c9A4bvWfvY/AL1p+HfkdBxm3UU8nZuYYC033pQpOt5KVSRUS5FpGgdHPn96XC3hy1+xap4h
	0tXCSdxYpgA2uIfE1nsLj/by4/yMu8RgBAHscqhpC9DFphnzQ9AqMWAs5Js9rfqEuOUE8TiN0IX
	RPLIHjmo+vAI94alyok90S3sBFidsSvCUcsGg7oamRmBX7Fr4gM6R0gX6w==
X-Google-Smtp-Source: AGHT+IHKZn/4E+ABRHWYqcKrwGD2nSNg3ytsgaiTlsNEp51ItpCCjFOn8apfWFbXf/8tif5QwDiKig==
X-Received: by 2002:a17:902:d50e:b0:215:b473:1dc9 with SMTP id d9443c01a7336-22db3daee3emr27358095ad.46.1745490319801;
        Thu, 24 Apr 2025 03:25:19 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fa13:e633:684b:257])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db4dda40fsm9680305ad.104.2025.04.24.03.25.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 03:25:19 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Jiaxin Yu <jiaxin.yu@mediatek.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 00/13] ASoC: mediatek: use reserved memory or enable buffer pre-allocation
Date: Thu, 24 Apr 2025 18:24:54 +0800
Message-ID: <20250424102509.1083185-1-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi everyone,

This is v2 of what was just a single patch "ASoC: mediatek: re-enable
buffer pre-allocation on some platforms". Link to v1:

    https://lore.kernel.org/all/20250401085659.1222008-1-wenst@chromium.org/

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
  the audio frontend on the various platforms.

  For the MT8173, the change covers the whole platform. In practice
  there are only ChromeOS devices.

  For the other platforms, only the ChromeOS devices are covered. These
  are what I have available for testing.


Please have a look. I assume the DT binding and driver changes will go
through the ASoC tree, while the device tree changes will go through the
MediaTek tree.


Thanks
ChenYu


Chen-Yu Tsai (13):
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
  arm64: dts: mediatek: mt8173: Reserve memory for audio frontend
  arm64: dts: mediatek: mt8183-kukui: Reserve memory for audio frontend
  arm64: dts: mediatek: mt8186-corsola: Reserve memory for audio
    frontend
  arm64: dts: mediatek: mt8192-asurada: Reserve memory for audio
    frontend

 .../sound/mediatek,mt8173-afe-pcm.yaml        | 98 +++++++++++++++++++
 .../bindings/sound/mt8186-afe-pcm.yaml        |  5 +
 .../bindings/sound/mt8192-afe-pcm.yaml        |  5 +
 .../devicetree/bindings/sound/mtk-afe-pcm.txt | 45 ---------
 arch/arm64/boot/dts/mediatek/mt8173.dtsi      |  9 ++
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 11 +++
 .../boot/dts/mediatek/mt8186-corsola.dtsi     |  8 ++
 .../boot/dts/mediatek/mt8192-asurada.dtsi     | 11 +++
 .../mediatek/common/mtk-afe-platform-driver.c |  4 +-
 sound/soc/mediatek/common/mtk-base-afe.h      |  1 +
 sound/soc/mediatek/mt8173/mt8173-afe-pcm.c    | 66 +++++++------
 sound/soc/mediatek/mt8183/mt8183-afe-pcm.c    | 83 ++++++++++++----
 sound/soc/mediatek/mt8186/mt8186-afe-pcm.c    |  7 ++
 sound/soc/mediatek/mt8192/mt8192-afe-pcm.c    |  7 ++
 14 files changed, 266 insertions(+), 94 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/mediatek,mt8173-afe-pcm.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/mtk-afe-pcm.txt

-- 
2.49.0.805.g082f7c87e0-goog


