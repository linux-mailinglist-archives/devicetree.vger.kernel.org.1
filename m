Return-Path: <devicetree+bounces-231879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDEBC12321
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 01:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EDA4B567B8B
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 00:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A91A1FE455;
	Tue, 28 Oct 2025 00:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OdphfSy2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B88F4A23
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 00:39:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761611950; cv=none; b=t7n3EyhI8JyGpUUYYbIAcEexQWkbDVw7d41MZ2Dm8DzyrpxwP02a4zePo4Xgb5feJF9SBN5TwelL3YQk34DQlcQoQMkS2SlZi6gB2Y3BWExqZ3VWtddPEvs2vl1sybue4txfJvYl+41f9oQa8t8ynSQDoQUS+6G8hL/QywOePMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761611950; c=relaxed/simple;
	bh=92L3b4Ntl7Ogh3uo+qzMPWm7sN+t4dOvnC1FUrJY5ZA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=i7vHb+29f6n3AmmA7cwGM/sTv0vi9JkK5jQktDiVkCoPDqhDRrq/1Ht9EDhIU/PdEXFKLG6Z0GaautPD0KJliQc9yf0AY86apNz+bCPL+PcffvUMIYZ63Y8PoE5WDegGJkeW2Mn6QcNsWe/Q/eMMr17VaDshFn3SJlBcCcOojbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OdphfSy2; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-28a5b8b12a1so55330585ad.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 17:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761611947; x=1762216747; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8s7zFl+2eb3TMAz+jhCE+xRnt2/MEJ1FXnvoxEqZlz4=;
        b=OdphfSy2Jgme1nDOPVPRgiDi/WcEMqgEj9oqJreVYWDXtWlj8j/No49Bnhk33+G/8z
         SMv3rTF8uCbxR/87540IQ8FaSP4CtEEYboi7Pq5J0oysH++AaNmCXQOIgHXipKHZOvhH
         xYZ6MUd+pRg9iOIVK2G/9zVOHwZS1G5FtOicFdL/AlvHMKl9Cs9wYf5aPdTgE2koAqBz
         d53EP5jnFFhh2afZ7NlIQ50ncZ1Pl86O+luFde/Curv4XDrWC5foIHuOjPJoZbU6AO40
         JoDk7LiffKoQNvTULTrmayaAG3dyggEgL3QslANCMQM+DDd7O+iJaq/XqhFVRaAsBkIN
         Zm2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761611947; x=1762216747;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8s7zFl+2eb3TMAz+jhCE+xRnt2/MEJ1FXnvoxEqZlz4=;
        b=f1F8tPKzkFEGhuOMnI0yFYlzWSdMjRuA2CiPBh7CaNCtzICe3dg8oHV0kfHJ/ogEf0
         7EpKDaG+GF1JCiRHtrVA0zfIRz0jt/gu5kqx4E4vWI5G7lpKersHKy5F+Isuw3JLLjms
         ssiY7/aQ6uM2JsFsAd9rcG36WQaSWHv6YGqStCivIyxGfmiL9ZyCqZ3sCKK+/u9SqtKz
         VYPrwzgCwjcRIar7pcjYvaDXs0/cfiW+wzE8vJIoOLNDG4Pe5qFww50QUAPQ94kRegcy
         5HlZFtc/uNReckhRqcbTPbRflD35EDp/iFf2ZQ2Ov9pVIuwtUBt4X1R3ffRPNElSE6R3
         KDBA==
X-Forwarded-Encrypted: i=1; AJvYcCVSrKiZBDzbrLb4ObzJI8ZLfl80Fe/BkVomqZ8ODTYakuo6q7QQEGy67Ruaxr+h63ajaHabJUFAVNVo@vger.kernel.org
X-Gm-Message-State: AOJu0YzEZ4680YxxkBUspIV0MDK+z2rtIsYrYVGaH7JKxPX/+edwUaBU
	Ab9aFsCc/fOq1T9IC3wlgASPnub08ixC8vA0CxoUTeAN3UP8MAFVx63T
X-Gm-Gg: ASbGnct5/5HL2GNdBpnRf+intUsEX99SwLE6diiwsAG7XBQGubjEyv/LUU3AbJR3YXv
	WBblejR6wfBUcPVyd6YlQoElosTXhKlrjSI0VXqa5ZUesxRTpz11XeCtZ/vUDjRHq4zbdfsBX83
	2FIwCqn5B6d+Y+EcTmQRezbypAnM2qPhYJxSEQonrCtDT2q8T1vDzixDntBVoJ+2Ysdlgm4RApX
	PeeRKlDAgy+tZdSWTpZcBx+Et77Pt2CcCD/T2aYDnNLkgtdEhCmiLjZE8q/zjqIqrabb6zwBawZ
	Rqa9QhUGKajgZlxqfv/PJT/Kv8ACEp06W0Qe9LV81oHlGgZ6NSZoSjjmf6Ehv7veEQXPjUYaVFm
	s95HUKaq42LHVnT33UyuJbMjwXyhI89OoANIqjCMfEWLGOGTNf0oFFGX38Qjxv9sSpqk1zbLiig
	XXUlgarZo/Ey0TJSZ0pqhy
X-Google-Smtp-Source: AGHT+IF5ghXu9jBruY6ziKGQyMSMM4oq3ugUChPGlRqBf0309+0SovNGzWf+rJoqR49uQlRPUDRaYw==
X-Received: by 2002:a17:902:c402:b0:290:b14c:4f36 with SMTP id d9443c01a7336-294cb52db11mr21604075ad.31.1761611947142;
        Mon, 27 Oct 2025 17:39:07 -0700 (PDT)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm94353925ad.12.2025.10.27.17.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 17:39:06 -0700 (PDT)
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
Subject: [PATCH v4 0/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Tue, 28 Oct 2025 08:38:55 +0800
Message-ID: <20251028003858.267040-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.51.1
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

 .../bindings/net/sophgo,sg2044-dwmac.yaml     | 20 +++++++++
 .../ethernet/stmicro/stmmac/dwmac-sophgo.c    | 20 ++++++++-
 drivers/net/phy/phy-core.c                    | 43 +++++++++++++++++++
 include/linux/phy.h                           |  3 ++
 4 files changed, 85 insertions(+), 1 deletion(-)

--
2.51.1


