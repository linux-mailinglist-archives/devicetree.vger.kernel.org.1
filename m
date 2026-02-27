Return-Path: <devicetree+bounces-269127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UErDEIROoWkfsAQAu9opvQ
	(envelope-from <devicetree+bounces-269127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:57:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91EA51B42A9
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 761263034295
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:57:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9919636495C;
	Fri, 27 Feb 2026 07:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D+Oww696"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665FD361DD1
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772179066; cv=none; b=sSpl1OaesSrhKJFvYEWa/I9cFG6yqRTInO8kkQqBVDQnxxvrVkQB4Tm1pQ+UobtYS5uwiQr3s8N1i90pbU3dTrdMSQ+u98JW4B92gPSSyrTF8+qDUr0UQkDr8F0NOwl1xFCwBYJNSR/fUe6+xNIvpCCCgNl2RwsGK5g2qe3WHl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772179066; c=relaxed/simple;
	bh=9VnXD3q/1y0ffqPsUhIGxefsynZ71Ka+JpVBrhahLCs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ps9H60mD9W2e7xjjMmGi5PUEhuh8ybEfuEKqu6tudIwE/REiF4sUDePLDbkFZmthQgKurDS3X0na5LNEUs+hthZ6pJfP5ME+DaUKNw8o7DfdqPa3I2IjTV0O6GytOhCrXv7T8kHb1SOKloqF0UJGttCO/lG3N5Vd4ZBcS6fnapE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D+Oww696; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-c6e23cb81f4so718237a12.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772179065; x=1772783865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=dClJOFMkUNppxkXbFtmk3M5XyyWUhWhukdTkp6L74rE=;
        b=D+Oww696+opTqpJ+DMkzb55+mRFdooq4bwsAtRpSkUfuA6IkvTX5YJgsjEAlNmJraq
         4YtV1BrHP/gar4qEdkKcI9gR7iaZS0yGm0irCoLOJuWV6hqCe91VfPKYmpmexc6hDISJ
         qEZKuj0cOVX5cZ/igMA8skke2+AwbAEuheEdD8oGTkHIPnwK/p3lSGZxVmTjARNjjdSX
         cbWMoEsRydR8lrXSftiKAE//G1FyNtuaHL8lQPgA/UA+Su1xnbRs4S1Mm95zUNjoFUob
         IQDnXBKiStSuOVLy4Jp5z0GrgoV/ktpjblNUbJJpGbTGf9bUWR7Uqpw/lEFln5g1r8KU
         Egdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772179065; x=1772783865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dClJOFMkUNppxkXbFtmk3M5XyyWUhWhukdTkp6L74rE=;
        b=QmoXh3eVxJFYeROSzRi/VsfMBbUNfNdXhV/x9QpZFHrCB1MvWjNq1xd//sywOUUsIz
         BJlPEShgBG0px+FIpCjspi1oqx25h9doxtGUk2nPiz7KhD/ueUoKRE8jYTiyg8XXx3py
         P7zxtgqzZ2iA8ADV4SfrUbHYMxxZvkSHpBPXw2CdynraNvfIRb0gQt6L9yrC4SSZooEH
         OBs1TV9P+somZJCKYHd/sVgQQKcx/Ck2nXAWubWBqofk5TRr3tIPkEYt/GHK647Z5CfD
         ENNqICuRAVr++fGG3pHKPZ7nrTxREuorD1+1sQsoxF501ou9aBVw15kAk1t8fbbML060
         PeEg==
X-Forwarded-Encrypted: i=1; AJvYcCWk138QDmP9oHcM5hISGAmEWrto/LhTNKA26QZ8KKFWf4KHkwZl7vsYMWrbDXNiShW5A1VIeyplaJVH@vger.kernel.org
X-Gm-Message-State: AOJu0YydlzvUsBdIEo5/TNTjysehnWKAtVIF3FyfKVWnAund63tLuB+K
	XY9lqJyhJ37G+1bn4apZWZl0ar693lV/5RmAK4ANHvF5Df2vZn+RtnZL6H6NeRzq
X-Gm-Gg: ATEYQzwusb5IxNmbiz/OPjBW9hGivVil+/5qCnPB55N6Ei/0Y3j3aHjnael1KKuFPOG
	ZGnAnijP+IrcjwnnPW4stgBq7MW4mJ/Vkq4nxMixpkRDmQOWphKOVigKnBuEHqCwKQ/ooA6aCbZ
	JTUJ4P6WrKW3nVqdQZls5wO6mwPUm1T+pw8d5/rurHBfODZOQANUv7MXXukh3NdQo4+VAyTaVQp
	w/gzaU2HkMLhw+te1NCVhA2DS3KI/czkGus6BElEdwKjldXCCORQdtjGUsLkL7FGM2Jg+JVwdy5
	SiNpgWohv66jPr2iKtr119ONqzwOzCUllRP0pMKbfC/TrRshfw04AVnVoRXcDUq6IVwIBC2wH0B
	K/wdddiIGop4pzzNT+mwOySvOOrdmec/Pj5HSRR5OprNh9Db8Nry7a6PGAN5zSzl2ImdStuFelz
	oW1LPqZROh6XJlEyDi9S139w==
X-Received: by 2002:a17:902:c950:b0:2ae:1ce5:61a9 with SMTP id d9443c01a7336-2ae2e02ac6fmr18274345ad.0.1772179064707;
        Thu, 26 Feb 2026 23:57:44 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb69fb4dsm72024035ad.42.2026.02.26.23.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:57:44 -0800 (PST)
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
	Choong Yong Liang <yong.liang.choong@linux.intel.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Chen-Yu Tsai <wens@kernel.org>,
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
Subject: [PATCH net-next v5 0/3] riscv: spacemit: Add ethernet support for K3
Date: Fri, 27 Feb 2026 15:57:14 +0800
Message-ID: <20260227075718.2243818-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
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
	TAGGED_FROM(0.00)[bounces-269127-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,linux.intel.com,bp.renesas.com,eswincomputing.com,altera.com,bootlin.com,cherry.de,st.com,synopsys.com];
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
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 91EA51B42A9
X-Rspamd-Action: no action

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

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
 .../bindings/net/spacemit,k3-dwmac.yaml       | 103 ++++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 226 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 6 files changed, 345 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.53.0


