Return-Path: <devicetree+bounces-262303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCT3OckPgmm9OwMAu9opvQ
	(envelope-from <devicetree+bounces-262303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:10:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 68988DB1A3
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 16:10:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 231AA3109043
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 14:59:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F59D3AEF23;
	Tue,  3 Feb 2026 14:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dxcrvoM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC805F513
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 14:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770130757; cv=none; b=RcCqjuGTbipx70SwtKL64Z6FG2Tva/YNuEBNNlEDcEubfF84MlxIQD+RM6d/ZWw0KvZ10NUZ0er5DNwKmWg76k3k67V3/0GJUfmLh9Ra+cWM2yLAAs0wcloDpuLB2ZEAazF/ZsJTmFXjKS6E66U1+bzwpRh1xumEeOOdlWm3ZMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770130757; c=relaxed/simple;
	bh=dVx/NTBKTBYer1sAELG6RU2I0c4yRgXuu2CweMfhYDE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=Iep/i5AELlAbWwZrS3+X4hxpEskrPapWCh1mhuJq+X7nYH8533mqrmFTKz8142OUsFJt5JgJ/dZ0SAHPEqhkhnHiz66cpby0ZVradm+gWZ4gb4dwFNygVjJVpYP9tSZpg9Zxa3z7+r7pnTQDCiBw0CgNdkGT1H9GK1UTkGe/25U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dxcrvoM4; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-432d2670932so5147641f8f.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770130754; x=1770735554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bfk7LFQnGB8edV2Pkyiykl2DNq5nGPoA5EosQF70rIA=;
        b=dxcrvoM4vdLPDfZkcSATyEAHbie63t/RIIexzxlfadVBxrWLLrYzk4usir+WFWmswW
         6851VlqNA7oD3XVuELbIg0aFgscPes7J4nclA6BBV8Ic+V2+ptr5oJtel7/t7kL0p8ck
         WF3tB1+gUNmHjMY9ll/xITkqZV19P0tDpxdqqY+Ufq7kpHkx8q81USruAA+WemCxtE1E
         AZ08yjUHtp6ZHqn5FcFKs/HtckeyWTcK7BhFiXG1a4ZfGQ2iklJpvcKWB+zjCj8tFmBn
         l/bAPnYUzbhitRIaphtpc30fTtptIwXT22iyKfKDxMscaBjG7s8yJ6tq35Fspq8DISrr
         8jQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770130754; x=1770735554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bfk7LFQnGB8edV2Pkyiykl2DNq5nGPoA5EosQF70rIA=;
        b=tExm22QDn8PYwbn8ONDDL6CkVV4U+0ayM6bfe0eKaqbbGMaK1Yg01usDVchPj/jmHi
         m1Rs6Qb2Uscvb3SE2oXAnoH6+R24YKsfwi4YYxwXp5OcZ72TvWr/NXHnLnTfxL0xC20U
         U5BgJv3iA3N8YxargS12UcTzTRK2rgMt7QZ5+JODdMYyhIUT9haX+UPxOfVupcyuUSXg
         16bIeg7bR569xuGUEaYnPnQaNgNLpXFWKbrhYqXP2W+X0p1QXz84btDNI9evN/iR0uxF
         prikDa81ltR0/JLUA3nIENv/U42uNHfTkAKq3OdaA0sEIB3+BJFLAstOfdWOW5rhZTdc
         h7Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVqJr17VjjislBVBkHDAN3weostp2KILNRBLMqxwH2OQ+AuQ7jWncLEpI6HL9hxOMfr83DtPM6aoYgI@vger.kernel.org
X-Gm-Message-State: AOJu0Yzwui4Z5Sn1+xzn3gb9EJmV2k5Df5V/Aioc7KIQXjOLOP+bBakR
	Of8qIqpEW2F5+rDcGChBoVR9Nw3b3R7zKJBardg21mZzWajK52TqxsfT
X-Gm-Gg: AZuq6aIsHd3W+i3kzVZqv42nqcFA+ddzQMQnCkAsJDKi+HWV1N873zxXndjiWnxCJxo
	gCD60mkQm2S3c2Y5/4ZkEtvgArSb9Mub/9/M36ItRWkMyV3HfojlqPLO+4VpQHA88G0NaQROj0r
	iOtyO5zij9kNy/c2+MyGHAWC5RVO6rpe3+PCWSTZw+3uoxNyQ8k+bXIVsjTMcYeLSsWmlK0/PdO
	XqFsKnLdQEarRUq0a/r77xoSe8lFl50WvaZpaJJef6baKwYT91nZbi3z+3WKv7NqqZfz3a2UA6J
	7Kr9W0fWz6iZ2pIvOjIozEH3kRPu4D15fubhJglhbyRbtSVS8MBclMbxFgOFLhbtGaYtoncTJgj
	DBjSwLT77tG8HEhXJUQKD/0GHyGND310D18k+4CMlM3+W0sTRkh/+WDCh4gJY2vp6fYpyCD7ZER
	+S7dFmkPCE5Jy6pvRdcg==
X-Received: by 2002:a05:600c:4e12:b0:477:c71:1fc1 with SMTP id 5b1f17b1804b1-482db481b62mr184164265e9.19.1770124252099;
        Tue, 03 Feb 2026 05:10:52 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:9cd9:f748:166d:55fc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4830512ddd0sm63662185e9.9.2026.02.03.05.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 05:10:51 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH v2 00/10] Add Renesas RZ/G3L PINCONTROL support
Date: Tue,  3 Feb 2026 13:10:23 +0000
Message-ID: <20260203131048.421708-1-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262303-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[glider.be,kernel.org,baylibre.com,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bp.renesas.com:mid]
X-Rspamd-Queue-Id: 68988DB1A3
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Hi All,

This patch series aims to add basic pincontrol support for RZ/G3L SoC. The
RZ/G3L pinctrl has OTHER_POC register compared to other SoCs for setting
IO domain volage for AWO, ISO and WDT.

Document the reset-names as all SOCs has multiple resets.

Document the bindings for RZ/G3L SOC and add pinctrl definitions in
driver.

Add pincontrol device node and add pincontrol support for SCIF0 and GBETH
nodes.

Note:
Some IPs needs to set the register IPCONT_SEL_CLONECH in SYSC to control
the clone channel of the IP. Plan to add clone channel control support
later. The IP's involing clone channel needs to do the setup as per the
below flow

(1) Set SYS_IPCONT_SEL_CLONECH register as necessary
(2) Set the PWPR register to allow writing to the PFC_m register.
    After setting the PWPR.B0WI bit to “0” (initial value = 1), 
    set the PWPR.PFCWE bit to “1” (initial value = 0).
    Select the required function from Functions 0-15.
    (Hereafter, Function1 setting example)
(3) Set PFC_m = 0001b and switch to Function1.
(4) Set the PMC_m register to “1” (initial value = 0).
(5) Set the PFC_m register to write-protected. After setting
    the PWPR.PFCWE bit to “0”, set the PWPR.B0WI bit to “1”.

The clock patches depend upon [1]
The dtsi/dts patches depend upon [2]
[1] https://lore.kernel.org/all/20260203110220.265748-1-biju.das.jz@bp.renesas.com/
[2] https://lore.kernel.org/all/20260203123503.314755-1-biju.das.jz@bp.renesas.com/

v1->v2:
 * Split DTSI patches from bindings
 * Fix typo maxItems->minItems in bindings
 * Collected the tag

Biju Das (10):
  dt-bindings: pinctrl: renesas: Document reset-names
  dt-bindings: pinctrl: renesas: Document RZ/G3L SoC
  clk: renesas: r9a08g046: Add GPIO clocks/resets
  pinctrl: renesas: rzg2l: Add support for selecting power source for
    {WDT,AWO,ISO}
  pinctrl: renesas: rzg2l: Add OEN support for RZ/G3L
  pinctrl: renesas: rzg2l: Add support for RZ/G3L SoC
  arm64: dts: renesas: Add reset-names for RZ/G2L and RZ/V2H family SoCs
  arm64: dts: renesas: r9a08g046: Add pincontrol node
  arm64: dts: renesas: r9a08g046l48-smarc: Add SCIF0 pincontrol
  arm64: dts: renesas: rzg3l-smarc-som: Enable eth1 (GBETH1) interface

 .../pinctrl/renesas,rzg2l-pinctrl.yaml        |  16 +
 arch/arm64/boot/dts/renesas/r9a07g043.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a08g046.dtsi    |  10 +
 .../boot/dts/renesas/r9a08g046l48-smarc.dts   |  13 +
 arch/arm64/boot/dts/renesas/r9a09g047.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi    |   1 +
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi    |   1 +
 .../boot/dts/renesas/rzg3l-smarc-som.dtsi     |  92 ++++++
 drivers/clk/renesas/r9a08g046-cpg.c           |   6 +
 drivers/pinctrl/renesas/pinctrl-rzg2l.c       | 285 +++++++++++++++++-
 .../pinctrl/renesas,r9a08g046-pinctrl.h       |  39 +++
 14 files changed, 465 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/pinctrl/renesas,r9a08g046-pinctrl.h

-- 
2.43.0


