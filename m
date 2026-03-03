Return-Path: <devicetree+bounces-270672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMIqNhAcp2kUeAAAu9opvQ
	(envelope-from <devicetree+bounces-270672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:36:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 498911F4B33
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:36:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 21E85302BF6E
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 060E947DD72;
	Tue,  3 Mar 2026 17:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="WOaRI39M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528243C6A2C
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 17:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772559373; cv=none; b=Cu8ub+HCb+8o2v2gQWdu6ZkcBVt19MAhL1fmuCdp+twTkxDBNpojP729sGJMHiwDCpmsKJgMBMeSnR9Eggha6M9FYSQNjrEsHdh7OH8ZelCuiKyL2U7D1NcNqWg/xv+Q25jLC3E18z42Tjufh0U7zkXfk3m2nsNjS4sOIRZtKvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772559373; c=relaxed/simple;
	bh=fdCdFhp6AyoOAqbkB9WFf5GSuZjWAIHZZrzt48bJ2Is=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=R8cHVI/XXdyFeOc0PYhaOvywoSU3OswRjRgzPdi48gMSlos1MSKPKUIVh5JyOUIyHa4L1A8XfN3WtYqeZTQW8RpB0YWa1K0YWlAOlEsRpY0zE+oGJvt3lKL5g0DjQGsdQ0e415odSoKxHgQKPFoOMnucypRRKVMV7gOFT2jWH/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=WOaRI39M; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-7986fb839f5so50507217b3.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 09:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1772559371; x=1773164171; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H6iTpKo42LQycXu04Lv5eBd6w/oQMbMtVO5fhoLyfQU=;
        b=WOaRI39MRD1yd7JDKuFeT/66RD2oKPim87461YT9ao0Lx2NM0+ji55K92gd3GFPZJ1
         8mz+WNJZIhRhjha07aXvV8oIjpVOt+LL4CbwIN8ix5LT4/PFGWuc2n/cMmPH9axbeSm6
         ebNs6Q9TDvQign3OgMDSDF29jJMmFmHprKPKpyn/EUQCmJdnD9tWbE35dknd7U48sLeB
         7XYrLsbNBnP7CSU0UycM3dt7tWsSF1On/2zz98L8x0p9hkIZAb59BnFmdpJtwavLZ6zh
         2Ua77Jydrp1jkrAWcSP6Diul3km0B7T2jDhFlYvRxyWzNVw7ajbxWOZBQSzk3hbP2S7t
         y9dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772559371; x=1773164171;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6iTpKo42LQycXu04Lv5eBd6w/oQMbMtVO5fhoLyfQU=;
        b=dQcedGeGuULun/jOft9KoOUfWbiqR9kxPK7IQB1RFXMpPRjQ2NZ6kWH3XJcGRFjD22
         XKNY9sNgCvpmrZsl+xsZaOFBw15O3fw+m0vR91ybTtJLh9Rswp9oIy91IkSs4RRoRNu8
         yFwHCP8gYDDBiS2SQwXGyXD8bqzzc/g4D6yg/mgZif2NbRVUORj4lDHCq0Az8IDodNmZ
         4PNvvc3z3nrdmm/2An6BHmuw/7HK+NEJnOO1xHnA09ojiHD2HqBw4WIph0Uz3MPARzDX
         rzpYPwmmURJNE+Xl//KIuIiQzyLbLjoXzqp4WqaWSX2UrX1K0VjH/rajgaQUNfEiMnCo
         6yuw==
X-Forwarded-Encrypted: i=1; AJvYcCV3wlTRmXhyJT4YzPO84U0laRCZ+TAfRzj9l5yN+xmNwFFTWIC/pQTXhJdPmyxwoNiAT6+sdBH+JBse@vger.kernel.org
X-Gm-Message-State: AOJu0YxtI/ImnpqGE+zR8HG+Q3qeHRN6xUeonBFKWvIyVBEQ6k9z0ZAv
	ajatHdyrD5/ltNacdUtOvwWpgT1GZjgrmX+pUUqXPtqDNk2q/2NuGC9NyMM3ylbGbGY=
X-Gm-Gg: ATEYQzy9JJ0qbpVmdtOVczDcAQ8RX//Bt5d+EhPr3ErqlBg47LxF1GG+s19JdrY/Jbu
	AQ4UVeqUydczZnZQiy185PxlwXAMH0maOB2Dg4rlmU50vlddYvwE1eKpx9OajkhTPJLvrfOWYMK
	6Bf8PxOGjHwjB7NM/hbZECTz5JDG4mTDewSuqz1DZVkL0Ant+cfCHeZ47p2zkHJ9WhEQtFBl7pw
	z6/48SNt7b7PqA6cBTnw17namoFmtza9FRk2SRjVy2XIh/2l0CLWRBoH0OhcNRltrUQwGFkLnqd
	zbD6eGCdJqfuv6TeaOmGKcYRRrsoXKseU23KEtmEwD0t2zSbBdH/J8YoGbZ/13NK7TqgNE4qVsw
	eytz0muPngH6A9rHBeFyzIgblkkn2XLG5ZWqchQ0STeUKDZL6/rL/y6MfYFe6FOG+4Q66miPLNs
	vR/bBgld9BdiTAdSH7h2b2eu8+JgY5u2q1jGN3N0SMV0DitODyG8JN0K08cC32xoFm0LSGNOZ/z
	NtR8dv1pINkonbrqNZl
X-Received: by 2002:a05:690c:d8d:b0:798:78cc:3e54 with SMTP id 00721157ae682-798855df3b0mr150815947b3.48.1772559371384;
        Tue, 03 Mar 2026 09:36:11 -0800 (PST)
Received: from [192.168.5.15] ([12.55.13.134])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-79876a8df9bsm64750477b3.1.2026.03.03.09.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 09:36:10 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v7 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Tue, 03 Mar 2026 11:36:06 -0600
Message-Id: <20260303-atlantis-clocks-v7-0-415c9dda086a@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAYcp2kC/3XQwWrEIBAG4FdZPNfFGeO49tT3KHtQM+lKt7HEE
 LYsefeahdJANhfhF+bzd+6i8JC4iNfDXQw8pZJyX4N9OYh48f0Hy9TWLFAhKQCUfrz6fkxFxmu
 On0V2yqkIToUTtaJOfQ/cpdtDfD/XfEllzMPP44EJlts/y2ysCaSSVhtistDhKbzlUo4j9wsxc
 D8eY/4SizrhSsJtqwmrFIm0BdKOifYlvZZoK+kqBQUE2hgDwe5LzUrSais1VWqoZYOtQYfNvmT
 +pXpsJVMl5RC50T764PclWknw5He07CnUVuSNi1Y/l+Z5/gU6XC1HKgIAAA==
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
 bmasney@redhat.com, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 498911F4B33
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270672-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tenstorrent.com:dkim,tenstorrent.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,oss.tenstorrent.com:mid]
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
driver. The third commit adds the clock controller driver, and the reset
controller is created as an auxdev of it.

Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>

---
Changes in v7:
- Rebase on v7.0-rc1
- Added Rb tags for Patch 1 from Krzysztof and Rb+Ab tags for Patch 2
  from Philipp
- Addressed comments from Brian on on making clk_ops const static and
  use of !! operator for non zero value checking in atlantis_clk_gate_is_enabled
- Removed multiple error messages that would be printed on failure to
  register a clk
- Corrected clock-gating bits for some of the PLLs and adjusted
  pll_is_enabled function accordingly
- Link to v6: https://lore.kernel.org/r/20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com

Changes in v6:
- Renamed bindings for PRCM module from "tenstorrent,atlantis-prcm" to
  "tenstorrent,atlantis-prcm-rcpu" so that filename matches compatible
- Updated reset driver to fetch parent device's regmap instead of using
  auxdev structs
- Moved reset register offsets from include/soc/tenstorrent header to
  reset driver
- In light of above 2 changes, dropped dropped Rb tags for reset
  controller patch from Philipp Zabel
- Moved clock register offsets offsets from include/soc/tenstorrent
  header to clock driver
- Removed shared header file in include/soc/tenstorrent
- Remove boilerplate code for initializing and register reset auxdev in
  clock driver and create it using devm_auxiliary_device_create instead
- Removed struct atlantis_prcm and it's occurrences as it is actually
  not used anywhere
- Fixed an incorrect use of boolean && instead of bitwise & in pll ops
  in clock driver
- Link to v5: https://lore.kernel.org/r/20260202-atlantis-clocks-v5-0-0922e43acaba@oss.tenstorrent.com

Changes in v5:
- Replaced to_atlantis_*/hw_to_atlantis_* macros with static inline functions in clk and reset driver
- Add Rb tags from Philipp Zabel
- Link to v4: https://lore.kernel.org/r/20260130-atlantis-clocks-v4-0-46de52d52924@oss.tenstorrent.com

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
      dt-bindings: clk: tenstorrent: Add tenstorrent,atlantis-prcm-rcpu
      reset: tenstorrent: Add reset controller for Atlantis
      clk: tenstorrent: Add Atlantis clock controller driver

 .../clock/tenstorrent,atlantis-prcm-rcpu.yaml      |  54 ++
 MAINTAINERS                                        |   4 +
 drivers/clk/Kconfig                                |   1 +
 drivers/clk/Makefile                               |   1 +
 drivers/clk/tenstorrent/Kconfig                    |  14 +
 drivers/clk/tenstorrent/Makefile                   |   3 +
 drivers/clk/tenstorrent/atlantis-prcm.c            | 893 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 173 ++++
 .../clock/tenstorrent,atlantis-prcm-rcpu.h         | 103 +++
 11 files changed, 1258 insertions(+)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


