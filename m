Return-Path: <devicetree+bounces-261076-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MMKPKLMvfGkOLQIAu9opvQ
	(envelope-from <devicetree+bounces-261076-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 05:12:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31ED2B706F
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 05:12:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8A1F93008214
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 04:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 104F0365A09;
	Fri, 30 Jan 2026 04:11:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gGFJJb9a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com [209.85.222.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95BE02E7F29
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 04:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769746279; cv=none; b=Ef7OQmaQYCtEVKd/dtvvPTx/uSFjD4ooURHSZE9E+Ng629TZx0w6Wu64q76jPI2ESdjVLeHIAcywhbdvQP5O1/NeYecVUk9v8GxLtEarApgyquxr5Lz1ay7Sw0kiMQY98QsqBN2dVPtpJMCjHIGXBTHPnkU9SxX19tli1uKqzyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769746279; c=relaxed/simple;
	bh=5fDv8+5ZR8gCYHv/hEvJzO7DtxAT7V2J7vrsSuP8zhk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=sFV55IV1Ip2pTWq0xTGzvqerKw3AbregFyKCAnrDZ1kF9stROWjegYbGcsFYn6uh/LiRY5gipXfHWz41lq/oQBMz6cXzuh1IOAS1iSf8s24vbhYbxxfMnrbjlPmDombwtG3ABxhmpRK5a8YdyLP/zr9n1aW3x0toGBQi3VLDKjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gGFJJb9a; arc=none smtp.client-ip=209.85.222.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-93f56804894so1086929241.3
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 20:11:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769746277; x=1770351077; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aZc1WohjUyOxX27WIht/QOavnc3r+d/i0XwRkPc1NWc=;
        b=gGFJJb9akVTk8VUOVwJ/YtkNq5OQboKGfRuNuLZRI4vZWfWFVgonCvO1O60n3KhRIP
         1dZDwygvPll6eK3qNsyGxJmhTpGH+Fd7knEh84t8Tx8bzSEagppaR5X4P4kc6wCBFUV8
         1zW/Rp/IsnYy0oBsbbD6MqtY5Qphw0Cw3kN2WoxXSCI72IkM3V9FUN3CZ8mMRT7fsDoo
         gQ1/bY15FUhlO2/vXWhff/JSaNbqxbHbXjMT+tgUyCxN/Yns7pQ2ZK9a6XUkHP9EtLoR
         2MfoVcUbUGYNRANby6PN6q5nwoGlSGTHrHSj4rQiXXYRaGKGMeaHGU8lr/lgdfTRujF8
         l4oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769746277; x=1770351077;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZc1WohjUyOxX27WIht/QOavnc3r+d/i0XwRkPc1NWc=;
        b=K+AMMEMc0SlrfLQ9wk1IOIPBwUWw/rkHpFth552+SiChl/+gsrJjv0FSpjoYumzc+5
         +fUIoL1oDu7fbyshPHGz2PdNHne+y7KS+OkjMXdSDqqCW/52plFWpL3n9U9l9WW2Nlgd
         1GpTmYAKUwmRBEqeMOkaVqN0lJGvq0qiiwm9AF9YKyJ56KxDgD27hZ25PyKdfkqtoNah
         z9w2k0ZHsKzFKRMCO7Tt3i/Nu6n0rw1dfQv57QL9Bl4jMg4OEy19SnOoZk9vC0vr4B83
         idi/h2tga6w+rEmirN1y3GdSeimbOgOgHAhihv9KtLOUO4ynM+Lixj1afh43al1nh2W1
         A+3A==
X-Forwarded-Encrypted: i=1; AJvYcCXzrLgQ91tgEUb4gOCFeB5IQYt/R9T7CHq34zdrERQpU3v39i5T+4V0/JwVAxMbzRTV81zQUloDlLuX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4OrhoeOO0AlW/5AId7CXY+DHNWK8hprQ4BhrNIPfCbHSczJhb
	hSkMqlADNzo+iigBeejAOnJlRETjNqBr0iiXZJ2BtKsnUXpAIswsP7Hn
X-Gm-Gg: AZuq6aKd5GwjseJb0aWtgSXIbKJTPPf3zdH+oo8elKat7A0nnAM1RNzKw0lwmYlWYXM
	PQE9+8g+UYeGC+6JXNrKPHF+5Ol5DFKKbhWFaZkZThF0Ndkdv65uRjVxpsTUcWfOLwD+KgPG2Yn
	WZ/chS0nOewwtAC/Ieco14KSGOqi0d8kX7SG5CXzpLIHLP3v3Dk5A3++Husa69fJhuf1cozN2Gg
	aolZHkDnuzsSAG/xdHhE9ItUHFNqnS/SH5ugkvOXEdl2UP2RWWnxUh+Xsbt6X4IA2s/tWCm8CAW
	1nNmAXHRyvhjN/WpHcQ+Pz40SUeDHmQZNvtK03Ra46UtosAAxh+7TXtKE7jAgjeInv0v8ARuPjv
	7OOmtKlSlgjVq3w2ueutRiaXLcgVpc3FQPNGSsss/WGT/fNlanqZSsFG7l8utrm6gydDW6aPbYj
	fs1kWus8OSnA==
X-Received: by 2002:a05:693c:228a:b0:2b0:4ae1:b4ae with SMTP id 5a478bee46e88-2b7c88d6423mr747779eec.24.1769740046251;
        Thu, 29 Jan 2026 18:27:26 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b7a1abe938sm9799883eec.16.2026.01.29.18.27.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 18:27:25 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yixun Lan <dlan@gentoo.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Yao Zi <ziyao@disroot.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Zhi Li <lizhi2@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Giuseppe Cavallaro <peppe.cavallaro@st.com>,
	Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v4 0/3] riscv: spacemit: Add ethernet support for K3
Date: Fri, 30 Jan 2026 10:27:01 +0800
Message-ID: <20260130022705.1059214-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261076-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,cqsoftware.com.cn,disroot.org,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 31ED2B706F
X-Rspamd-Action: no action

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

Change from v3:
- https://lore.kernel.org/netdev/20260128072931.875041-1-inochiama@gmail.com
patch 1:
1. fix the uncorrect compatible string postion
patch 3:
1. add "CTRL_" prefix to all ctrl register definition
2. only use delay config 0 to calculate delay code.
3. fix typo in the comment

Change from v2:
- https://lore.kernel.org/netdev/20260121071315.940130-1-inochiama@gmail.com
patch 1:
1. remove not needed compatible for select
2. drop empty line in "spacemit,apmu" properties
3. add spacemit,apmu properties to required.
patch 3:
1. remove misused phy_fix_phy_mode_for_mac_delays.
2. use local tx clock instead of the clk_tx_i in the dwmac.

Change from v1:
- https://lore.kernel.org/netdev/20260120043609.910302-1-inochiama@gmail.com
patch 1:
1. remove phy clock
patch 3:
1. improve comment and include something special about Spacmit K3 dwmac
2. reorder the included file
3. fix wrong delay macro used in spacemit_dwmac_set_delay.
4. add check for maximum supported delay.
5. use DIV_ROUND_CLOSEST to calculate best delay configuration.
6. use assign for the ctrl register initial value.
7. fix input when calling of_property_read_u32().

Inochi Amaoto (3):
  dt-bindings: net: Add support for Spacemit K3 dwmac
  net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
  net: stmmac: Add glue layer for Spacemit K3 SoC

 .../devicetree/bindings/net/snps,dwmac.yaml   |   2 +
 .../bindings/net/spacemit,k3-dwmac.yaml       | 103 ++++++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 ++
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 194 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 6 files changed, 313 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.52.0


