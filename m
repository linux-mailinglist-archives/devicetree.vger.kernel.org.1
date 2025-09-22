Return-Path: <devicetree+bounces-220019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B9B30B91538
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:13:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 521004234BE
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:13:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E11730BBA9;
	Mon, 22 Sep 2025 13:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IWFhbB8/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8712B30BB84
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758546775; cv=none; b=D9yFRVRQCtln+Hs9A9GvrfRBSvZEtXZf/JDQ3fgD7RHdb+eu2B9cT+WHLNB83ALn+nUcLEZhiTIrs9/g9z3wSVdTAcEn58rdWqM/+6eA21VH46mR7Ez+sPgnF1bpucjvKSO1iFPZ6hgQJAdK0gVj3N/v4EqfZAmrZByKPKyciy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758546775; c=relaxed/simple;
	bh=a9IT38/YgE30TxvFOBRErEdsqKy9yWQ95qDhsIjrlXY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=oatAoPzuKT8u0vPEM4cFPe3cYjsf6b9R8nPa/XmvxgU98TOu3XUbOweBxUtaTodMUMjx4VVJ2bbpb7aZwdopEj/DKWOlhB4sc1Y/7rzzGdV5CCFHky/3qDi39lAjAsZhMBhCeVJSCCSWzJxNUYee3I/e3Hd/+mnQsYSyBHs6K8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IWFhbB8/; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-267f0fe72a1so29364375ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758546773; x=1759151573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xx9gMtcYoCJ+2xD3rT6C2fYdqw/RqtSlSakTHcv8vZg=;
        b=IWFhbB8/8ZBqpLuCskPtcJROastQcBc+OY8CvyO8bRTo+1b9FRJBFI0XXcCKjrHrAB
         NSb07yb9VnUdSc49nVzqL1a5/kTjXad/XO32jNwlQA7fV6S8K87Dp5wGAjb/F9m1tkjN
         EwhpIXamMXzaLfFYKDe7xCXxHaT2CXO0RJQq6o05LxOhfYr36Zb39dXGtzTfZK3OPTtH
         N22EVX40owrBYgbV+BbAsMXJk4Kag/lLvBhypLHlouNInXFq2yY2cODc1fbrVyI2/vtC
         7cgBlWWvmua09i0KJoaZ51D5bKqsNe0hjZvkPOIupgf6xCX37DykZIzKYEqkOZ5gH0b9
         uc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758546773; x=1759151573;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xx9gMtcYoCJ+2xD3rT6C2fYdqw/RqtSlSakTHcv8vZg=;
        b=X68wQtqFeUd2QKVsJinGEy1kcTvS1+ILzVrFnZoX53n5PimuSQksx9b1DefZSknmpz
         tXBk6O6WxB5XnX8iLPJ03nHL/UgyFt4MZKbjyLLcPCWoBj+m9RwtOwaYiKk0/uZhXnSa
         KpPzRTLe2Z0OzvBX+J1v03lhC+gR2/GY3m8mYv10wcPGksB3QDcdNIOfNcNgsprw1LIC
         bkxr9Wgwb37/Y3MAx72W0LCj8NsH1o3ErfvtxJ/iYyHqXaJxHA8RXK38Qq6O0FgY3UhX
         q+P0HOqRu+DnzP61ffYSyQuSO/JnmeSCETeveXXdbb+nElJnnkC8pParxoqv9lIdmkEJ
         bJ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCW6zWL1nEtp7bPi3XHmZbPTidaAJRWnpaRyaojlkHSiQK9GRbqZO/clAq6cl59VJj1ycyowP0lzNRpF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5Fm9ILxx6Ph02wEAhl7nZHDfQiJZpulIDF/FwYRJLoqKFjH0h
	KoRsd8EFA+keGkjz0qB4O34JgKQmrhTDBnXIFfejleGN0dS6Pv3Um1T3
X-Gm-Gg: ASbGncv3d6MvP4ICocRf/+zyV562rqIhWTyMnOyD9QN2Ewh3oBpBEmU1ZOxXZFrefwd
	XJz+QPx8W+4jQieAU0b4ALMvVm+7D3yjC7zeYgpGjGm1kDm4cfZj48iwHrslvzmhdNSPRS1iBa9
	D/yCNcisgDZ2Ihhczu3BVZjt1I7buOtzmnABqwv5/5Z+TAZSroNV0vngpT//mXLjxnt+8eplEEE
	XVOJoNUjbrwVZfA4RtT302LORXkBRd/i9Wj5Vn2GcGHf0KAxOJk8kuNCJQ5ocgNX9qkL+pxcTGK
	abtr2iC2FTD9xvHgsV9wjWCA+cjG/9cCEFnoTe+mon0ooKziEYe/z4I+Hs64CW/zT0yVdg/aUPB
	pg1W5fGGrwXratEomy5a62JPBhS+kZDpkQvC07jW7
X-Google-Smtp-Source: AGHT+IHE/jQJH1NLyrzTtcO+60SXwYUiA3WeaGUMOwlBf29ei7GPgUIu1/VvVl7vQwDxxuZQuLDQ4g==
X-Received: by 2002:a17:902:ef07:b0:264:c886:8188 with SMTP id d9443c01a7336-269ba432f27mr189680355ad.24.1758546772638;
        Mon, 22 Sep 2025 06:12:52 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016bff2sm130200055ad.35.2025.09.22.06.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:12:52 -0700 (PDT)
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
Subject: [PATCH net-next v11 0/5] net: dsa: yt921x: Add support for Motorcomm YT921x
Date: Mon, 22 Sep 2025 21:11:38 +0800
Message-ID: <20250922131148.1917856-1-mmyangfl@gmail.com>
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

v10: https://lore.kernel.org/r/20250919094234.1491638-1-mmyangfl@gmail.com
  - fix warnings related to PHY_INTERFACE_MODE_REVSGMII
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
 drivers/net/dsa/yt921x.c                      | 2900 +++++++++++++++++
 drivers/net/dsa/yt921x.h                      |  505 +++
 drivers/net/phy/phy-core.c                    |    1 +
 drivers/net/phy/phy_caps.c                    |    1 +
 drivers/net/phy/phylink.c                     |    1 +
 include/linux/phy.h                           |    4 +
 include/net/dsa.h                             |    2 +
 include/uapi/linux/if_ether.h                 |    1 +
 net/dsa/Kconfig                               |    6 +
 net/dsa/Makefile                              |    1 +
 net/dsa/tag_yt921x.c                          |  141 +
 15 files changed, 3741 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
 create mode 100644 drivers/net/dsa/yt921x.c
 create mode 100644 drivers/net/dsa/yt921x.h
 create mode 100644 net/dsa/tag_yt921x.c

-- 
2.51.0


