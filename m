Return-Path: <devicetree+bounces-176941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 128E4AB5EA2
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 23:53:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F09B189DCE7
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 21:54:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 529E5202983;
	Tue, 13 May 2025 21:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="WGZu9e8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5797F1F869F
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 21:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747173232; cv=none; b=i73GeuCvjDIz8Xpf/cX4Ut0f9FLdel+yS+smSxS5whwjTCTvOnLJkJ0q1CYc0o9G62hzGSsfZFb3A0mAo6Ao1XUyKy042/kcOG7gODmp+q4R+cqCeUS7lRzk84PuuSE0dHwYlJCCgjeJO+GzCp2g5VBOR1EWPhmxAADxFfp+xOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747173232; c=relaxed/simple;
	bh=71pgvnqAw3UA+IpyU+Dy5uOMDBAifp/mgVuOv7x8aPM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Pj7PNj6nOzOsurRaS4unKtRPlb5uRL9wz85pGSP55OBKnrZnrCSqAoa3rHw7tEtoVXOwRrFk9RNZEiqNZ0BK4mCzBpWjp/sm1e64QUlHfomchJr2GXuz+F1Zingyk5+xixVeL4pwe5FyyeDPvHwLw0lpF0xhniiPRVJg66Y+ckE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=WGZu9e8a; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-85b3f92c8f8so678677039f.1
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747173229; x=1747778029; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IoLEEBUGNiFTOGCb4OTLcURUXHh0Is7POKT/aDTs3Qk=;
        b=WGZu9e8atDc/sjVAmpq5f7gFtBHgPWfqzehsK1UXXyjWe4QmnRnyB8Po3vrNhZPSfm
         2BIeqQW6HBet3Cyp/ytwDYrWMPNhADO99434FPaOsyD6jqzW9y8yvGhqYYqeqv+uUhnB
         bKUNv8323dvEfxhH31I8kYPe5TCN1q3i+dZDp0BRF0m6qmt9elQ8TvpSOy/unDXrsScA
         DSm+IHoK1jxCHnnqgJXz0IWkGFu47txnf8LiUZ+Xp4WXqdBvksLbA7gC7NH9z7yJEPAC
         rxSNv2c/IiUU7E13V4DKSt2j7h+LV6s5CQUunwOA/xVLowaf+ORs63SG7qP8ncSKkeRC
         tT0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747173229; x=1747778029;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IoLEEBUGNiFTOGCb4OTLcURUXHh0Is7POKT/aDTs3Qk=;
        b=HpwwmjLVwzQzzkggQJUyxPtro8hi0yUvAeWywGLeMXUb63DJO9tXizhqOSwcKazZ1g
         mnO3TIqOFHQydVlj8b1vUHjBQEI16CYmDk+5h9EVdhQztV+xKE37z19SLOnfiW08zfoe
         3L+8jkA4pJWTjdZF7ZNl4beg4rX4bUG2diIjhcWYd8VHqKHunzPvUSTfawPsnSvHBGmt
         gkYupRRWyexIk+JYuAfdzeg/UptD4RELQHDdpQ30aFZTnLnJTA+GQ05fS8owCcVImCKe
         7lpVpdb9Jz4dP82+lP2FuPkqBVLUDmwU9MZ8ze7IljxfCQklQp3Qrbm5v0iAhQV3IN5x
         ua8g==
X-Forwarded-Encrypted: i=1; AJvYcCWZA0DwdsLilWenkGUQoNDRTz+p+HWxeZlZh8+GwAcXkhHxf586DbxW+pm4Vki7XP1j9y5QtLz4oCv8@vger.kernel.org
X-Gm-Message-State: AOJu0YxkeTbGqHJZeyH1MRNSqhob0xZdQqqSRREBdQjI4flCTXzSFS4y
	CtFbr95IY4ia6DkiFch6Un2k8Zcg7YJGKDBh71qOhHprvBLypdZC6geoRTuqSXA=
X-Gm-Gg: ASbGncvImuf89VQeLNTfAtw2FGi0jZOM9TOUAZzXH5F0/edSZeKZbxfnOd8yg0PDgkA
	7Zn8RwWP7Agz38R19tFrnhV98pInb6SbCB1bA/YGY8aqZUpsreB3taQOSr/LU3Kag2wavF5md/O
	f76WM+sEcl6igYU5RKWWguF/rlUJCOtEeezl6y8AFmtYmyrKG9yNY9g/HkyMaciMx3dg8lxdG5B
	3PPDu9M8Ry6DoN5hYyO3ynNr4AiuqGhDKyfMEHKwGUVTfTUvCQMoYryxkWUIg21vJsV3ygqoA2S
	0pRDhqNesBMLGHXtaD+Xhwi76Q5Py9XLtIlIbXj3L7/Wfoqul6l90K352EM0jKZWziI/FnQtDDg
	Dq04QWSBrCae88MWwYnCxfGqu
X-Google-Smtp-Source: AGHT+IGDBUqBNV1+C83bdeHkvMMC/RIROVFW0hAND3S6eCYJOwvoQKB1LZmfPoy/YugMmgpVIC3HiA==
X-Received: by 2002:a05:6602:3944:b0:85b:58b0:7ac9 with SMTP id ca18e2360f4ac-86a08e3dc6emr93279839f.10.1747173229345;
        Tue, 13 May 2025 14:53:49 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-867636e0dedsm239622539f.32.2025.05.13.14.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 14:53:48 -0700 (PDT)
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
Subject: [PATCH v10 0/6] reset: spacemit: add K1 reset support
Date: Tue, 13 May 2025 16:53:38 -0500
Message-ID: <20250513215345.3631593-1-elder@riscstar.com>
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

No code has changed in this version, however two patches were
reworked while trying to separate the clock from the reset code:
  - Patch 4 is new, and consists of clock code that was previously
    found in patch 5 in v9
  - Patch 5 is now the result of squashing together two patches
    from v9 (what remained of patch 5 squashed into patch 4)

*** Stephen, because of various dependencies between the reset
    and clock code in this series, would you be willing to take
    patches 1-5 through the clock tree?  Philipp agreed this
    would be simplest and said he would ACK this.
*** Yixun, I am expecting the DTS changes in patch 6 will go
    through your tree.

This series is based on the "for-next" branch in the SpacemiT
repository:
  https://github.com/spacemit-com/linux/tree/for-next

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v10

					-Alex

Between version 9 and version 10:
  - Reviewed-by tags have been added to all patches
  - Patches 4 and 5 are changed as described above

Here is version 9 of this series.
  https://lore.kernel.org/lkml/20250512183212.3465963-1-elder@riscstar.com/

All other history is available at that link, so I won't reproduce
it again here.

Alex Elder (6):
  dt-bindings: soc: spacemit: define spacemit,k1-ccu resets
  soc: spacemit: create a header for clock/reset registers
  clk: spacemit: set up reset auxiliary devices
  clk: spacemit: define three reset-only CCUs
  reset: spacemit: add support for SpacemiT CCU resets
  riscv: dts: spacemit: add reset support for the K1 SoC

 .../soc/spacemit/spacemit,k1-syscon.yaml      |  29 +-
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  18 ++
 drivers/clk/spacemit/Kconfig                  |   1 +
 drivers/clk/spacemit/ccu-k1.c                 | 239 +++++++-------
 drivers/reset/Kconfig                         |   9 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-spacemit.c                | 296 ++++++++++++++++++
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 128 ++++++++
 include/soc/spacemit/k1-syscon.h              | 160 ++++++++++
 9 files changed, 754 insertions(+), 127 deletions(-)
 create mode 100644 drivers/reset/reset-spacemit.c
 create mode 100644 include/soc/spacemit/k1-syscon.h


base-commit: 3f7ca16338830d8726b0b38458b2916b3b303aad
-- 
2.45.2


