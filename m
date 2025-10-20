Return-Path: <devicetree+bounces-228938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BFB5BF286C
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 18:52:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77D45425F01
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 16:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BF0A265296;
	Mon, 20 Oct 2025 16:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="KxmtWahr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1935732ED5C
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 16:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760979120; cv=none; b=lPqgqAiENiwWja5E1eEFVVNe2ZIKofhz/C+626ltHIDEgfzifKOK0N0bhf/IMjQSNoP8eQ+e7lT+9dOLlwLJzLVh+L69ctkQAfOZO6Pa1G7LFuVN4hXoUeTNTDqBl8kjewf9aO5wzbCaVobFw/bNiKoqRkS7PVkg7330P+aWk+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760979120; c=relaxed/simple;
	bh=3G7mlblq1IkMV+TQeAC9F7TUri+6TwMa0SOSWvsCMmM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=aWohUgwrRjlfXRqMG8mj9nSUaXVHQqhpfIckjNVdGVNrrru3dD3ToQic38g3W+f575n7i9Ux3n5vO77aOKq2PQMjOicZG+xSpvC+r4wzee1kWklb49gX4qMavbeyj0Jq2g7EPg5Ne+ycFM197RlleLw7G9Y1iGMjVFzFywXk2ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=KxmtWahr; arc=none smtp.client-ip=209.85.166.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f66.google.com with SMTP id ca18e2360f4ac-92b92e4b078so190434039f.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 09:51:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760979117; x=1761583917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1AvuDUU8XTDFjTkk8uCzrLoeu+wpmzYKrOcfQ084FIs=;
        b=KxmtWahrPOwMjWh2SGJg+td+XbWnXF3DKm87bH7y7Am6+J2aJQNbjSb8DKsrh7uj/I
         1ywfMwIqYRgJ7oL79u0+rEA24+g4TJWqZDFYvkfOZTwyVBWgRcNK5rWgD5fW5LW+VwHO
         8LAoWiQWpgOP5tIqNuxr3I1ghr98UfQWjCNUaEG8fUcOgkOHs+L9TzEGbxJK2MI/V+En
         Rmp0MODDivH6aIaJyRLi0aPLWKTLrg9TGuErjq2I8oDdsy78MYdo/qNsJqC3mr2wHvty
         /SlwTxejlxd/4iFiO244jL1+b0jOI/0tC7nipRSsu5kRqHPTqufGIPYPOJ1e80LJlw2l
         Ubtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760979117; x=1761583917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1AvuDUU8XTDFjTkk8uCzrLoeu+wpmzYKrOcfQ084FIs=;
        b=CnAiu1to146Bop/tnjwHAqBQ8rBftuWzDFC3HOTCMXMBmqZlN5u91UDwLr1iHXAsUs
         vmZlDgSNX80GTgqdLvEZbfH9BM5DtVgrXlP8gmBY0ZSZ6LROpS2xMOKulka8roRD3u7b
         eI4jBsby6v4AwJsJ3UEKAsAzDMeA2CEfZ1diR3ygPeviGHDPy4qrIsRMNvq+wmegYSJa
         koC1/yaYut9C8OX2gmPwz9ztnldfKNeQ3bbIhXYOvcSIsJTtwEikkTHGUHg9C5vyLIP5
         mLvm7lMa/oSAN+m1NwAbVpTJxEDWho6XVUHC/J3ufabwQkztCrGeV5ghjnRw4C4fk2v6
         5vhA==
X-Forwarded-Encrypted: i=1; AJvYcCUo98+QjtNUiL2YnsR5KTVleOpflylGsHxktHEKIoBcnkloX+tR2S+tGeVZSsrymmYx0hdHfbrW1sAG@vger.kernel.org
X-Gm-Message-State: AOJu0YzmH588MCe27CYh4RNWS9XJowv0qNmb7jALaw1YaBEu+rT9wPpn
	/nRukYpb+S8HQoKghuP9vk2nCZHYAzc+QXLfHqNCdx+Jb+X7b+VW465bKY22Lqa587A=
X-Gm-Gg: ASbGncsqFALTBVwFJUGmUjypEAwRME7sg6ooaGtXqUnGd9P8btjKlnJCiPkzWK1E1+J
	E2ZqyWMPc0hQlO4DKsnTEsvsogfaxD1TXBCfemfJshnIvKRMhMnwtghF1heDr4ksYec0ZC3NLc+
	zolRRMnDTt5ywttpe8mxGQ+q+IF0gtyiB+y137vbzHb7aDGGJfaNuSN+jZY4tXBmIyhcwAaT++3
	znDNcvjgDwbWs3sqYnHRBLoQ+/yfplw9wjmJZX51ksShBC7/7Dln0OGXKY1GdLTavabzufZkR1a
	Lz5u1qFzPT8RC+V5rplEWAWvNMbZKn6rSFr7kPv4ddPBeIiSXLRhq1rZBNDXk6cWBC84W8x7XKJ
	rvDYjkr3/cKrrk1jSAAZDzN9JYmuKBSa5Ccyz8Lfmz4UtJnQD4HxYUX7WwFXd3mABsMaLbCdxmP
	LGPTE7PeBkoUAPWTvtIZlL9knQyolGzLhpP8KtfrZ0vJ8=
X-Google-Smtp-Source: AGHT+IHkIIUwLfapdvbPcRnsD5CACrEJj9nwaBI41U0v+K+kXPy5pHBwBsF94Q6SPwfqvwS+pU3GAQ==
X-Received: by 2002:a05:6602:13c6:b0:940:d808:8a09 with SMTP id ca18e2360f4ac-940d8088d03mr748582839f.11.1760979117170;
        Mon, 20 Oct 2025 09:51:57 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9799428sm3116783173.63.2025.10.20.09.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 09:51:56 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: han.xu@nxp.com,
	broonie@kernel.org,
	dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu
Cc: alex@ghiti.fr,
	p.zabel@pengutronix.de,
	emil.renner.berthing@canonical.com,
	geert+renesas@glider.be,
	fustini@kernel.org,
	ben717@andestech.com,
	apatel@ventanamicro.com,
	joel@jms.id.au,
	guodong@riscstar.com,
	linux-spi@vger.kernel.org,
	imx@lists.linux.dev,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/8] spi: enable the SpacemiT K1 SoC QSPI
Date: Mon, 20 Oct 2025 11:51:43 -0500
Message-ID: <20251020165152.666221-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
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
  - Using a fixed 1K size for flash chips rather than having it
    be related to the AHB buffer size.

					-Alex
This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/qspi-v1

Alex Elder (8):
  dt-bindings: spi: fsl-qspi: add optional resets
  dt-bindings: spi: fsl-qspi: support SpacemiT K1
  spi: fsl-qspi: add optional reset support
  spi: fsl-qspi: add a clock disable quirk
  spi: fsl-qspi: allot 1KB per chip
  spi: fsl-qspi: support the SpacemiT K1 SoC
  riscv: dts: spacemit: enable K1 SoC QSPI on BPI-F3
  riscv: defconfig: enable SPI_FSL_QUADSPI as a module

 .../bindings/spi/fsl,spi-fsl-qspi.yaml        |  6 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  6 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  | 21 +++++++
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 16 +++++
 arch/riscv/configs/defconfig                  |  1 +
 drivers/spi/Kconfig                           |  3 +-
 drivers/spi/spi-fsl-qspi.c                    | 60 ++++++++++++++-----
 7 files changed, 98 insertions(+), 15 deletions(-)


base-commit: 606da5bb165594c052ee11de79bf05bc38bc1aa6
-- 
2.48.1


