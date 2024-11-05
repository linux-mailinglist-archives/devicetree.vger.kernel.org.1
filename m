Return-Path: <devicetree+bounces-119011-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1C29BC932
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 10:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD112281C67
	for <lists+devicetree@lfdr.de>; Tue,  5 Nov 2024 09:32:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712F61CF7BE;
	Tue,  5 Nov 2024 09:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VZ+Gsbkt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67E11D040B
	for <devicetree@vger.kernel.org>; Tue,  5 Nov 2024 09:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730799157; cv=none; b=KdwiyFGRWTVr7C9FuKcAhoZewtgzdFVYXmQlZshSkVo3Er3BOp0QAuXMGClgqheysWoWxFcT/pVthb1AkdnW7GsAGCbHLt8WEVcHetSVHe66KxlZ8U7hDY5g9UIWFW0mb2szn6PfFv11QKx9tiDExcMgGgi+zAtC5EXiUpn/Ipo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730799157; c=relaxed/simple;
	bh=FPqK+0cy+Y5VsG9Sl2RsfXZYeRu1usYSeBi1nK3QHbI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DFleHTGbXrvVZAGM8/Q+pDTo6Vu2jlCCQ5IkwKuKOK0fMUYA42944tavuXXY6FmWSsqv3rEaWK7JvCJPRn035AxOCl/ZRgDSm72+HC7pDk37r/Yl3Bk5/Ua5tNEme4u955Ky6kPnXsDCITieV2qA+Ksm08kavaC1ixVIzf6ZvW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VZ+Gsbkt; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20c803787abso40723925ad.0
        for <devicetree@vger.kernel.org>; Tue, 05 Nov 2024 01:32:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730799155; x=1731403955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5NJ1FycqfnpK3mvOipRZB2Wgu6vFNoR8bmZUzO4ewgA=;
        b=VZ+GsbktIDbU/HF5+e8vjdVFg0SuKr8reOf5GQj5c1w7VMZdzZkmxLgFtUJfZG+2bT
         lWg6BihL2mMp5nNUIR2dWaS6GCLbyjU4fEw30PGzjvmy87EcQew/RejeQ5/kTaJ4xUH6
         9naSsz2g/kQ/2thOSLy1isSrb+fd0fr8DIlCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730799155; x=1731403955;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5NJ1FycqfnpK3mvOipRZB2Wgu6vFNoR8bmZUzO4ewgA=;
        b=D/4bhZrlxAcbexq84dbQbU8a/+0kkWoaNFOShvXEmVDRsR8wbF1Nkg/Kbr8DGjE9tN
         lycMEfoRdjaV2VWhcpa1Gbgxrbv6ezQOSbbh/Uy1cNs8tMuPvTq92KdbtbgKWakVDrj+
         2IRhA51gMDKt1GYWbYztA9+amCbWOzm1nmdVDqb3PUTa2KN3MCS4U7NVfwpO+J3agVGP
         +qmouyGyxdvBHGDELVh9RF/6c1hW2ai4/i4usZVl6tVxE5RcXSFotTYoWgkAAMvSGD6s
         Q56gfQSxtvgqpiwpez3COOdKd2nUePB23FqPD25KUo8zI+ux+I+xn6Zp6ewjozgzS0ZL
         /2Jg==
X-Forwarded-Encrypted: i=1; AJvYcCUscL2m2/chHYg5dphyJWbVh35Bu1CwEZxXvCcByzIh7nkE+olEsDN3cAEQWA5CWrIkn2/aHkYBPusS@vger.kernel.org
X-Gm-Message-State: AOJu0YzY26dUN6/5fzd22uUXFo88ZCzXzRjcb77zt9EsqMRuw4vEcx/6
	btpriz6tX7sfeuVdhpIH5IhHH6RZiYzYXp21DkblgL2cH2FOZWIKU85Izkdk0g==
X-Google-Smtp-Source: AGHT+IG46JeaaF/aIOCM62h2ubeubJsG0K3ZjKqXqh5YpnynpwPJdLS/uaQTv6LXqXO+Itd423FI5w==
X-Received: by 2002:a17:902:e74e:b0:20c:76a1:604b with SMTP id d9443c01a7336-211056ee4a3mr280044135ad.12.1730799154778;
        Tue, 05 Nov 2024 01:32:34 -0800 (PST)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:20ee:3712:ce0b:1ed7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211056ed8fbsm74149565ad.6.2024.11.05.01.32.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2024 01:32:34 -0800 (PST)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/2] Add device tree for MT8188-based Chromebook "Ciri"
Date: Tue,  5 Nov 2024 17:30:11 +0800
Message-ID: <20241105093222.4055774-1-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.277.g8800431eea-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi maintainers,

This is the v2 series to introduce the device trees for Ciri, a
MT8188-based Chromebook, commercially known as the Lenovo Chromebook
Duet (11", 9).

Ciri is a detachable device based on the ChromeOS Geralt reference
design, where Geralt is the codename for the MT8188 platform. Ciri has 8
SKUs to accommodate the combinations of second-source components,
including audio codecs, speaker amplifiers, and MIPI-DSI panels.

The Geralt design is not used in any actual products, so its device tree
is not included.

The device trees are taken from the ChromeOS downstream v6.1 kernel,
ported to the mainline kernel and with cleanups. This series aims to
provide a basic device tree with the enabled components and features.
Additional support will be added in the future after validation with
the mainline kernel.

This series has been tested on top of the next-20241018 branch.

Patch 1 adds entries for Ciri in the MediaTek DT binding.
Patch 2 adds the dtsi files for Geralt and Ciri, followed by 8 dts files
for all the available Ciri SKUs at this moment.

Note that there are some known dtbs_check warnings:
- sound: Unevaluated 'mediatek,adsp' property
    >> see [1] for the fix
- amplifier: '#sound-dai-cells' does not match any of the regexes
    >> see [2] for the fix
- dp-tx: '#sound-dai-cells' does not match any of the regexes
    >> see [3] for the fix
- audio-codec: 'interrupts-extended' does not match any of the regexes
    >> see [4] for the fix
- pmic: 'compatible' is a required property; 'adc', 'mt6359codec',
  'mt6359rtc' do not match any of the regexes
    >> see [5] for the fix
- amplifier@4f: reg:0:0: 79 is greater than the maximum of 63
    >> ti,tas2781 binding specifies that ti,tas2563 register range is
       0x4c-0x4f. The DT follows what the binding literally suggests.
       I tried changing the binding locally but didn't help.

[1]:
https://lore.kernel.org/all/20241105091246.3944946-1-fshao@chromium.org/
[2]:
https://lore.kernel.org/all/20241105091513.3963102-1-fshao@chromium.org/
[3]:
https://lore.kernel.org/all/20241105090207.3892242-1-fshao@chromium.org/
[4]:
https://lore.kernel.org/all/20241105091910.3984381-1-fshao@chromium.org/
[5]:
https://lore.kernel.org/all/20241004030148.13366-2-macpaul.lin@mediatek.com/

[v1]:
https://lore.kernel.org/all/20241025110111.1321704-1-fshao@chromium.org/

Regards,
Fei

Changes in v2:
- remove invalid or undocumented properties
    e.g. mediatek,dai-link, maxim,dsm_param_name etc.
- remove touchscreen as the driver is not yet accepted in upstream
- update sound DAI link node name to match the binding
- add missing pinctrls in audio codec nodes

Fei Shao (2):
  dt-bindings: arm: mediatek: Add MT8188 Lenovo Chromebook Duet (11", 9)
  arm64: dts: mediatek: Introduce MT8188 Geralt platform based Ciri

 .../devicetree/bindings/arm/mediatek.yaml     |   13 +
 arch/arm64/boot/dts/mediatek/Makefile         |    8 +
 .../dts/mediatek/mt8188-geralt-ciri-sku0.dts  |   11 +
 .../dts/mediatek/mt8188-geralt-ciri-sku1.dts  |   60 +
 .../dts/mediatek/mt8188-geralt-ciri-sku2.dts  |   56 +
 .../dts/mediatek/mt8188-geralt-ciri-sku3.dts  |   15 +
 .../dts/mediatek/mt8188-geralt-ciri-sku4.dts  |   43 +
 .../dts/mediatek/mt8188-geralt-ciri-sku5.dts  |   73 +
 .../dts/mediatek/mt8188-geralt-ciri-sku6.dts  |   69 +
 .../dts/mediatek/mt8188-geralt-ciri-sku7.dts  |   47 +
 .../boot/dts/mediatek/mt8188-geralt-ciri.dtsi |  397 +++++
 .../boot/dts/mediatek/mt8188-geralt.dtsi      | 1492 +++++++++++++++++
 12 files changed, 2284 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku2.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku3.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku4.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku5.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku6.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku7.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi

-- 
2.47.0.277.g8800431eea-goog


