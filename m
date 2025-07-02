Return-Path: <devicetree+bounces-192041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB84AF1404
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F1B33BCF7B
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 11:36:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29170266584;
	Wed,  2 Jul 2025 11:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="FTlDqKCL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2757265CB3
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 11:37:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751456237; cv=none; b=nuEV6HDo9Ip6D4y7RfCHelATyg2ruOVgv6bnDBnF9YdjBEguwtme0TpDN9LVf145NosaZ1YH28M5IzJmnn0vifw+KU6zXpMuzBg8U4Fth39czepSFhFD/xl01S7qbUGtVqiXqzsF94AxkTnTCUfoiugoMQ1c8IL7gd0bdup+4OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751456237; c=relaxed/simple;
	bh=zAogbkAHdpSMYu9hHlptP9/nDJc3B1iYUikebeaM8dQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PQxm48MKAjNjTCbCZIOwBx3ps3368N+IM96SZob9ZtvUp2yty8KTD09rq9MXFweg9EetaEzissdLTiisUdS1zixT4H+8xQ/L0pUFKf7V8zRBWRLNLcO1z/NgnCpG5b/w0Dg1ZVNMGRS/LWlzynjGJo7yYDoRqZ9SHNevqwPsE1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=FTlDqKCL; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-7d3efcb9bd6so663528285a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 04:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751456234; x=1752061034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JuzsZX0ECM0P7YFc0RDsIs6MtWj0mR7kFmi3VabZ4io=;
        b=FTlDqKCL3/SCDGSdwugIYbm7s2dpoedmFCH+UnBfVhCPvfYSjKFj0tE1eBFbJynNiI
         5NG4He7XSh4z13h8wVdQ3E2UONC4/DBJQNHVBCAmXSvJpjkA5zonikwvceLboSW9Wp/4
         a2Qh7ConUN16gV6TfHMgH408h3LzXBz/DjJrmyEit8Tox5cIxhdWAxjmO4vEGifzATeN
         7okf7eA4O8x1o0wjBDvhBlO0iq5QT2diMEgA0EwcE/JEjUbf4042+qz308R0lvwZSpf+
         eWcQkL0q3Ln2mvC1zmhKjbWrR1vACaRccC/y5gnEJnJIWzrrLVCZJ3EinY8SIX9Sx+57
         YyVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751456234; x=1752061034;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuzsZX0ECM0P7YFc0RDsIs6MtWj0mR7kFmi3VabZ4io=;
        b=RzeVL0YuACrk0kixFl5anDCmY1fhaSro9VQ3OThSZHk0ALoBkKbr2ApHsIBaer8mUU
         dZ+YAnTwPL1VSS0ju9Bkw1z1jXuxNCVKjhZnrMqpbldQ0pI8ObmQcsJIoKti9N0Q1qWb
         CmWzz5yJpHTvf8AIT+XAJjO0QeeWbvZp1TRIizkiMz0JZxslqWrbSQaYupDb8aKyPDNi
         KVp+J7kruzQGFP2uav0TMrmey88OaLOuNlrDgN2I+SLkyxUM65nkR3TzfKNvS1n4AGYO
         n5E/IQlzcQ602D/AEG/QeVAmK96M4acDv7bxGJ4783ghGmeKwh1cI9vM6Rwc8rQSzO00
         D2cw==
X-Forwarded-Encrypted: i=1; AJvYcCWDbRG5hJ3WRzOnFx4X7Rt2E1LsD3y84mrASDPWW8v6PfdPHP6uMOwv9eC5sKRE+xFKvkqVS0M300zZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxKFRSr/HFYVVeeqMkY5DKati9CgspDrbGnRONp5pZhTpkHplVM
	WlNGN7REkb6xJjc+DyKwSfe19NIP2oNDLPTY13kmtBoMCditAsbfW2sMo2tmwiHg1vM=
X-Gm-Gg: ASbGncsxr07/fpltVC1SeFSFWcwwfXt+rvRAhny9GMNAgsBmXx4ISgfB54ITUMqChpD
	VZYepZVRH8FXaqDCfdTZbVLYc7QgOUxzQ7j4DLf3lOECe/oFoLrB0zm/Gfpdmj5Rs7y0xt0Qkbi
	CLakhlq+3WOVigMm0LG/1lkVmFGkM+nHlpFnnhmxMiAW6pteLyuw1qk1hJZ4ig3FiAR3zhvU8eA
	Ryhh5pwtiIHjRJ+cOkIkdATQD5s6Gshb3mvnBlf9wOEyBv7F5urwnfj8zBiYZTPtZiDPhtw+9YK
	qP9oKaSdjNYx++aOzcMDaLO49x7izx4z8t2oE2yh5kCdn/bPL5UvR+5HJLMrZAyhvU/JtrXjdSN
	UcR/D7mYPaQGkIed6DJ4V1Weg8QkavooWxtE=
X-Google-Smtp-Source: AGHT+IG2imp757tfBUch+mPjlrSo4FqLZrnMd87ikEDlzWlfKhJEzuvvcBO0t/h7py81wq3vTreWwQ==
X-Received: by 2002:a05:6214:415:b0:700:c46f:3bd with SMTP id 6a1803df08f44-702b1bab600mr37043216d6.25.1751456233867;
        Wed, 02 Jul 2025 04:37:13 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd7730ac6csm99218046d6.103.2025.07.02.04.37.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 04:37:13 -0700 (PDT)
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
Subject: [PATCH v12 0/6] reset: spacemit: add K1 reset support
Date: Wed,  2 Jul 2025 06:37:02 -0500
Message-ID: <20250702113709.291748-1-elder@riscstar.com>
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

The only change in this version is that three of the the four resets
associated with each PCIe port have been renamed, to align better
with their corresponding clocks.  This affects patches 1 and 5.
For example, for PCIe port 0:

    RESET_PCIE0_DBI	(no change)
    RESET_PCIE0_SLV ->	RESET_PCIE0_SLAVE
    RESET_PCIE0_MSTR ->	RESET_PCIE0_MASTER
    RESET_PCIE0_GLB ->	RESET_PCIE0_GLOBAL (no corresponding clock)

No other code has changed since v11.

All of these patches are available here:
  https://github.com/riscstar/linux/tree/outgoing/reset-v12

					-Alex

Between version 11 and version 12:
  - Renamed PCIe resets to align with their clock counterparts

Here is version 11 of this series.
  https://lore.kernel.org/lkml/20250613011139.1201702-1-elder@riscstar.com/

Between version 10 and version 11:
  - Rebased onto Linux v6.16-rc1
  - Redefined several "multi-bit" resets as individual ones.

Here is version 10 of this series.
  https://lore.kernel.org/lkml/20250513215345.3631593-1-elder@riscstar.com/

All other history is available via that link, so I won't reproduce
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
 drivers/reset/reset-spacemit.c                | 304 ++++++++++++++++++
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 141 ++++++++
 include/soc/spacemit/k1-syscon.h              | 160 +++++++++
 9 files changed, 775 insertions(+), 127 deletions(-)
 create mode 100644 drivers/reset/reset-spacemit.c
 create mode 100644 include/soc/spacemit/k1-syscon.h


base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
-- 
2.45.2


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
 drivers/reset/reset-spacemit.c                | 304 ++++++++++++++++++
 .../dt-bindings/clock/spacemit,k1-syscon.h    | 141 ++++++++
 include/soc/spacemit/k1-syscon.h              | 160 +++++++++
 9 files changed, 775 insertions(+), 127 deletions(-)
 create mode 100644 drivers/reset/reset-spacemit.c
 create mode 100644 include/soc/spacemit/k1-syscon.h


base-commit: 50c8770a42faf8b1c7abe93e7c114337f580a97d
-- 
2.45.2


