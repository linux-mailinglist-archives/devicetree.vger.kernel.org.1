Return-Path: <devicetree+bounces-275933-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHxMCyibt2knTgEAu9opvQ
	(envelope-from <devicetree+bounces-275933-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:54:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 838A5294E1E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:54:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F392030125FA
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 05:54:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9036330B3A;
	Mon, 16 Mar 2026 05:54:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ftrns3cR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F136024336D
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 05:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773640477; cv=none; b=ncTOt43DWAWPzjLiLroV9Vbph4FnzhnKl9wwkH3+DSbz2tPxtB/SZ7358DsIrQaq7a1+W1aBwEZ5eP9daPv1K66Wodic7RAuSCMmutjvS6t7XZ6vhpdTiF8xZzTl8B/UGj2XgGIZnt1IwjM48IN754IUrPJh5J1dCT1QZzskryY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773640477; c=relaxed/simple;
	bh=BQub5CtrtBLXTBYD51qXYVLkH6mMyIwqiC3kBL5acuk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qiMTgOM3s26+HCXW4+1iYaHlproAo5ZEExgYBZHAxwy4lTOx/8GwK+9ShTyTnraN4t49YGdOu5Nha8inCODCqNh5Go1o8j0hBK2Fq0VNm93wqkhm2kcHlLu+XmExhPi57CvHDnqB15KyYaG8ssrBJ5XJEgjLl8k7QGP/jZBrHAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ftrns3cR; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-35a04d6aeb0so2505255a91.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 22:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773640475; x=1774245275; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bdlLnxfYyQ6gERT5vAzpg0NqVjL+fMxqTNrrUUF0iL4=;
        b=ftrns3cRMliwFhldjx/NSWjUBkSyYAwBPC+MGJ3kd438kiZJoSCxTPNE/MQ0CEtdWl
         iRanhf6Ic6fithiw94T5rPFKM1xMfhNviyHyvLSw9u5Ib5YSlXNi3d5V6Kwj9y4r/IvH
         pAulM5v0RKzHQ52KC4eRjOUKu4l72cDz2BmkRCFwIf8rDUHPpqERB2ykU4zBuy676Qme
         D8QVYn/e20YHy42brW8ZXoreLYIJ8OQO/dTZu/EiiWuBL5rB3ZxlZCP6z/QQLR6w6Q/U
         riT2Oh68yttd2gmG52QkpUxviJb0BbHTaVtIUFdQJJYW2vsx4uRwuv0tNAbXpJ0Ol4JI
         79RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773640475; x=1774245275;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bdlLnxfYyQ6gERT5vAzpg0NqVjL+fMxqTNrrUUF0iL4=;
        b=tNBa3oP1u72IZKDcBQUllCGONoYWlIfztfW7JGspFuHZeZ1D8S985TbOLyc6c8yE+4
         oWPhCWL4mp1AVuExyW4cbRVSigHI6PHOVM+r5ee0cL7fom4gCw6WrXcYz9qonkG+sYnn
         tVbi8zmsEjn1ZLTX7tebyNttW8c52hImZayWkB2kCqxPGID/S75Y4QeyYLlILT3JHwTK
         Jk8hPS0c98GVTxVQCLRNZWDdteWsMeDWDEDoh41fOVu6aEha2eqk0Td80ZfD49q3dsJI
         ralHsrhw5lrgGYzxcKwJvGJwmpmD4A10Ng0M8C1s4HqlkIay93zmY3Ro0+h6dcwn279Y
         6c3A==
X-Forwarded-Encrypted: i=1; AJvYcCWDWJSkCHfjSCMCcejHO4qyPYSyTUvZKNFlVRvOe5HCVD3cqo9Jp2aAb9wCuHKy6mcSfRprl3zReGK4@vger.kernel.org
X-Gm-Message-State: AOJu0Yype/skG6/7CdXf5O+OaXF0UDr4azbRt06HD+gcTYHwLtly0OK1
	tSR5qDj+OlBKiqj4hFrsfsMKN4IUVOVYGoRU2Go1BPDqPiPkAUT00r0P
X-Gm-Gg: ATEYQzxdVA1roxVnpmxlHs19zeOXy39BdZkLB9HWCnTkOGxxrEAk/um6CjPbCQxDG+V
	gzMmPtSUSzIwvjXReh3nIIJ1lR6EdnuWbj46LSCG0edGwTtwg78wKskCWDo0WSd6kgTXh2K/W58
	VQu5IrcZkTCopcgeSfSKf1tIEs3kCbVI3O5xNBXqN2W7niZxWtwK4QTgUXwNK4nWMjoFAJOpSel
	ysv81iT2oAUkm0owg4+0r0dK4e+7fG7g/BhvY6yEZrxLvTnw2qqJf/z+jXBo099VSztmltEMGHN
	VvKdrG+lPLKRS9M92hKxBpTlQqbedFV/aW2uqvjaelYqUCuMmcyZjMcrGOxpqYeYrKpRc2CBprU
	HB2PzV4VJDwrGCw4HKkr8OB9Ne+tOylAUqtQMEs8ni7ZV3OzvuUrUkD9JgppJC2msaqU3N0aw0M
	cboCmYzyiAtB+PMJ8c7XpbH//lolwjGcfUZRTlasFxZSfxuGy2inuerq/VlYlZ5pjI04fMzsCnA
	+DEsY7vwITh
X-Received: by 2002:a17:90a:d88b:b0:359:fd9a:c513 with SMTP id 98e67ed59e1d1-35a220a8903mr10935535a91.24.1773640475194;
        Sun, 15 Mar 2026 22:54:35 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9db7dfe6sm2166285a91.8.2026.03.15.22.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 22:54:34 -0700 (PDT)
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
Subject: [PATCH net-next v14 0/3] Add support for Nuvoton MA35D1 GMAC
Date: Mon, 16 Mar 2026 13:54:24 +0800
Message-ID: <20260316055427.1310569-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-275933-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 838A5294E1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

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

v14:
  - Fixed dt_binding_check compilation errors in the YAML file.

v13:
  - Fixed YAML with dt_binding_check
  - Added callback for plat_dat->phy_interface
  - Updated PHY-related setting helper function
  - Renamed registers and values to avoid misleading names

v12:
  - Drop private structure nvt_priv_data
  - Fix error propagation to preserve probe deferral
  - Refactor internal delay handling into a dedicated helper
  - Move FIFO and filter configuration from driver to Device Tree
  - Update DT binding to include "snps,dwmac-3.70a" compatible

v11:
  - Propagate syscon lookup errors to allow proper probe deferral.

v10:
  - Update DTS/DTSI files to follow proper hierarchy and port modeling

v9:
  - Fixed file permissions. (YAML, driver, DTS)
  - Moved phy-handle and PHY-related properties from SoC dtsi to board dts.

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

Joey Lu (3):
  dt-bindings: net: nuvoton: Add schema for Nuvoton MA35 family GMAC
  arm64: dts: nuvoton: Add Ethernet nodes
  net: stmmac: dwmac-nuvoton: Add dwmac glue for Nuvoton MA35 family

 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 140 ++++++++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  25 ++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  24 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  52 +++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 ++
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-nuvoton.c   | 136 +++++++++++++++++
 8 files changed, 391 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c

-- 
2.43.0


