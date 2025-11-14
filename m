Return-Path: <devicetree+bounces-238406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94813C5ACCA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 01:40:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E28893AE7F4
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 00:40:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87C68251791;
	Fri, 14 Nov 2025 00:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bGhS8/Fb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9070D242D6E
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 00:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763080716; cv=none; b=A3XsjUB6rO+yve9ktjSKS6IxixAz8idDQ3oIf9V6zvAg6DT7JqRQR2QZSa5v94mj4JWn48j7wNmBAdww2ZHbCnPF0xitLgRyxB7qTz1GTxDoEKyh4VH9Pm8PBK+OOmuFoMnm4h+H/Eavi0fwlZWjlKrAEj70RuPCIYIyVsK7GFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763080716; c=relaxed/simple;
	bh=KRzqLJ2KAD3SSV1T/Z+RQ+x63XYbWGfjYNte8LTxVXY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZwMtQvopNMU7UkZztAG0gE7JhI2WGoNHxAmz50jmzUwZBgtluORgwcYtoNDi+sbSoNBuq98bzNrJjivm6qOFxcWE+ThdiY3MwGcUMmEGbcShG7UdUVcoec839AFTeqUs8M8bHxknAC1wt/eLardXM4VBC/QxFBhHMQH3X2Zv3cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bGhS8/Fb; arc=none smtp.client-ip=209.85.215.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b98983baeacso563808a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763080713; x=1763685513; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FVPzw5zfoDTWTXFnR/h7NqjV1cTezTe2Ib/OrTkeKgU=;
        b=bGhS8/Fb/FHBMkrfkGP857BFqMYOfa7bGcmXHI4bSwAppLjBpb3VfLCMNJ/ke2aUBd
         ySohgjOSDNSa9D2AUEpW9H1XBqOtRSN3r3tEfetJgrj7auIhWmNrX7uobT1iqZ0Vt7jq
         W/neKHMuxnnnhUNLF9p0alvge34NO2M/WQtsfkz30XRZaTQRCcYEw/RRKgrXeslPhMad
         I3TBPrdFnav6R4IisHQhu/wnAnS3minLfXTI/c848jFB2ZC98E2sF0zgBQ2XUzTyFH8P
         mJQ8me3wki2uQZG4X4o+3wuTVLRhR+9PwGnURMVdYFZoAPHNUss5Wo9cT7sQp1kWxjzS
         iwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763080713; x=1763685513;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FVPzw5zfoDTWTXFnR/h7NqjV1cTezTe2Ib/OrTkeKgU=;
        b=NGg1TQ+GTIMRMXBVyR+DtnUfBM5g5gWPOPBQh94bpcr+afcQqw9LLZ5gmWR7droSzJ
         aGyVnSXppRHa3GMT55BoeNEfP+6T1igepQCC3ffkPO7DuDJTTDJtvCTtSCnxVSSWe/Nz
         5IOqd3T/eeRxG5p4Twb1guiTVYuxOwpFtByqp1qmwZR4LnNtxPqg5MLOqD3ROD2qIWJi
         koZSW9K/huyUbKN1kJvFw+qzJp4Xn9KycE2Qa7ZUUzHxZPVSnSDrfdQe/SXe/oP+Cevz
         JOA32o2HXz+QO15Vz6AiptJeaWsdzvDjyLDg/GSap1O6tIji4VUQnWQpK1NFuvJTs+aG
         4mIw==
X-Forwarded-Encrypted: i=1; AJvYcCXAkyK0ZyX5ZXBqX4luViHXtHliXh6huRM4zuIBlTY/4wrxouxBeIVcZxY6jZJEz7gvaxXpZ+Sc6TW9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ZCCv6HBFG4Y9WBkPdCRflkBQppbUh2cGzFY5urInxqFA6sP2
	WxYwOnNogJs7VMGaztjG90QK+Ma2kxYPFE9raN2l64dbebuCqO1oEeGC
X-Gm-Gg: ASbGnct8I1SiqKIXufeqQbX+9cHIrjZol6SixpQGgRrHTZYZ9tgMqEIiIubZAXz21iv
	0/wVjE5CtwyoKFtczjUt8bA3vn+mr9Tp10MteC+ksIxa/1iPrb24qIdVMj1RArJvsN/yRL7+4Dh
	wM+RViK1+d1NFsDhQmmg/nWZWP36m+YAfZA5Ahjg0ZPuxaAD8FYy6ZZZazmU4pBuAN5wbLz88gT
	aDCZq9/f7JhfNxRNXrAAOugqtsx9Gl2QaD+l/zvcaJJ3EIKOxzORXTKinBwGZN5gIqQjin1bCEL
	0bd69Jy96sSGB2wIGF5tFNGb9BZoTTCynGclHe8MyYfL3IKsZdlXUzbPeN7DgSVPhXRERe3tSnQ
	YHum7R789/khLFOuDlwHUFT8oVIGVmAG8EGBsh7dmwyo/7Qz/oG0f/dXLcqfsjyd5HbU96sThEw
	g=
X-Google-Smtp-Source: AGHT+IFMN4Id0VDWD4vgNY5yrLAnESY2doxKYngxGOLEfNZ2u1GtM7J0GBLB9kpY4AWTmMpVtXfBvw==
X-Received: by 2002:a05:7022:6284:b0:119:e56b:91ed with SMTP id a92af1059eb24-11b412096e8mr571996c88.30.1763080712752;
        Thu, 13 Nov 2025 16:38:32 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885c0sm3384978c88.3.2025.11.13.16.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 16:38:32 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Han Gao <rabenda.cn@gmail.com>,
	Icenowy Zheng <uwu@icenowy.me>,
	Vivian Wang <wangruikang@iscas.ac.cn>,
	Yao Zi <ziyao@disroot.org>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH v8 0/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Fri, 14 Nov 2025 08:38:02 +0800
Message-ID: <20251114003805.494387-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As the SG2042 has an internal rx delay, the delay should be remove
when init the mac, otherwise the phy will be misconfigurated.

Since this delay fix is common for other MACs, add a common helper
for it. And use it to fix SG2042.

Change from v7:
- https://lore.kernel.org/all/20251107111715.3196746-1-inochiama@gmail.com
1. patch 1: fix a mistake that using rgmii-txid instead of rgmii-rxid
            for SG2042

Change from v6:
- https://lore.kernel.org/all/20251103030526.1092365-1-inochiama@gmail.com
1. patch 2: fixed kdoc warning

Change from v5:
- https://lore.kernel.org/all/20251031012428.488184-1-inochiama@gmail.com
1. patch 1: remove duplicate empty line

Change from v4:
- https://lore.kernel.org/all/20251028003858.267040-1-inochiama@gmail.com
1. patch 3: add const qualifier to struct sg2042_dwmac_data

Change from v3:
- https://lore.kernel.org/all/20251024015524.291013-1-inochiama@gmail.com
1. patch 1: fix binding check error

Change from v2:
- https://lore.kernel.org/all/20251020095500.1330057-1-inochiama@gmail.com
1. patch 3: fix comment typo
2. patch 3: add check for PHY_INTERFACE_MODE_NA.

Change from v1:
- https://lore.kernel.org/all/20251017011802.523140-1-inochiama@gmail.com
1. Add phy-mode property to dt-bindings of sophgo,sg2044-dwmac
2. Add common helper for fixing RGMII phy mode
3. Use struct to hold the compatiable data.

Inochi Amaoto (3):
  dt-bindings: net: sophgo,sg2044-dwmac: add phy mode restriction
  net: phy: Add helper for fixing RGMII PHY mode based on internal mac
    delay
  net: stmmac: dwmac-sophgo: Add phy interface filter

 .../bindings/net/sophgo,sg2044-dwmac.yaml     | 19 ++++++++
 .../ethernet/stmicro/stmmac/dwmac-sophgo.c    | 20 ++++++++-
 drivers/net/phy/phy-core.c                    | 43 +++++++++++++++++++
 include/linux/phy.h                           |  3 ++
 4 files changed, 84 insertions(+), 1 deletion(-)

--
2.51.2


