Return-Path: <devicetree+bounces-325719-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AxH5G9UlVWr/kQAAu9opvQ
	(envelope-from <devicetree+bounces-325719-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 19:52:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C2474E27F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 19:52:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=KBF+qj9g;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325719-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325719-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BCA01305581F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 17:52:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEEEF34D929;
	Mon, 13 Jul 2026 17:52:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CF5634BA28
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 17:52:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783965126; cv=none; b=bt+Ln5MbZpq8D/S8Zc9w+bhcacOKF/tZm5mWKvDUO4kvAT8/CvbDTppw8clUEJCrcRtVRXpdhzRI+yNBy6J/F4cbvgTVjkVIDFnDU2gNzXHG4gGKDpUAsWyMasgKfCvJjQd6bKELLUF5ucy5fBxcxcbwlZvp2TSwyuEmtJUtLCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783965126; c=relaxed/simple;
	bh=tqFTum8xzoiTwzEIEq11HF/yCjbkDK04uQ9G8LptZfQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MqUk2y+bBj7pQhME/s0j//eMBA/DWsFbOpmTTBh1GSZ8fES9EdDbuenaQTI/ynL7WrGcYfRocI5kRnCo5s2Wj5XU9YuAUGrBeGAt2nyLHHRC12qGvtf0DWmHZPFp7b+nmzySK543t1yNs53d47osdIGMf0h0zyFE4FsN9EXIMUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KBF+qj9g; arc=none smtp.client-ip=209.85.221.43
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-47df43bfb07so758215f8f.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783965123; x=1784569923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=pAOIXtxwq93qyBcSiXjj47sdRqztMqiVwZYz/1dkMGk=;
        b=KBF+qj9gyEsEzMPO1zfCme4Ao6+6LyyL5XcDxpva+3Ax72ZhHGQTWG56R37UpV1Tmc
         mKyP0A9Y6l4MBHKievJUYhaDsM86wWKjqg1k9f4hwEGfXiKHbyoIxifQ7qBhstpFx5Bs
         quWPYlR0ovkeUzZBctiOIRZEFPYK/b1ryNlyk3oJ25tk0hJR8fEl3BT9UTevbanLeQiL
         v34Mhz6mJwSDQ7pCMjtnTpQZSGLb13i1xnZHuRmTSmEkQTQ0GDM86S9YMyK41YSj+Brb
         7SHmrc5X/mBJGGEcJ1r2o6Lmkbn6r4Gc6iFI7LyjxnnKnm7B4ZctaAKdIIy43TxFcnZA
         uEsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783965123; x=1784569923;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pAOIXtxwq93qyBcSiXjj47sdRqztMqiVwZYz/1dkMGk=;
        b=iswbcxR3itwqdL8f77l/lg3scpPIgCw/FD4gqlAfbQXORdAhUJ/d7V8LRvUadvicjh
         7u31Zehj6+h2xesYc2YYkQKY/11QFsAZwE7aoXx1DhxvN8I37W94YSoON0eUJZLYaPdh
         eV699H5pZ1GFgrymAvcmrMoFhqiaF3H+xIDbkkL7AAMoDmS8J9wEdcrSlCZmMP51T9u+
         baw/0oceOqaXwAmE5w5ltMSBpPGv5Os3Xub8obsRILVMlcq5w9mgcQW8ccm8EnUl4YLB
         jZi+pla6A8sCmlUA2HS/d42ACzdJjkqLysquGlreKDoIdnGhk4cC/HJRB9SWt/UNibhH
         H6vw==
X-Forwarded-Encrypted: i=1; AHgh+Rp3AxnY9hmCvLntRYcustWkVPrCPI54eclNLO/1cOjzA95avFFsn0Ph8ck9ScxXMc6j8o+rH8fP4pjc@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm49VbKlavf6yLkPfLA17HZ61jBrM5DbZu6E1pJuwt+ZGNeB5L
	l+Rux6i+AjxEjbk2HYzeTm1NKkX+iK+w/ChaxKQbcJERXPmHaJ8zwxvs
X-Gm-Gg: AfdE7clBQi5BJ+ZQtvE9vBjYnv8ECglrIjRo4hNjMopJeRr3WtKIEYERguflhKcmGWP
	hopdF3FRMMzumjEgOGylCsa3GQ1JRC0OZschnSmApvknqLMLX7VaOeVeHY/3o3LdxwgnBxvtL2l
	hXQwQg7jzBm9ygSEDUAWk2QNC4WJ1/iJp2O2DA5ckRFiiWS79nvPx27ft13GQGG6yZIZeVYYslH
	sLDgBe/CcTzxE+Du7CPM+oXlie1NnFUAqVv8Yn6dX7XD3EugSPLK9RBW6Uqd0bNS2JzJPjLq7a6
	2lDcPku+iJJxgIhBn2oBaVcYh+guAVQlRybFu182MxF6SLDKYjvvuB69s4JSbU8KMQbmVxFh9Ud
	x5LphEZsbuKa3rKsKL6/KGK2JtdoiJOoY7jxwfUhEef5QdXg9HldyU+ZQt84DnhDY1EGwLkqGHF
	XfworxS0Pf68LIuQFXQcMWTAQBjjz9FJB4Z0oaiQ==
X-Received: by 2002:adf:f74c:0:b0:46d:d5db:98 with SMTP id ffacd0b85a97d-47f46386edcmr630296f8f.44.1783965122623;
        Mon, 13 Jul 2026 10:52:02 -0700 (PDT)
Received: from localhost.localdomain ([2a00:23c4:a702:d301:c899:4fec:2bdb:b719])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f464d6fa7sm1011037f8f.37.2026.07.13.10.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 10:52:02 -0700 (PDT)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v20 00/12] Add Renesas RZ/G3L SD/eMMC support
Date: Mon, 13 Jul 2026 18:51:41 +0100
Message-ID: <20260713175159.138334-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325719-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:p.zabel@pengutronix.de,m:magnus.damm@gmail.com,m:biju.das.jz@bp.renesas.com,m:wsa+renesas@sang-engineering.com,m:linux-mmc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:biju.das.au@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,m:bijudasau@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,glider.be,pengutronix.de,gmail.com];
	FREEMAIL_CC(0.00)[bp.renesas.com,sang-engineering.com,vger.kernel.org,gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bp.renesas.com:mid,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C4C2474E27F

From: Biju Das <biju.das.jz@bp.renesas.com>

Hi All,

RZ/G3L SoC has:

Channel 0 supports SD and eMMC (including HS400/HS400ES).
Channel 1 supports SD and eMMC (except for HS400).
Channel 2 supports SD.

The SoC supports a maximum frequency of 150 MHz. The SD0 interface does
not support IOVS and PWEN in the SDHI register (no internal regulator),
unlike SD1 and SD2. It has an internal divider for all modes except HS400.
It also has a 2048-bit divider compared to 512 on others. Moreover
RZ/G3L supports HS400 enhanced strobe mode.

v19->v20:
 * Replaced the check mmd->clk_mask with mmc_data->clk_mask and moved
   the code after assignment of variable mmd, this ensures assigning
   the default values for non-DT platforms and DT platforms with no
   device data.
 * Replaced the check mmd->max_divider with mmc_data->max_divider and
   moved the code after assignment of variable mmd, this ensures
   assigning the default values for non-DT platforms and DT platforms with
   no device data.
 * Fixed the ordering of resets in suspend/resume paths.
 * Added bitfield.h header file.
 * Reworked on renesas_sdhi_set_clock() to handle the 11-bit divider
   case and the 32-bit register write.
 * Updated resume() with scoped PM runtime call.
 * SD_CLK_CTRL clk enable turned off before updating SCC_CKSEL_DTSEL
   register.
v18->v19:
 * Updated commit description for patch#1,#2,#6,#8,#11 and #12
 * Updated clock and reset description with AXI master and AXI slave
 * Added else condition for reset and reset-names.
 * Renamed aclk->aclkm and reordered the axi clocks similar to resets.
 * Retained the tag got binding patch as the changes are trivial.
 * Fixed the clk_mask for non-DT platforms.
 * Fixed max-divider setting for non-DT platforms.
 * Replaced the magic number '9' with ilog2 function in
   renesas_sdhi_clk_enable().
 * Dropped divider variable from struct renesas_sdhi.
 * Updated renesas_sdhi_clk_update() to return rate for HS400 mode
   and non HS400 mode(uses 1/2 internal divider).
 * Updated handling for clk divider.
 * Renamed TMIO_MMC_HWADJ2->TMIO_MMC_HWADJ to make it generic for
   hardware tuning delays
 * Dropped duplicate SH_MOBILE_SDHI_SCC_TMPPORT2 macro
 * Updated suspend/resume with scoped runtime calls in suspend.
 * Fixed extra space in HS400MODE2 comment block.
 * Updated the comment HS400mode2->HS400MODE2.
 * Dropped the updation of clk handling as it is taken care in
   previous patches.
 * HS400ES support is enabled based on of_data.
 * Fixed the space in HS400ES comment block.

v17->v18:
 * Collected tag
 * Merged patch #4 and #5 and updated commit description
 * Annotated the empty sentinel entries in the OF match tables with a
   "Sentinel." comment for clarity.
 * Retained the tag as it is a trivial cleanup.
 * New patches drop struct renesas_sdhi_hw_info, instead using
   renesas_sdhi_of_data and tmio_mmc_data.
 * Dropped clk, pinctrl, SoC, and board dtsi from this patch series;
   will send later.
v1->v17:
 * Collected tag for binding patch.
 * Resending the series as there is an issue with patch threading from
   patch #14.

Biju Das (12):
  dt-bindings: mmc: renesas,sdhi: Document RZ/G3L (r9a08g046) SoC
  mmc: renesas_sdhi: Clean up whitespace and add OF table sentinels
  mmc: renesas_sdhi: Add clk_mask field to support flexible clock
    divider widths
  mmc: renesas_sdhi: Add max_divider field to support SoC-specific clock
    ranges
  mmc: renesas_sdhi: Add tuning delay support for RZ/G2L
  mmc: renesas_sdhi: Add TMIO_MMC_INTERNAL_DIVIDER flag
  mmc: renesas_sdhi: Add optional axis/axim reset controls
  mmc: renesas_sdhi: Add RZ/G3L SDHI support
  mmc: renesas_sdhi: Save and restore IOVS across suspend/resume
  mmc: renesas_sdhi: Make HS400 OSEL bit configurable per SoC
  mmc: renesas_sdhi: Add RZ/G3L HS400 support
  mmc: renesas_sdhi: Add HS400 enhanced strobe support for RZ/G3L

 .../devicetree/bindings/mmc/renesas,sdhi.yaml | 108 +++++--
 drivers/mmc/host/renesas_sdhi.h               |  11 +-
 drivers/mmc/host/renesas_sdhi_core.c          | 274 ++++++++++++++----
 drivers/mmc/host/renesas_sdhi_internal_dmac.c |  73 ++++-
 drivers/mmc/host/renesas_sdhi_sys_dmac.c      |  12 +-
 include/linux/platform_data/tmio.h            |  18 ++
 6 files changed, 408 insertions(+), 88 deletions(-)

-- 
2.43.0


