Return-Path: <devicetree+bounces-261308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF7CEqLvfGndPQIAu9opvQ
	(envelope-from <devicetree+bounces-261308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:51:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 95628BD757
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 18:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 08FDC3011A4C
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:50:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4478430E836;
	Fri, 30 Jan 2026 17:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="W3waqR2b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF3DA34679B
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 17:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769795436; cv=none; b=omdk+6+/a3uyAKoS8RCmah65nHklLKtyUO/H3N+KKKldtTF6xYj2agAYU6PvD6+wh8AEZ2Y12Ht/VWzFdy7dwsqLFMhZdOHB145wVN2bEBz6OdJBTYgOK/pDXmvZH0opT1nNHNKbVVDnmtlNxyAdb+6MaJxVBXlp+9/0ukA6iak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769795436; c=relaxed/simple;
	bh=VvWd/mkPOOUu/ToKuu1FQ0VjCS5QY754n/pib2y4w0Y=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OmXPdjhQt7mH0CwXpIPLQ2btarh4LQfMC+zWq1eKQFMGesd+I2k5edykyPfz5r/m+03urOK5VTX1I1WKLp9/kdnh/Ceu3gymHaXKEVVuCHOGZi92hMeloLQ8xydYLRTY6n4jEw8Y3qN6zHbng5FEPbFPAPvq7RUUHbFm9KMCous=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=W3waqR2b; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-649ae700ba0so585957d50.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1769795432; x=1770400232; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EqVc82Oy/ZflqXYTUlnweH/P2SRPYGdES/1mmOJBJfg=;
        b=W3waqR2bP2l+m6ZT88vntr9cXqLDUbnsDY9kChZKPVZkRFC6MayqNJ4oPub742SUST
         MMaP3Q2hP8LS7rps8q4repItYMHDYZ7aInAdzdPfmNgjImrfs2AxXytHUrnoG6ouv6cw
         84s8AVM0D/UPwyvYI7qLym9BPCd15BD66QtaLRHNWJ7LLl1sHZ3qxEU0fjGDWeU0spF7
         HMJSkfoyi3qkxs2uKf9e2pNw4cTUyCKKMe1nux4ANVTZg9vr7FSd2vqOG7/4ImIugh6z
         GOcS0/ezCCN6o8w2f5ptuKSffgHs+m9PkTa0iRqBbKHjwq5SwJUXkBNvpmxlFIEF7VF2
         Ky0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769795432; x=1770400232;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EqVc82Oy/ZflqXYTUlnweH/P2SRPYGdES/1mmOJBJfg=;
        b=pED0KZbAS7chuclyns7mvvi0B3f1KCitbXylp4N9ZURXsfqKBIqLWD0GwKgBSscyHG
         jEyylcL+e+5FeE1HVSHDI+5KbtnKFoT9lVeTwtgJqHLV3EChtqWztkw2ed58+hIITG8k
         3z+64g7nKazGup3+1Z/EJfloDCJSikrayuhRUrDMOrWkfsn/By/+F2nYnrSImcstRZba
         ItXxBrGdi79o8NFZ/tkfsRW21raGpWgL7ot808kMsH7dclvIQuB3LpP5C+Ilo40PnKQn
         JIKCVMD/TquVY3P9Ke7Ng4O7I44cps31FyN1Usx6jByTqOh/UHlBKpFMUwvSOsTHCncu
         xMOg==
X-Forwarded-Encrypted: i=1; AJvYcCUMgBoR/7XcCsWjQ8tG7HuVrKxWPUKGQmPrB6BTMGsTf2v+hyIUTDbolPZlE1rcQMSWU5tI77fYJfaO@vger.kernel.org
X-Gm-Message-State: AOJu0YxQaqAvLN+eIQC7JDeILwiZHatsyO+OIbpYVqO1Bt+fgr4M89/A
	+tEtTVU74VJFNaiQ/pUhiloupiNJoQdxazgPrB9CC4fKh350RJC8L8FdAbxtVDYmJdo=
X-Gm-Gg: AZuq6aJfGfaAwiwhN/jiKnAxvskvMXJTM4qbv1xEbtHdeJRJItS0oVbLhJbgGIny1r9
	QD3EISdpXIFTBsAarTJpzwrhDevTegTarcm9e39w8vac81o7Sl9iWYTuC3HrsygbhrAM/xs/1UY
	4U+192trq9Ng/jtICeycG6ZnX2rm04HBHLBhSuq7MU4gPLYGTXi/xsdKJnxGyBPjmX+uoF8tsn7
	QR5okKntwi5wilLr/zL6uas9stMCu+DMwxA67Imo24MbiTs67arU/q4E4bK3Vt7aWoBuKTqPLjW
	RCQw51baMdCt0bs+Dkm/zpH7cVR9aCn8WYQX3DjCvIHKg1Uev2y+rEf4BbRkhBYzDS1WuBdKlYC
	s0nFl2JR2b9Y62Z0O6XFIYZJu1W5g1shNH60VCpwthSuojn6ZTQw82e62s96si81bg4uqVEpWnh
	1WDIYsExRWNYaWIpdrKsQ3PPl9YDXT2zcU3m1Sy9S96ptup6fsuD776sAqsO6sFMrNxlZc81Rjv
	FES
X-Received: by 2002:a05:690c:2607:b0:78f:b163:782 with SMTP id 00721157ae682-7949e076330mr69517847b3.58.1769795431831;
        Fri, 30 Jan 2026 09:50:31 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649960e0965sm3939108d50.13.2026.01.30.09.50.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 09:50:31 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v4 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Fri, 30 Jan 2026 11:50:20 -0600
Message-Id: <20260130-atlantis-clocks-v4-0-46de52d52924@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFzvfGkC/3XOwQrCMAyA4VeRnu1oWps5T76HeNhqpkVtpS1FG
 Xt3O0EYTI9/IF8ysEjBUmS71cACZRutdyU26xUzl9adidtTaSaFRAEgeZturUs2cnPz5hp5Lxp
 hoBHdFk+sbD0C9fb5EQ/H0hcbkw+vz4EM0/Rr6YWVgQteK42ENfRy2+19jFUiNxGBXKqMv7NJz
 XImyeVXWRbJIKoaUDWE+F9ScwmXkipSJwBBaa2hq39L4zi+ATP7AsNMAQAA
X-Change-ID: 20260112-atlantis-clocks-f090c190b86d
To: Drew Fustini <dfustini@oss.tenstorrent.com>, 
 Joel Stanley <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, joel@jms.id.au, 
 fustini@kernel.org, mpe@kernel.org, mpe@oss.tenstorrent.com, 
 npiggin@oss.tenstorrent.com, agross@kernel.org, agross@oss.tenstorrent.com, 
 bmasney@redhat.com
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261308-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tenstorrent.com:email,tenstorrent.com:dkim,oss.tenstorrent.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 95628BD757
X-Rspamd-Action: no action

This series adds support for a multifunctional register block
called PRCM in the Tenstorrent Atlantis SoC, whose main functionality
is to serve clocks and resets. This block is instantiated multiple
times in the SoC, with each block covering clock/resets from a
different subsystem. This series also adds a driver that covers clocks
and resets from the RCPU subsystem, which covers most low speed IO
interfaces found in the chip. The reset controller is implemented as
an auxiliary device of the clock controller and shares the same regmap
as it.

The first commit adds bindings documenting the PRCM block, along with
clock and reset indices. The second commit adds the reset controller
driver along with the auxdev definitions needed for it. The third commit
adds the clock controller driver, and the reset controller is created as
an auxdev of it.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

---
Changes in v4:
- Dropped !rcpu prcms and custom property used by them. Will be added
  later with rest of clock tree
- Link to v3: https://lore.kernel.org/r/20260126-atlantis-clocks-v3-0-b016135551b7@oss.tenstorrent.com

Changes in v3:
- Fixed warnings reported by kernel test bot
- Addressed comments on reset driver bit set/unset value
- Changed auxdev macros to use inline functions
- Renamed bindings and clock driver to use block's name of "PRCM" rather
  than syscon
- Link to v2: https://lore.kernel.org/r/20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com

Changes in v2:
- Improve the documentation about the syscon block in bindings
- Implemented all clks using custom ops
- Removed custom lock/lock handling functions for regmap
- Addressed comments on header file ordering, newlines and typos
- Removed code for mux parent setting
- Squashed down multiple commits that added reset/auxdev separately
- Link to v1: https://lore.kernel.org/r/20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com

---
Anirudh Srinivasan (3):
      dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm
      reset: tenstorrent: Add reset controller for Atlantis
      clk: tenstorrent: Add Atlantis clock controller driver

 .../bindings/clock/tenstorrent,atlantis-prcm.yaml  |  54 ++
 MAINTAINERS                                        |   5 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-prcm.c            | 941 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 160 ++++
 .../dt-bindings/clock/tenstorrent,atlantis-prcm.h  | 103 +++
 include/soc/tenstorrent/atlantis-prcm.h            |  58 ++
 12 files changed, 1352 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


