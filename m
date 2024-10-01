Return-Path: <devicetree+bounces-106773-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3456798BB18
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 13:31:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 665D51C231C1
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 11:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 829171C1757;
	Tue,  1 Oct 2024 11:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="haHPx4e4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0A5B1C172F
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 11:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727782278; cv=none; b=PdT0KIA3D1DN9+zzuinpywf2Z/8DEdhVyruDtumWd+mQ0HFUoSPO5O86pd+Tb1nnBwaPk4qrQW2nSFZqRHrFBSL5pXJebv5rpSEyAgjTJx7q86qjf+1DM5rKgeEGoikAIkNQcdcTghav7Dphwi9+QCslZS5YUt5Z44+Gs42Dceg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727782278; c=relaxed/simple;
	bh=xNq7dd0QQAzKdyjPQjXshn7HgVAnKT5ZeUNDrPDm3cU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WzOls/lc/BOCzatYXnMDHoL9Xaz6NUULK5DZvmEFAV0mI1QJAaowBgY+gC2JXV4tIjALaEl9yDTTvvUbQRs5In2sb8vWvdxQTzFmmnf/dIdwAwGKeqz2KNj0JlUNSIhV0eoyASFAdWGUNSmjFcJha4ho/zXO4pLO++0ihkMj2o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=haHPx4e4; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-718816be6cbso4592350b3a.1
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 04:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727782276; x=1728387076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Dkw5ZjTULYmnDhqzTqOvsBoCEBWuQcvkFtFk7rwLDX0=;
        b=haHPx4e4tas7WGpON8puSDU2FPzsO3z3it630Ua8bijGgwqhy/pADeyjvipMyU45LG
         eNswpYijDBDST0fQ0P5HsH3UW9xhcotGUHgt74OLkguH9neX7dQgRnUVcjJqntLfDnBH
         bSv63yKLr/fOuKzql9vAEzjg8CkZL7e8Mxc30=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727782276; x=1728387076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dkw5ZjTULYmnDhqzTqOvsBoCEBWuQcvkFtFk7rwLDX0=;
        b=Q+TJxEMLMHgL4u+DhBPKfKhGX2b/xVcFNZutATdVcBCXBgHdRrwz2YV0xfWAbaSI0y
         OtxDfvEM903ZXNCgSo6ePyemdZD8Dpz54BwTFRKyMvCUSFHDuSdeMqjN0FvuyA9AwAkB
         TU8eT7DgKr3kGFlBRn3SwFKrCpaFZfGd412xYAHJAqxXIrDyhJEfUmeY+XRPsfOwqkRc
         b5nQXk+wCMvmCRv0BZbXOpXhaySdbYwCy/QLKnfwYuPXmk/wjmNSKZwp471vWxR/lSAB
         X847Qu7b4szaBTnXVDH0Vb5rU/t63kWgcMaCkM4jm6qtddxNir2F/YPv1jCN66pOmIDI
         6LOg==
X-Forwarded-Encrypted: i=1; AJvYcCXJuH6+TJ6a/Obd9+C4aEH2RLDE1UZUL47umc+woVLiJfdNt3cbpwtd0rS2Qj5UMX5gDxA0QN2gSAHm@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9UJM+ZL81CwsCLGSIjIQXcZ9iBvEM8dFJuTFUB9c8IQHZrIbq
	oKJg8XtuD6WbcDNHt3MKDS77cN1tEz9ZFIOMfOTO4+FINdZyjWNF2I5C0TeJtw==
X-Google-Smtp-Source: AGHT+IEFyHAzeCxiNj5YqUp1sXh7ztXqQKl/I/N9BtpUPW8sRSj4zlFPq+dVnC9EwBiPLWiMyOrcxA==
X-Received: by 2002:a05:6a21:3305:b0:1cf:2513:8a01 with SMTP id adf61e73a8af0-1d4fa6cfb88mr19356853637.26.1727782276389;
        Tue, 01 Oct 2024 04:31:16 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:e044:f156:126b:d5c6])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b264b63d9sm7810646b3a.52.2024.10.01.04.31.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 04:31:15 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
	Bin Liu <bin.liu@mediatek.com>,
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
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Ryder Lee <ryder.lee@mediatek.com>,
	Tiffany Lin <tiffany.lin@mediatek.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Xia Jiang <xia.jiang@mediatek.com>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 0/8] MT8188 DT and binding fixes
Date: Tue,  1 Oct 2024 19:27:18 +0800
Message-ID: <20241001113052.3124869-1-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

This series is split from a previous series[*] to focus on few fixes and
improvements around MediaTek MT8188 device tree and associated bindings,
and addressed comments and carried tags from the previous series.

[*]: https://lore.kernel.org/all/20240909111535.528624-1-fshao@chromium.org/
[v1]: https://lore.kernel.org/all/20240925110044.3678055-1-fshao@chromium.org/

Regards,
Fei

Changes in v2:
- new patch to MediaTek jpeg and vcodec bindings
- new patch to move MT8188 SPI NOR cell properties
- revise commit message of vdec power domain changes

Fei Shao (8):
  dt-bindings: power: mediatek: Add another nested power-domain layer
  dt-bindings: PCI: mediatek-gen3: Allow exact number of clocks only
  dt-bindings: media: mediatek,jpeg: Relax IOMMU max item count
  dt-bindings: media: mediatek,vcodec: Revise description
  arm64: dts: mediatek: mt8188: Add missing dma-ranges to soc node
  arm64: dts: mediatek: mt8188: Update vppsys node names to syscon
  arm64: dts: mediatek: mt8188: Move vdec1 power domain under vdec0
  arm64: dts: mediatek: mt8188: Move SPI NOR *-cells properties

 .../media/mediatek,vcodec-subdev-decoder.yaml | 100 +++++++++++-------
 .../bindings/media/mediatek-jpeg-decoder.yaml |   3 +-
 .../bindings/media/mediatek-jpeg-encoder.yaml |   2 +-
 .../bindings/pci/mediatek-pcie-gen3.yaml      |   5 +-
 .../power/mediatek,power-controller.yaml      |   4 +
 arch/arm64/boot/dts/mediatek/mt8188-evb.dts   |   2 -
 arch/arm64/boot/dts/mediatek/mt8188.dtsi      |  33 +++---
 7 files changed, 88 insertions(+), 61 deletions(-)

-- 
2.46.1.824.gd892dcdcdd-goog


