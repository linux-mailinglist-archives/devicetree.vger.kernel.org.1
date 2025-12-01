Return-Path: <devicetree+bounces-243307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C7424C969FA
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:23:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 54EBE342868
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0E01303A20;
	Mon,  1 Dec 2025 10:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nh3e4c07"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E48F302747
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764584616; cv=none; b=EHktFrgyyoyIBZaa1foFzLxVjORTbEssWB73IRSRwNDymo9QrDZWfQClj0iLHiYUupLZLBEeEkdiFYqPhFtQCrgmezoaY5cSiupkU0kpkTJ0ULN5hMkFDNwa5rkJaAWOzZ/R9uZm1moENoSa5AB0wGA3kwFTw5+mawlU+wAUGPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764584616; c=relaxed/simple;
	bh=y/Qwl4YPkUepvuWoy1jfQEPKPu+EB9i1kk8NpTVdZ5Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nor1H4Lm67UGuQ3Gg4xCd10FV8eZJLhkJoFWdztnjVuiYRDa8b7MHn5OHiWCCx1oripgMlYhQunmAMtjNa2FHfiZNkz+BuYnWe0X9OQpHSUHDeQ1z2rVYWG/qtu6JGY11chUs8BT4mIdeqko6fUM55VYyP3l0BxjzBWykWwpa38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nh3e4c07; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-477b1cc8fb4so23509195e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:23:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764584613; x=1765189413; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/aq5fWGVWti1VxWY/4bnYEN4VvYNMxggYcsTA53nNMs=;
        b=nh3e4c07P+sMJc8Z0WyIXiqDR+4vOLQLiV2A6Xzw9C45Ms46OUJNsNifY6e15sd3xD
         jZOjY61Mb3CWuF1bvB6+bUd1LVOsUJUzFXOkn/8vGVFXSoBT3+RAIp/TQw95faewbWo1
         0RfGp0VeKgPhSfsEfHEBkoCwCtRm9WWMVB1/qFcCs10LYXg5HhM7uISKaKZr2RFN0IaS
         WuBJ3p7F4jlBmDg3WcvuLE26MEhrYSGjLP/RzeM62oAyPAsFVuUyxDF2MutJObFrAEwF
         ZYiwOdOLL73Z+i17BpIvJ2tP+BfJqAu1lDWiSosEs1sWJQ2u3776TQq08Iv7UlfBMRjo
         AS8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764584613; x=1765189413;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aq5fWGVWti1VxWY/4bnYEN4VvYNMxggYcsTA53nNMs=;
        b=trie1EuqrjhMZl/TMMCHYz4Pj29kyvokKpV8pN/xFwBFxLV9mRBtSx0GF8ataoNLgB
         TjgNA1mCYbVZ+C4HP/Bn28iSSZb04/XxzybMkSRoo9UUybx8lTorIfycN4Q4hJLJX/eU
         dv/UymEydI1e6Rxq8cxm71pW5qUd3NMHfWyQdK3efoPNiSz88mr8vIvXxH6B9i0u0X7E
         W6xjje6Jop7fdiBKPzuS2tB5GobHJS0IKZk53bnFFmNXRWAvOcyUT4ENBtRlLn0J3zJV
         Hq1ISlzCqtjwrdHpdi1MHVUBaS+3KQc/2yPwWK2frzcy7sHAyL8+zZV0bNxMem1Dj+/7
         dFrw==
X-Gm-Message-State: AOJu0YxyUdjImPOQkO0d0VzJdiP65dGRL11BiOiqzgXvKzCUa28M0I3e
	eZC030w7fzY9POXBnX4rZnIoFOWBBxwaFB9CEdumQSzpTrutcXlj/Ig6
X-Gm-Gg: ASbGncsZaovhI5IaABp3yr4Cf7ukIrKItM3Ky0Jm+9lbFtT3RA+9v13bCL4LosQL/x3
	9bpiXxgtUguNS8hNjNc7omzpPevc82rk3qGMEVgUhIODC5GPQY/Qsu3AsVwbXRttw+JNwx+b3ZC
	TDcS5YCea+rAy7v9Y0Rdtdj5sA57fZAVf9Tu1pEIfRbhJyvKGQwXSsN8U64VJ76wRAiOynQ4DRD
	NgBz4fPFcte40PZiGFbsTUPAS07hwIgwD0J+gwT4UZNRfOVWw6vatDtFHYh2YByhrCbPEwmpu+U
	8VOFmdZ2vU0oL+3W1wIMdRCas8eNch+y7P0FFwgkOsuYiUpJD1LbCP0Nl8qGS5WQcDgDCVvFhKw
	qVP8SQUmp/TmludTDkkSDTeuaCOrDiE0mS4+zuuSh69tulAJ3+SSYFZV/1qF70jxM7b6RRgZhgc
	gXW4qD+xs/JE8k9XBps9CBbA9G8Q==
X-Google-Smtp-Source: AGHT+IGFTh5STldnmeUejFuBCNFwzUivENu5VIGhQtql5aFvAWUkx/tqlq9NXgNt2K7ubqXJ0e/UbQ==
X-Received: by 2002:a05:6000:2c02:b0:429:d725:4125 with SMTP id ffacd0b85a97d-42e0f35bbb9mr26849422f8f.54.1764584613159;
        Mon, 01 Dec 2025 02:23:33 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm29466439f8f.2.2025.12.01.02.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:23:32 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Subject: [PATCH v2 0/4] Add support for Ezurio MediaTek platforms
Date: Mon, 01 Dec 2025 11:23:14 +0100
Message-Id: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJJsLWkC/1XMyw7CIBCF4VdpZi1kwCLFle9hXGCd0kkEDBgva
 fruojuXX/Kfs0ClwlRh3y1Q6MGVc2rQmw7G2adAgi/NoFEbpVGJb0RPYQ2i1cY65xS0+FZo4tf
 v6HhqnkqO4j4X8n9zHHrVo9zaHZpBKHHmWnOSwZf3IUTPVznmCOv6AZ/HEueYAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584612; l=2132;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=y/Qwl4YPkUepvuWoy1jfQEPKPu+EB9i1kk8NpTVdZ5Y=;
 b=5/iUh1WOB7Fub2h2Y3ecTZKoHP9jfWojItMviKYc2zwnzsE2UkOO/rPF6T7HSOelfoNIcb6yQ
 ezfjdlR0l1jD+MvAemlSDIK44aGQ+gu3AYtB/afKC0mLRg5C3L2QFBl
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

This series adds support for Ezurio MediaTek platforms called
"Tungsten". It includes support for MT8370-based Tungsten 510 and
MT8390-based Tungsten 700 SOMs.

Changelog v1 -> v2:
- use b4 to cc all maintainers properly
- squashed patches 2/3 together
- updated node names to be generic (pmic)

Couldn't repro the schema issues sent by the bots.

Regards,

Gary Bisson (4):
  dt-bindings: vendor-prefixes: Add Ezurio LLC
  dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
  arm64: dts: mediatek: add device tree for Tungsten 510 board
  arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml     |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/mediatek/Makefile         |    2 +
 .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 +++++++++++++++++
 6 files changed, 1523 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi

--
2.43.0

---
Gary Bisson (4):
      dt-bindings: vendor-prefixes: Add Ezurio LLC
      dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
      arm64: dts: mediatek: add device tree for Tungsten 510 board
      arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml          |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 arch/arm64/boot/dts/mediatek/Makefile              |    2 +
 .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../boot/dts/mediatek/mt83x0-tungsten-smarc.dtsi   | 1481 ++++++++++++++++++++
 6 files changed, 1523 insertions(+)
---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20251201-review-750072579991

Best regards,
-- 
Gary Bisson <bisson.gary@gmail.com>


