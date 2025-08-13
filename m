Return-Path: <devicetree+bounces-204363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C76B7B25333
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 20:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5CF2F3A9D0E
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 18:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 743CE253F20;
	Wed, 13 Aug 2025 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="HrriX0Ew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D543EA8D
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 18:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755110829; cv=none; b=kD0WcldOsgpVEypL/jdhLEp2EfUqpGsVEmOZ0XSuQdzRCyd5vfd0Qgur1sGL+lXqGJA+dTuMklTTkVX6PjzhNX3y/tVmEdBcMvuGSVrHa1Cw9YZtgojRRFTU7hFlSwBNCrBvt6T4kIUblG992AoLyb2vUlqsDl/9I+22DqKvNxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755110829; c=relaxed/simple;
	bh=rRD7cCEqQsfqIWRQE+8gNwUvzHsQOHHZ6SWAdO9fsqU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HKwjqBc8NIvOoWxJgl7e71yB+nSeBO/LsCDcqziE6BUxXSicASeBG4Yz9WrOekKUizkgEhKECLqfsSB7K6NT6vl5Z7rdXxM+WOqKT1akuiOf7gvnv4NAioPa+AhSzh5zu6DEONTdxXegbxely0boKrWLgNcnPcAju8gW0VtFNJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=HrriX0Ew; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3e570042988so1407065ab.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 11:47:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755110827; x=1755715627; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KXgtHtogm5A4R/WnbeHN7aFUW9InK5mQEbz2x1R9n64=;
        b=HrriX0EwMBuR7YynIrA9SQ7aXVro+2jK0n8n8KXDMC5HGZB4R5DAbT5Hia/lx8L8hh
         xYKY2KklD6JYpmJ4ktrbm+i31dHHoenscdBHYqlYeKhVQAMGWSSccgr2sGGHlVn8rKOu
         w39OFDZXn29IJB6dH7MXg2WFwOlWFDX4RpRbTuVDFXLFL+pzKosPQEhvXYsgk1m7ENkC
         RwKyGaLsjJ4eEWRme5rtMLo16KxZEF+JaqjOtkxyYQuFhucSFRB3m0KZnpnusgUXub+K
         lKsNqa4cwGDGdhGnQOHktCETMTSmXgFFORAtZFnQ0mrNU7vDuuxmjXZt2Jstlm/zjmxk
         zznw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755110827; x=1755715627;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXgtHtogm5A4R/WnbeHN7aFUW9InK5mQEbz2x1R9n64=;
        b=jAnJOhZ8o7vIk0p0K3emWnLVP0sPxpVy5WqsMsPVWL0X1Tpnk8uIMB/SQTJf51rkZi
         GoniKjbevm8avf9n6tgWVWtMu95NwAR9p74/4iKk/sSqDrb9DdIBd2wq0Byo72chBn+5
         5+SW2d91UDswbm1WueMVOyriMt7dxI0e6oXkv8SY3HStjTUsRtiipPgnO4IO68IdVDrd
         iECUD9GuuvaoAPkStDCBukTGFsg1iw0xJ0JsPfgu2oYsosrcU/L99u4ExBRTm60IbsKF
         oue/tU4p4q0/BGEyjBUi26XdDbjWHcyNGmpp0QQrLuzrWZjk6AZGC4AwFiG2uUcrznUr
         My0A==
X-Forwarded-Encrypted: i=1; AJvYcCVOWIrALUzKW90YAuDNBFKpV2rd1XN0YxryhVln4P+Hh8fZQ9id+lot/8NktuVEdDBmLJG2yJkP9W0N@vger.kernel.org
X-Gm-Message-State: AOJu0YxWpjGkRjJ8M+0/y1jwdsFq9fcMFwiEwNd4Yjh226fvMIolvXrO
	vJOc7yeLTwtzOyXcl22oDJREsa9yk8YaIVKfi4vVjm03CLm9YLDtYD8YdJ1HhQVenmg=
X-Gm-Gg: ASbGncul6syVjS4SsB4+CMKpO2PmverZFBtHJqTlFUyyiUQTK2Fn18RhNSTgNLurdI1
	sDMK4Gg2M7hvlsvJ0Px5EXNvOdsiGRtK993VGbf7nc6W0DXTHc6NDMKDv5oo/O1jeJFhWXjJ42y
	/9dSDSoCGeKZ8ggBJNOY20QdcANifmWS0QPGR1y+LylvgmYjvhz9DwwTrJPMc3SRG6HBk1urqfZ
	QJRozWvT1QBlrJhs4Mc8uKr1OdxIicJKZnItFHlW0AwAWkV+i++MqDVKMBonZtUAIAIfXtYSZL1
	yKmPI4v1D7sPJOuzvJ2weg4jKl1QL74NTLgPgemYAsI0HKxwAN6Hod1EF85P8YbIMZLW2EvvGoq
	8e0zCzCkbDrRLAWD9ZqIP9FIOUS/tXHWkSGuxNcM9M+qSJOndBhkdZxdrIjqg4PwJ3g==
X-Google-Smtp-Source: AGHT+IE4C3i9M8kXUz9O4UxOKjpcYn8lEZvQJ6gg/sXkMzZkGV6K8yFbp3z2/m0TNzRFI95fCD98Hg==
X-Received: by 2002:a92:cd8f:0:b0:3e5:4002:e822 with SMTP id e9e14a558f8ab-3e57091642dmr4986915ab.12.1755110826731;
        Wed, 13 Aug 2025 11:47:06 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bd89d7sm3933104173.59.2025.08.13.11.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 11:47:06 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	vkoul@kernel.org,
	kishon@kernel.org
Cc: dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	tglx@linutronix.de,
	johan+linaro@kernel.org,
	thippeswamy.havalige@amd.com,
	namcao@linutronix.de,
	mayank.rana@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	quic_schintav@quicinc.com,
	fan.ni@samsung.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] Introduce SpacemiT K1 PCIe phy and host controller
Date: Wed, 13 Aug 2025 13:46:54 -0500
Message-ID: <20250813184701.2444372-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series introduces a PHY driver and a PCIe driver to support PCIe
on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
one PCIe lane, and the other two ports each have two lanes.  All PCIe
ports operate at 5 GT/second.

The PCIe PHYs must be configured using a value that can only be
determined using the combo PHY, operating in PCIe mode.  To allow
that PHY to be used for USB, the calibration step is performed by
the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

					-Alex

Alex Elder (6):
  dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: introduce PCIe PHY
  dt-bindings: phy: spacemit: introduce PCIe root complex
  phy: spacemit: introduce PCIe/combo PHY
  PCI: spacemit: introduce SpacemiT PCIe host driver
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-rc.yaml     | 141 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 110 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  49 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  28 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 169 +++++
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-k1.c          | 355 ++++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 639 ++++++++++++++++++
 12 files changed, 1547 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
-- 
2.48.1


