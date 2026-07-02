Return-Path: <devicetree+bounces-319369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FINgKEVdRmogRwsAu9opvQ
	(envelope-from <devicetree+bounces-319369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:44:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0066F7D11
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 14:44:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=HUNdG64N;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319369-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-319369-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 424B53009818
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 12:31:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90E448122C;
	Thu,  2 Jul 2026 12:31:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8885480325
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 12:31:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782995490; cv=none; b=KIMkp3ghvSdZ/1u75DrqMarz6SJp9ipzuzS5ggBz3E8Z6TrvYEBd+xqIZMB5xWBnGYXcvEsq5SbF+Nyg01z5mtG4I+2c6E6pM8RJ4Dxy3p9KS4YS+cAR/oL6Hs2EJa7uHGp0ZmMDRiWiQslmzYdWfkewT2N38F98qGHN6aiZk5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782995490; c=relaxed/simple;
	bh=PBsL63385RAQASu6cjiwEI5QAXcF98UXE3vaEk4luIs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gpwvNhUsKcIIDqhnCOPYpFu+pxmUHYsC07kg7nwEjUHJZkIHYcB4FbLVeZAylsluHmlN1eWLXLv0tjbFzg9OUoefV6WG85MMdg9xwmyzC12mM9A+3syLGXEDibxv4fr2DvWLKNfaPlTYKQb6XxsEeQ/rtVjBAYalslApB7BHzgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HUNdG64N; arc=none smtp.client-ip=209.85.218.54
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-c12788a75abso317410366b.2
        for <devicetree@vger.kernel.org>; Thu, 02 Jul 2026 05:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782995485; x=1783600285; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hSvByosXnUK2EIuN834ipW7Za/9pwuwT5oGO+dAubwY=;
        b=HUNdG64ND2FTccFt5Vsb8lA3B4C3voUDeM1w9S+r5PT7TTQho7ti3C5BcZ09mXoKQg
         AogwvIzvY6+6r4JAWVrQuNEsV3n3Vhay62VXmkAGN3ADT8qsQWzlom+CWoqecvDmXaHz
         Wtx/xxMfJdJPCDzJclOmzprpGljhBvtHsypLzGKYPcpQjKcY4AGE1JPBC4AAJ+xPzi8v
         h/byTwendsDBXmb8CRhElc/hYQDNkPiNJuq+gP77mIymxOfgA9crRbzTsZ+gFQ4aI1fJ
         P1n/U5omtHa2heXofXlxIdh5tI4jujQeoIoykrNdvBU/pXVOK7tIJ4hlgyEMAujSFLAY
         29Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782995485; x=1783600285;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hSvByosXnUK2EIuN834ipW7Za/9pwuwT5oGO+dAubwY=;
        b=XPFVwU3RJSVvM/I37E0v3Wwpc4MN4PC2IQdYCPMB0mjHCCJl3OmAuJkpTn/6d6yYPU
         Puhb00+RcSaktSFYevlfWNb1J0slI1foDYsdI2fWz3EQgWt1Cx+JynVktNJZ+ePRiKVc
         EuE8Tnm2xgcgFp3Ggw/ZWULfRBMcGCTZpualwvg0biytMsOSdcy4FuthrakoktRCEGv5
         5NunaqapdqLgFr/eyXd0tVeYGOOrN1KNDDCvQpYKz1EPEtxHJroVWHhEifGrVHO8eFyy
         GL/uqMPJeSSXNbF69fhJt0sUKufxL64n0tv7GqohfQkudu0GsJqzkCBEy5fwU9KE7B7m
         qsAg==
X-Forwarded-Encrypted: i=1; AHgh+Ro1z32kL8XSGEvEuYdPJpif8J2v/nIJP/w5eVnDL6tLRQxgZM020QDP8wcL7oAOMpUrykFliW4huX0z@vger.kernel.org
X-Gm-Message-State: AOJu0YxtMga5vITFBuHPoZqm/mAUPj6szHGndx4pEf6THOjGO/FVDsYo
	M8eUBsaZFSGX2WDu+UVVwHG4U2RmQlgO12DEuGrVuTJhwqt8xIp2uBmC
X-Gm-Gg: AfdE7ckyrexOlckhrU12o3/F9bOkyfOku2YVc4P9GjjI2q9HDcR1ofEm7btJbkoo+10
	4h4yWfSwEd59VoAj9L2lGY+FEyH+NOvxFZdZ0TyvEpuxHk0AFYBFvgVmxnWSAj/XxE8K3xlcms5
	BeAGrYXF6ZBzuldL/LB64P8oEDN2cnuiNeum2B3g1gOSkU+rInQXYtao0NAgX7nmPIRS4plHUqM
	Pu+v9MP9nYnPcCsZ2z1Lhh4Ehrahd4vkLhSJMObkYBrlbI89cdmzGO6gxxQlgqVVNO8JKZ4cXV9
	7lxwHyLNtg8v4Rgocj4ITV2Ox4/qikBNrEbp19LoW6W6kFNjEur4mW/9gERhfc2nSAEx8AKauOj
	LocJHbDmgdD8k3NXrqNtvVoMtnGHuyu09XQNZArESXqoTOFTr/Zg/i5ibTD1vMEhV26EERCdqc0
	kXWqLestiW8LHdx8w5/wYTFo38wYWh1YIHZrkSdzERFvVYtXkmGXsGDFuFCk7OSaqObtmPugyUQ
	dH0MpGtyOOhjWVJZIKr3QPZksU=
X-Received: by 2002:a17:907:a03:b0:c12:b2dc:4834 with SMTP id a640c23a62f3a-c12b2dc4a59mr204811966b.57.1782995484944;
        Thu, 02 Jul 2026 05:31:24 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:7a4b:58b4:175e:8c2d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-477ddf0f433sm9772923f8f.32.2026.07.02.05.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2026 05:31:24 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Magnus Damm <magnus.damm@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	Prabhakar <prabhakar.csengg+renesas@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH RFC v2 0/9] Add System Controller support for RZ/T2H and RZ/N2H SoCs
Date: Thu,  2 Jul 2026 13:31:03 +0100
Message-ID: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-319369-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:geert+renesas@glider.be,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:magnus.damm@gmail.com,m:p.zabel@pengutronix.de,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:geert@glider.be,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[glider.be,baylibre.com,kernel.org,redhat.com,linux-watchdog.org,roeck-us.net,gmail.com,pengutronix.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[104.64.211.4:from];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE0066F7D11

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi All,

This series adds support for the System Controller (SYSC) blocks found on
the Renesas RZ/T2H and RZ/N2H SoCs. These blocks handle critical low-power
management and access control functions.

Hardware Architecture & Dependency Challenges:
----------------------------------------------
The SYSC in these SoCs is a multi-functional block responsible for:
    - Clock & Reset Control
    - Low Power Management
    - Clock Monitor (CLMA)
    - Access Control

A key architectural detail is that these SYSC blocks are physically located
within the CPG/MSSR (Clock Pulse Generator / Module Standby Software Reset)
address space. While the CPG/MSSR driver is already implemented and
functional for these SoCs, the integration of SYSC adds a layer of
complexity due to a cyclic dependency:
    - SYSC requires CPG: The system controller needs a clock to operate.
    - CPG requires SYSC: Access control registers within the SYSC contain
      bits necessary to control the PLLs managed by the CPG.

If implemented as a completely separate top-level system controller node, we
would face a cyclic dependency between the CPG and SYSC drivers during the
boot process.

Proposed Implementation
----------------------------
To resolve this, the SYSC blocks are represented as child nodes of the
CPG/MSSR controller in the device tree. The SYSC regmap is registered
directly against the CPG device node. This hierarchy correctly models the
hardware address space while allowing the drivers to share resources
without deadlock.

I am sending this as an RFC specifically to get feedback on the
implementation of the SYSC as child nodes of the CPG to resolve the
dependency cycle.

I have also included patches which updates the WDT driver to use
the SYS syscon for register access.

Patches have been rebased on top of next-20260701.

v1->v2:
- Updated commit message for patch #1
- Made use of for_each_child_of_node_scoped
- Moved sysc_init() to the end of the probe function

v1: https://lore.kernel.org/all/20260511185058.1926869-1-prabhakar.mahadev-lad.rj@bp.renesas.com/

Cheers,
Prabhakar

Lad Prabhakar (9):
  dt-bindings: clock: renesas,cpg-mssr: Support RZ/T2H system
    controllers
  clk: renesas: r9a09g077: Add SYSC regmap support
  arm64: dts: renesas: r9a09g077: Add system controller child nodes
  arm64: dts: renesas: r9a09g087: Add system controller child nodes
  dt-bindings: watchdog: renesas,r9a09g057-wdt: Add SYS syscon support
  watchdog: rzv2h: Refactor WDTDCR start/stop handling
  watchdog: rzv2h: Add syscon support for RZ/T2H and RZ/N2H WDT control
    register
  arm64: dts: renesas: r9a09g077: Use SYS syscon for WDTDCR access
  arm64: dts: renesas: r9a09g087: Use SYS syscon for WDTDCR access

 .../bindings/clock/renesas,cpg-mssr.yaml      |  39 +++++
 .../watchdog/renesas,r9a09g057-wdt.yaml       |  29 +++-
 arch/arm64/boot/dts/renesas/r9a09g077.dtsi    |  38 ++--
 arch/arm64/boot/dts/renesas/r9a09g087.dtsi    |  38 ++--
 drivers/clk/renesas/Kconfig                   |   2 +
 drivers/clk/renesas/r9a09g077-cpg.c           | 164 ++++++++++++++++++
 drivers/clk/renesas/renesas-cpg-mssr.c        |   3 +
 drivers/clk/renesas/renesas-cpg-mssr.h        |   1 +
 drivers/watchdog/Kconfig                      |   1 +
 drivers/watchdog/rzv2h_wdt.c                  | 104 +++++++++--
 10 files changed, 375 insertions(+), 44 deletions(-)

-- 
2.54.0


