Return-Path: <devicetree+bounces-264229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBFEL6LAimkeNgAAu9opvQ
	(envelope-from <devicetree+bounces-264229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:22:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 420041170DB
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 06:22:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3535F301DD90
	for <lists+devicetree@lfdr.de>; Tue, 10 Feb 2026 05:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F05332B9AD;
	Tue, 10 Feb 2026 05:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="juAXZvOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D158D1EDA0F
	for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 05:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770700960; cv=none; b=ZWOND5DPVMNNuZs80kaMgW15ywbxGzsUjWpUYyVDSlgWlX0XTkzfpMWkVl8TQcXrElKPoAergueW+vt/6aE7AHeSB87cCYBAVkEz1HQUA/5wnJf/QCcQ8/eiZjt6qtmHhBkNWu32+xtEIjW13/3Y4Kt3a0ASHxG1bZuv2fikttU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770700960; c=relaxed/simple;
	bh=O8l2fAzrgh6aNA8Ul4ZorhabRZLemD4a+0f4S3xUxRQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZAsi+6C5SDDyt7s/TcD7NyVEiL2wIPBgw2Uwp8af7MdBADHjgBnx0yjHJmqLjpBpr63YQ9HIusvtZnECjpnVrDokohrAePMGS9575pwXIKCJu7RA46zkPZS3m3ZNU461+E8ugNZCyoFJ6U7Qxe5Ei02rC08iLZmn6b29x99dJc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=juAXZvOo; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c626bd75628so165861a12.3
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 21:22:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770700958; x=1771305758; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=slGvVNRI6DMwxYRFHCioIZD1AV/VPFPU5qKmLSzslyY=;
        b=juAXZvOokRAmIl1g+8Q6yaHGQd3dvMDfxtrfP1CwRhahv4GA/ufy6PiY2XNSacCw1E
         0bSi7cJIgaKZ+IMeJq03Rvp2YnzmKPGKX0IvO8tefMUicM9oDJP6Pq41CADZZayL5uhU
         x9aqYey8OaZ7cYJuRqLT2cYU1SFceFYwzbvcDD7B6d1E4qNP16oYXqJ/SDEQ0vjJ0djf
         n77TOLwecbbGWlkh0VOLPy9YZPh5NdOxt5kKlUPbugyF7kdgCB+oZpMEIy5ceX1BNWFB
         j1og0QNijrOy/UMsTWLqjDPz+8Q0DIQloLEjOUQc/hXsOJVqRrNWC3DpSQHNqBJf8BdV
         zL7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770700958; x=1771305758;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=slGvVNRI6DMwxYRFHCioIZD1AV/VPFPU5qKmLSzslyY=;
        b=YYWhOVCGDf/wHUepgPlAZ+Y17OjnSOqstwzeLDwL8rM5E2gkxZ3G3hAnkzeHfln1bG
         di/rscHn1n9hIICtRjjISqKtJbzcnSp8PTJXS2HlQN082zYyU0UqRJzV8r+lUPPu1MxI
         Bc1qmJVbCdj6iV1Prt9D8chIZSiJ9YWxX1QXBxciqPX+a28xrsHiAEz+NwmziKe27vrj
         r705vXF/41eriAjh+7hVRNGOAM1/0oUCfvl2G/VgHfgI3WqxZjNSk1fQs65sINwCiUFh
         BNzHHx8lSuKJ2xQrne5gMPhEPTG2307LhV9H9ciswos1vPXlIRD1r538AE1cib4xuzSw
         yKTw==
X-Forwarded-Encrypted: i=1; AJvYcCVEVMaVEF0l8IxgO/MumJd6fsU70OaZ4yyneIJdIDMZbxvTFTNclaZf0jh4EcrfWpYKAwzMzhqy3uPO@vger.kernel.org
X-Gm-Message-State: AOJu0YxmEWkLxWa1B2LSQ40Yfb2mXVoP0B8NkLrCfQOypGfZHvzU4Dxy
	wMN6TOvuNhLWoh2BHQnM0aFN3EmjB7gsZxk77zWe8Y0z6R7z2KmT4brS
X-Gm-Gg: AZuq6aJaBzIodGS0fIw9FC2+BtExwEEBiSY5gajRWlDNFivn9xASJsIxjQIW/gsZUot
	GkwlPScHbmucSWNfqwlaaNsMHQG5L0tGAHGKWf8msf1PNcIB1Xn7/gI9PETQzoQhjK6CtGoGO+d
	SIhmnjvsM7U9v8TCzeSMJ+vI7qJMB3BhMIZeONWccp3oOHIK0iRoXCoYaL8C+Vqsu5rPBUTJM1r
	lVaGqHBt8MmrdcGubz/9nnSsE0aHSfnuTdALSYg2LzwCY1IwLxMChMpCnnATW7G9N/jhpXxrbKe
	3cNDent74AzTjn09Thapt7t0D38JvH4Pi8oWaHivdcSAG631KofLqmHuD4nNeMv1kn/vBu0XxQp
	pCoPnfty1C09xkPukNbqhMWsDlUV7in5pbgyXNPOlMytpH4XFWBQ+cxP6p3oDFBozdquCIrJD+C
	v3J9Fpw3h6q1MzqnPfv0qyKqC6wmgJDjr1+//e5I9xV8Iy3yAmOPhtg4+wAwN2rDkQirA5mhGXg
	ty3mILOaP6/
X-Received: by 2002:a17:903:1a0e:b0:2a9:4450:abb7 with SMTP id d9443c01a7336-2a9516fcf6amr158575295ad.39.1770700958109;
        Mon, 09 Feb 2026 21:22:38 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a951ca59f4sm122114275ad.43.2026.02.09.21.22.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 21:22:37 -0800 (PST)
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
Subject: [PATCH net-next v12 0/3] Add support for Nuvoton MA35D1 GMAC
Date: Tue, 10 Feb 2026 13:22:23 +0800
Message-ID: <20260210052226.3005666-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-264229-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 420041170DB
X-Rspamd-Action: no action

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

 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 133 +++++++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  25 ++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  24 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  52 +++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 ++
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-nuvoton.c   | 139 ++++++++++++++++++
 8 files changed, 387 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c

-- 
2.43.0


