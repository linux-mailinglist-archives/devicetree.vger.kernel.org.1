Return-Path: <devicetree+bounces-101990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8312497502E
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:53:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28C921F27766
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF818186E3B;
	Wed, 11 Sep 2024 10:52:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kI4n3q5H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2B7186E38
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051924; cv=none; b=oKNLY3vbcd5m6KChtJIbvKo69WC8xsKzfEK5You3v3be13vsAsMch66f/Lsf1jkEWz7evD/dN0+WCH1jsjMwePM4U+aaM+c3AQYJQ0EOydh0IYVdYYgUhJh640/rEK3haZcqi1e1WqUdEg7+YlUCeHmdag0Nk8ltixaOF0qj4uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051924; c=relaxed/simple;
	bh=65thc9tzDm6H7x+WM+O90px7JCOHuD7dDIpYweu1nhc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z7PyZ+Vi/Br4UVSEoQ5MV3I71ZVljGhk9861NJGYlnUhet/jPEFdVEmHuFYSGjf1DjenYTMwJ3f8aR+zU3cJdsGxQYL1NufetYUBijoaXJ4+vXz96YBkWDWqdu023Aq+fhco0yt3nRmvKRr2vmEPP5tcuf+k2rHM44yrkWgHYWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kI4n3q5H; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-718e11e4186so1731414b3a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051922; x=1726656722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bntFV8pZ39/vd/ElxPtsnTHwc8+5+H7FcNeX9IYOSIo=;
        b=kI4n3q5HtCu9s1kGTEqUoqH8qr+eZ1mBAfbk4ThueJ5DIWYHWwxjn7zB8aw1TbJ3W2
         aUYXBIWqtzBHywfgy6wV9guQbVDxwh0ukA0f1MWOnxpjTZ/ZqZS5LLfu4L7fQxYXnb0b
         kUb/rBbApv1SiDAh4mj5537QVTt2Fh3wQu/l0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051922; x=1726656722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bntFV8pZ39/vd/ElxPtsnTHwc8+5+H7FcNeX9IYOSIo=;
        b=JCasYnLyUGpz+pc4ep2psmgBzrwT//NbLs+e2B6ZYOr6UNHm3RREQ/QpjoPTw3qoHo
         ojadz7wBsfZCwirLM2f6LPwuTK6e7soOJcJhZbU6AT+JS1+5+fECx8+/M4q67aT83tBJ
         osMLBPVoiti+zhffhoGYva67tHIdv6hiCALPLIKNDM5JKqr9UZ8W9ip6XYGUN0v2bzP3
         P5ZIF4TQ7OWOTGXxSMmP4sQCvJ9fzIGHsvwBmzbUQ3G8q7G3C/zPY68t/6hSmij92Gv2
         PNtLyPCNAFZV6kCShTAXa0JPk81MHgd12p6sQ8x7NkTzZlCmPYyocv7yjEMA6JdJJ3po
         4ZTA==
X-Forwarded-Encrypted: i=1; AJvYcCWw4Sze1jMbBwFWjzP+8CM2js8FO42AfXw/4FPG0Rg8DowjpytKGsQatjR9LXojVSvvT1QaEX7ukuq6@vger.kernel.org
X-Gm-Message-State: AOJu0YwF774V7YVJ+u2SB8IF04VkGoBioUgPvYMSjxYhJIXwRhmbO7zV
	2ZJQVFykr0jKUX934LsOs1PbCs/qSXATDXCP5fejXgEYFx1sKKFwe5E3fo6tbA==
X-Google-Smtp-Source: AGHT+IF0o/eQIkWaTGkC08fE/boVNtrfPBZgXbaJDeqLRKBeyA2VebJ72Ic2BKlFFjweXCqeEJZ52A==
X-Received: by 2002:a05:6a00:9484:b0:718:d7de:3be2 with SMTP id d2e1a72fcca58-71916df1f89mr3252259b3a.14.1726051922429;
        Wed, 11 Sep 2024 03:52:02 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.51.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:01 -0700 (PDT)
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
Subject: [PATCH v2 0/8] Add platform supports to MediaTek MT8188 SoC
Date: Wed, 11 Sep 2024 18:51:05 +0800
Message-ID: <20240911105131.4094027-1-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi all,

This series is a subset of the previous series[1], focusing on enabling few
platform functionalities on MediaTek MT8188 SoC, including:
- CPU performance controller
- IOMMU / SMI / LARB
- PWM for display backlight
- SPMI for PMIC control
- audio
- socinfo

along with the corresponding binding changes (acked in the previous series).

[1]: https://lore.kernel.org/all/20240909111535.528624-1-fshao@chromium.org/

Regards,
Fei

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


