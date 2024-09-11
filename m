Return-Path: <devicetree+bounces-102060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED42975594
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5289B2832A
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:35:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81F2419F102;
	Wed, 11 Sep 2024 14:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ldf4FPf0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4781A3042
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726065311; cv=none; b=RSsZfMAsz+FHDZnG7nV8feaSeJaiq5CLx71qAcDkKd/ioNFoh5O0d40lQJF3lsMFAfBR2Bn1E6kFESYkhKOtWQ+EV6wJX2vx7Rqv5+oCcw9zHN8lIHxDJQXQnWyIQBXkwbibXJoZwDRru6DXBc4txitvzm9WDbYhmpsz3fLz8sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726065311; c=relaxed/simple;
	bh=oA+Zg55StLoXWwRyu7Zm1+vMebrND50A4Qx2oAA2CD8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rfcp6neiM6trBmwiiqqZXtiwYpWWJiwg8HHm/sg+vPgbeBoDc5cIiraqCr2kUvY6jxGtl3vvgLijgBxqilycYAbo0JDPZAafXzaHThEt5f4G17IR9/a+Ob35NAXNhwfmmOtpS1feJRjAKBWNUByrczfXChV+zVytU97LqJZ8lk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ldf4FPf0; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-709339c91f9so733628a34.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:35:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726065309; x=1726670109; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xR9XIjn3y1OmGn7jK9qX2NGw0TdqrgFrmLU/vrD2/WM=;
        b=Ldf4FPf0DVeZPSK1HqvxdCKgYS6Bx2di3QJKfLma5GZWz3Mc8Sm3KgaczS11GB2WQE
         f52CSyO12LvyLGTbsmdfBIgfo45eMmFP+jGFS4CGdn8d4emTzHD8uH5s25WeeiixMoGi
         xUJiYk7DefMYcjJAw2RPUCi/TNbHYiV2KapVc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726065309; x=1726670109;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xR9XIjn3y1OmGn7jK9qX2NGw0TdqrgFrmLU/vrD2/WM=;
        b=EzVpQYwzpnKTScxkH04zj3kvWJYZ4LR+OYSbUTIJucwFIOUG8ZmlGwQxEhjs+utUG3
         3Tx0mJAIkB9adYyzuXbdqA6tMxnzvY2FXXfp4Ympa9I4x/UooRkgGepNJTMOQ+FjeWex
         /ec9hskzS8p6jRCrbsr6UKgmU6/CXRGsk+NzjINOiiU4D6rHnp+IyPi0mYcTbCicUdLe
         H2Yl/fi+Aop5pZ4lKcokB5tYQoYwuRPUGOTWRzspna71Qu2YtZWAc3xcD1NUgLIvOYVN
         EGryc3xA/LOTGfF1KEDrrtk3yaU1cQ5MaWIe1CxOyMBDcuFtGyCw7xythYtCfweNCXoQ
         6oMw==
X-Forwarded-Encrypted: i=1; AJvYcCXjH+gIQPHZMzaV6x3uSQDIgD8NYNog0luRNdwS3YxioamnC5D3px8crWTUCx+pCA/3zouaK3sGTgZd@vger.kernel.org
X-Gm-Message-State: AOJu0YyqfA94RGclqsq3S68G0J3QfsPvfSJonTzFDGFFKmJP9Gqp670i
	/CUDPbLO2S/HN+SIiDsEs6FHKag3/3YGB2vofmUIE8uo7jysHiv/7zX92diCCw==
X-Google-Smtp-Source: AGHT+IGhvCaoigjEidnBcIxaoN8ZPYvAnGVEtA0q3Dv/8v++g5bmQqxojewOStqK0G2ypMFUcUBfqg==
X-Received: by 2002:a05:6830:7105:b0:709:396c:c465 with SMTP id 46e09a7af769-710fe72f964mr2599321a34.18.1726065308786;
        Wed, 11 Sep 2024 07:35:08 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbb5901sm46620a12.24.2024.09.11.07.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:35:08 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
	Jassi Brar <jassisinghbrar@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 0/8] Add platform supports to MediaTek MT8188 SoC
Date: Wed, 11 Sep 2024 22:33:53 +0800
Message-ID: <20240911143429.850071-1-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This series is a subset of the previous series [v1], focusing on
enabling few platform functionalities on MediaTek MT8188 SoC, including:
- CPU performance controller
- IOMMU / SMI / LARB
- PWM for display backlight
- SPMI for PMIC control
- audio
- socinfo

along with the corresponding binding changes (acked in the previous series).

[v1]: https://lore.kernel.org/all/20240909111535.528624-1-fshao@chromium.org/
[v2]: https://lore.kernel.org/all/20240911105131.4094027-1-fshao@chromium.org/

Regards,
Fei

Changes in v3:
- Remove leading zeros in spmi reg size

Changes in v2:
- Replace hardcoded AFE reset ID with correct definition
- Added socinfo nodes in v2

Fei Shao (8):
  dt-bindings: spmi: spmi-mtk-pmif: Add compatible for MT8188
  dt-bindings: mailbox: mtk,adsp-mbox: Add compatible for MT8188
  arm64: dts: mediatek: mt8188: Add CPU performance controller for
    CPUFreq
  arm64: dts: mediatek: mt8188: Add SMI/LARB/IOMMU support
  arm64: dts: mediatek: mt8188: Add PWM nodes for display backlight
  arm64: dts: mediatek: mt8188: Add SPMI support for PMIC control
  arm64: dts: mediatek: mt8188: Add audio support
  arm64: dts: mediatek: mt8188: Add socinfo nodes

 .../bindings/mailbox/mtk,adsp-mbox.yaml       |  12 +-
 .../bindings/spmi/mtk,spmi-mtk-pmif.yaml      |   1 +
 arch/arm64/boot/dts/mediatek/mt8188.dtsi      | 321 ++++++++++++++++++
 3 files changed, 331 insertions(+), 3 deletions(-)

-- 
2.46.0.598.g6f2099f65c-goog


