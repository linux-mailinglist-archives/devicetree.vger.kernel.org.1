Return-Path: <devicetree+bounces-176454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C011AB4390
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 20:36:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D5B5463B69
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:35:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F226296FAE;
	Mon, 12 May 2025 18:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="cU749Irc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA1CE2550A0
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 18:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747074741; cv=none; b=qhM1jswT4LzyQk6i5QEO0puPvTwY7pOmE9kPYvZtB9WFD0XLqcucqFvr4BOBA8Txm9EfXJg6aj0a2rGTfHc/WtLRguejC5syMT7i53Tl3UGYQrX6CQeMlJo8xWb/zihjHZ0QV/TKulCciV2MJ7X+PuN8P5QSWrTJ1ZWBCDoAwG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747074741; c=relaxed/simple;
	bh=cNV23VwDv69uP/6gK3LiM6nRmaksJESB2bF4ACMarY4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TnVJoOmjru2ESJvZhgaDoNZo+vZqPgWbeu+4zg2ju0fQcaB6NR2R5plIA/BkYcG2kV5zfnbTEq0g4u52Ri2/Z376vDeIre1kTrBopgt4fnSVxfJ8sYcAolyGJrB3xXlLGQTrWxwwvzdK69pE9DMeEJP5oAu0prPyyUXfBziZwYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=cU749Irc; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-3da73df6b6bso16276535ab.3
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 11:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747074737; x=1747679537; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H5sF5S4WoA46QFbSi1L1CMmO0LFLi0JLWxGsdZ5Mz7U=;
        b=cU749IrciPjXrHx2fhWyvGMb/qTrNjvRZpEZGr893F5i03EpAfAQyclrTRVEJfYsAE
         k9QWG3o5SURb1ZU2EEvErQ1mW/A6ItF7WOu2T+zZq3iaLtiExL3Mm9Itj61YzJZmPr5t
         1HltxQqK1CH06+HtfP1ax6IHlvV54ydBSVTRHplFmYAovm5Csqxb/wkgvX7PzDnXgF/k
         C8F5BHIZkTrayr0bXLZF3UTbuanU7H4jf7F/ZFW+3DVLJYNAx0Wy9S1Fik9Boqiy4RLB
         xA47f784jXjsU6kvI6c2ywYo1BICwRrG/58NPsoR0zUwiSUQKx+j0EpaS1Xxm0iiNach
         z9bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747074737; x=1747679537;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H5sF5S4WoA46QFbSi1L1CMmO0LFLi0JLWxGsdZ5Mz7U=;
        b=cXG47oETzU6Lum7axQdluazRKAmYnk8XEKJMnILuFVJCy0mSYbyoB41gv6xXO2csmA
         giutq/e7x4t+4ZK1qZ/bQzyfa84V8B3u+RoYZGmDtxLBqeJ8LFwlDGZegUjYbiubv/T4
         WsOP1j52sNi0ab3c52/SVG2jYkddrKS0I/Ncw+BZOpTMSDotDV9A81OoHmjwS8nnVk9Q
         Jcghv2r3KtW6JLZhd833/YgRIISp5wxkzor3v+zkeiIFkuXLV3Wn3GL7KHvE8RAb4rfc
         YphgY2Gl/StIRqEFKtgjhPpX87LKuf2Sn3e4ZOgKEl7lzj4AjILSDkYDOSWfOXBa1YPf
         VvSA==
X-Forwarded-Encrypted: i=1; AJvYcCULQVVLsnm5VEh9XfLQb/AFFp1jbkJ2pChuB+8HjDY93U8uyQ210jKMZcqhiaRdKYHXPdSFh0cMBBLL@vger.kernel.org
X-Gm-Message-State: AOJu0YwiUPB7FpK/LFk7VNgdYlaKtGjVtviNNuRUx69fAr9PVnJulPsV
	6BCxkko28ZSge4PwKY44nxqSj/BP/OVJO78aesWRusDnKHtvmNi9JTiry5CokDY=
X-Gm-Gg: ASbGncvbhDsCCF7wi93DgSxfOhBsYrmJV36TtIFF61zKGH2ZFs0Mt338FHHcXFbBfpA
	ZpNjcv3aljtnOffjjMeNToAeY3zWYv+IaaDD8Vf5+OnB8COirLwUJr6AomRBsSHRFp4pPKuviyN
	Vi+c2+PAx0hzs2dCluME2B54MHq12b4xsjgTbs92CJ1nnlMV416MllpJbxLq4ONdu/wc7HtE7gS
	cHQM7/FNooaRk8EhujUIoC4oTPYIlNYmHLlcVfRDY9eEixbA4+4Gze2/YFX4uuMJWKIpLwx82mt
	Yy1CKovMdlz/CtJFzEIRDMx6mB574Q0RS4rNwGZ2HopYKfkK0urpI39z9tJVA5MDSIAm/hoOSIu
	DYP0i9uu3qn0zcVphHdF6mrfz
X-Google-Smtp-Source: AGHT+IH8SMFCBxxWn3abIuKGOB7o7zwQCx8+T8NAJEP1pyotvXX4Tn/Jp/UkbpGJ3ju1m6yqyuZcVA==
X-Received: by 2002:a05:6e02:1fc5:b0:3d6:cbed:3305 with SMTP id e9e14a558f8ab-3da7e1e7608mr156233785ab.10.1747074736564;
        Mon, 12 May 2025 11:32:16 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fa22496e9fsm1740333173.11.2025.05.12.11.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 11:32:16 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	inochiama@outlook.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v9 0/6] reset: spacemit: add K1 reset support
Date: Mon, 12 May 2025 13:32:05 -0500
Message-ID: <20250512183212.3465963-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds reset controller support for the SpacemiT K1 SoC.
A SpacemiT reset controller is implemented as an auxiliary device
associated with a clock controller (CCU).  A new header file
holds definitions used by both the clock and reset drivers.

This code builds upon the clock controller driver from Haylen Chu.

This version uses ida_alloc() to assign a unique auxiliary device
ID rather than the value of an ever-incrementing static variable.

This series is based on the "for-next" branch in the SpacemiT
repository:
  https://github.com/spacemit-com/linux/tree/for-next

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v9

					-Alex

Between version 8 and version 9:
  - The auxiliary device ID is now allocated using ida_alloc(), to
    avoid colliding device IDs, as suggested by Philipp.

Here is version 8 of this series.
  https://lore.kernel.org/lkml/20250509112032.2980811-1-elder@riscstar.com/

Between version 7 and version 8:
  - The structure containing the auxiliary device is now allocated
    using kzalloc().  That means its lifetime is not tied to the
    parent device, and auxiliary device's release function is
    correct in freeing the structure.

Here is version 7 of this series.
  https://lore.kernel.org/lkml/20250508195409.2962633-1-elder@riscstar.com/

Between version 6 and version 7:
  - The new shared header file is now named "k1-syscon.h" (suggested
    by Haylen Chu)
  - The SPACEMIT_CCU_K1 config option has been removed (suggested
    by Philipp Zabel)
  - The SPACEMIT_CCU config option is now tristate, and selects
    AUXILIARY_BUS (suggested by Haylen Chu)
  - All code is concentrated into a single file "reset-spacemit.c"
    rather than in a directory (suggested by Philipp Zabel)
  - A bogus return value has been fixed, and a few irrelevant comments
    have been removed (suggested by Philipp Zabel)
  - MODULE_AUTHOR(), MODULE_DESCRIPTION(), and MODULE_LICENSE() are
    now supplied (suggested by Haylen Chu)

Here is version 6 of this series.
  https://lore.kernel.org/lkml/20250506210638.2800228-1-elder@riscstar.com/

Between version 5 and version 6:
  - Reworked the code to use the auxiliary device framework.
  - Moved the code supporting reset under drivers/reset/spacemit.
  - Created a new header file shared by reset and clock.
  - Separated generic from SoC-specific code in the reset driver.
  - Dropped two Reviewed-by tags.

Here is version 5 of this series.
  https://lore.kernel.org/lkml/20250418145401.2603648-1-elder@riscstar.com/

Between version 4 and version 5:
  - Added Haylen's Reviewed-by on the second patch.
  - Added Philipp's Reviewed-by on the third patch.
  - In patch 4, added a const qualifier to some structures, and removed
    parentheses surrounding integer constants, as suggested by Philipp
  - Now based on the SpacemiT for-next branch

Here is version 4 of this series.
  https://lore.kernel.org/lkml/20250414191715.2264758-1-elder@riscstar.com/

Between version 3 and version 4:
  - Now based on Haylen Chu's v7 clock code, built on v6.15-rc2.
  - Added Krzysztof's Reviewed-by on the first patch.

Here is version 3 of this series.
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


Alex Elder (6):
  dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
  soc: spacemit: create a header for clock/reset registers
  clk: spacemit: set up reset auxiliary devices
  reset: spacemit: add support for SpacemiT CCU resets
  reset: spacemit: define three more CCUs
  riscv: dts: spacemit: add reset support for the K1 SoC

 .../soc/spacemit/spacemit,k1-syscon.yaml      |  29 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  18 ++
 drivers/clk/spacemit/Kconfig                  |   1 +
 drivers/clk/spacemit/ccu-k1.c                 | 239 +++++++-------
 drivers/reset/Kconfig                         |   9 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-spacemit.c                | 297 ++++++++++++++++++
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 128 ++++++++
 include/soc/spacemit/k1-syscon.h              | 160 ++++++++++
 9 files changed, 755 insertions(+), 127 deletions(-)
 create mode 100644 drivers/reset/reset-spacemit.c
 create mode 100644 include/soc/spacemit/k1-syscon.h


base-commit: 3f7ca16338830d8726b0b38458b2916b3b303aad
-- 
2.45.2


