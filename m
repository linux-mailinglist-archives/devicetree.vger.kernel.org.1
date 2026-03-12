Return-Path: <devicetree+bounces-274375-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHHtN5EVsmkCIgAAu9opvQ
	(envelope-from <devicetree+bounces-274375-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:23:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6071B26BE79
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:23:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DC8F4302E0FA
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 01:23:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43C11347BD7;
	Thu, 12 Mar 2026 01:23:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="c9y/qwJj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AA3351C07
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773278601; cv=none; b=KM85ERmisSph1yCFmDnC/pvkoD/SDcw6oBdZs39kS6KIRzO9D+aBV543xHWayXV5vsk/3jjRvLZPT8sbKwqBYQbSspTJagJg5JqVTp+HamJYiJYeXv8I/oDIO1E/EhXqQaccT9YGO+enpWt2g/ahUCnydbgHottMnWcPQXg4Ix0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773278601; c=relaxed/simple;
	bh=c3aTRdUp37Kejp938i9RImTaH1pjZM1PMvFcrSIsF4k=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EqfrlzCfBl4WWtZ60G4+o6abgy/cl7SwAylCNIIeMkaKpm6NPkyluYy9kwnjbEkWkCtuLaAo74sVCzWrc1g8tcseqP6CVnF/aRON8j7wYqFVaCiWYFLNKP+hyf7jjGVZAuLdRijk0N7xlpd2A1Gb4xZcp0SfxALFzz571q1n1Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=c9y/qwJj; arc=none smtp.client-ip=209.85.222.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8cd751a4e93so21172285a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 18:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773278597; x=1773883397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VyB5pKnWn9O1wtjxVZxKBeu/DBXMCZY1EfBDXvBRKnY=;
        b=c9y/qwJjvZfNzD0K7OROpKZrDlmTUEM0EWxwnwIs549jw8SQIeDmJVh+HBHZCET2/2
         XOilj6CgO5MqRhG41Ik8df44jDkLzLcciBUdjBfr3n+oiUirLym5jMuUIkPCXehxjfyi
         BtJ9bPzBuMZWdG5AvCMjwae65ET/AGjJ0EPpXc6YbJLiaEIN1S6CSBLOapN46FKJA5Tl
         N2m3aKmm8zm/tMQWAXvwYGv6gGdFFFLins3rfnhTIUkRi41a46IkfWAmGKimqBIjNCtr
         BUhO61ii6k3wIzhb4IGUHA1OM/5ceYLVxXa8A54TZj7wZC4mqYO1EsrfkcqKfHmGWMbd
         APZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773278597; x=1773883397;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyB5pKnWn9O1wtjxVZxKBeu/DBXMCZY1EfBDXvBRKnY=;
        b=h4qFZ8KYyvMkcNYkW3V8U0uN1A9Xg4v52Ieu4cnqPK+WWq209/9O24rHE4df0RbYAT
         RrWHWnqbtMeyEDSZJP09doWx9WOmBmUjg7CCT9RA8oIkbz1ETE9vVzdSWGGa24n7KxIv
         c3CSrJuKsBF++gkw/zYVk/DicagfDTsbVncPCgDFmrks+9G0ZALlI8sjR7EoQc2SWu07
         9clabsBbw/sG9HIpGG7SVS+arA0nKhwu4cMI0gFlN/iYTU0sZIaF+4ggAzPnp5HODpVS
         1Zi5NXfDf1f/uE9Q5s80tVTfGqDya5/cSWyntTbILbQuv6jfvflL0z0vPGqXSrm7xTOE
         Nx2A==
X-Forwarded-Encrypted: i=1; AJvYcCVCYafeH1gYIcQtMgvcY1xiZWLyEF4Dc8231W1QQZeGWzyMrgeVkQoQtqx+rd4rk7za0V00pbYFrPL0@vger.kernel.org
X-Gm-Message-State: AOJu0YyQWtSjuXJj65XFh86+J3N6ek2KMpkskQjdf40foBY4S6CXlXfc
	4c0lQWpDZH5aPhly5u32phuXwC/EPtjhrN7DaqiBV6MD+GTli4V0DM8C
X-Gm-Gg: ATEYQzwkgwY7woBA7VP/CmbCcNrjBncSysLGoo5U8YoisapffKtT/WEF+ucQUjcs+rD
	bgyKpBRc6kpes4TPJ0UPkx2R3Tquql/ujtGnteEQInKsfOHwlVPYFpoJOXMq4eIirJc3TznwVKb
	Kt3L+qAzlsgbnaQD98S/E0nBOXb9mlNbjoEL0yKluPVc75ZYntIkls/NsjQCZbEM4dBg9gs9zbh
	tPjnI8ACK7C5TPWOVj14hbMKfnTH/gyyD1BEQXYf/G6IwE/VFZTy7qXFjO2yAUwq8e4UbZHwU3z
	+ojcYpOuLUKCu0dQ+QMLlAHRNKYs9WyqTynMy/6N8TtJOlOhN1PbI0xGAXLiwsu/3T4AdeK+Zoj
	G3HUF5idddKw+Z39+AqcSJ/p2HOUvnAetG94fPMrsgfVrHesqGuy5uGNUZImhV8hBC6uzx5l4xo
	tF6mHdprxVCjQcxO8P91e2Nxg=
X-Received: by 2002:a05:620a:2a08:b0:8cd:95b4:c521 with SMTP id af79cd13be357-8cda1a311e0mr596901285a.45.1773278596866;
        Wed, 11 Mar 2026 18:23:16 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda1ff7642sm266671585a.21.2026.03.11.18.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 18:23:16 -0700 (PDT)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Inochi Amaoto <inochiama@gmail.com>,
	Yixun Lan <dlan@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Richard Cochran <richardcochran@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Yao Zi <me@ziyao.cc>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
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
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v9 0/4] riscv: spacemit: Add ethernet support for K3
Date: Thu, 12 Mar 2026 09:22:22 +0800
Message-ID: <20260312012232.373713-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274375-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,bootlin.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com];
	RCPT_COUNT_TWELVE(0.00)[38];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gentoo.org,gmail.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6071B26BE79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

Change from v8:
- https://lore.kernel.org/netdev/20260309004305.315018-1-inochiama@gmail.com
patch 2:
1. Apply Russell's tag.
patch 3:
1. reverse the order of the local variable to make it "reverse christmas
   tree" for function spacemit_dwmac_update_irq_config() and function
   spacemit_set_phy_intf_sel()
2. Apply Russell's tag
patch 4:
1. Add MAINTAINERS entry

Change from v7:
- https://lore.kernel.org/netdev/20260304080721.1658224-1-inochiama@gmail.com
patch 3:
1. Remove unused parameter in spacemit_dwmac_fix_delay().

Change from v6:
- https://lore.kernel.org/netdev/20260303010630.567674-1-inochiama@gmail.com
patch 1:
1. Drop the extra blank line at the last

Change from v5:
- https://lore.kernel.org/netdev/20260227075718.2243818-1-inochiama@gmail.com
patch 3:
1. fix error from checkpatch

Change from v4:
- https://lore.kernel.org/netdev/20260130022705.1059214-1-inochiama@gmail.com
patch 1:
1 Apply Rob's tag.
2 Adjust clock description according to Russell's suggestion.
patch 3:
1. Add set_phy_intf_sel() and get_interfaces() hook, suggested by Russell.

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

Inochi Amaoto (4):
  dt-bindings: net: Add support for Spacemit K3 dwmac
  net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
  net: stmmac: Add glue layer for Spacemit K3 SoC
  MAINTAINERS: add entry for SpacemiT DWMAC glue layer

 .../devicetree/bindings/net/snps,dwmac.yaml   |   2 +
 .../bindings/net/spacemit,k3-dwmac.yaml       | 102 ++++++++
 MAINTAINERS                                   |   6 +
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 227 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 7 files changed, 351 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.53.0


