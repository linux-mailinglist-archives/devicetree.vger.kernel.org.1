Return-Path: <devicetree+bounces-165048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9468FA83320
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 23:17:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 766CB1701DD
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 21:17:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5591214818;
	Wed,  9 Apr 2025 21:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="bVPY8moo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D07C41EB18E
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 21:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744233468; cv=none; b=hb8Ds26dEpX1RNbp8VgZpqiLdCYIkFH533kUNuLZ7e8KeEL6UJxQQxv1El1PZ91j0oS2cwEbZQdXOhVK/QeCpNi7WyDHvfn8JguTGcADD8wr8PM14/0ZxkyTBR96ajB4hCMUt3txYcP7FqDxPk9qffN46OHAge9xDrq7BIw/zys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744233468; c=relaxed/simple;
	bh=VMdYZrLAD8DMV1DpO50jqiz0vFY6aFjrLaJXiBM7mvI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MeDY1zfuF2i/ckgT7DHHxlZZJsyRDrjSuPsx8vg0SFurJIgZxF/HrBRE8GcMq8i2nGneOCeAh/0Hv3YU+kqz53uIlstHyPRXwOGETF9A7EaHyv4NTUt7TfxwiXm+U0dafdQP8dozLyUP449TpVSlVWgh463dOLqLswBVGgxDwfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=bVPY8moo; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-86142446f3fso4737239f.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 14:17:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744233466; x=1744838266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rrV5UlJLrK5aj5lTpRQRYMaHqlL0u3EBGUfh4HcWOG4=;
        b=bVPY8mooGRXZnFbyiZgysvh7XZ+c1nIRhkLwk9qtWfFI/KTkPZW5d/QjeUO0H6Jhqj
         FeoyiT/0JUaPh2f+2pzBaJsW40YRETM9N7jMIfQhD4Xfstc9JiqGWLMC3xome1KsaN0/
         BzJpScvxyL+8joBKnnHnXZJTbEbfT5MglkcwPsBGXCFqT+nr7KQuHgpifT5mrYNcFFR0
         1Kc9qpqRn0xhcmzcqCGCXNLVzv57aLhpkrZgX6LFVmnwrtfPtfmK4IxganXVQDydYbxK
         XuURMpGoF56af+0HiNYJbRpULycS1SUrxGBaGsbGf0IhzTure6XfuD+gdWc2m+fKICeF
         VGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744233466; x=1744838266;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rrV5UlJLrK5aj5lTpRQRYMaHqlL0u3EBGUfh4HcWOG4=;
        b=v9PTwR3/BiHI98oNIZC+fE396U4g5flilYKrqXF+I+iczP6m0a45PQ7Q41582MDZ00
         9KARjK0qSm4MNEA7X+THjaZirpdGmtm1CSqVYAVpELENhf46tdDTiMUhSagEnybDCS34
         4BOwRr77HDt92u1amnQDlYjSOTL3KxmLeSkHeouI/ENakxXXJvwDS9DQi5jSUqvCtBwk
         gp92YvoXWjyT+romR2nrW+kNzPKEA9HwdPhWlaTdcMrLQfulA8IUqLwzGOcVre/FV0fu
         8LAi98c1M+fi20EDyczGGBrWtygkBUMXUkog/j6bpD67sJy9LeIS0hSYg2OKAgzN7wUp
         Y1iw==
X-Forwarded-Encrypted: i=1; AJvYcCVswP7Cu4s6EINXtTZBRlKKZWs1hugY4cQstxnusNmOcubrdVHa4SOW8Tfhdwwjit4UOw/8iwsIMwnE@vger.kernel.org
X-Gm-Message-State: AOJu0YzkIOb+BQZyUCQSVFes7coriX5QAM1LddBWj0ONSuppOM07rBL5
	DFKGznF00v+erxqMK+GnZNs9B/9XFXr5OhfuwO1MZGTIyHrsRH0j8lAOir1k+Ao=
X-Gm-Gg: ASbGncvyQhTjvVkazchrDj+uX833FAbrWMglb0SmqEwia6tbKRxGVVbLBfT6uECekam
	J/7YBL+BKcpXYRjcstfn7R5bCdD6XMqW71Wrywe6GesuioIRmpgicj0cU9TmITeF2RHy/YHz1UI
	c/R2IdLVuagKM33OliZI/S9PkEfU2fiYpH/vkEZKmHvPhWT2GZznvyDKW/hpenbg8eo9+72QxSL
	NLiTe1k2/WMqS/qIMhjYLCx1Uir7UZpDiJWhimUkRT5wgYIe3mTog1bDZAwHHp8nUVAxbCySM28
	qdZG3VOFrF6ddFaE0m1yqQPGBIsA1IBCidH+KE/PEJPHe4vfNLJODfYfvbgJBgM9E6vIBtUBJoW
	SvyCws9ic2MMzHA==
X-Google-Smtp-Source: AGHT+IG6Fs0mDXRYU2o6Td0yWxwYb8N9uHgcDDzyd75KPdUxyiPuO9N5OH70dXQk1TVcz0gCoG5PKQ==
X-Received: by 2002:a05:6e02:1887:b0:3d2:6768:c4fa with SMTP id e9e14a558f8ab-3d7e4780824mr6626785ab.21.1744233465833;
        Wed, 09 Apr 2025 14:17:45 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505cf8e91sm420735173.6.2025.04.09.14.17.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 14:17:45 -0700 (PDT)
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
Subject: [PATCH v3 0/7] clk: spacemit: add K1 reset support
Date: Wed,  9 Apr 2025 16:17:33 -0500
Message-ID: <20250409211741.1171584-1-elder@riscstar.com>
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
Haylen Chu has out for review (currently at v6):
  https://lore.kernel.org/lkml/20250401172434.6774-1-heylenay@4d2.org/

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v3

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
 drivers/clk/spacemit/ccu-k1.c                 | 340 ++++++++++++++++--
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 128 +++++++
 4 files changed, 488 insertions(+), 27 deletions(-)

-- 
2.45.2


