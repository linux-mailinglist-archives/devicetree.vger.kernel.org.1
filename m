Return-Path: <devicetree+bounces-219215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6CBB88A02
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 11:44:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D35411C8674C
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5454E2F3C02;
	Fri, 19 Sep 2025 09:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GWCnsrOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C49CD2D0274
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758275085; cv=none; b=mH2ugNMXBFam3QkX35Av6VEieDYGLyNEDH66Epcw3cKdJetszKcZeDM/9eNs3Cn0IVSvoSbccM8t9SKxF2iCVqhLo0eqomkECZmAiTeqq2rA9bN70sCotZs+y0j+kq4fJMVUMNU71nRxT0gAAyB/buGzUfn1Wg3IupgyrTcLjYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758275085; c=relaxed/simple;
	bh=gnx8OYowmPyG0eptXXAsJ5VUa6MtNRmMjpLwkcj7adg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=q382gvn2ben4tp8JzBVC8KHhwpYX6cN6uSjJ1Z3UfYdB8tVJmY2s80llsC8D7RMxVxv2qIBuY/M9cYEhgiYbLwz2tYNiqKET/JmwOAyEa3DZ0uQ0iOubFxcSXMoCVmBSIhMtHtHdDsENrjyNfraPtNpFKn0SpOEUP2m0jv8BvLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GWCnsrOu; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-24b13313b1bso14293395ad.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 02:44:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758275083; x=1758879883; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ghigviIYQNJPpAFnESMX7MJpiIxsVP2mVPVT90nq2C4=;
        b=GWCnsrOuWgGUfqiyi10waekdXHZPGdj4K1jJicM9MWKUH12cBEb2MYzULka0yJmMjl
         bgQcda4y+COuDHF00P2+9wE68P/lEp7P8gJeMH8W2WNsbiARY3hKNHMDfL9qsl1KUXt+
         BMaYSfnpjyq11RjaXgQEgfMZg2F738AUZLmfiiKdQTwhyD9ajZiYQ74ssabPuIJUh4Cg
         RlUaQxNdV6MvBBKXuuWulnbePPk9i3XO2J0j9WkhPusxcjv0ezGQt+dowA8OKX2HEVOM
         BMi07Cx63/nq9SRzRnTI60GDlt7w+VhN9mOx18niklg7EgviZ/chQv9uuzdTdJQIOyyf
         pWkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758275083; x=1758879883;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghigviIYQNJPpAFnESMX7MJpiIxsVP2mVPVT90nq2C4=;
        b=Iup7fbRDj4IKEbBiBaj1tK4x8rxTDjemvEKwD03Dg8Vw9t4wqVjyWk/dsANdgA24j1
         7NFiOtLbzcRDDve/RKyYavD5BaTJL9FKbLo5P3ScRa/nIBGsahkc58tS8YyXR/BMZNd7
         aHY7qUIGQHQXpDgUEo+PaSS9i+yRSwqVG7IWMnV4qe37n5wNBn9mhycD8cNdjWHJ9HyE
         RqT0Rd+LkHCCO/EeJZwKH9hSB7P9SlYBm7Y2GwYlpYqHdtTDQIArHLMuZ1h17vo6y40M
         EdaXpnyB/Kb6zGMqqgHkxTiZDVKsECB9TCySNQlNFS4gq4hu4Xd3exTyp8qLNLvSOKa4
         TpKA==
X-Forwarded-Encrypted: i=1; AJvYcCXEfVfLpPLj1lXYmF3o+Pc3q9se8nvf9IW6bCzjZwkDcOzE7Wna/13PayE9V3qmTjLVqWyM0Gkdc4QS@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0rtCqTTOlYJ8dS1y/fdQwEJYN0YQ1wOmnHknJ6GbI/ECLAucv
	4jl+E4KSzOWOxkghaYYCuxhW1Lk2pdry83Xll3KbxiNYtgBReNbqaue7
X-Gm-Gg: ASbGnctRmHB15IHULnOrUsEyE5K/iLsHtiKTmCTZH9ZXqjiohLoi1EFUgOo9lpvl2jq
	nyWzAy2pnpczvR2HEDHJTo69EWAaW2hfglBcQs85a1x/MyDoI7n26BCrb5Jb7x7lYDZ3HLiPzoG
	DwS3TJJle3Su7qKxcSTyppMrd7UJTTLPdWFEXok+lfpdIwx9Ld4URr+Fn5/FvusW00Qv+74KDNz
	VD3C3ssCQXc4l8yyRJqASMqFbj/ZznhsboTNd4IrLpBJUALNziQT4PCafT/3mnPZPmSW+K54zvm
	DfiE5DcOMLAvB3RpD8V3MZK6LvOo/nvLRSt3h5edfuHy23kBA/qLtsXd1tjH3+m/7Y16GcPvMvF
	2l2iuh1ex2Mz9hN3Erzj0uDhMeST34A==
X-Google-Smtp-Source: AGHT+IEoz1Z5V2ruf2DnZV6qmz/HIkkQybi10jLkFCL/cc2Z2qwAM1tXJQSJS68O1MmTO0ljYoJnaw==
X-Received: by 2002:a17:902:e84c:b0:267:9a29:7800 with SMTP id d9443c01a7336-269ba58007amr38353735ad.59.1758275082995;
        Fri, 19 Sep 2025 02:44:42 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3304a1d22cfsm6221873a91.7.2025.09.19.02.44.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 02:44:42 -0700 (PDT)
From: David Yang <mmyangfl@gmail.com>
To: netdev@vger.kernel.org
Cc: David Yang <mmyangfl@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v10 0/5] net: dsa: yt921x: Add support for Motorcomm YT921x
Date: Fri, 19 Sep 2025 17:42:25 +0800
Message-ID: <20250919094234.1491638-1-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Motorcomm YT921x is a series of ethernet switches developed by Shanghai
Motorcomm Electronic Technology, including:

  - YT9215S / YT9215RB / YT9215SC: 5 GbE phys
  - YT9213NB / YT9214NB: 2 GbE phys
  - YT9218N / YT9218MB: 8 GbE phys

and up to 2 serdes interfaces.

This patch adds basic support for a working DSA switch.

v9: https://lore.kernel.org/r/20250913044404.63641-1-mmyangfl@gmail.com
  - add PHY_INTERFACE_MODE_REVSGMII
  - remove mdio_verify()
  - remove uncessary fdb flush opeartions
  - rework mib reading
  - set port pvid by port_set_pvid()
v8: https://lore.kernel.org/r/20250912024620.4032846-1-mmyangfl@gmail.com
  - rework register polling
  - rework mib reading
  - other suggested code style changes
v7: https://lore.kernel.org/r/20250905181728.3169479-1-mmyangfl@gmail.com
  - simplify locking scheme
v6: https://lore.kernel.org/r/20250824005116.2434998-1-mmyangfl@gmail.com
  - handle unforwarded packets in tag driver
  - move register and struct definitions to header file
  - rework register abstraction and implement a driver lock
  - implement *_stats and use a periodic work to fetch MIB
  - remove EEPROM dump
  - remove sysfs attr and other debug leftovers
  - remove ds->user_mii_bus assignment
  - run selftests and fix any errors found
v5: https://lore.kernel.org/r/20250820075420.1601068-1-mmyangfl@gmail.com
  - use enum for reg in dt binding
  - fix phylink_mac_ops in the driver
  - fix coding style
v4: https://lore.kernel.org/r/20250818162445.1317670-1-mmyangfl@gmail.com
  - remove switchid from dt binding
  - remove hsr from tag driver
  - use ratelimited log in tag driver
v3: https://lore.kernel.org/r/20250816052323.360788-1-mmyangfl@gmail.com
  - fix words and warnings in dt binding
  - remove unnecessary dev_warn_ratelimited and u64_from_u32
  - remove lag and mst
  - check for mdio results and fix a unlocked write in conduit_state_change
v2: https://lore.kernel.org/r/20250814065032.3766988-1-mmyangfl@gmail.com
  - fix words in dt binding
  - add support for lag and mst
v1: https://lore.kernel.org/r/20250808173808.273774-1-mmyangfl@gmail.com
  - fix coding style
  - add dt binding
  - add support for fdb, vlan and bridge

David Yang (5):
  dt-bindings: ethernet-phy: add reverse SGMII phy interface type
  net: phy: introduce PHY_INTERFACE_MODE_REVSGMII
  dt-bindings: net: dsa: yt921x: Add Motorcomm YT921x switch support
  net: dsa: tag_yt921x: add support for Motorcomm YT921x tags
  net: dsa: yt921x: Add support for Motorcomm YT921x

 .../bindings/net/dsa/motorcomm,yt921x.yaml    |  169 +
 .../bindings/net/ethernet-controller.yaml     |    1 +
 drivers/net/dsa/Kconfig                       |    7 +
 drivers/net/dsa/Makefile                      |    1 +
 drivers/net/dsa/yt921x.c                      | 2897 +++++++++++++++++
 drivers/net/dsa/yt921x.h                      |  505 +++
 include/linux/phy.h                           |    4 +
 include/net/dsa.h                             |    2 +
 include/uapi/linux/if_ether.h                 |    1 +
 net/dsa/Kconfig                               |    6 +
 net/dsa/Makefile                              |    1 +
 net/dsa/tag_yt921x.c                          |  141 +
 12 files changed, 3735 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
 create mode 100644 drivers/net/dsa/yt921x.c
 create mode 100644 drivers/net/dsa/yt921x.h
 create mode 100644 net/dsa/tag_yt921x.c

-- 
2.51.0


