Return-Path: <devicetree+bounces-270383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SI2nFNanpmkNSgAAu9opvQ
	(envelope-from <devicetree+bounces-270383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:20:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C18A51EBBC5
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 10:20:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B34FE30312D0
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 09:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E671388E57;
	Tue,  3 Mar 2026 09:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ep8eRfAv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58D33296BBC
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 09:20:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772529620; cv=none; b=koYkIwS8AoysJvoDwN6LyQqWVQk/Vw0ZGJR4rZbkYJEzHK7bJOzaIqul+QSdEWWSxwNsIby/4dg8CloFbUZwnCPG+lRI8llTAuqM4ZzdoKMDinKbVFQMXZDiP/1HdIaalcphSFt3f7+wzl1Z3ijvEmZW9R2TYS8seUQnhO6bvZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772529620; c=relaxed/simple;
	bh=my9e4whQpD8mV2f3iFrPhKENfMZMudiUnVazjbZAeAc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SvHK2d0/oG9mE5zqqJkD/V/8IjthmzkDxuHWh4Ra/9BmL4lpew88NKZprT5vc5KeDu/BssEm+6EHsJMmHrtyOWOm6G2tPwz6cMVoLtclKkoUMkGpeXARAOSGowvf53ulRr1KULcT710VT2KDF8ePbooQuqralTfzKzzWNSOlEds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ep8eRfAv; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-2ab46931cf1so41838415ad.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 01:20:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772529618; x=1773134418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hrr8Af/aGKB61i0C6ukavupGQsufCcEMWOAgZ+sFvK0=;
        b=Ep8eRfAv7wq/63oe589EHFotisw73b7RqPe54E1x/qEnScniE31wRPHqmHHQeIa1EI
         HstL/0PyiUdytbluIc4/++ByH/a5xdd9AKpqQBbomwHJwKr7dP178TCFORl7o9TTUpdN
         ZByBksQlDII1sQtEzIUiPwnUiMjJeTHpFcea2S/1zAaAlHN2aFIuHemB7NUmI+S1kPzJ
         mT/lyh53beqGmY70rK+HRMz4kc2uwSUzUfB1mH7Bijw+watZiI5lhahRwsn/AJO+Dv38
         OXGAPdtFlMIRQnsWt47tN7/UVZPtoOb7UKDSpTgcZxxnrj59cU9+OskRMppKim18DtDU
         al6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772529618; x=1773134418;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hrr8Af/aGKB61i0C6ukavupGQsufCcEMWOAgZ+sFvK0=;
        b=f0TWBT0iECE6JJlWXhm9ei2FhzqWHXm+ds5+HDlClO+eTe//cQVanovV3I6yJr7oVS
         EBQvuZGQlb7lkGUfJOHjprWkojPyqP9yh1tsnF8pdak+Zn/rLB/e2RhOXOG+bkTmFC68
         TKEAigyfgQdwPhVleX3DfgLbE0fPfHeQDr+t9NCYOQMEuL8erKlKFnjkNZRB2lNPpWJ6
         3IFuDeaRwa5yNdorElmfvGZntoHBLIJtLcUK0UVSJ3p0G6EejAcI90B7gegIPwhUC2Bj
         q6hwQp6uA92kjwnVbtKnMFZgJ46OYQ1wJv5eMIxYqW5bbAF1m61h2fcoYrj9nC1fuQ0J
         AwXA==
X-Forwarded-Encrypted: i=1; AJvYcCWXUVWD+KaiMN5wmY4ofVftQPTdFq//m+TBQjx9mfX64+WLN4xjwTsXL5i3XjlFfksKK4MFGzHyzEyJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyuDJYnyFLx4hrQ0nAuExz5lRjtinW/zvjBtJKqiLyY02cFr1LK
	33xaq5pWvm4jgYu0AmDdRq5CYAPyf+eFtMBjOE8Mm3dDYJ+wKr6uMLaC
X-Gm-Gg: ATEYQzxdC7uzA4s55VGQtBLB5y20T2gcGtqbC9+zpUiUHmAFIQxiL2zGatuMQDb6QY2
	Pwqw7KIWoydoWB3cgxXkswEraKrFNI0gVpBjQd3fJ/x2MJRNO4JnkkKbU23UExgevOXMT12FgiQ
	MpbYqeieVux+pDy/VEnLsVyImFBzGKHtBsznfHBuaksslhYAmnjezgujbO2Fyeug3UcSb4XcrmC
	NOibZm9sPKvFi0/WbBlc67BshvIV0L99aFmIoZ3F+/lcMweQVCtuFYQXsV+qImkXphRoKVGKzEq
	odbRVNuqaNSiNib6y1lc7ZAfe0LFQrRXRaAFIPIt98aSXj1zqNqqlxaKbqx1RBhgYExoKnkM8a7
	XyG8KM0nFb4wb6kny5hz3PzNbnFQPHHBAgZN+Q6JbyX19rfhujWjH+P7K934sHUZLueYK/EC6aG
	4mfjMx1IP0FiFzlLjsmRZY4HMZ4TcR0eZozv+0kL3f7tEcnw2mO5dyyUoUqt+BuAu2W9VFMCR66
	d9W41hslAOT
X-Received: by 2002:a17:903:3bc8:b0:2ae:5a70:477e with SMTP id d9443c01a7336-2ae60cb2da4mr14189425ad.12.1772529617675;
        Tue, 03 Mar 2026 01:20:17 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69f996sm158777475ad.50.2026.03.03.01.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 01:20:17 -0800 (PST)
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
Subject: [PATCH net-next v13 0/3] Add support for Nuvoton MA35D1 GMAC
Date: Tue,  3 Mar 2026 17:20:03 +0800
Message-ID: <20260303092006.263715-1-a0987203069@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: C18A51EBBC5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-270383-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
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

 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 131 +++++++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  25 ++++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  24 ++++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  52 +++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 ++
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-nuvoton.c   | 136 ++++++++++++++++++
 8 files changed, 382 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c

-- 
2.43.0


