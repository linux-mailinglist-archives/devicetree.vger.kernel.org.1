Return-Path: <devicetree+bounces-216203-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 377E0B54065
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 04:35:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E595F3B87FB
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 02:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9E6D1E833D;
	Fri, 12 Sep 2025 02:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VKp+ypH0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECEF518E02A
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 02:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757644523; cv=none; b=GXhiOxrCDCg/HLv29XyM5q/JC9pp5zQj5DY/qproN7PGeYLlE9p3lbIoU4iVw4RIluglOnIlW7wSusvZ5lft5OmCOXCwBu7KiiOrwt9cDm3MMM1e+nQQEs9uLyIdJasruY6dTigp7qvuVP+9rQuSF0OLBy+aBLbu9Y4+1M71WlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757644523; c=relaxed/simple;
	bh=gH9mXsZ1NreP7BRLCz/KnwpMOnnbb5r27TVVPsD+/H8=;
	h=From:To:Subject:Date:Message-Id:MIME-Version; b=XrRbnPVuWz0RLgw8/RIjGCj7YGYB0pvtrKlaoUsBNDRI1jP8WWMinIEIKPeDIh/UMdXwMPGc3h0WHVWX4j8mbLDMhs8775BQHIlu9c9htagvNDmkvrC1pVC/RCUKvomn9oZJ+2JmAWRqLhCVfy69Xkluslr0yyu2BUW2uq/1frw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VKp+ypH0; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-61bd4ba9fafso554110eaf.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 19:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757644521; x=1758249321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=adSqTL8NuaakTvHTADgBkkDWAaGQjbxG9j1BynMCSQU=;
        b=VKp+ypH093oI8Ktp341QcMLUOJjacimTQNFUh4Tr9Odze586piRXkqVfvGhC7Uq2ti
         SrEp6pMPczWAR/bAqUdXwtQ6XZDFeb11Pnfcv2LjgxRK9BBk0c9dqGpg+s3VIJjG0O3C
         Yr55K7d6rgxt+SxWyxkp1bc00/1LG443YtF/AWrFzsJgXjapwguxff+1cTLYzobAMrbQ
         hFKbLZ2R3i9IaYJ1xHXnCAhmFHoDSC5OpjDUFHx8dXs0NVCcZSCUUmv4W0xBjs6PbDy+
         k9rnHGj9yu7FLNwYaxshje3VDVzM6A4+DGwLdoZgvfdCBkHsAO8uwPy4HhDUC072+bt4
         Hf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757644521; x=1758249321;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=adSqTL8NuaakTvHTADgBkkDWAaGQjbxG9j1BynMCSQU=;
        b=ttb1LPw0ghOUTy/ddqM58nbdy1kV0CYPGiGqbFX4gdODI+NWYn6DSwwih+maCJq7av
         l1ZvHR8kEeJYpS0Yw6E5p8NEIdLTbfVPoFXXuL+inr+8M52jKlwIDrQ/DwWzWhE5Fc0Y
         2oExxm1RE1SXCU8PDw41vt/doLPPxPf8JjleuaQIqI3YL0YRKaiMddWpZ4AQ8EUjfwMa
         RhmRa1ilw4CNRLy/ENL88hZFytkjOHa1YFKlUPU6PhWKIGpvpNTotpFsdnj3EVTIJ5PV
         pUbHiff9rf4O/SuwZIGc37cAImc/0eETDjm1mUai8FXZ7tQDuOVAeq8m4q0jmrSCzNQq
         TSCA==
X-Forwarded-Encrypted: i=1; AJvYcCV9cMrt2rQC6jU9oGbsIYucl543s6Wf0d3WBJ6HpERKp/1/f3TsQZlauMHvgXL/ulpq5zlaX4wKTACF@vger.kernel.org
X-Gm-Message-State: AOJu0YxIVyaokeKTnqfvywMTUhchZQUagNaRnRlePezrpjhtMeubxmHA
	EhEoP/tgjD2Nb8TH34cMn/Es3LJDPoCE3tpyA8YTfCHkvZn/LbRUNkBQ
X-Gm-Gg: ASbGncsGU7l+zAdnEIgw0vtEYDhDgr5OrPZvSzlFJ4zPDPgoNyexpXl7N8QsFYvY+DS
	1fRV8hIFdcmjMHFB33E0FJH6Vvi7LvIyrL4FRuabhYC5g74h74PoUA2d3MkeX/w90HtKVNazBmO
	eR3CZh3Z1mkC8v5aLymLGPZhPhqKl2JahkrBnLnbf20fm5dcbh+8PqftgdQd1XeSOdWcWpEunls
	tmBBL0slwwtidHkkgGWWecVaBME2BwALSvaRKOiKagNV8DS8clexYHfgSfIXvel5iVHxAcn7mPE
	kLxrPi1c/IlwkJFFonz256TuDvv2N9RcHns1N4K/A7lQPsHxl5gAt4UnX1vH4nRibmgtW7R/SI/
	yYmff61i8l+FXNAbsCnTNL9W970Xov6x7
X-Google-Smtp-Source: AGHT+IGWQK39i39FWL4qHMCK2JcI2v7l2UTe5cu2Hfp1wmFQwUNAPDH21RFBHh1BoHV6V+GM7HwRsg==
X-Received: by 2002:a05:6808:1244:b0:437:eb1d:cdde with SMTP id 5614622812f47-43b8da33f47mr464232b6e.33.1757644520618;
        Thu, 11 Sep 2025 19:35:20 -0700 (PDT)
Received: from localhost.localdomain ([122.8.183.87])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b82aa7b97sm559913b6e.24.2025.09.11.19.35.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 19:35:19 -0700 (PDT)
From: Chen Wang <unicornxw@gmail.com>
To: kwilczynski@kernel.org,
	u.kleine-koenig@baylibre.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	arnd@arndb.de,
	bwawrzyn@cisco.com,
	bhelgaas@google.com,
	unicorn_wang@outlook.com,
	conor+dt@kernel.org,
	18255117159@163.com,
	inochiama@gmail.com,
	kishon@kernel.org,
	krzk+dt@kernel.org,
	lpieralisi@kernel.org,
	mani@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh@kernel.org,
	s-vadapalli@ti.com,
	tglx@linutronix.de,
	thomas.richard@bootlin.com,
	sycamoremoon376@gmail.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	rabenda.cn@gmail.com,
	chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com,
	fengchun.li@sophgo.com,
	jeffbai@aosc.io
Subject: [PATCH v3 0/7] Add PCIe support to Sophgo SG2042 SoC
Date: Fri, 12 Sep 2025 10:35:10 +0800
Message-Id: <cover.1757643388.git.unicorn_wang@outlook.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chen Wang <unicorn_wang@outlook.com>

Sophgo's SG2042 SoC uses Cadence PCIe core to implement RC mode.

This is a completely rewritten PCIe driver for SG2042. It inherits
some previously submitted patch codes (not merged into the upstream
mainline), but the biggest difference is that the support for
compatibility with old 32-bit PCIe devices has been removed in this
new version. This is because after discussing with community users,
we felt that there was not much demand for support for old devices,
so we made a new design based on the simplified design and practical
needs. If someone really needs to play with old devices, we can provide
them with some necessary hack patches in the downstream repository.

Since the new design is quite different from the old code, I will
release it as a new patch series. The old patch series can be found in
here [old-series].

Note, regarding [2/7] of this patchset, this fix is introduced because
the pcie->ops pointer is not filled in SG2042 PCIe driver. This is not
a must-have parameter, if we use it w/o checking will cause a null
pointer access error during runtime.

Link: https://lore.kernel.org/linux-riscv/cover.1736923025.git.unicorn_wang@outlook.com/ [old-series]

Thanks,
Chen

---

Changes in v3:

  This patchset is based on v6.17-rc1.

  Fixed following issues for driver code based on feedbacks from Bjorn Helgaas,
  Mingcong Bai, thanks.

  - Fixed the issue when building the driver as a module. Define own pm_ops
    inside driver, don't use the ops defined in other built-in drivers.
  - Improve .remove() function to properly disable the host.

Changes in v2:

  This patchset is based on v6.17-rc1. You can simply review or test the
  patches at the link [2].

  Fixed following issues based on feedbacks from Rob Herring, Manivannan Sadhasivam,
  Bjorn Helgaas, ALOK TIWARI, thanks.

  - Driver binding:
    - Removed vendor-id/device-id from "required" property.
  - Improve drivers code:
    - Have separated pci_ops for the root bus and child buses.
    - Make the driver tristate and as a module.
    - Change the configuration name from PCIE_SG2042 to PCIE_SG2042_HOST.
    - Removed "Fixes" tag from commit [2/7], since this is not for an existing bug fix.
    - Other code cleanups and optimizations
  - DT:
    - Add PCIe support for SG2042 EVB boards.    

Changes in v1:

  The patch series is based on v6.17-rc1. You can simply review or test the
  patches at the link [1].

Link: https://lore.kernel.org/linux-riscv/cover.1756344464.git.unicorn_wang@outlook.com/ [1]
Link: https://lore.kernel.org/linux-riscv/cover.1757467895.git.unicorn_wang@outlook.com/ [2]

---

Chen Wang (7):
  dt-bindings: pci: Add Sophgo SG2042 PCIe host
  PCI: cadence: Check pcie-ops before using it
  PCI: sg2042: Add Sophgo SG2042 PCIe driver
  riscv: sophgo: dts: add PCIe controllers for SG2042
  riscv: sophgo: dts: enable PCIe for PioneerBox
  riscv: sophgo: dts: enable PCIe for SG2042_EVB_V1.X
  riscv: sophgo: dts: enable PCIe for SG2042_EVB_V2.0

 .../bindings/pci/sophgo,sg2042-pcie-host.yaml |  64 ++++++++
 arch/riscv/boot/dts/sophgo/sg2042-evb-v1.dts  |  12 ++
 arch/riscv/boot/dts/sophgo/sg2042-evb-v2.dts  |  12 ++
 .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  |  12 ++
 arch/riscv/boot/dts/sophgo/sg2042.dtsi        |  88 +++++++++++
 drivers/pci/controller/cadence/Kconfig        |  10 ++
 drivers/pci/controller/cadence/Makefile       |   1 +
 .../controller/cadence/pcie-cadence-host.c    |   2 +-
 drivers/pci/controller/cadence/pcie-cadence.c |   4 +-
 drivers/pci/controller/cadence/pcie-cadence.h |   6 +-
 drivers/pci/controller/cadence/pcie-sg2042.c  | 138 ++++++++++++++++++
 11 files changed, 343 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/sophgo,sg2042-pcie-host.yaml
 create mode 100644 drivers/pci/controller/cadence/pcie-sg2042.c


base-commit: 8f5ae30d69d7543eee0d70083daf4de8fe15d585
-- 
2.34.1


