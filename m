Return-Path: <devicetree+bounces-168588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A09EFA938DD
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 16:54:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 362AD19E7167
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 14:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB3231D61B7;
	Fri, 18 Apr 2025 14:54:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="eNWgBPiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E70EEEC8
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 14:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744988049; cv=none; b=FEDg3/tEixrfyn7p3zIa6P8hVljJH/eHjsj9hWcM2AD4nCndECMxCNO/pxpJWuI/QtMQjZHRUVIOP6LS/r+4SCkUW8q/0fvPztSHjann95zmBxK0XxjgqXcgyBJeo9/HV6vqmtCvaXWjJtgH4pH4bcpf0AxtT+qbpRcxMS2YhGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744988049; c=relaxed/simple;
	bh=dlNXHuUORBV8qyM4a+/YpF7hE5uuPIDHKUaPv4eKnS4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NVx5/IoH9POpvh/uO8X5PSBXs93aiq9VrNizSujLfOw76Yc6DO4g7olLX7yqF0YNzgANVVI4cbyCLjc2b7rO6ZFJ8iKgISm7u0MR9ibDmqQepYQU2TazalUEgAG0wRcjyGxYP6Q8ZZ5I1/Q8ioCS+4XhHGJ+p38a2FJ1e68WnT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=eNWgBPiU; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-476a720e806so16510051cf.0
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 07:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744988046; x=1745592846; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HpNDOPRCFGOfXdIE71HVXdbzEYefPrTNzqdoa96DBP0=;
        b=eNWgBPiUZBBGywto8apaQKwi0lvLeSL9o8o75LMShhgWvF7u9JpTMdOij00XXoRr+Y
         2YEvPfNzv8KOURvdDiyTu/pIWrX4o95B+wENzOQBgCFIH63/p0iImXAMCJuR36JamtIk
         9G/K6VapKRl25yzpMIne3PAKSCFZNP6hjYK88sBufFg1NurCtfdyJZg6Rjxn21X8EKzV
         /sQYwA94VV1kRg9j2f96mykISRusQoeUck0aKPmE1y6uDl+0sEjN6SVggHF92NG8qbMq
         sBrUa+RVBaLmgVktiUHM0o6DM9nx1k3t/5JUJjHwKuSDZsmguusYhAlF9+xhY445he31
         BsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744988046; x=1745592846;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HpNDOPRCFGOfXdIE71HVXdbzEYefPrTNzqdoa96DBP0=;
        b=gplJKMwBlKgdyy+skmKzVUz0sIg+ACuni89si9RFPvzMYzomsKWC3dIjpN44djgB94
         ziBWsI83+vO/Kl1nHfzzcRmERWBCknd0Iz93bqHsunboB77eo7eYov4DT5tM4pKkWHqY
         Ewxy3oA7s6+6h/W+JAfmN5CnxiqGHW4JcWIs6WuNyBnZ+ablQmVBbcQffW2erkDMedtf
         hElvOEcZZwYzwE1eM9JIhIYefpx28ldEsgwI8Gi+hCR0gR/KyYEsWP+uWTSSFhdRlJwa
         Ds8SlJlzUhODRLOanbje/tReefTVIBfRZnZQoXPgX47yZhKayB7mqepxdGX3QPLHgSXG
         NAiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmkKUIwhCwg7pDYw0KZV3ST7Bxq/DzOEqAsFyYUzpyDDwhZvfSmcIQPcJoR5K0bKblXFnBBU2yvqRl@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5vDEGpUD1FYM9SCd5iMAXMcoXzizhy154n8NjDnR+zntmqgVO
	XV27smP6D14nWeOq6rc5omosD/eyvCp+kCxtz4mvUy12MkE/m4LT7zuLiR39AsE=
X-Gm-Gg: ASbGncunAYoSXx4bs9wxrNnmfxZGRJNR1hAZom0GXq3MLrAfpWiWq7rlGqpEnbLvvm7
	j1yyzsVNBjHTcXLVsNQ1JdrEAEVkmzQgGhMjXGvvQwOCGBdPbr0IbWYHcdOAsWGorLIFBt12M+X
	K+D5VvQRJ+kIDzm7Yjq4UaOCAs9PisLS9OhMOcXx3iz4MnwI7y5iVHJWkifFqyzzgHtKeDz628Q
	opFi5vndBwUQcKs8n+zO2Avc1sKLf6xY4kiB2nBUr7+zBO48ojyOO6UwY5CmrVph31GVu7Jl+cb
	FbzopJohkBDpfrJypxnDCsjjLUS8n0FYvMf6UOH6yRjCeHhDWCLRpYvYK9ZrZd5qAMG8zOBN7rD
	Sujpn8VE5cosIR/3oyrBMgSCk
X-Google-Smtp-Source: AGHT+IHiEG1eSrMtmu7ABawgdFJIO6lV2wB6Q3AXU/kHDB1pdQpbBxefqDVD369wLGK+b6k5u7CG9g==
X-Received: by 2002:ac8:5a92:0:b0:476:7327:382b with SMTP id d75a77b69052e-47aec396ac0mr52829231cf.16.1744988046352;
        Fri, 18 Apr 2025 07:54:06 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47ae9c16ddesm11329201cf.3.2025.04.18.07.54.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 07:54:05 -0700 (PDT)
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
Subject: [PATCH v5 0/7] clk: spacemit: add K1 reset support
Date: Fri, 18 Apr 2025 09:53:52 -0500
Message-ID: <20250418145401.2603648-1-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds reset controller support for the SpacemiT K1 SoC.

Most of the the clock controller driver that Haylen Chu had out for
review has been accepted (at v8).  So this time this series is
based on the "for-next" branch in the SpacemiT repository:
  https://github.com/spacemit-com/linux/tree/for-next

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v5

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
*** BLURB HERE ***

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


base-commit: 279d51ad9f6dc0c667f6f141a669b2c921277d1a
-- 
2.45.2


