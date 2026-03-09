Return-Path: <devicetree+bounces-272655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CC4oJOEXrmny/QEAu9opvQ
	(envelope-from <devicetree+bounces-272655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:44:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D77232E81
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 01:44:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 52AAA302E323
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 00:43:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2CD21B918;
	Mon,  9 Mar 2026 00:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gWU7fE8k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60312367BA
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 00:43:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773017023; cv=none; b=ahAGVt3E/cP2JNv6gmsmDT1gY8W9zarimbIETFNbx3AYANBsvhZsRYMNHnhOX1RapMBG/gnZmhBqJXtDVOpm+YWcYAyC5ZkhK29J2QJ3Jim5P9iVdsOsdENmkOHQT6+qumW0CyTiPFzaGimDiJe6r6C+NTVfK3QR9E30GBzVZNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773017023; c=relaxed/simple;
	bh=F9TAPixUvya/KShKD6K8CYIlWYXDr99PHeT2pj0XyIw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MOAIbjAwvBim04KBssaP8iX+yQ/m2Q/MjA0asd//4f3Wa6Pe4CT4plhWZLcaFr6wCQfFNCVI8cwN7HMreCsnEj9z0j18r/ZiN5U0zxAfvhHGxGNnFFkMg68g//sm9yxrHOMR5sK9TLAtIz4acw1qSlFUctCBExaPl5MMXetJhKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gWU7fE8k; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-82989744ee0so2957843b3a.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 17:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773017021; x=1773621821; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oSzKv/Yso3zqJtEhQa2CN7kDXaRLoQ3igKM1IB73swc=;
        b=gWU7fE8kTJ66Bdupf+W/uXVwFhNMKsqD8Mx25pz+PtC68b2rP3XZ4QrRK+n766DC2v
         GfhFr3goAeYr4IvlMqZLIJhlBsJyfjQpOCPfcj7KtZmFvAFn43uCY4QD0UfvG2SYVako
         Lj4XZ2yKxAFH9SmgVq7AVhjbQ5lnc0fzsEPgXQtM0u4DFKn8wSTZs0u8r6ndxfIjUBNO
         wHTTJr6eJdPe5u1e0kEcVHt3Joi5nx4VUPxl5vEwM3tnoP3WRq9rFA+dAslFZf1a8R4P
         TGa3tHzXYfN4MgojTuY5Qwn5roXnbNdoHUqeBnDEqpmnIwC/T6l7rzVFbpP9KWBwInRd
         qf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773017021; x=1773621821;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oSzKv/Yso3zqJtEhQa2CN7kDXaRLoQ3igKM1IB73swc=;
        b=JAlaaNFuXASGBYllbHSm+6On9Zzz8WhPO0yyX4xMRIgt3M6lkbY3vWQzMxhTguqZuS
         uLFQH8xc71ZmvjGFwVAM5W33wqxTFN4Er86ASfMpWl6n9oQhPug0UEFwZvBKK84Hom1D
         0HgA66QWAeN8ZhZEUekeGvYKqMQaZhVto2zKKDG6lKnby/9lE8KCoQXtCz6Mg8c/sgxX
         EijKKouMFEn3366ELst0JVbwPqNgtuJ+9dqWVSMPfZMvepz0oUvo6Ej647gfVPT1x9g1
         5KY+cztsNj99lY5KaD38+vmm9uC4YJcTZi+vN9t48h2LwtlwlXh/p9DAzAToiqdBXsfE
         al/w==
X-Forwarded-Encrypted: i=1; AJvYcCWxaWxviCEUhJ30lXZ2fD7tLFj0vCr9C8fSb6DkK8All9faimKY411l3oVZ7vSggkq3s33QIGfJy85P@vger.kernel.org
X-Gm-Message-State: AOJu0YxzsiOegceggfXSf8Uq2GjWBq28G1IUj9rGafGPHcZuHTYVSmwU
	IhrBKYB1a92AR7f8rbT0WkAfW+dIN5P9PAhjaOyvPPXNAIik9TJiE8Zq
X-Gm-Gg: ATEYQzwxr2V98PQWkqoBuTqacDwXjLiy29q6bHhEEpUukwDhaM+p9TH1E5+6Yu+98Fk
	84pI0M/FL7vsu0nWVFRoUKNA59tJPfEfmYzNwpB2n+6O/15wJfrIIdFasZpAYdimHFvRdZE/JNT
	CPiPo1TYefLIU81AT4PMYwrd/cXUPOQNeJrDf8zSBz+bX4wdGgKFn+tT3DnmAywngzvxl5hn77a
	Ct8JzL8Zot5C4cknohIunKuJeGJGek3vNTQNWhFrBNjPaGQ+wRpl3VndvZoJx7bBOtNfaN+Nrxk
	9FCfP66W+YDblMpz+plr5/1YPlPDfvLJ8IbPsVnHuQXO4bAJKynIriTPFfEoizXa/u2CY0kVMYz
	tMUKr/IpWnXm6Wm38X61S1l65OeQW0fxrGKrTSfjFOV0ZaV9nK0dFz4oxS9+ja1fo/FCbzMSZOb
	1to6q0mbQVAFaTQNNtHUBVbKiwA4OH3MLmRg==
X-Received: by 2002:a05:6a00:1a8c:b0:829:810e:8af8 with SMTP id d2e1a72fcca58-829a2dc4f99mr8946097b3a.22.1773017021121;
        Sun, 08 Mar 2026 17:43:41 -0700 (PDT)
Received: from localhost ([2001:19f0:8001:1b2d:5400:5ff:fefa:a95d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-829a46369d3sm8200195b3a.2.2026.03.08.17.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2026 17:43:40 -0700 (PDT)
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
	Vladimir Oltean <vladimir.oltean@nxp.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Shangjuan Wei <weishangjuan@eswincomputing.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Chen-Yu Tsai <wens@kernel.org>,
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
Subject: [PATCH net-next v8 0/3] riscv: spacemit: Add ethernet support for K3
Date: Mon,  9 Mar 2026 08:42:41 +0800
Message-ID: <20260309004305.315018-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: F2D77232E81
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272655-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,foss.st.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,nxp.com,bp.renesas.com,eswincomputing.com,bootlin.com,altera.com,cherry.de,st.com,synopsys.com];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add initial support for ethernet controller of the Spacemit K3 SoC.
This ethernet controller is almost a standard Synopsys DesignWare
MAC (version 5.40a). This controller require a syscon device to
configure some basic features, like interface type and internal delay.

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

Inochi Amaoto (3):
  dt-bindings: net: Add support for Spacemit K3 dwmac
  net: stmmac: platform: Add snps,dwmac-5.40a IP compatible string
  net: stmmac: Add glue layer for Spacemit K3 SoC

 .../devicetree/bindings/net/snps,dwmac.yaml   |   2 +
 .../bindings/net/spacemit,k3-dwmac.yaml       | 102 ++++++++
 drivers/net/ethernet/stmicro/stmmac/Kconfig   |  12 +
 drivers/net/ethernet/stmicro/stmmac/Makefile  |   1 +
 .../ethernet/stmicro/stmmac/dwmac-spacemit.c  | 227 ++++++++++++++++++
 .../ethernet/stmicro/stmmac/stmmac_platform.c |   1 +
 6 files changed, 345 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/spacemit,k3-dwmac.yaml
 create mode 100644 drivers/net/ethernet/stmicro/stmmac/dwmac-spacemit.c

--
2.53.0


