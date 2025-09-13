Return-Path: <devicetree+bounces-216725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 42031B55E73
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 06:50:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E05B8AA5195
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 04:50:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C63B2E0417;
	Sat, 13 Sep 2025 04:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C1MRpVvW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C127A2DC793
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 04:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757739047; cv=none; b=TTOBbGWsZwJ9/bcWzk0P7a0+YVpa3Z0l9uE7dwmR91EykC4O5KSHEpLIw2Mnky3CeNZf2wtdMOzVyNfV9CWsUjQfUk9MLFDf1D/0r17bHhsM8S5G0nzJUpdE20/5kM3WDBr4h2Wbyey8XmoJJGPAkmm0H+v2oa8/FJhuKCACPQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757739047; c=relaxed/simple;
	bh=E+IaHxGVsD0yqOsPFzhPZHmNqerAvsUPc47snlfkNuo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=L2TLjW62Tv65w6Z2Vixam1PVcBMSW9d+qjxq27q60Yqr9xXRcEnDZUPqzj/U3BN9k5tkUl4Q/9a3MrhG7iGTI+dQ6m5pZ3ZCP8qqPpa11btr8oSud+UyDN4V+0XXvCkaRDJA8ZHj/iAJ2TQJnjO0NT0yCCswng3Z8g7mhem6oB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C1MRpVvW; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-24456ce0b96so29826285ad.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 21:50:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757739045; x=1758343845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UQXdvOg5bcf9knzZssYBOq9LKQ9fdnOs554ly744aEs=;
        b=C1MRpVvWTaLafSH6tjsgkYmsCePDkIh4sKH/h6rxJeWVbpmnw06xaz8SUbc1oMC7WR
         2quKMvd8OFpDuK+v2dplYaSBvwJRr4cxTzxjtDqxFClkUKPJmGQWyYbqB2mhCEJgueos
         RrJ0y6mt+DtP39hrxnaBvQ2+j8F2sjWLYvW4pPr0zP9h3hfaoj0cTStKpXkqACTULpUe
         HUcWEnTG06nFeYXZEzt77Ie41f0zibfR2apiuPonjSN0y9vDU9mGw+ULRayilxkdmbxi
         sNfBWw3ED2tE9kxDFN8xOoNVCH920QO5d//94fgbqznz32V4Vv08fmIhh6owYkZfUHaj
         yWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757739045; x=1758343845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UQXdvOg5bcf9knzZssYBOq9LKQ9fdnOs554ly744aEs=;
        b=UTiRiM2gS39QECGPdifRUFyOFQ1CFkC5LFAvcRctrsrYnYTn6q0m5+dtjf3LU/p0Xj
         2iQ8k2rs2Y+DOe/fdjIauPnRo2AM9JEQNHyT0DOKuQEU3aw/Oq+f0T+tNiai2O4mnLUe
         9Ca9+zDqla6jSdyQDfO+gA/V51/qsJWtb/T+OqA54TrEBavPjrwom6IoN595q3ew+LR7
         TzEYIWjrOKo2u5s6DiAOdBAv784cG1xfLI8tWmO1d0AuM6rJLOWVdqBNApAV437zmkwc
         GPbbu8KeL4pYWxHmKoH6E2X7vZlvd0B5LI5ut9a+5RiDBXsd/swJRZ9pHFqZmanCaqEg
         A4GQ==
X-Forwarded-Encrypted: i=1; AJvYcCVODnePwb7VG34tRkJh49FdDG1qRi2ceTPGtVR0YpzBnb9hfOwCoXXVS8qloNOLDyNRnxKTn0KrcgJv@vger.kernel.org
X-Gm-Message-State: AOJu0YxhTQ4uKFrRu3pviVbL/y2Q5I9+J1VAU9tenB2SqZEyRo8amP0v
	etmAEkM5+H+Yp9VTsjwviMw1/tnLakQju10DBiz31hzlQS8glYUb9u4g
X-Gm-Gg: ASbGncusWaVLm/qUlEJvEq5RAxHY8CVlMy9MdYv+47Dal9iSOddBD6g1iAvnz8ghwUL
	sJWHKuPSwgn80t3pj3BSFNGexP+BcbpGeKQ9t+qu74lHlRoLQC9GTEh7hSgmR3H1zYn5dSk1Kry
	ICwGK9ihUVgylNw0OuNcVYwVvfiDFmarLbSvDvR8JiiWR2//iQBpDl6AyDDrJPzSUiOLQ9+usuv
	1kBH1Du24WiZZT7yzHdAr5NVvVYCiD0dHgO5fbfRcPAzQdYHqlrKd5kEIq9ePqSlFVtzc4TNGvv
	sWW/sJGvaTshPVAUpMuXR6BbMRskM9PFpBg0bD/Gv22kSaun8VX9OQSnbCQjwRkjgbpW0VEh4jD
	WBaf+1rNj3vzEeQDNW26L6kggqLx10g==
X-Google-Smtp-Source: AGHT+IHvNGbFBD2yR7UwO7LxaUu4j9QSmDNZ5JNbdB4NZfwf+7c+ipKScnBm4Q5xLVJQGj7GPWUK3A==
X-Received: by 2002:a17:903:38c4:b0:248:aa0d:bb22 with SMTP id d9443c01a7336-25d2742e1b3mr59069145ad.0.1757739044978;
        Fri, 12 Sep 2025 21:50:44 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3b20e01esm65139775ad.126.2025.09.12.21.50.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 21:50:44 -0700 (PDT)
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
	Simon Horman <horms@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH net-next v9 0/3] net: dsa: yt921x: Add support for Motorcomm YT921x
Date: Sat, 13 Sep 2025 12:43:58 +0800
Message-ID: <20250913044404.63641-1-mmyangfl@gmail.com>
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

David Yang (3):
  dt-bindings: net: dsa: yt921x: Add Motorcomm YT921x switch support
  net: dsa: tag_yt921x: add support for Motorcomm YT921x tags
  net: dsa: yt921x: Add support for Motorcomm YT921x

 .../bindings/net/dsa/motorcomm,yt921x.yaml    |  169 +
 drivers/net/dsa/Kconfig                       |    7 +
 drivers/net/dsa/Makefile                      |    1 +
 drivers/net/dsa/yt921x.c                      | 2950 +++++++++++++++++
 drivers/net/dsa/yt921x.h                      |  506 +++
 include/net/dsa.h                             |    2 +
 include/uapi/linux/if_ether.h                 |    1 +
 net/dsa/Kconfig                               |    6 +
 net/dsa/Makefile                              |    1 +
 net/dsa/tag_yt921x.c                          |  141 +
 10 files changed, 3784 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
 create mode 100644 drivers/net/dsa/yt921x.c
 create mode 100644 drivers/net/dsa/yt921x.h
 create mode 100644 net/dsa/tag_yt921x.c

-- 
2.51.0


