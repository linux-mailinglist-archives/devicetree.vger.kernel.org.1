Return-Path: <devicetree+bounces-228299-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A1FBEB595
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 21:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C0E861AE449D
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6D02FFDC8;
	Fri, 17 Oct 2025 19:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rmnKi+FM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF68933F8A9
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 19:07:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760728069; cv=none; b=VjoyVl5qrQAuyykEETwtMXAz3+TKJ540WggmGb9ivxUfwZHAyJRMewQTX1MWDzo5DrwhLRPyd7qFNuFsEM5j/DGqTknfKZv+/dIFfIQaCjUaLNOofVSzE2B32FJwIRLnpztXdKftDPZi2tEg6xHG1EhTZIyVLJMSYnVClgJYXm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760728069; c=relaxed/simple;
	bh=LqFmCYRDrPtkcUDZw5zwYA2weRZUj13NHO7zeAuhORY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KINClJn5DPrOhFaiJgDHrjMpEA5JJQa5obq/NUMNT6imyMfC8ZBiNXCtBRpRnBlEc5RvwVjk2McfQAPjdT2qswrlj5M3SSgDwH6ggS3AwwkHra7rwGFvTvs1Qc5FYGfLGWoZ4plMxgkFCarLWoozHwC45O7NcYTNalJa3Bd6A34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rmnKi+FM; arc=none smtp.client-ip=209.85.166.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f195.google.com with SMTP id e9e14a558f8ab-430bf3b7608so16591755ab.3
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 12:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760728065; x=1761332865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6AlkAll+OG6DFncv4Mizto8zaWsmmVbaRHf+nrpHgq8=;
        b=rmnKi+FMoDIGzf3rcVRrvUav6f6ihKSQpWXBo54c+7YZ9/CiqHPxxMa1Hjx5QG2Pvf
         AC6OBOn+DfLAdBc8wgFkqGFBwJa3F6TRBx+7jsvBvNFWin19/iZha9l8D4RMjg9ZqURC
         9Kpry/105Z/qOqerC++6SNg9S8Ss3TcrJjmbJPiJnpOWcys7yF9f8nIBP2tQT5i626+6
         nDJo01Rm+QpldHdjpRBmzAOSCa5iXZZs2vkba9PPDvNIJDWYQPXVVB86LWrk0XOriqmr
         a7CbGQj09GZffCZ8qcV86DZcLvqV5/yVujc1GnfsRCiknOhDemrBV8jmpqSGefCeTjUx
         bBBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760728065; x=1761332865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AlkAll+OG6DFncv4Mizto8zaWsmmVbaRHf+nrpHgq8=;
        b=CQ8/AuhlQJOHaGwJaeF7zz3KRiZR0zfl6XXXsnb3GP6Jiwvk0Fbzgb5GFmAHBWP9dV
         DJdSGM7cihHLxMybnKoYqAKI3G8lLP/o+oCQrV8fUlkKu2/BaJ4/CGrgAXedv1XpfhBy
         YgsTjFp3X197ix4jXb6HEKDla3qIOoG9Ao3U4GmDN22nTRKg9b1icui+XvDLkU8texes
         Ssf1HaYaAMunW6EIW3W/weGXUqJSvTiv+09UDttfGE5RfTyvEYGVnS5sO0ZETaTxFUo/
         2eEZjEAVtDHpeDeKsJiThPs+NjEu5HjcxYg0+JnS5fc6okBrcLWMCEy/G8mB2U7CTjxE
         p2uQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnfwLzhLOf6gC5gqgVt0A0vJTVO8XXV0cNYuAuipoyfUWW2sAsRbHZ73HyV9GPlHCEYyW4m/TCIApj@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2kYpPbAxSxm789LZLrrqKDgwXRW1YhPODM9slzSjLK2e6COzX
	z6zVZ27OTZ/7KoAdwguKtJgmuXHrVIkMqbfo2kkLKiBJ5Zr5d5sCEymtCtEiA+dq3vU=
X-Gm-Gg: ASbGnct8Vt6SuR+edUeizqcHr0YmXaKTYs4/FpDw4yjC9HSuC68r5yu6J4rUfDhP/6H
	cChRwgGzYs3mAl7oQD0JhH1WvS6+P1DvI6+8T9XjjV1eWznL6RpJIV+qmsCvn/Lji8nBEFAvykr
	vTc/aUma05J9kA5cOf00SeGpmNLSTrYqREah1H/N+E1HNAnFX1XUTBHMDyfbEN9nTYm2ggLD6fN
	nRKadYRtRBGFULX24S6MdMILT2O5P/Cit/C4j8RHTulHaGco8z72DzDoAJ2A9JO8OFJPLHi/Kwq
	jLRcnKqAsla5/pBtqBx7xpNxtNrtmN/mrEGMFLI8eX6q6qUhQYcKUjfDikOufmVU9ChNdrc3216
	kZ6PqY8+0sRTZGeWPdLe1H4XDeyGX1/3oFR9T+GuqwlbRfcnnPkyJzK3U3lIKGsbUdSkRyBTxu5
	Ad76krXZtqI5JZqJuY2GhUrCzeBepdG348JnJ8Y+RwZSaK9oGmzsTuTQ==
X-Google-Smtp-Source: AGHT+IFcpf2h7+KbWg4DjQlVTU7Ya1aj204MdKeqW83UKVIYqzbU0vSTSCHA4r5eCSfPwXiiSMaLeQ==
X-Received: by 2002:a05:6e02:4510:b0:430:c77c:cc35 with SMTP id e9e14a558f8ab-430c77ccd47mr56314875ab.29.1760728064783;
        Fri, 17 Oct 2025 12:07:44 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9768b98sm153462173.46.2025.10.17.12.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 12:07:44 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org
Cc: ziyao@disroot.org,
	aurelien@aurel32.net,
	mayank.rana@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	christian.bruel@foss.st.com,
	thippeswamy.havalige@amd.com,
	krishna.chundru@oss.qualcomm.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Fri, 17 Oct 2025 14:07:32 -0500
Message-ID: <20251017190740.306780-1-elder@riscstar.com>
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

Version 3 of this series incorporates suggestions made during the
review of version 2.  Specific highlights are detailed below.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v3

Between version 2 and version 3:
  - Reviewed-by from Rob added to the first two patches
  - The "num-viewport" property has been removed
  - The "phy" reset is listed first in the combo PHY binding
  - The PHY now requires a resets property to specify the "phy" reset
  - The PCIe driver no longer requires a "phy" reset
  - The PHY driver now gets and deasserts the reset for all PHYs
  - Error handling and "put" of clocks in the PHY driver has been
    corrected (for clk_bulk_get() rather than clk_bulk_get_all())

Here is version 2 of this series:
  https://lore.kernel.org/lkml/20251013153526.2276556-1-elder@riscstar.com/

Full details of changes made for version 2 are available there.


Alex Elder (7):
  dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: introduce PCIe PHY
  dt-bindings: pci: spacemit: introduce PCIe host controller
  phy: spacemit: introduce PCIe/combo PHY
  PCI: spacemit: introduce SpacemiT PCIe host driver
  riscv: dts: spacemit: add a PCIe regulator
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 147 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  38 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 146 ++++
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 311 ++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1553 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 98ac9cc4b4452ed7e714eddc8c90ac4ae5da1a09
-- 
2.48.1


