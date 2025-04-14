Return-Path: <devicetree+bounces-166885-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7A9A88C0A
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 21:17:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B2C717BFA2
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 19:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D123628BA86;
	Mon, 14 Apr 2025 19:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WiReNg3l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0B1823814F
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658244; cv=none; b=bDMSV07rve30RwkQtsXRkdqUl2/k185rscCit1JGXwp5EUzhRc3WpJH9Twu8auZSkiesNiUjvDV19LSNc4ShkmN38opVECWxZ7deRe/vQDjnXILTxTRw7HZNnEmTH9Zhr8cHbGFB5UaTp1rtUhrfyxUvvpSmVZ1djeBVPmvqUHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658244; c=relaxed/simple;
	bh=oZwsWyN19YQuLxvi70G/U0IIHVAnZHz9qoqnnkeShL8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WYTyUCktOlvi5xIoADtzYPIfucEMkrCCJfMa+vbM+2yZ3L8Lp8zrN5KQ71SzsR5Toxg8PxbFzB/enBcNXVOgWTwXZrpxwF/tDnm2eqMhOp4pVcYqkPD12mb9JTOFCl3661V9hUxsv/hvlhtt4N4f4/UWNGnSOfDBm+anoiPW1uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WiReNg3l; arc=none smtp.client-ip=209.85.166.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-85517db52a2so86620239f.3
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744658241; x=1745263041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NOnX2shAz2EreIKfS+XNRjetpp9PVDTaCPEwF/lvRS8=;
        b=WiReNg3ltf06AJz+dZ5PQQf92X9ZKOz0Qjmbwf/wY8EX6voqW+yx0qsXbeL3oBxKqP
         eZhMD5BjkLY5/TsLiavNXOmsEM9r7Aik7Pufufv3Q02pCpYmdZNQ8o6sXh4KkKCds88t
         F6SH99obRBtuUnYq0jZpikRcKjs+QciWT2o0ivc8dVlDPHSUf9BGGRRqgDKGGdzttoEV
         lIAhPOhvQAOxeg/EZStL8W5WVnPyDUL8v0kiaNlufdV2nrmCQi9SLNsK5a1ghnMqGDC4
         3WIcqlIInp+uOker8gLx7Ze0S7VO+3d/CBRxBCv3fYx7/aFNDSGUqqLbUvGrOdYXNrKb
         MCaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744658241; x=1745263041;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NOnX2shAz2EreIKfS+XNRjetpp9PVDTaCPEwF/lvRS8=;
        b=P5VGXuZU0UljOo+8l18YSdXsbQbHcfXMA1jdePQcluA2xdvaXDp9isEr6MZYLdxYQI
         Nq+AANmJC1etUBd2+quN8BLH1c8UsTmWyqrRDjUY3iWcaJmsSh6fzKBEgT+YJNjmVEqq
         KLovuDdRURQSap57TYtsPILiKmAL9IMZrTL6YBFPGPZbDMmRYcaG2gDIhN72snoaa7PM
         +rLf04Gbe1X/RIK/HGXMdsKvB4IqLDQa7ipjA8bc8DbsW/IunQA31odaPMSgwSmaKgPJ
         fNUyn+GLq/+bWNIvNM5/KuPh6MKLeb3O6n6hgoKHgwH9N4d6O0QqNc+2DIRUciqqjwBx
         Wj0g==
X-Forwarded-Encrypted: i=1; AJvYcCXhA35fIYj1H2nGrpHx3pjRKM7RRyok7KLJdT7lXEjWK8izK2KuDEGUQESo+bcbsmyOcKJBJGihniP1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0kdUcEqo2s/2RMy0wDie/Rn/4U99TtCdBGkd0mt8cifydoxby
	+pp61z8QXiUda81XJzmSlQyQJoFNGXEc3izXQj9CZ5wyFIEl/wJs5qSblJBqJyE=
X-Gm-Gg: ASbGncvXwlgnYl3TDv1kFHuwTA537QFKOYde7JYzsWGjnCSllMCfVPLxdXSZuqcYl+b
	U028bCQGgg1L9ekdxnmUIZXiF9CnwqQowqIJcdJ/sSCWzMjTZIbbvTJG3jFKKaytmUTxn3tc3+o
	7PnmXaRobS1iB+lZjgyRC7j0AGbUByo6a/ksO1WAag+CuUoMmoVG6M2Cgr0nRQ5bm5oI859p9An
	c5pvCB9KhpgwfDs9h2jweD9sWoW0r9J6vNjCZZahMrhkgMwRSaPwvL5OhimyxUDOeKJutiQna2t
	uUV+Hrx7ZSZVTQKCJkNwmF9jMMwJC2CRb9lxP341raxfUoBJfNP7Z+Rmn3WwY2ze//fPD2JHaIX
	k/fv+n/olwctjIQ==
X-Google-Smtp-Source: AGHT+IF+wewcSr2YJ4blAeH5OccXBibu/mClWnQWAdm112vnTse7zLtH44BvxSZA8DZrAtcKFRUvag==
X-Received: by 2002:a05:6e02:2145:b0:3d5:890b:d9df with SMTP id e9e14a558f8ab-3d7ec266fd2mr117489655ab.15.1744658241457;
        Mon, 14 Apr 2025 12:17:21 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e026d1sm2715662173.94.2025.04.14.12.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 12:17:21 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] clk: spacemit: add K1 reset support
Date: Mon, 14 Apr 2025 14:17:07 -0500
Message-ID: <20250414191715.2264758-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds reset controller support for the SpacemiT K1 SoC.

As before, this version is built upon the clock controller driver that
Haylen Chu has out for review (currently at v7):
  https://lore.kernel.org/lkml/20250412074423.38517-2-heylenay@4d2.org/

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v4

Between version 3 and version 4:
  - Now based on Haylen Chu's v7 clock code, built on v6.15-rc2.
  - Added Krzysztof's Reviewed-by on the first patch.

Here is version 2 of this series.
  https://lore.kernel.org/lkml/20250409211741.1171584-1-elder@riscstar.com/

Between version 2 and version 3 there was no feedback, however:
  - Haylen posted v6 of the clock series, and it included some changes
    that affected the logic in this reset code.
  - I was informed that defining CCU nodes without any clocks led to
    warnings about "clocks" being a required property when running
    "make dtbs_check".  For that reason, I made clock properties
    optional for reset-only CCU nodes.
  - This code is now based on v6.15-rc1, which includes a few commits
    that were listed as dependencies previously.

Here is version 2 of this series.
  https://lore.kernel.org/lkml/20250328210233.1077035-1-elder@riscstar.com/

Between version 1 and version 2:
  - Added Rob's Reviewed-by tag on the first patch
  - Renamed the of_match_data data type (and one or two other symbols) to
    use "spacemit" rather than "k1".
  - Replaced the abbreviated "rst" or "RST" in names of newly-defined
    sympols with "reset" or "RESET" respectively.
  - Eliminated rcdev_to_controller(), which was only used once.
  - Changed a function that unsafely did a read/modify/write of a register
    to use regmap_update_bits() instead as suggested by Haylen.
  - Eliminated a null check for a pointer known to be non-null.
  - Reordered the assignment of reset controller device fields.
  - Added a "sentinel" comment as requested by Yixun.
  - Updated to be based on Linux v6.14 final.

Here is the first version of this series.
  https://lore.kernel.org/lkml/20250321151831.623575-1-elder@riscstar.com/

					-Alex

Alex Elder (7):
  dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
  clk: spacemit: rename spacemit_ccu_data fields
  clk: spacemit: add reset controller support
  clk: spacemit: define existing syscon resets
  clk: spacemit: make clocks optional
  clk: spacemit: define new syscons with only resets
  riscv: dts: spacemit: add reset support for the K1 SoC

 .../soc/spacemit/spacemit,k1-syscon.yaml      |  29 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  18 +
 drivers/clk/spacemit/ccu-k1.c                 | 330 +++++++++++++++++-
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 128 +++++++
 4 files changed, 482 insertions(+), 23 deletions(-)


base-commit: 846ce0a9d3e86830a3c6253c3b62104b369d6a95
-- 
2.45.2


