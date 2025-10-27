Return-Path: <devicetree+bounces-231543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC109C0E0D1
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 14:32:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E6671406AAA
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3041F4188;
	Mon, 27 Oct 2025 13:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UXOa9zl7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com [209.85.166.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F911C3BF7
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761571817; cv=none; b=M2fDxHOYMcEOF6xZxEymfEK6dYc23oJI2GAM8V/p9Qivj2ncrbf77cohB2lRbEql2ZvBl/r5hHyhNeEN5af1e3b+8F4YKN2ynR79k+sPKntPyQyg4l5CQphIV8YyFCJ9QcOtkgHN31RVG5GPlaAwAnOGkNzTL3OkMQCQwqPuVRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761571817; c=relaxed/simple;
	bh=owwF/c1ZnVCPR3jIiSSB/1idNxMdC9jtjVdIBYaeNLA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WQ7rD73HmxgdCd0Fy+aC8pOdsAGLiyl/cNtmDov+No8K5NKEx3JLvP4adzclSOX3uzLgDbaohUEDRtwSGvxzdQvbu+spNIxgB47lZ7OoOk1CzpxhwVCntJ1HGklLSh8c0LX7/jiyLfjr/UaUE2vt7+LcYTLQ64p5YTb8DsbMZI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UXOa9zl7; arc=none smtp.client-ip=209.85.166.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f68.google.com with SMTP id ca18e2360f4ac-93e9b5bafa5so170536739f.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 06:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761571813; x=1762176613; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qJjnQ8pdDtk39CSCRJz3s2YRDUVOeo1DO713ElfxvCI=;
        b=UXOa9zl7kmPLTQRHsyGrXNDHB6TN1EFakWy7s2sYohzNmhqJBSedda82G5wJ0KsX76
         RQdx6yqG/TvLmvHt9G1MpdmNN8qTWLh84tyEtfz1eGmb3LovFo1qRfhHbCb37lKbEK9k
         SntjcXa+tZqzHkmU8P/7wPMFF6ekShq8IoGJl3UDKD5i7+hp7bVOJZv0bsgPQWHL2710
         ueodzFrgh2rKFfXLOwPDDvC1tK6jRqShpi5jphA+qmRx8xMGqrpS9YNGTSBhgogKj36G
         0mvKlWLZdrqdff306iOGo1Jg5qnstlcta1Dx2GeOZ93s4k/N0v90UNIyRW3Kc3o1EzsI
         ew8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761571813; x=1762176613;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qJjnQ8pdDtk39CSCRJz3s2YRDUVOeo1DO713ElfxvCI=;
        b=IHQiYOI9m4dOuW974r4i/YVmRf08PPTK8cwfVUuwwnhlql5py4sOMQ0T4kjRD73+MC
         zyDzDTTZnxZR7Q8Xtq7D7zeipmiEHfEzapWpgKM9BfzjnUfYwKXtptL+HteLAk7BHQZa
         JsnoPno0/WHwkInNog5bqRW/44TgG/uQOlE6j8YlCAOWAxq0eoooNpvYCxwbey4tH5KJ
         K38IdC6cqiQ71IXqJbFxE2em4qJQITop2WFuCttdUtuMlMgSiUfuFlwRXtKml8tDKEmt
         lEur7yinCKOgrX14DkpIJcZCHNkYqetlJC4xY4PPv1Phzv57Kv+5aDB462lK9TdPpNl0
         nC0A==
X-Forwarded-Encrypted: i=1; AJvYcCWiWeU7afx+FByjqjzE83gpBauPb83v9eCsX3/rU32+XkR/E1aJ7I8NHMqomb+Enum31IqSboEEFHpW@vger.kernel.org
X-Gm-Message-State: AOJu0YzWLlPa33H543Jx4Y3mZPQc7SMAdSIqTIv8ncqdzkIC/E1Gy7tI
	6DED8SbBwqsx+54F3ac6gd3ybaim7bNVl7ilRzy+2NHk+Glyie+TFCf+TpiPx8b4HjM=
X-Gm-Gg: ASbGncv1RkxIeBglbCK+/SMMZqMfoxuyPAABIowe9pjv6+R5kzpGOG5HxidPj6Rpeq2
	LF1LXkEg4pQCw0gTZ3aAmEQrQqWZeS0pUdSYsmcOg9/QLNqWqoMwo6LlY0/YDbPhv+B/udjBQkH
	mzM4yCvOlRzXmfiPaFfaq2n9YLc66DdkOJFv9dupSlKg21A8LLEEXH41CA3fU1mJ96qzkGs4Pyi
	2e+O/0Q3ClETrgtEx6EWJGQ1YSAi8fJP0Ge4oCnLsw0mrd4410gQodb/g278J+mIZ5pAnjBX4Hf
	+xANjoiecS57h68IHix8D8LCUg3ROHTVlf5Fp6zQ8KlFXCllXl+1w0DTwav9owrNeBc+hVFC7+6
	otm70lxqVKmRdIUy2oioYcFYMa0Yj73e9BhNwotQgbd2nVeFabdy/E5vFihrjWBKtsWqU66CmZJ
	4C1+jEHBKIJDHsiPTiuX4BNCt4HrW5b0CQG8KJT6Kf4b8=
X-Google-Smtp-Source: AGHT+IFP3NJHkfNDLkwaf4zEjacSbOyB2CKC3rVjLUaScafS/uUg5QntItE3fUUUdGBa9LYYuVS1mQ==
X-Received: by 2002:a92:cd8c:0:b0:431:d951:ab97 with SMTP id e9e14a558f8ab-4320f77104dmr1324625ab.15.1761571813243;
        Mon, 27 Oct 2025 06:30:13 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5aea78e2fd4sm3093057173.26.2025.10.27.06.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 06:30:12 -0700 (PDT)
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
Subject: [PATCH v4 0/9] spi: enable the SpacemiT K1 SoC QSPI
Date: Mon, 27 Oct 2025 08:29:58 -0500
Message-ID: <20251027133008.360237-1-elder@riscstar.com>
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

This version of the series mainly adds sign-offs provided for v3.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/qspi-v4
  
Version 4 incorporates comments recieved during review of v3:
  - Moved the allOf block below the required section in patch 2
  - Added Frank Li's Reviewed-by on patch 2, 4, and 5
  - Added Paul Walmsley's Acked-by on patch 9

Here is version 3:
  https://lore.kernel.org/lkml/20251024191550.194946-1-elder@riscstar.com/

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

 .../bindings/spi/fsl,spi-fsl-qspi.yaml        | 21 ++++-
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  6 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 21 +++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 16 ++++
 arch/riscv/configs/defconfig                  |  1 +
 drivers/spi/Kconfig                           |  3 +-
 drivers/spi/spi-fsl-qspi.c                    | 88 +++++++++++++------
 7 files changed, 127 insertions(+), 29 deletions(-)


base-commit: 8fec172c82c2b5f6f8e47ab837c1dc91ee3d1b87
-- 
2.48.1


