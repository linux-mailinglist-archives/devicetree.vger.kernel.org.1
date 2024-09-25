Return-Path: <devicetree+bounces-105229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 034CA98577E
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 13:01:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A28F41F211D4
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 11:01:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94EFC139590;
	Wed, 25 Sep 2024 11:01:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="IQmjGs6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494AB482D8
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 11:01:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727262084; cv=none; b=hya6OtcEHvjQdoD07uqYyId2gBx0FAh/m/TuTHISGeKfCCjhSl2qfKtfaOAeFqNWnKWdXbPStrh+d/P1+p1oNws0WCZ7O0a1S5HCKgSm/+GB+BYPDFRMjn6Xfcfx9OktT6F8dqi0jyC1Z6nDPIp/3+5QR085ndypjAeVlkNIA1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727262084; c=relaxed/simple;
	bh=E14547+Z5pM+4hyJJ9CX2ijEIt8G13j2nVrnOZDkQ4g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=timezfyq3/gwe199AHQMjMGUQbOmGXb/wKfYREsLCJN95YHXYctpv2tdjyIqx0Co0fjR/hKaFeYzgE6e9pRGo89/jzsxWM9ZWIF/0nAh8FDME2vRTg20834qnxf2EtoCmK1idqFjoYNRbZGS77bD/HriV1WQ299e9MGqaqtj+Ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=IQmjGs6D; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3a0c8c40560so29592015ab.2
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 04:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727262081; x=1727866881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x+wU+nQmthczOLIKmqdKHiC6ejraUTpzi9Y1GrEh5og=;
        b=IQmjGs6DEFD7dwSjPKZKG0+YT6g9uB2CNDfxbS4J8sVj7iWjzPvdtJEv9zC09DqaV+
         DJuhOF/rLg6vBAgzWRrYuJGmYF9xZwfApS4r03WIe3kIFwn2KDQ0aPScVJpHjHRUZ1fp
         EoeuRbmVIeZCMKb6c8t4QEaRMMLC937KxAzWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727262081; x=1727866881;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x+wU+nQmthczOLIKmqdKHiC6ejraUTpzi9Y1GrEh5og=;
        b=EeLNilz5fYAJ9A3iG0OxNYoAe/PMuXfPUGt+cRh+FpFaUlEEYLFsxqakDwkLU1CmuT
         xSU0o5zDsIJpAWy3xA/XO2QPxXO9ctikTOkMiMxvCaj/qmh9MZCyoUQniQMUkRFWwloa
         0xtMu9e/cS+10KpfkZkXXstE1qMeb8X57fBK0wEQ0TnXzzbeyPXfyB1Rkh5FJeroFKxk
         0gdSe1NIznLhECL2rQTQstg8dg0R/X9/Z0d5K1Fngw9JNa/PCcjRCLmn5DbdAdKw/lQP
         YGnGWbv4UlRMx8u8Qqh6nwGdAiZuSQT6Xy3stW3KycYy4hLYPrBgddQ074q02GrWWGhL
         TluA==
X-Forwarded-Encrypted: i=1; AJvYcCUILPe0EtXnkbGHkpodwqZPadGGd1YZqSNZvdyI1uotI8NpDZs+I3tVbl56cXxGn+v5jWVRgMiBD11j@vger.kernel.org
X-Gm-Message-State: AOJu0YxALd4WwNwyLDepSUnz0rZfoP6tWxGKIg3MsvrQRIdlrztT0u0N
	+AiMqKsdfSe2kJ0TtZK8YcBhMWnOyMWG2mRTHs3ecGM+U1rbIXog8dMEVMZdDQ==
X-Google-Smtp-Source: AGHT+IGjqwv6hyYB9WgLlo4cxUlTkRTFUHeo+Nb8obSIHI0syyubDfaR8EBimZS1brkQVkQGQfPnaQ==
X-Received: by 2002:a05:6e02:1566:b0:3a1:a179:bb54 with SMTP id e9e14a558f8ab-3a26d5e8bf2mr30993475ab.0.1727262081294;
        Wed, 25 Sep 2024 04:01:21 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:2b86:78b6:8ebc:e17a])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7e6b7c73085sm2570298a12.59.2024.09.25.04.01.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2024 04:01:20 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Alexandre Mergnat <amergnat@baylibre.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabien Parent <fparent@baylibre.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	MandyJH Liu <mandyjh.liu@mediatek.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 0/6] MT8188 DT and binding fixes
Date: Wed, 25 Sep 2024 18:57:44 +0800
Message-ID: <20240925110044.3678055-1-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.792.g87dc391469-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This series is split from a previous series[1] to focus on few fixes and
improvements around MediaTek MT8188 device tree and bindings, and also
addressed comments and carried tags from the mentioned series.

[1]:
https://lore.kernel.org/all/20240909111535.528624-1-fshao@chromium.org/

Regards,
Fei


Fei Shao (6):
  dt-bindings: power: mediatek: Add another nested power-domain layer
  dt-bindings: PCI: mediatek-gen3: Allow exact number of clocks only
  arm64: dts: mediatek: mt8188: Define CPU big core cluster
  arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
  arm64: dts: mediatek: mt8188: Move vdec1 power domain under vdec0
  arm64: dts: mediatek: mt8188: Update vppsys node names to syscon

 .../bindings/pci/mediatek-pcie-gen3.yaml      |  5 ++-
 .../power/mediatek,power-controller.yaml      |  4 ++
 arch/arm64/boot/dts/mediatek/mt8188.dtsi      | 37 +++++++++++--------
 3 files changed, 28 insertions(+), 18 deletions(-)

-- 
2.46.0.792.g87dc391469-goog


