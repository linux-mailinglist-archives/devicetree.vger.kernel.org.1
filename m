Return-Path: <devicetree+bounces-234193-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BACFC29E89
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 04:05:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 55F264E5B52
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 03:05:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7DE32874E4;
	Mon,  3 Nov 2025 03:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KN48o2W0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F84527C84E
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 03:05:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762139144; cv=none; b=M0ISKwqtWvxTSaGyOiFCAlAZq2bNj9ZDd/Iz8W7E3b7iDVJDDCi+0rZjdb17sxmryIFCGRCkiqJASiBlMojrs1lLUhLP7/dAifChgwpmNdxS2hliQphewdPTDXcfl3F56yOAemYe/33Mp6JVcvBowQsFcA6IHmiJwDybKzpJAX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762139144; c=relaxed/simple;
	bh=0som6ehbnOrZUCiYGu7DmOQpitEQpLK/28RN7gfEbIs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z42TJa4bN8CBbpRo9HHN2jR1gAkPwLUciNLL5AM5K0r4ufWjSmxBxcbXy7ZBPYyW1HX+knqZVyfbzA8xaHy8iCcKIy+J75LRbuIepm0ZFHlCwXF/PtjkwhKHVBM9k/JgxNzTMGNyPz9UVE7HkTWyQc13bvS2o33hJSAiFaql4XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KN48o2W0; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-b95cdcacd95so1127147a12.0
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 19:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762139143; x=1762743943; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Sf2MtafIziFxv0+iZSQBAt6orU3b9FFBk8saiJeqI+U=;
        b=KN48o2W0KeIoGD0EwyVQvCypK9CxITQkktS6a4J2RLeF8LUaUB7LHQXvV6szbqauDq
         D+Ebhr7Vj0nZG5uvrCvP12rmJt6RvbLmOYtZUDEU1+iwWNC7u0N2e4ZeKE8b+MPTS0S1
         jTIO8Kt6lYux40PYurWOPOqaTs2QhvxM+wIDLD3GCHmrbusL0yWNC+waKhZayiD+k3Z0
         eH0x+NxTF0tGYdHzJRQX6fheO7u+3RMqriJSs6jtNqjLlw+bBHB8sGqUmbcrbaohyB7L
         ycmudcz738K2+pvL0mwFkHRDHRFhlwRlQPtj1LCYXo6S4MACFftP8stTcw5JxCTgFnrv
         P0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762139143; x=1762743943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sf2MtafIziFxv0+iZSQBAt6orU3b9FFBk8saiJeqI+U=;
        b=aO5xJ4zzE1p9bIzMGenA3roa35DhcDDRA9dwgrXr0LN79aDxBKCrcP+xUyffvu+oIo
         4QAlxFMVJ7JQTfVWbX/7scxFdcqEk08huaHJKkIFtKNAQTyUxQge7Qql9NqfxRakRx3k
         znVqFnl3twhR4BxU2k1iDoQztEHa3Q0uYEkTrvDalAtp68yre8U5daeMLMdYo1p2umlg
         AHU7tY2TrFWGeWzpkUxJB61V8hxfJgj4msc/i68EEKbxOfSa+dXMNebXclHIN0gntnoS
         Rsaxko5ahPrcgkRt/EF9fwsYPd9n2ofg20a2cwAhci5ni6o6k4c8+GfyZfQRrwC7hAGH
         fKzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAWkT2pjwr2kIYifNv6rkEaPhuR2FThTAqwVHU/PVZtuOoeHxeO79SFgtPY8Oxu+C2zFbRcYl0NRLi@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7E+XcRH+tQAbw2U2B/T0CnMfc3fiRYBy41sq4lBCoD+PamMdF
	B46hG/Gs+1EXVUMOd26UBm+IftJmDu3/ohaP2kBsB3ZQHfraLdZZmmCY
X-Gm-Gg: ASbGncs8Em8zNdmc0FJQLY6CbqXFH6ZPvpiDMH9YpSixnzF34cyhO3R07h9rKJO6HTl
	iJZNEFA1wsJs9vhR1c7KQz2A5GAxAtD74d6fLzE0WFn+SunpoLfvT8CBuquGqztGLiVwFFGwUSZ
	WqBl8ikkZbOL08RgbDXV9Cn3C6aoyQq9PwPkLv/22j6FlRsm7PBo/1snOZRZtJuL+vBN6XjR7Ir
	4yCXnfpd1vdPAvx0jzCK8Jbm7FSS5xpUZEcPvqF8R0fFo8mQEmQvKu/K9SPZORgsi2+r/fS+OgJ
	kWC8dOEnr5Zenb2OpQapkzRjFASx/xveOoKlEPhagIL+Pf45kZSblVu/UBy8Z/Z86yVXyYXkoOU
	gdgNdg5AvYenP6k1/grusNSo1E+zTQNFvvaH1RzKpXTs1myhUBgMCZDdf59PGYWJ54HuEFPcHqq
	PqsINxoX+tZg==
X-Google-Smtp-Source: AGHT+IGYS/nnpitzE/eUQ+F68Ex58b2ct1BccZhqdFnCOq0bLpSK6sj1xCHRpQ3LEE1D/LOlqIwsLQ==
X-Received: by 2002:a17:903:2286:b0:295:4d24:31bd with SMTP id d9443c01a7336-2954d243448mr108631195ad.17.1762139142642;
        Sun, 02 Nov 2025 19:05:42 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-295c2eb15f5sm11691785ad.2.2025.11.02.19.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 19:05:42 -0800 (PST)
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
Subject: [PATCH v6 0/3] net: stmmac: dwmac-sophgo: Add phy interface filter
Date: Mon,  3 Nov 2025 11:05:23 +0800
Message-ID: <20251103030526.1092365-1-inochiama@gmail.com>
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


