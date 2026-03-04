Return-Path: <devicetree+bounces-270898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDfRH3jop2m4lgAAu9opvQ
	(envelope-from <devicetree+bounces-270898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:08:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F65E1FC37E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 09:08:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE554304FF75
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 08:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A439938C2AD;
	Wed,  4 Mar 2026 08:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fZK/+lyK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B23F38BF60
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 08:07:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772611676; cv=none; b=qfYIB3s9fg/KysioHTIX9XDsjeuofvuC2G7IkeY/urAQd9B9Vly2tsaGTTwR4eh+XMmdZsY9vgNZ9X+WfFZlBP5CNtdfl1mRw8Fcdb8IbKQz2aGZdlQbEo4He6ooRGMkA6EJs1gX+QFhKjdwA75vtBpQfcrnRV57rQzYRwr2+qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772611676; c=relaxed/simple;
	bh=yoFyqYOAA4V1mwjmMpadIWCZZH1mrEKSXgbeTXxIp64=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kZzva4cFv5/XgxoVXlE4R5FGoTGhPTVmgwltJDZUT+TtnD3GBLnt1w2G6fNrIY5pAAEJAGvdtNmYwi78rGtinknMWp7Afjz1syMAlzOlL4NyO2/LQvMPx91Xxsfsvf3NBfekGXjg9ql6xzTNqCz4rygMvaW6oCJwg8tNwrztfuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fZK/+lyK; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2ae50a33ff8so24818005ad.3
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 00:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772611673; x=1773216473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=umiDmXimKnwg21TsfCEQ72OkpzfSgk0ygJP0kl6mnKQ=;
        b=fZK/+lyK8Y+t1A/xay9jfY42UW0H+sohhnwZfyfpvWje7MWYr5T/YY7w9MhhGPwEvq
         BvF9VbiW0235TzHObM3bC5Fy4RdzswCBT7n5ADOM2v2VNMqk/aYnhPPrTWBL55wzXPBb
         DycAdmCAOXRxnAEG6XwIx5cAXZOncqabNo6hK4cCSL2tNYAqs4IlEkdqNqFYdoLZ3Ag4
         FSoISGnOCte/X4ZlWgPvW3KdnhLrDeQh9Edzsjwc4jBmAF0npMll5G6bw7DVvdN7rJCU
         E7hVZCnN+KUODglNHY+2IbS2WFsA5Obzu6CjVV/omzMJ+bqGU6OZgLj/hbLmBhw1JHnF
         e1lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772611673; x=1773216473;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umiDmXimKnwg21TsfCEQ72OkpzfSgk0ygJP0kl6mnKQ=;
        b=lYQsZpb+qAB+KH/c9drdbO4+1DdJYvyAryrOdmS2D3Hthrdcs/ixJTmxDc+02a4P9o
         leWQaMaYtAXnmh4hmkDlTa9GAhAGyeSsIgFtc1NwPUk2y0JGcmyT3lyzvbIPCYVgqewO
         dMe8gJH99jOpITIukf9aDS287Ohzg/NvaRWGBYgk1aDWWtYs1vA6Y1lkBD+FeB9CdD1F
         2kpoZud4dekq2tuMZvG4cVr3WnVbYQzCuonIv+wa8tiB54fsSxPKeNCt6HGe6xhCFZKV
         mWqiH4IJxM1aNFrg+Z8Kqg6LU4e17y1RBIb2fFsToe5QDKDjobUkaTV44sWKSYhe4uVJ
         2OEw==
X-Forwarded-Encrypted: i=1; AJvYcCVZVbzb71Elthmf6KV04qsOfZhedpCyD7TloZGRfctgJupgZFfVFMXdV5iEiGQMQUYjwXxHMGLA/KLZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq0w3bDsNyHcDHfRMcveTZwVAjO2C/hXPk5tot2p0M7pwaxgnl
	/72CvkqdIaKoFnfB5YzNZZB8ZdtGOzxK7+OYxE/QvBJRYRBxoKH51fxa
X-Gm-Gg: ATEYQzxorDOxNKM96qPsMFdMZs0RBahXqnHz/dWeoqNhZKYkrYhc+7ptsDp61GqV45J
	GNtJ2f1EjX85e8kd/zvozTUFezdAN0mHGqaDTlO6yihysQ/pAsiFqNDszm6FFHcOJsk7dHVIOrp
	VW7hj26UNyHL9EYe2X7r7+5TwxsyrJZl3Q9+JDshWo+L4IpdwRbzT5pVY92XzB1GjmC4V/7bHFS
	/RmiCYcCcLa6DomPwjUgommL6EkpxV3h4zmv6X3VT4Vx+Owo7dMhn6M9CMwMWFxkTquoDaliDRS
	Il7ml62pvPGvFwuuhGtd1Vjbo/zvG75aX694uAG7m5Y85uhaDjwKPxiQKr4yG4B7q8P7M04nSHy
	i1tOJ0MIdw9TL4TtaJ4KiL9ff8G5OU/SaGmFMNcYVZ34AWD9FkKA3EzJGiWGRI5Rr7yDO/qwVrG
	ucukHDKRHhcq4lMotBxtCy28mytf6tCaYcmA==
X-Received: by 2002:a17:902:cecf:b0:2ae:665c:8b16 with SMTP id d9443c01a7336-2ae6ab5ac69mr13854625ad.53.1772611673352;
        Wed, 04 Mar 2026 00:07:53 -0800 (PST)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae489c3626sm94364275ad.8.2026.03.04.00.07.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 00:07:52 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
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
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Chen-Yu Tsai <wens@kernel.org>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Boon Khai Ng <boon.khai.ng@altera.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
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
Subject: [PATCH net-next v7 0/3] riscv: spacemit: Add ethernet support for K3
Date: Wed,  4 Mar 2026 16:07:17 +0800
Message-ID: <20260304080721.1658224-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 2F65E1FC37E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270898-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,bp.renesas.com,nxp.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com];
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
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

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

Inochi Amaoto (3):
  dt-bindings: net: Add support for Spacemit K3 dwmac
  net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
  net: stmmac: Add glue layer for Spacemit K3 SoC

 .../devicetree/bindings/net/snps,dwmac.yaml   |   2 +
 .../bindings/net/spacemit,k3-dwmac.yaml       | 102 ++++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 228 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 6 files changed, 346 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.53.0


