Return-Path: <devicetree+bounces-272296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4EmHCA8Oq2nmZgEAu9opvQ
	(envelope-from <devicetree+bounces-272296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:25:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 768F622611C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 18:25:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 099FA31669E3
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 17:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062AD411610;
	Fri,  6 Mar 2026 17:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="brBElwYk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124093B8BC8
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 17:12:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772817154; cv=none; b=tE0FKF9zskQ/jZwj9aAs6fo3+M7qg0dW56lDwzKMlrd0P5kzK/u7025V6GsS1b5RHupW39+RAt8AaPDBqGHWwT4VsxYuLfgRV8nu0WcIdtxK75zBKuLmQGQposae4QyIJKX7c7ks0fdJlhjvOiPr5JsYRMUKkjdlACQlxGc+hR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772817154; c=relaxed/simple;
	bh=s2zQbVVs6WW1eYbGanCjuW6KgHqF7qB2zFo4dHFLtBQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PTp4ftYGl+9v0xT8i651oh4Lf83diHWQdJXhefC3b7r8tJ3cbzkBv+Mnf4csnL8BrkiAYnrj8me7su/liD7c5X9GRbokwek6MztOAdqqyANIj/VYwsfimsT/NNGEgclBxqz+hEu4bzHcO1KneZf867rfY+RFHO9SgZMQRgmyeCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=brBElwYk; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-79868eae536so96724927b3.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:12:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1772817152; x=1773421952; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o4TGiovKYE/NC2WLaNQ96o80qmi6PqcfNfFUs3pYMxs=;
        b=brBElwYkRBNxE+pciVs/4aT2c8UXndLGVEaOPuyQPUYvoISUpoiGNATGuMHI5H7v7R
         2vAL9dyXreYST5ShPSf3IRDGY4NjCErUmo19PMvvQq5kpWItsmxeIu0JVGJLeKqw96/9
         CQR6VusC5c4jK6Zeo7kCfMEtTLExZzt6KNy8vwgoa90YmsnbHW3FGJkyGwUN41tsQZHt
         9AsYs/bPJl6L39KAb9Vgve5saTQizKjyx+UWAzXP9/vJijOO0wl5T2nSQC1MbF8goVPf
         LKplupoImxyskah6TQrAmTgKIngyDksWgYlxt3/X0HiL7TT1Etum/MRGXsm0ZRHlR5oS
         0Ytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772817152; x=1773421952;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o4TGiovKYE/NC2WLaNQ96o80qmi6PqcfNfFUs3pYMxs=;
        b=eY+Gj7FCV9QBEGNDdEleyhmpgDdbOdZp9mx46MkITF1kGgMIY2a3Rb3V6nIkOQy0Y1
         VsQX6IgrsWYSbH6imMOd36DDZlmYj1NHMv1L/lXVbUtNRjlafsey39TPmqTf59n5jwPZ
         s2w1PHedGLnvT1WgG9LD8GNIfvL8+Bf6gI+JgcSBZEYaHDUlrl9bgeWC3nmHAPWbdoJi
         viFjwGSdzYSUI+dIh2eON3zm2sICc8QmFm1uvkLJUDtdKhcnO49oe2IjTk+3jv/9dbdF
         IjmcXcPKXjDgE/gDNUat30spLzehy0kHvMMJy3XQFavTauyf99xZV+wqdeTDYH8eMs1f
         79pg==
X-Forwarded-Encrypted: i=1; AJvYcCXsdk6OxjboW76hSE2+2/y34sSxc1W1CVBDUTNbSC75+ssoTAfb1rHLC4/Rn0OgJ5Zw8r+FzRViAXLJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwSqfjp1mnOhfC6SJ+zCdDV7ghlN1q5RTMVywlIaDdIiE+VzoLB
	wTdJLSXLi5hZM6CwqehFqy4UIC7b7b2P0yOCtqEZ9jVaTtwcvrAf5HEku+oU7RFDubU=
X-Gm-Gg: ATEYQzzKa8olsWNfYpElQlqleVQY0hc1/kKTzVFbjAUWptGhkBLYYchjFiAC75YzvTS
	wbjD7sX7zmTwrLYBbnrKB6Psn4RJcZNs78h6deHR+dEVwEfg2/hKqy3uta87u4LIZsCiu8BCUlr
	q3RDmOiqxD2pI5ndL0mxbrE2jRekx+ifY/qz2WdphJgfMC5U64O0heH9ZSbO1bhnleQ0eYA083q
	B6wOfkInYJFqF5j+DcRuLwT+ldjMzt7hAD7Fq8+1r9Xo3ssFkgyeoioKUuaZ+IEm8Gki41F1OcL
	CBqQ2jqfR9aZSYlqMfFkuxITQLSxkChxadFrZFCnxnTib/jpdWyZ1l56fQrTuTOPIpBBY3ZqwzB
	KgMjt5IXsXOO51DZrhNJdlxPmdS3iVkOXDdGnI21RbyZKCaHgjv1Vnsa0JKwlgahSWXrb1sps9j
	XcnqzoN2zHEwiQ6kPEOoOwiZVAURZF7OLD0pnGNfre4rzTHrzmcDwHdzGgAhOquBaLIokZZTAvp
	xvd5JYhLY4=
X-Received: by 2002:a05:690c:61c5:b0:798:5b9d:dcf9 with SMTP id 00721157ae682-798dd73a1bfmr25088757b3.40.1772817151985;
        Fri, 06 Mar 2026 09:12:31 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-798ded769ecsm9331237b3.23.2026.03.06.09.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 09:12:31 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v8 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Fri, 06 Mar 2026 11:12:16 -0600
Message-Id: <20260306-atlantis-clocks-v8-0-6c9b14a4aa8e@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPEKq2kC/3XQ3WrEIBAF4FdZvK6LM8Yx9qrvUXrhX7rSbVJiC
 C1L3r1moWzAeiMcwc8zc2M5zilm9ny6sTmuKadpLKF/OjF/seN75CmUzFAgCQDkdrnacUmZ++v
 kPzIfhBEejHA9BVZefc1xSN938fWt5EvKyzT/3D9YYb/9s1RlrcAF11JRJA0D9u5lyvm8xHEn5
 jguZz99sl1d8SBh3WrFInkiqYGkiURtSR4lqiVZJCeAQCqlwOm21B0kKWqpK1JHISoMCg12bUk
 9pHLUkiqSMIixk9ZbZ9sSHST4Zzra9+RKK7LKeC3bkn5IUsha0vt0oLwJwYqeGp22bfsFx2F9k
 nQCAAA=
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
X-Rspamd-Queue-Id: 768F622611C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tenstorrent.com,quarantine];
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272296-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
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
Changes in v8:
- Use regmap_set, regmap_test helpers wherever possible (instead of
  doing regmap_read, modifying the var and regmap_write)
- Addressed remaining comments from Brian on returning status of
  regmap_write for atlantis_clk_gate_enable and formatting suggestions
- Updated names of some of the clocks to match the datasheet
- Link to v7: https://lore.kernel.org/r/20260303-atlantis-clocks-v7-0-415c9dda086a@oss.tenstorrent.com

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
 drivers/clk/tenstorrent/atlantis-prcm.c            | 870 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 173 ++++
 .../clock/tenstorrent,atlantis-prcm-rcpu.h         | 103 +++
 11 files changed, 1235 insertions(+)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


