Return-Path: <devicetree+bounces-244141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B38CA1A7D
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:21:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7B40E3008EA7
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:21:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D27F029B217;
	Wed,  3 Dec 2025 21:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jgiPkjBe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0236E189BB6
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:21:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796874; cv=none; b=FqO7++ojCiyeUDhaHgzFGRCYldmLWd+0xlKTJPyHp9C5nZG3Se9YZaFWlaE4JXVmDIguksgG3s17Z5Vlq6DPmBGBqrMVqG33hDK9pk0+0i31nxwnPG4dPNeQ5ywaPPsIjP0Tru3bjYnSyix0TnKQfUhw66UA/NWE/R3KVW4KQW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796874; c=relaxed/simple;
	bh=Zk3MEDuhj8T6cNPtbw4xHlfD+QlH5E0Gxc9yD34asak=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=vBGis0mLZcRpJl6sr0mhRWgSORtqCrmIHHGotKavworsA8yfs/FwVCV1aboBadwQisAThSx0k1ttablgt/8uEH1WkmxBylsFIsdgUqs2hIpX3ocsITMiUF0t/gEdbDN7g+f7AE9FFYtBOrz/7G2PiApK8TpmtXDHREBcEaqMg2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jgiPkjBe; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-47796a837c7so1630715e9.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:21:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764796871; x=1765401671; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mex+iFQuIV/0Ik9O+xAwix9ls6VQnAB9P3pjCjfm7do=;
        b=jgiPkjBeVBMh/IVc2FAUiARN4DYesbOqkZwqXCisSXzjNPHtstPpmbK2fbCWonjDM6
         4ykfAJ7OdQICLdlouW7d34msGBYSNztT/G/3alihUAR+XdrIPXlmx1o0IDI5/YohTtDZ
         x7zstV9eeA0JsYkmQCSZmrU6OC3beURpPZUqW/ddGuE476lQBT/16986978tEnPkuSvJ
         j0VZL2dbUL09leIntT/bdu6QOxqUTAI61sHcpZRUfn/4AvZsxBn74e+fM0M1ujIKccS0
         D4W+c4pXgSySlr59a7sSv7/DehT2PPev5pbf9BQ/gLs2M3/VH3McxH1OBnVRPJvmQqaP
         dyHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764796871; x=1765401671;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mex+iFQuIV/0Ik9O+xAwix9ls6VQnAB9P3pjCjfm7do=;
        b=rUYvfZA6MIT29cDW0FGSdI5l7QEH0a9NTwHepJWa6DeXp9RFEInMeNKxpe7XJFSlBM
         ymJP9CcMJx5M81h8uRTAJK1swWNDPi/BvA43ykf/Ijvc6nwJ5pNIwUXdq2g6xsnpk3xK
         UAfpXqTYakN1a+P5KhvIbsxN05acFHjjmnbRjSkYeDpVLqZjQM0dLKAssVcoDmme83Qy
         El+9FK4zK9qcuj+xd/HkYXS8KlQRxf5TzhSDdflK0C+Wq147qSMzrgKIhIw2Z6J80yCz
         f05hlaTaw013NFjyhDl5pEBloaYDIxi9OIBbj89B6sanys6S7x8qhOjdQdYASVR7mw6d
         bZbQ==
X-Gm-Message-State: AOJu0YzsXN0wWxBWSFWWHsF4S3hDHSkUqqcEE8G+OVPeKifJqtIQ9Sma
	nXwBHeFOdq0hKoc1QyrHME1e8m+FROB0bDw2fsoJcnZWL2oW/kl7lFFE
X-Gm-Gg: ASbGncvAYblSucw3Zs9cSudDasy+8kJUlOkSJaGJmUYatk/7lCnt5ICjUETWvzCHEml
	AlAaGBTSK201KBKWfGpGmC1+VFPnF7wsPOZ78L4GOWeNwEy+8WuXGihoWetn2ssDGckeDzmWwNP
	yKeG/pXlYCXXU/8XksLpQFCdzAqnKKytvD+6+mZLl7wPctMa+kToXK8J82JXDhB+BdMl8e2bQZp
	aZA8lzHF2GsGDalHkLOryxhcyZGjrvwkOBziSaozDw4NV3WAk9xZ5J04dnHDxuVCPzkQ9jS+CXS
	/8YyDtOK9cXh/hiX36y58w4A1JQNxI6ot35O5XZrMxKApf7wetT/dDAshdNstJht3wytiUAL8M1
	5LMdXTNjLFQ5vSR8fuA99urzdpdxGp0Ri/Hapc8NLRGpWrzwtSW+oVe1GRunoLXii9wA+P5vs/h
	iDzVZJCe5rM//qlmWlBY7Cl68V7rurMxb+OM5M
X-Google-Smtp-Source: AGHT+IFZUeelZJ5F3kqcCFdVqRaV/e//mJ7O77jwvUW4t+w4XWfk+xyTxPI1msMcQ7W3qyrTtfwgYQ==
X-Received: by 2002:a05:600c:3b26:b0:477:7f4a:44b4 with SMTP id 5b1f17b1804b1-4792aee39c5mr37314425e9.1.1764796871145;
        Wed, 03 Dec 2025 13:21:11 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:2034:6883:1f40:e708])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c81sm41648667f8f.3.2025.12.03.13.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 13:21:10 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Subject: [PATCH v5 0/5] Add support for Ezurio MediaTek platforms
Date: Wed, 03 Dec 2025 22:20:36 +0100
Message-Id: <20251203-review-v5-0-b26d5512c6af@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKWpMGkC/23OwW7DIBAE0F+JOBdrWaCEnPIfVQ4UFhupNhFEb
 qLI/16cQ+S0PY40bzR3Vqkkquywu7NCc6opTy3otx3zg5t64im0zBBQCwTB1xJ9c6MBDGpjrRW
 slc+FYro+hj5OLceSR34ZCrkXDnslFHTSvIPec8E/U6156npXbsd+dOmr83lc94ZUL7ncHr9mX
 Ff/XJiRAw8eQ1SKyBvaLKwXZvk/k42BidZFI5WI4TdTW4ZPphqzMmof0EFQbsuWZfkBLw5LX0o
 BAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764796869; l=3316;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=Zk3MEDuhj8T6cNPtbw4xHlfD+QlH5E0Gxc9yD34asak=;
 b=scneNrWemOBml+JOtmHcwc5xULmq8tCrM8Zr8z2sRVSyj2OaVoV06JTWMVP8+/0hAMYf4QNH6
 vOT4ffGhuizB97iDscsSTIEfuEInDDuEpumHDLVykke4CDOrqGdiLss
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

This series adds support for Ezurio MediaTek platforms called
"Tungsten". It includes support for MT8370-based Tungsten 510 and
MT8390-based Tungsten 700 SOMs.

Changes in v2:
- Use b4 to cc all maintainers properly
- Squashed patches 2/3 together
- Updated dts node names to be generic

Changes in v3:
- Added per-commit changelog
- Added missing Acked-by on 1st patch
- Link to v2: https://lore.kernel.org/r/20251201-review-v2-0-dc2df44eec7e@gmail.com

Changes in v4:
- Fixed remaining DTB warnings
- Link to v3: https://lore.kernel.org/r/20251201-review-v3-0-07f9af7341fd@gmail.com

Changes in v5:
- Fixed DTB per Angelo's comments
- Added a MT8188 patch for easier mmc eint interrupt change
- Link to v4: https://lore.kernel.org/r/20251202-review-v4-0-93f5cd2a0d4a@gmail.com

Regards,

Gary Bisson (5):
  dt-bindings: vendor-prefixes: Add Ezurio LLC
  dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
  arm64: dts: mediatek: mt8188: switch mmc nodes to interrupts-extended
  arm64: dts: mediatek: add device tree for Tungsten 510 board
  arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml     |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |    2 +
 arch/arm64/boot/dts/mediatek/Makefile         |    2 +
 arch/arm64/boot/dts/mediatek/mt8188.dtsi      |    6 +-
 .../dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../dts/mediatek/mt8390-tungsten-smarc.dtsi   | 1489 +++++++++++++++++
 7 files changed, 1534 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8370-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dtsi

--
2.43.0

---
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org

---
Gary Bisson (5):
      dt-bindings: vendor-prefixes: Add Ezurio LLC
      dt-bindings: arm: mediatek: Add Ezurio Tungsten entries
      arm64: dts: mediatek: mt8188: switch mmc nodes to interrupts-extended
      arm64: dts: mediatek: add device tree for Tungsten 510 board
      arm64: dts: mediatek: add device tree for Tungsten 700 board

 .../devicetree/bindings/arm/mediatek.yaml          |    2 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 arch/arm64/boot/dts/mediatek/Makefile              |    2 +
 arch/arm64/boot/dts/mediatek/mt8188.dtsi           |    6 +-
 .../boot/dts/mediatek/mt8370-tungsten-smarc.dts    |   14 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    |   22 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dtsi   | 1489 ++++++++++++++++++++
 7 files changed, 1534 insertions(+), 3 deletions(-)
---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20251201-review-750072579991

Best regards,
-- 
Gary Bisson <bisson.gary@gmail.com>


