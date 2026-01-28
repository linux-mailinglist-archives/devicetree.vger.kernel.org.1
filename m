Return-Path: <devicetree+bounces-260266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +IEWLrjSeWlCzwEAu9opvQ
	(envelope-from <devicetree+bounces-260266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:11:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C523C9EABB
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:11:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 843D1304806D
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:10:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3270133E368;
	Wed, 28 Jan 2026 09:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="av6kcPmB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f176.google.com (mail-dy1-f176.google.com [74.125.82.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEAA733E34C
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769591439; cv=none; b=qUsJYBzoXIX7hT05nYJUyKMQlEp6NQHR7gUlmy12w9xVkD5qPmIAw29R0z3+MjPiQLehLszpxFgLOUHc1BY64yHi8Z2NOThB3KkE+bJwDZDAB6sbZjNaE56dk+3Uvn7JxGmPpKz6TDi9NWLC0dkfN25MR35WaKhmztAS2oLogzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769591439; c=relaxed/simple;
	bh=F2sKQvI2Wxs9yMPIhHBEa5EO4gyyFL4yoeoWdcuXXWo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IcFdecYAN1e1wpsZNAjik4arRS6zutLsGeXkEu1kNDKsPMAgkATC1PaWyTvUvw1O18BTOVegYHoN1ZzREMeCT1ceaJCDATiXK6UNtIwuxJeHUQB1jwlnKFb/Jvjm1DM5xQPdSpY2iZxk3Xxz5DyiApLzeQDtn5JZQfpzu/DXsnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=av6kcPmB; arc=none smtp.client-ip=74.125.82.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f176.google.com with SMTP id 5a478bee46e88-2b70abe3417so14647299eec.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 01:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769591437; x=1770196237; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uKUvT1UkLVoSBo2GeUIFsYzGNbYkZ2w4SGalbBin6yo=;
        b=av6kcPmBc6ZVA3EiqvbIAxO1Yg0Yj71+R6k2t46cPZgs5NHbYn+rJIJoPZoOHtsZ1E
         4FXnadbiAikj6cq04D3bhr4mGWSAC3qu8c5LI/ulU5QE7qKUVkGIP3XDzlrtN52DQOCQ
         qbjmunzJmwO/xPSrGYEpArbl3TNR0ZNqsF0js8AvecbzcWlnP82xeFNHIQbnEvjJiUEg
         0nidl2KwezzGmgWvJhy3iflsqKBM1CcP4+RVuU+6y7BA2sgMnib5cnIf9ePMabHetOHr
         VrY8uFF0O8qtaSJtJMUz7VqsodXkXPSSygqoZ3STZVqcvFoeyrc0eW/Ct2j+XvEZeEU+
         LbOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769591437; x=1770196237;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKUvT1UkLVoSBo2GeUIFsYzGNbYkZ2w4SGalbBin6yo=;
        b=uJRA6MnqY7B7dD2LRlhXhUVEt+7UU2ud1K4dHWVDoIkhRyUUJ+iPBT+M2BkDNKnXpe
         84fiaKq554UGcWHDffN9BUsfXtZtCee924+1j/LQX8dFyBhNa1yNKuC6BiRgLQxQQ5+v
         ehk6t+6pGGYDS6iG2L7uyKbvMsT6H9cwfGxMIIzjoXTPvfIM2v6LyHy1LYuLzD6LGpzK
         ltq44kbXM2pl+omgXi/Gi6gPAb+4DkMgU5JoTOUlEikCsNvyS4izWPnItRBBWjMiTr+k
         ttgoLYb3Z7mF5uYWgg6g00d4ZgGbtl6RFyDvXGfnlJ/7t7DqMVKKXTVKwlrQu0eFlKpb
         7f3A==
X-Forwarded-Encrypted: i=1; AJvYcCXDjkzqcMJYWaItk3Rg7fVVBCDuAonBLuZxcMuSr04q7CfV1Lez4KLn+ekp7ZhC8dZF+vwFQPy1wTDI@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0x5A7Bkr9/Mw1kKwcS/tjGgrI6YCxnW9fmrL+HKzYwU0fxfLG
	9A0e+pJP7BH0GvSHwRecTyC+gCvbN0j4JyAe86jg7uW6I8WZRTHQ8AF+j+L5AA==
X-Gm-Gg: AZuq6aKnUpxVaKnCYdOnGUmoQNbwrjprcXyhO2suECiTG8Qk1VXWfXcUE1O8g61Y/HM
	dPLCqBp3X7ypv/cpjwtoRSiCYIwcMxaMwfdvC5DV7m4v3wIUUlbuFK2JI6xmBuzMsA/9KnOPkrg
	dMLZQ7QK+P/jTR72GzUR6oeyfr98+CR3EgoSaQ6UAUhVd8X7RO34Q4uQLyA5ybgy/Hd/ywH+Nc0
	5nhuC2mBo6L3eRwwI/UVSNtV5GVAbIc6fX+UM8IacHXskXIShXJoYWDW4eh1FpOs6SVybKE+RZw
	DiTF5kE+XYnk1V2GLx2dBuuilLTcNE5zFZ+tJfP/tzgHbZHfNCG6Jz51+NBOIo73LUhL614Lt0U
	ldjzGjPgGYl8Hk/Dsu+KwR5XlKRTf0q6o0DcLxRNIUsDi8VUxKhcywPuz/h65gtSoKfGlVSDKd4
	3TVIHZNC6Bdw==
X-Received: by 2002:a05:7300:6d08:b0:2b7:2664:aeae with SMTP id 5a478bee46e88-2b78da0b4a8mr2419091eec.37.1769585393102;
        Tue, 27 Jan 2026 23:29:53 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-124a9d6b658sm1374769c88.3.2026.01.27.23.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 23:29:52 -0800 (PST)
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
	Yao Zi <ziyao@disroot.org>,
	Yanteng Si <siyanteng@cqsoftware.com.cn>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Choong Yong Liang <yong.liang.choong@linux.intel.com>,
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
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH net-next v3 0/3] riscv: spacemit: Add ethernet support for K3
Date: Wed, 28 Jan 2026 15:29:26 +0800
Message-ID: <20260128072931.875041-1-inochiama@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260266-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gentoo.org,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,disroot.org,cqsoftware.com.cn,bp.renesas.com,bootlin.com,linux.intel.com,eswincomputing.com,altera.com,cherry.de,st.com,synopsys.com];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[inochiama@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.linux.dev,st-md-mailman.stormreply.com,gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,kernel];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C523C9EABB
X-Rspamd-Action: no action

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

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
 .../bindings/net/spacemit,k3-dwmac.yaml       | 103 +++++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 218 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 6 files changed, 337 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.52.0


