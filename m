Return-Path: <devicetree+bounces-230957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9535C07DC5
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 21:16:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 59A173B68AB
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 19:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0750E36A615;
	Fri, 24 Oct 2025 19:15:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FA0uE7G4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f193.google.com (mail-il1-f193.google.com [209.85.166.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA11436A5F7
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 19:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761333358; cv=none; b=Sj9FXgm84PWulGphc1PNCmC/cD0AdSdCGB+lTWhoCU4QD0lUbUfsLSkM5OG39qFvZ7reKTy56n4oM9g5UDlhyw2jFRISVyDrOegW9bzj0Hv6zNWDGO7IQOkfNXuILge2Y7aKYxtKmwkUtd14JhiL/+DeTxgkhITFC7JIrlwPZ1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761333358; c=relaxed/simple;
	bh=pYEC/hTDDpoyfVbfoYHFpH0exPsJY0khjjaveQnHtzQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=diL/gRKcf4/j0+YWi1JF6UOMYzx9Lz45C4U8/PJmyPNIUlqYrd5GFMYzIHQecwByo4GHKYA/nDCMFjpuajowN4Ji3OG97HmJUe/KAl/P2fvcNMVN7Z7ZTSvTodjn4u/ZPrmrb6H5vmPFNMyW1T/ztruflM0FxcokAxjckoK4BcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FA0uE7G4; arc=none smtp.client-ip=209.85.166.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f193.google.com with SMTP id e9e14a558f8ab-430d0d37fd7so12030275ab.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 12:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761333355; x=1761938155; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5hqIIxYoJfbzcFUkevnIvDyYXIbJhiiIxZ4aEshcKOg=;
        b=FA0uE7G4uBaE1x4q+5S28JrSi2UrKzWJ609Ni40Wb+NwKgNm9oBPQdQpXle5FngFUn
         PVBWqZePgLN5OWAHkHnLYAKFy6DPYy+uURjW2QpyV8V7UgGwUGiq3oDoEuDGHqvGmXPa
         A27bh5f0xXnpEqIzFuqazSYmu/eM4tiGZb1GS2gHv1Muz1RtLmVMqzNd5Cttt84+1o2c
         Ms8uur4vm94K3ZzQVEOUXPHfix7cRpm8ilE6O4EKYiJ8c0/0qT2dwLk2C3I5kohDNP9d
         MEpg2cpwU5YURBbyOCbToQWpppGcR06jst1b9cE3k7bpmG2IIzmzill1vvw8ksToyEZS
         y4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761333355; x=1761938155;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5hqIIxYoJfbzcFUkevnIvDyYXIbJhiiIxZ4aEshcKOg=;
        b=j5ubqw06fIqyc26pkibwz3FB+i1noyU8t9sqyHG8pnXYAoURBeQ5jlw8+z8j6nvSaJ
         8ABwGAQleDVxvRNiEo1R9Gqv5g6ZPLsUF53n7EKCfZ2BBpG91lezZVKxEI0MKW0LmolP
         zi+0mBxFdEM94tBwlZoWyPJ4K+bmp1VN6d20Y6oLDblXDYufdqRczoxJUh3BwakdWWU9
         4+D5TNRp29d5b8FNf99zbZ9Y005GHwZlTKuDZ9zaNGTnnfb6IJRMiA8M5u3nDxT86vy1
         6sz6KPQo9JKHSyv7yxtWTpVGv4y2QP6Odu354Bbrxhp52gkbd36XZSijc00h8jY7hbr1
         aRFQ==
X-Forwarded-Encrypted: i=1; AJvYcCVm+Px3Qicp8bOWF7EsuT6eVdI9pncV/mU5bwvy78JMSRWFfLoBswSmLZe6SDST83BTSbJ0QGuurBJp@vger.kernel.org
X-Gm-Message-State: AOJu0YzUMp3PCZK28Y+GsRBsc3kuTfK47LzC6bBkR8fl5TmNuWs2br7u
	bKLcVIetFNAxufiit8JCY4ARKKbk4TMCqj6HmgsSNRDvEe569+j6oRdYsEAIl+vn+wc=
X-Gm-Gg: ASbGnctPuAy5oR+OTC6KgNsW4qqXceExniSwaZFrEYQgurfIql3FKUbqYX36qlW6PY9
	+D/ASVnt7eYiEkaDNmLbMtLjo/3wk47MRQuAIn5W7EwV+jgAZThW+fS9RJ85DHm9uYo2Bt/IDV8
	BrX4g7BaNgBdcA1PEGCDFZ7p3tqqTc/Xwpmib2FhdBdxZ28mLLZ1DF7lyQwHUITtr+WKhjLjNa+
	C2fsG0FLF2c6CuwRNT8FlEwSrMz3fCBXutgNQioGSqWwymYbbA2o/1tRE12TDofcqhuudnLU6L3
	vhXVJTgzwA49h/FrP/SDG1C1cZVPhLqQWxAbMoNqIuS3D3noWNIsc8zXWeFvK7KF6HHzq3JgoLx
	rpyGrHDRhhMlvrhpbCq8QgPgsly3hWylH8PCP65KkU0QcDdm/LAco6/ZGLZChljZHr4NGJw2bJH
	y6jEcBoQvI1S3kJMNa+VcBwqVjW59TTkpq0+/SjzB4AAKFVbNZos9p1w==
X-Google-Smtp-Source: AGHT+IFf6y19COM4VMTPijjo8N/XwohbmjTEdQxUdhW3R9LdR2ndKIPLgXKS2XAlzSenv51Gg++n7g==
X-Received: by 2002:a05:6e02:2502:b0:431:d678:fcb with SMTP id e9e14a558f8ab-431eb668375mr53003245ab.9.1761333354916;
        Fri, 24 Oct 2025 12:15:54 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5abb7fdb7c7sm2427824173.44.2025.10.24.12.15.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 12:15:54 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	han.xu@nxp.com,
	broonie@kernel.org,
	dlan@gentoo.org,
	pjw@kernel.org
Cc: Frank.li@nxp.com,
	p.zabel@pengutronix.de,
	guodong@riscstar.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	apatel@ventanamicro.com,
	joel@jms.id.au,
	geert+renesas@glider.be,
	cyy@cyyself.name,
	heylenay@4d2.org,
	conor.dooley@microchip.com,
	fustini@kernel.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/9] spi: enable the SpacemiT K1 SoC QSPI
Date: Fri, 24 Oct 2025 14:15:40 -0500
Message-ID: <20251024191550.194946-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the SpacemiT K1 SoC QSPI.  This IP is
generally compatible with the Freescale QSPI driver, requiring three
minor changes to enable it to be supported.  The changes are:
  - Adding support for optional resets
  - Having the clock *not* be disabled when changing its rate
  - Allowing the size of storage blocks written to flash chips
    to be set to something different from the AHB buffer size

This version of the series addresses comments received in review of
version 2.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/qspi-v3
  
Version 3 addresses comments recieved during review of v2:
  - This version fully tested and confirmed to work on BPI-F3
  - Added Acked-by from Conor on patches 1 and 2
  - Added Reviewed-by from Frank on patches 1 and 6
  - Moved the reset property conditional under allOf in the binding
  - In patch 5, needs_clk_disable() is no longer inline
  - Tweaked the description in patch 5
  - Renamed a local variable to be "sfa_size" in patch 6
  - Changed the subject line in patch 6
  - The sfa_size field was not being assigned in spacemit_k1_data;
    now it is set to SZ_1K

Here is version 2:
  https://lore.kernel.org/lkml/20251023175922.528868-1-elder@riscstar.com/

Version 2 addresses comments recieved during review of v1:
  - The "reset" property now only applies to spacemit,k1-qspi compatible.
  - Patch 1 (previously patch 2) now points out that this is the first
    non-Freescale device using the binding.
  - Added Frank Li's Reviewed-by on patch 3.
  - A quirk flag has been renamed to be QUADSPI_QUIRK_SKIP_CLK_DISABLE.
  - The predicate for that quirk now returns bool type.
  - All other similar predicates now return bool type; this is done in a
    new patch (patch 4).
  - If non-zero, new field fsl_qspi_devtype_data->sfa_size defines the
    size of the serial flash regions, rather than ahb_buf_size.
  - A continued line in the Kconfig is now aligned.
  - Patch descriptions are wrapped at 75 columns.

Here is version 1:
  https://lore.kernel.org/lkml/20251020165152.666221-1-elder@riscstar.com/


Alex Elder (9):
  dt-bindings: spi: fsl-qspi: support SpacemiT K1
  dt-bindings: spi: fsl-qspi: add optional resets
  spi: fsl-qspi: add optional reset support
  spi: fsl-qspi: switch predicates to bool
  spi: fsl-qspi: add a clock disable quirk
  spi: fsl-qspi: introduce sfa_size devtype data
  spi: fsl-qspi: support the SpacemiT K1 SoC
  riscv: dts: spacemit: enable K1 SoC QSPI on BPI-F3
  riscv: defconfig: enable SPI_FSL_QUADSPI as a module

 .../bindings/spi/fsl,spi-fsl-qspi.yaml        | 15 ++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  6 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 21 +++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 16 ++++
 arch/riscv/configs/defconfig                  |  1 +
 drivers/spi/Kconfig                           |  3 +-
 drivers/spi/spi-fsl-qspi.c                    | 88 +++++++++++++------
 7 files changed, 124 insertions(+), 26 deletions(-)


base-commit: 72fb0170ef1f45addf726319c52a0562b6913707
-- 
2.48.1


