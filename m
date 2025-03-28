Return-Path: <devicetree+bounces-161718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E86CEA751BB
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 22:02:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 518E23AD56D
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 21:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7CB1EB5D1;
	Fri, 28 Mar 2025 21:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="c9TCqEP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E4718DB03
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 21:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743195760; cv=none; b=ox1DiNbAd6Mdbn72bGeBxpbpE8zvSw0jt/EScY288P8jcO1tXJXSFfFagptJiXWrRcl3hSlM8Riu7ZIYAqR7y0woqcskQ6+iDsUugrfDJBtPUONt0HUiiG2xtvPpksHq3beHVyYyXgiTuyBNodiea2yn8vHahUL8sjAHlDGd28I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743195760; c=relaxed/simple;
	bh=b1a8moIudFYGQBBhZ0ZFwpnDk+15x8Wgx+ZUtGp0Kxw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VNa82B/rnCvEWnTprx0ITJtzqlwqX5IGRcQNRg1ZPyTpEp6LcYvlbWicu1KW0s13EDRbzBB1Wa8u3OkbRuuNojhxT3KdqjNQgHOvJoey70AhllHJQlJmc9R3qokKDOYL5w3rboxZwrXxYWTb0/pJMIHz5TZh1ITHVDTWrWaq3Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=c9TCqEP+; arc=none smtp.client-ip=209.85.166.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3d589ed2b47so7633845ab.2
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 14:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1743195757; x=1743800557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VHJYMx5Ny8sSHNURLwOrkk6ILyuNYFJwUzbCpGHWiDs=;
        b=c9TCqEP+s9zS9L94KmrusyCFRtVbamHajsz4onjhmq7HFM9LRsizp74BCVidFq45Ff
         bvHHJLQWVGdQEmViaMN1TWIn9a3WegBYq/ZDWoqd+PUcnVsF2/A7rYFxJBWczA+R3LAK
         q7pgm5ro6+7igdBPECJhomiTNl+rsxFPw80mwMWI1utWB5JnwoqgudWTFdSzXvcLVvM3
         4qNCu0nQSmzNxY1riwAKfNvR38BGqgOA+3wFLu3JhDq159jEMZeQiqhA/GhQVO38l5zw
         0zdelRHJx6TpA3UyZi2rpYKl3hkWfOm/BFwbX1OhIs4FUE2XLIxCDP1h7pIb+NyDQ0ti
         +zfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743195757; x=1743800557;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VHJYMx5Ny8sSHNURLwOrkk6ILyuNYFJwUzbCpGHWiDs=;
        b=U/ayKKF5usrkwnzpi7zL6seC77hlbNBcldkuZA6t4RMo2RI0vkn7xI2vuvhgtVZ6Cc
         ukirLzZCZBOKeAPIR25WPmNk9c6q/1UwOt3He2edu1qY3SxowH3b0ZvSGlSPYaLUJOgM
         OLJ46JU4Sq+3FAdpcO2opEGPFJH08mNmS3eJG0Dy0/d34wJLZTu+K4lrgJYIKUkzqunm
         X3qliHvFCsfOOc5KeyiTXMf/UNxJTZP0m6qND+HoKF8K1xSeXdY2f9nGENbtaE/QV9mD
         LxBH1G95GpWfRY+naDIRjTh3eYUHWXJBfbcB5H94q1//OUMrz9kUg4049QAC2CWDXYOY
         VvTA==
X-Forwarded-Encrypted: i=1; AJvYcCUWaRYFLH1jnVteitL9CjbYDouL0sUK888/KVcKTrnlFpHJMljRprQvbZkC6pKEYTWIFBq7rLOpEcPC@vger.kernel.org
X-Gm-Message-State: AOJu0YyJIkDwbKG0UL3z70/6yGG8ZU4krYN00ZpcfKMoYfkZEV6Mgovq
	0NFj3KJfdSySQOs/URZnaIfTCRbunOLDvvbkKSIn43CyfbJ5BMHcsLDkTE65swU=
X-Gm-Gg: ASbGnctTtpEYlszP1ejPlB4Bap/b6VAA0GeqC4tFG70yhUqNfQjCcxtytQ59Bh+Ddyd
	tiwchgIYiGrnM7wr+U3//h25rB8mWKcXOMIBJA+uhjvXChqbVN7escjCOohuj6dN+x5DYEmcCTm
	WlfEk7Q/FAyhB1eXuRe46XG8v3wy7edMRYWiEHrZ8YVejf1xOmsGlwU4UpyEkpIghiAms45vTYE
	yNqCldUgThkWp/172TtM0RubkpS8jgPsmU6F3nrB4+l7eSNFVNg8NtZl+WJTzNTi0m2tEn5QBoF
	/Dz8bpFeFb2B59HdLSL3pPB/oXQj62FZfR3OlA6uYpbjD5qFpp9AoFy9mN4yOIb7+J22pdimTUJ
	eXniLTqk6npacWOACRA==
X-Google-Smtp-Source: AGHT+IHk48TQj5LU1BljWFGSUTe9vm5Iy8BdohARUm7BRbpRyYRCt5Yc1AT2nUjsk81V+iVQCDA4Kw==
X-Received: by 2002:a05:6e02:260a:b0:3d5:d743:8089 with SMTP id e9e14a558f8ab-3d5e091344amr12125865ab.7.1743195757226;
        Fri, 28 Mar 2025 14:02:37 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d5d5a74286sm6769405ab.39.2025.03.28.14.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 14:02:36 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/7] clk: spacemit: add K1 reset support
Date: Fri, 28 Mar 2025 16:02:25 -0500
Message-ID: <20250328210233.1077035-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds reset controller support for the SpacemiT K1 SoC.
It is based on Linux v6.14.  This version of the series is updated
in reponse to review feedback from the initial version:
  https://lore.kernel.org/lkml/20250321151831.623575-1-elder@riscstar.com/

As before, this version is built upon the clock controller driver that
Haylen Chu currently has out for review (currently at v5):
  https://lore.kernel.org/lkml/20250306175750.22480-2-heylenay@4d2.org/

It also depends on two commits that will land in v6.15: 5728c92ae1123
("mfd: syscon: Restore device_node_to_regmap() for non-syscon nodes")
and 7ff4faba63571 ("pinctrl: spacemit: enable config option").

The basic content of the patches has not changed since last time, so
I won't repeat the explantion of each here.

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v2

Since last time:
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

Note that I did *not* change anything related to the "remote CPU" (RCPU
and RCPU2) resets (and clocks).

					-Alex

Alex Elder (7):
  dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
  clk: spacemit: define struct spacemit_ccu_data
  clk: spacemit: add reset controller support
  clk: spacemit: define existing syscon resets
  clk: spacemit: make clocks optional
  clk: spacemit: define new syscons with only resets
  riscv: dts: spacemit: add reset support for the K1 SoC

 .../soc/spacemit/spacemit,k1-syscon.yaml      |  13 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  18 +
 drivers/clk/spacemit/ccu-k1.c                 | 380 +++++++++++++++++-
 include/dt-bindings/clock/spacemit,k1-ccu.h   | 128 ++++++
 4 files changed, 521 insertions(+), 18 deletions(-)

-- 
2.45.2


