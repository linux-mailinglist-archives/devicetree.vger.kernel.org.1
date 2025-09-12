Return-Path: <devicetree+bounces-216211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F0464B5409A
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:47:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DBE9AA147B
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82201E3762;
	Fri, 12 Sep 2025 02:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lJlFk7Wq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA6D192B75
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757645267; cv=none; b=f2rx8KlKkkjksQozaCQbMo6TGpiPDoVjUZcIgqldEBVL/RO1omxwS3FqUppwouSpF37k6B1TP+I8sE2Adm8bYec5J3N6HuqtdIuwu9+wlZSNtNOwTnEkQcRlnnc//yx3L+JmG2sxiKHU+V1xlPBX3Oko54vLWOzLV6HGYc5i5g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757645267; c=relaxed/simple;
	bh=6L2gucGOcFE+nhE434JfQy8YhLSW8k2PnC3la7PG4Do=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TWb/Os39jtLamQvgDi8L9VZhuKmalDtmc/mtJ9bAHtC8+B0cy2VjNEM4qRDgDkjwryORosO2vYRTA2TkTrTP13slkpjYljxXLlCdcL4HLaipysiqQqlM6wiLwxZP/AxxZKOcqI/ZWvMd1Io8ONcXqmANbA7SPTMkJyfb6kShqGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lJlFk7Wq; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-24cde6c65d1so11566835ad.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757645265; x=1758250065; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=deI9FWfpRKpN+slNfOnUT67Ew2gMIzjtJYn6xTizlH0=;
        b=lJlFk7Wq8CPIRCCovIzwzgWeuJIEfBIYB5xQQbGstJiJeXiE95zCl19EbYqUfNH/C3
         LVGbFwels3lhV+cyo2h+nQX2RCMvHkVoeumE2d154fWTNe4aB5acOZ3sOF6TJADea8jv
         tcOgnBnGCfOUdL7RPEleBc6MrTAPrs52naZyssXf9rY5SQm4rKxqE38qp68jzZLbHa2l
         ZjEYu9K4uI3eSmkLhOCA8sR3PR6xIMaGgJkSnkhBFL4wA0/AH0pm0Hr4vYPdUGNnSpQj
         cNLc6wry/gdKt6cV+Q6C+uBqcwTyv50NNgcdq/nVNPuo7KA+8+Fle0OTmmY86EPGtWhO
         97Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757645265; x=1758250065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=deI9FWfpRKpN+slNfOnUT67Ew2gMIzjtJYn6xTizlH0=;
        b=rzsDUGZj5ctzMg42uFioat44GiVwfQnfvp0Bc5EMcG4PdBgcHE78C5oABA5jp2v0ob
         j0TNGncu7yf65Ht5F0C+sCY5cTqhq/q8GL/PdnXhRA0UdaXUCczYXQjrkSUm6k8w5SLd
         acZw9cziiwLxJRbYoU9OmOcfdSMYM42QRiImfnBq7wIx8fKCMU92rifRHSQowrJWy+2W
         AY1bE6rKW2wIsXvwgeZzmF1R4GSoMrrqKe/9hCn2Xq+8bLF8ITOW3gqeCG3V57i3pMEC
         LjEFaUy1EtjK1sFjAJoEsgObijnGku4w5FfLLbvfdBjAGRNZ3zF0jj6NcaMfgDr7yCq1
         GlAA==
X-Forwarded-Encrypted: i=1; AJvYcCUE5O6DXh0fRLPEJHdzxg/GZoVD/pqvLrY1TvAcpo+9JswuUBPT+gjojcfdVi3MgFNjuRP7SopMCqFr@vger.kernel.org
X-Gm-Message-State: AOJu0YyzjMJGMpD5UHcgjNbleI0BLr1q+hG15ZrNsqsQ1i9AcCl9GLc4
	TTu94hlEd88EQJtqISD5/LL7MjeAE5fa25UXwmNor0Zwt5rcQMe6rRKL
X-Gm-Gg: ASbGncsjF7IpfY5zHbmf1MxIsKtXzAQHKor5jxSqCOFUH43MX9oZ1fMNuLt2puphiw4
	hyW4o/dPi33coD1pOOkOkIi7ySfU130vwH3ZNjq8FurOx8CufXrIVliPUGyWdFko4PEY9bYzHlj
	yJ9CZEQIedRNejmJGPD9pilAEG/DS2GCHE8NCR3gI5ixtMsLvh/vrtKfgF0OUgpzImYFLThN3QX
	CqxMYTJbA9RMhCO4L9brsFb6XKjS5CC9wyOMxGr4/3NmYO9OOYHuiqKH+g0Owb/AwhokpX73gjh
	8fagifviRRI5KajDGOSNLRNzqngBme2drqeBUAPt0twygdRXT4E+aL6x91leW2GnvHlumK8qQb6
	6cVPSpZ+bJc0HjF9+dBc+bcb6oV/CAHrShMU+XJmA
X-Google-Smtp-Source: AGHT+IHa1Z2PAAK9Pnm3h1vIVsIBwlHU4I825nb1ScQWC/SnmXMegxpKYdP0qmY7c1lDjbKixLc1gg==
X-Received: by 2002:a17:902:ecc7:b0:250:1c22:e78 with SMTP id d9443c01a7336-25d242f2f04mr15292575ad.1.1757645265421;
        Thu, 11 Sep 2025 19:47:45 -0700 (PDT)
Received: from d.home.yangfl.dn42 ([45.32.227.231])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32dd61eaa42sm4349827a91.5.2025.09.11.19.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 19:47:44 -0700 (PDT)
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
Subject: [PATCH net-next v8 0/3] net: dsa: yt921x: Add support for Motorcomm YT921x
Date: Fri, 12 Sep 2025 10:46:14 +0800
Message-ID: <20250912024620.4032846-1-mmyangfl@gmail.com>
X-Mailer: git-send-email 2.50.1
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
 drivers/net/dsa/yt921x.c                      | 2944 +++++++++++++++++
 drivers/net/dsa/yt921x.h                      |  587 ++++
 include/net/dsa.h                             |    2 +
 include/uapi/linux/if_ether.h                 |    1 +
 net/dsa/Kconfig                               |    6 +
 net/dsa/Makefile                              |    1 +
 net/dsa/tag_yt921x.c                          |  138 +
 10 files changed, 3856 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/dsa/motorcomm,yt921x.yaml
 create mode 100644 drivers/net/dsa/yt921x.c
 create mode 100644 drivers/net/dsa/yt921x.h
 create mode 100644 net/dsa/tag_yt921x.c

-- 
2.50.1


