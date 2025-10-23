Return-Path: <devicetree+bounces-230462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFDAC02CFA
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 19:59:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2FECC1A679DB
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 17:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00FB834B1B4;
	Thu, 23 Oct 2025 17:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="CX5aE2BB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3773126DF
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 17:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761242367; cv=none; b=D9lBkdCtuxOi96Xz9RHlEgqqSq12EGWQNLznQRoIP9LGWH0v7kZfMZ5IxDSvsguLRX9W0bB2wUSVQmvkJV10F3eWAzoIPiLpkpmNOuAm1i3cX3EGe7EPdaeb2n67K2KEMyBcR7wLB9UWxa/wx2S33HB+1fA5dGMa4LjAdyKijDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761242367; c=relaxed/simple;
	bh=cmoQL7/EOLRFUL/HDkJZjuFWcItHG3aLGx55fZGpJDc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=c+TPLU+Y0pG8Hou8Tb5LWaho6vB/9hkkfThxtnchmvDZAX1eqLMJcSXbWjpMTFgvaDncKZPv43fq9/WHaXYa9lBnGJOnYeZHHyI30zVZS/UK97NRCvzvMrveU1rSSv9Xk3OIITYfmnzOQUUEDNj+H+6eL7NTzry07oSBPN/ZJqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=CX5aE2BB; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-781251eec51so934234b3a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 10:59:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761242365; x=1761847165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zZKnZFdnM3oZwGqheXR0h641QYDnGOp0D351J3S+oms=;
        b=CX5aE2BBNKN74+HDW2YndtKOFsSy4X+rslQnz5Kpdk/25xIV6Gu7jS5k1YjS9UPSje
         nm6JRSrqNT9ATEDog+u5mUYQ92TxlFX+pQb4yuwGqOYQmcW2aF+ZN1suntTHPncdtBwM
         SMfC9LyhHoAVUD6Nr/EbjQBys+4y7FxOb7Cahl09wO/ANp3AZsxLGkhr+FJApMO+Q2TD
         2HOS9R9UyT5DH4yi4g4DCdFQLTLa/leGBrf4JY+5pb0pAiTYmpsrdt0DRTtnAVUWe0hC
         EYi6N87JwvF+VdA8ZliBIqLTJqMG5F8+OowviyCsAqu9DfmPcy8H4bN43zIj+h6idTAO
         dOsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761242365; x=1761847165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZKnZFdnM3oZwGqheXR0h641QYDnGOp0D351J3S+oms=;
        b=ofQYwXlQS6guls9Xlc7QZY+ih2NkeIq7u7OJs2rJsuqU04NTI2WXC2CboUefD0TIx/
         O+o8yNaV161R3t9+4pjKYMheTvCirUc/wpKPG3in2d61JtGqJ4nNl58Y5itAPi7x0Hv6
         T0sQY5SxRRl3XVdrNRA3F4uAX7ik10LSYgFbndUGjRuS+LobykkPS1dz/X/bldS30Ao1
         x3haxkPVPKi19wePt9JKHEu6xk2nzvMkaogUDTNIUhGRIN36OyzdMlwSdPLDM4d9ewgL
         vlMMjROAUMUM2RUpFEpPq6y0dY+AeYwnu9HxKLv+P3nrb9RPoX8TLaZO8MpGxhleMtN3
         HjKw==
X-Forwarded-Encrypted: i=1; AJvYcCUt3A7JiZ7X9GwGqc88uBiCUvVHWAJU101ul+aTFGbBjD2Y7WQ0qvdonOtr6GJt6oxH9K/glqodN5cJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9onKk1zRvK0oCK731crjV59JKBJUDW9tG2vH2h7a1HezRwWBm
	rTybVVlhmU2ECOV2P5h1404qvJUvLWpmS3M06kpbEo7Wrsg1Ewk+3ipI6wQS5bIHizo=
X-Gm-Gg: ASbGncvJ3zJQ3dMT8S+q0MezA9jA5Fam1N8Xcl4qzv75M3bZLAA10sQizso1nEvm7DF
	g51EQvo5a1laefblFf0HkpqZWZ/pV8HZODP4m6Ek/bjdCB7fFfHzWDanPK/N3uYSKYO4670C3PG
	yfB4Q+u+87+6oiHZ9357UdRSFIq1gTfMJaEH7Xqxxx4PdMMdpL+dmPYyWB7IQoghefaT+jyjLh2
	gp7MQcC7BnOB/gX1aa+y3C193JlqdjXfQloVg25zDqi3yUVPbR1xBcBx95U2GMdBR5aIYAnM43P
	eH0X3qGC2eFofYJN/gIs/yGsNMv8NrVsMpQfLqhvUv3u3mbuvMIfa82crhYki5WAliAg1xXPIDQ
	ewfWL7B4xY+5s0fyip3KjH92g+H+R3kFIV34WK52bmJFEBY5Af5+HHbz0IjJBCYHeCa8YXCoRPQ
	JPBhHPuYWkvqIhOisc2RA1mHCnF9Zs6lj1TA==
X-Google-Smtp-Source: AGHT+IG8JoJ2ND1pyiQh1ApMIuQ8AB6jOUuqQ1+8XSa1Ou2nNF3k3D9kPXQ1PKRoMYU7/mYJQIadTQ==
X-Received: by 2002:a17:902:cecb:b0:27e:ec72:f6d with SMTP id d9443c01a7336-2946de3d929mr41775405ad.11.1761242365381;
        Thu, 23 Oct 2025 10:59:25 -0700 (PDT)
Received: from zoltan.localdomain ([208.115.86.150])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33e223d1265sm6447431a91.3.2025.10.23.10.59.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 10:59:24 -0700 (PDT)
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
Subject: [PATCH v2 0/9] spi: enable the SpacemiT K1 SoC QSPI
Date: Thu, 23 Oct 2025 12:59:12 -0500
Message-ID: <20251023175922.528868-1-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series adds support for the SpacemiT K1 SoC QSPI.  This IP
is generally compatible with the Freescale QSPI driver, requiring
three minor changes to enable it to be supported.  The changes
are:
  - Adding support for optional resets
  - Having the clock *not* be disabled when changing its rate
  - Allowing the size of storage blocks written to flash chips
    to be set to something different from the AHB buffer size

    					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/qspi-v2
  
Version 2 addresses comments recieved during review of v1:
- The "reset" property now only applies to spacemit,k1-qspi compatible.
- Patch 1 (previously patch 2) now points out that this is the first
  non-Freescale device using the binding.
- Added Frank Li's Reviewed-by on patch 3.
- A quirk flag has been renamed to be QUADSPI_QUIRK_SKIP_CLK_DISABLE.
- The predicate for that quirk now returns bool type.
- All other similar predicates now return bool type; this is done in a new
  patch (patch 4).
- If non-zero, new field fsl_qspi_devtype_data->sfa_size defines the
  size of the serial flash regions, rather than ahb_buf_size.
- A continued line in the Kconfig is now aligned.
- Patch descriptions are wrapped at 75 columns.

Alex Elder (9):
  dt-bindings: spi: fsl-qspi: support SpacemiT K1
  dt-bindings: spi: fsl-qspi: add optional resets
  spi: fsl-qspi: add optional reset support
  spi: fsl-qspi: switch predicates to bool
  spi: fsl-qspi: add a clock disable quirk
  spi: fsl-qspi: allot 1KB per chip
  spi: fsl-qspi: support the SpacemiT K1 SoC
  riscv: dts: spacemit: enable K1 SoC QSPI on BPI-F3
  riscv: defconfig: enable SPI_FSL_QUADSPI as a module

 .../bindings/spi/fsl,spi-fsl-qspi.yaml        | 16 ++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  6 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 21 +++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 16 ++++
 arch/riscv/configs/defconfig                  |  1 +
 drivers/spi/Kconfig                           |  3 +-
 drivers/spi/spi-fsl-qspi.c                    | 87 +++++++++++++------
 7 files changed, 124 insertions(+), 26 deletions(-)


base-commit: efb26a23ed5f5dc3554886ab398f559dcb1de96b
-- 
2.43.0


