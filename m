Return-Path: <devicetree+bounces-256694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29005D3A014
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 08:37:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59DF6302A962
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 07:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80E22FF66B;
	Mon, 19 Jan 2026 07:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZMlr10Ah"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5B022068A
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 07:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768808031; cv=none; b=SLDx2ljrVPUoBB3Fqiv/LGj+7bjvnWbvA4nY2N6ISI23Q9BmAoqtdGpYHiz2VJmXJx8s4quqqBq4OImljKc/Wvk2XMUrtbVCzvoKu7gCwCWUuSzeaQacddthf+Oj93X4jU4bnbiqApB6tKV4vUWxIAbdpsro8k34tqUXHjszNuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768808031; c=relaxed/simple;
	bh=dxe+kkl6kRBm6RF2B2BIqg7F0WaqPYrdjOp1KOB6wYA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TqjMblZ2fEqxhqf1Camz2VYjSvfdIHQqQmzVpZgnCJikjba0YtJ20nveHZxj8N9XKEOQ0KGzJELFSGxrUn16ckmG3F7BYRZczVsyqq2cxn7LJO/QRsiTd8NCYLh0ZBCghuYCoXBsSXCCQ4cAPWzGZGPF8D1kol+hvY6UZAucgno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZMlr10Ah; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a0fe77d141so26346025ad.1
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 23:33:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768808030; x=1769412830; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T+Mp2cAzIjQk/XVhc3r0i+qdUMWj/sYGX5LNPwYnZpE=;
        b=ZMlr10AhlMtldtnjsFI0qGsbBct/LrRJYTNG7rDb1V6sfon0x34/TY6M5oh4rSmWNp
         yw8Yknej13u/genLkYRu4TySBWnBUHq/sIae48MPgT0sN7KSXnWJl5mqy+Z/KivNWdkn
         Cv9n8T4hDJnwMsUr5WS85QgfKEQf7thH2oTNvR6CBfZyN7mn4jBHQiYq3YFw0qwj6E7Y
         U44fAH8Q0pUNtKP0DqLWjTt1tE28t5IVlMLwboDrLTMjB6932WJFWlCTmKok4cRiDswj
         seRhYMoxNhoRym/4bcl6aKyjpWE8KqfWcP2hAE0nymbdb3ewuqxdZ1fnQ2Gu/6YorQN+
         DY3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768808030; x=1769412830;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T+Mp2cAzIjQk/XVhc3r0i+qdUMWj/sYGX5LNPwYnZpE=;
        b=ZvXjnHnbjiQBiCduGOIwtq38pqsE6imyozACqYYwRx0kr5qiB9yM98QPeRuiTS0qPc
         JmHAqlsNiEbXmr6Ov9dDXJADR5DUgjzmIRbW98xqWvMU6sT6miNKNaR0be5V3d6IxsPS
         rZBUf10Ck9gf/nKA1IMW2B3xHaA48gYKRMwZHoOcidP9Bbh7nuLqKztPmBWnv85EtHj+
         KVEJo8ySdUN01Tmi71uAgKcMULIsE+cKfnrP60Tld7MiDdSFL7j8RdpvWf7Nng4Y/Hh+
         B1n3NKwW32bS5D73gET2ulJg7gjanfkhvy+OSXzqzLO92o5tc1xubvyECE4G29ucJMzC
         /MdQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8YOZj2So29fFcv5l3v7I8XmOI1bVDtn/ZlrzDUTX/8i1iJJcdKUJbzRR9z93AzooY4XqSySb55SrD@vger.kernel.org
X-Gm-Message-State: AOJu0YzKa86/zRquFD63+IfIJZC7YgBxyNIFv7NdXzu+OBAla7owQFst
	B4OXBvfm/Lg8itA6LrPEBJRoWN7A1R01/ZMcALIpSIXBIz5qgLwalXPU
X-Gm-Gg: AZuq6aIdfkO8YIWr34SL1WIzY865GSRdJyOS3XydtAiyMQD6xH9Vfi5oQeR7TDD3kAF
	fYfHkSMRLXWdrLpcMuQScvs4Fkr+kp820yLok/vpVAfHdIzXMy6Y10Hl4JbCEUesTSjG1SNMKl3
	H6xw3rTv19GPFXHeTV9VsNcYFxt9jjoTVzC/15Cwd055XRgyZKc/tfFyZKBu1ZxXvsq6q2KORqt
	2Qk0CH3SLBura0UxwvRhBCGlhYDKeYKWK9x1HP+OPnPFNkJgT9giuTciH2mEWAjqJz8NJfUrd4M
	+K8iPWSu5x6D8aqqC/j4aJi7JwU+GmbndejVrzEI0WCEuIn7CC1qoaA3PAxGP13z1OlD0AFM3z7
	uVpuGr5AjyuzslESre8KCCwuhGHCZt6qBlgi3OCAi267rsXfTS2+rwM5HylTFvJMsj6D82SHgz6
	WZ3ezJu92c/ksDUcPbIlEXpyluvgTRsYA6aHSmrC97XDCscMZZ1hNTsaA7ou8Tihps5/ciMEG+
X-Received: by 2002:a17:903:350c:b0:29e:9c82:a918 with SMTP id d9443c01a7336-2a717535134mr90244535ad.22.1768808029614;
        Sun, 18 Jan 2026 23:33:49 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a71941e3cdsm84863325ad.100.2026.01.18.23.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jan 2026 23:33:49 -0800 (PST)
From: Joey Lu <a0987203069@gmail.com>
To: andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com,
	richardcochran@gmail.com
Cc: alexandre.torgue@foss.st.com,
	joabreu@synopsys.com,
	ychuang3@nuvoton.com,
	schung@nuvoton.com,
	yclu4@nuvoton.com,
	peppe.cavallaro@st.com,
	linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Joey Lu <a0987203069@gmail.com>
Subject: [PATCH net-next v8 0/3] Add support for Nuvoton MA35D1 GMAC
Date: Mon, 19 Jan 2026 15:33:38 +0800
Message-ID: <20260119073342.3132502-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series is submitted to add GMAC support for Nuvoton MA35D1
SoC platform. This work involves implementing a GMAC driver glue layer
based on Synopsys DWMAC driver framework to leverage MA35D1's dual GMAC
interface capabilities.

Overview:
  1. Added a GMAC driver glue layer for MA35D1 SoC, providing support for
  the platform's two GMAC interfaces.
  2. Added device tree settings, with specific configurations for our
  development boards:
    a. SOM board: Configured for two RGMII interfaces.
    b. IoT board: Configured with one RGMII and one RMII interface.
  3. Added dt-bindings for the GMAC interfaces.

v8:
  Changes since v7:
  - Rebased onto the latest net-next.
  - Removed unused symbol.
  - stmmac parent driver now reads hardware features directly to support
    Wake-on-LAN via magic packet, so PMT-related overrides in this driver
    have been removed.
  - Update dwmac-nuvoton driver:
      - Update the license to GPL.
      - Improve the description in Kconfig.

v7:
  - Update dwmac-nuvoton driver
    - Update probe function to use stmmac_pltfr_probe instead.

v6:
  - Update dwmac-nuvoton driver
    - Use NVT as the previx for all functions, structs, and defines.
    - Remove unnecessary comments.

v5:
  - Update yaml
    - Remove the properties already defined in snps dwmac.
  - Update dwmac-nuvoton driver
    - Add a comment to explain the override of PMT flag.

v4:
  - Update yaml
    - Remove unnecessary property 'select'.
    - Remove unnecessary compatible entries and fix items.
    - Specify number of entries for 'reg'.
    - Remove already defined property 'phy-handle'.
    - Update example.
    - Modify the property internal path delay to match the driver.
  - Update dtsi
    - Move 'status' to be the last property.
  - Update dwmac-nuvoton driver
    - Use remove instead of remove_new.
    - Use dev_err_probe instead.

v3:
  - Update yaml
    - Fix for dt_binding_check warnings & errors.
    - Add compatible in snps dwmac.
  - Update dtsi
    - Update dtsi to follow examples in yaml.
  - Update dwmac-nuvoton driver
    - Fix for auto build test warnings.
    - Invalid path delay arguments will be returned.

v2:
  - Update yaml
    - Rename file to align with the compatible property.
    - Add an argument to syscon to replace mac-id,
      with corresponding descriptions.
    - Use tx-internal-delay-ps and rx-internal-delay-ps properties for
      configurable path delay with corresponding descriptions,
      allowing selection between GMAC internal and PHY.
    - Add all supported phy-mode options.
    - Remove unused properties.
  - Update dtsi
    - Modify syscon configuration to include an argument for
      GMAC interface selection.
  - Update dwmac-nuvoton driver
    - Remove redundant device information print statements.
    - Remove non-global parameters.
    - Retrieve GMAC interface selection from the syscon argument.
    - Parse Tx and Rx path delays by correct properties.
    - Update configurations to support Wake-on-LAN.

yclu4 (3):
  dt-bindings: net: nuvoton: Add schema for Nuvoton MA35 family GMAC
  arm64: dts: nuvoton: Add Ethernet nodes
  net: stmmac: dwmac-nuvoton: Add dwmac glue for Nuvoton  MA35 family

 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 126 +++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  12 ++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  10 +
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  54 ++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 ++
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-nuvoton.c   | 174 ++++++++++++++++++
 8 files changed, 390 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
 mode change 100644 => 100755 arch/arm64/boot/dts/nuvoton/ma35d1-iot-512m.dts
 mode change 100644 => 100755 arch/arm64/boot/dts/nuvoton/ma35d1-som-256m.dts
 mode change 100644 => 100755 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi
 create mode 100755 drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c

-- 
2.43.0


