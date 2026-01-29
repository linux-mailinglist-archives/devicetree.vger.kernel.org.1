Return-Path: <devicetree+bounces-260723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SP8FF+HzemnDAAIAu9opvQ
	(envelope-from <devicetree+bounces-260723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:45:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A9DAC033
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 06:45:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F214E3020FE2
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 05:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 723282EAB6B;
	Thu, 29 Jan 2026 05:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VWJNFSSs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7932EACF2
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769665495; cv=none; b=kSWiT6PdaRLxf2hQiS4SC8hB6DIUlEQ0QxT3JDYXt20bj5EVlLMtKu7cgNFwoxtsoDR2vweQW40exzyD5m3EySwg326EaJHR2aj7nyf71XpxXUX/Nkn+YvfqkJiL1j3Cc6EySHtdw4XXQUgl3FFg0GqDVl1LP5IidvL8hMHzk70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769665495; c=relaxed/simple;
	bh=ToVtQO/ndGnPAOGr2C7YesGrGRJo1oAgCK2yriyp/es=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=rPKviCCNy5ArYPlXwGPtIzs+bwn3wjPMEwmKilKchTw2iyuLECHe1Sf30qeyQTC0MU0cRHohH0RzX4TcXG8/TNssXIxFIu5sYLBSNOtEsA7dgttoB5xWXuLOVmpoCg9NDKQC5CPJz3eWiAf4bpH1JvHsGngvlciVPH1KTQopOKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VWJNFSSs; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-8231061d234so530382b3a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 21:44:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769665493; x=1770270293; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aTFAexCuRXSrudUiKudGOgw1r1B/c2BvxqH/opZ6WS0=;
        b=VWJNFSSs2wBGSnidnd+5xCVUpJejoYegjwF1YRd5Ds1XQxm5S2sYkxI/C8asMTDo9e
         E2uuV+nbS+7ExP7F8EDqKYGm4cYInF58GtIzddIen2XxJ0cu2EMaVYVn1CxoQ1eaTeTe
         jaszdvs7PBlhnzBLKdjPGLiI+bOFeTkz49IKqbx1bkPZPrOXYOzq5gxTa6zGFvTvoYXw
         6lwhiwsU2wwAP/iG48hd3Uanm5SNmF93NKPlt3ZlkFcJCJXOdHRdaGeQsFFeJzL+rS78
         PNB8gQzrnulHousstHY9tDjd0mhE3VbQ4A+CGLeKRNHA0GTgzxRxQorRUadQv4hro/Qb
         Pr9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769665493; x=1770270293;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aTFAexCuRXSrudUiKudGOgw1r1B/c2BvxqH/opZ6WS0=;
        b=NwOcaIBMbwLpyDoQ9UOsGLjENF/rPc4H728AJgn0pK2iee2ZbkO+SRLDSGl56IHODp
         hjnnNq3cc3fwBOHS+O/gfjz5aq5Xtn4PtYf+LsxmLZ579M6z/YI8Y6rQqhgm1450dNBI
         uDVsfqy9Ca6pGaS0rlrIbUM+mCdpG34nAXrgNPvFw/GDIX/RdxJfiXRqwDVtyoM/KsNM
         dhMPMQX6VCut4NmPXcjcc2B83xWkXUHCbEgnOoyqxmTX1+H51hcvrgWGYpLJK1TyQ5f2
         bkpq5GuHPYWoxbRwjqhXKHccKRbxcgCEj7uMSx3wfYz5c35J6rDUVaMDkjsDQILk/qZK
         U6Lw==
X-Forwarded-Encrypted: i=1; AJvYcCUgq8lIgHrTLlrP1E2fYeF0QiR4TQi1+HLD2pp+u8rC8Ks9PHrz8GBok5RR8tI7qT5jkzhEhByY4owW@vger.kernel.org
X-Gm-Message-State: AOJu0YyuRgbdtzvNi7ofwWzWhJ/NYeVVVbrcAA6BFUXPz4gw6Unft5wC
	xYT2A79gwPiZkehYFu2pUwag2i4xZkG113+bWxHFwubyjgc3lschIR5h
X-Gm-Gg: AZuq6aJ3qpjRq59mngFb4ndGSVuPeivkcnj3p3WAchQ9vNVZVo8bDSKz7clPSfuGdCN
	J9MCrgH/5fb1Xo5c4sovXHT3DKjRI0SyV9d/Fe6LgtSElmqE//ZFiVa+zbWHfaTe+XBaTzGHMGq
	AGm20cZDl7dwYKbPUhsYsj8W+SDkv37wWXSg5kQhIXXdnxsdYk7kaHetXodYLUu57h9Bs75aB6y
	/Z7BdDzrIqJB1BE9mk3Woe9b+XpXmS95C8GOzEi9WSB+96lr5LQPndf8uF86dYlQl3nQDNoz1tf
	O6DlXbR9NIM8FgF45wwAarFlDpo76wybE7+TP1DsLlDSF4xOHhNrGgHOjEprfZpUTKipTIpRuJF
	QxTDMj8Yov+f0X9Dbx+RO+VutUNei9uLmr6hs+8autfA9QRDxyTnof5w+O6RaMMA2qq/nDcboJj
	fE3eEi2PAizFof9K7a2h7wEWpJQAcP47BTEo7jiew2ATyd1wi5EljBCmBRTCWmlq+inRqZoDOA
X-Received: by 2002:a05:6a00:1ca9:b0:81f:3f88:89ee with SMTP id d2e1a72fcca58-82369173829mr7391460b3a.12.1769665492885;
        Wed, 28 Jan 2026 21:44:52 -0800 (PST)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379c227c2sm4108364b3a.53.2026.01.28.21.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 21:44:52 -0800 (PST)
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
Subject: [PATCH net-next v10 0/3] Add support for Nuvoton MA35D1 GMAC
Date: Thu, 29 Jan 2026 13:44:42 +0800
Message-ID: <20260129054445.416242-1-a0987203069@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-260723-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[foss.st.com,synopsys.com,nuvoton.com,st.com,lists.infradead.org,vger.kernel.org,lists.ozlabs.org,st-md-mailman.stormreply.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 14A9DAC033
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

 .../bindings/net/nuvoton,ma35d1-dwmac.yaml    | 126 +++++++++++++
 .../devicetree/bindings/net/snps,dwmac.yaml   |   1 +
 .../boot/dts/nuvoton/ma35d1-iot-512m.dts      |  25 +++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  24 +++
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  44 +++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 ++
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-nuvoton.c   | 174 ++++++++++++++++++
 8 files changed, 407 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/nuvoton,ma35d1-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-nuvoton.c

-- 
2.43.0


