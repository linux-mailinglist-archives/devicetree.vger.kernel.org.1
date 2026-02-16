Return-Path: <devicetree+bounces-265932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MBkxK1eXk2lI6wEAu9opvQ
	(envelope-from <devicetree+bounces-265932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:16:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FAD147E19
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 23:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AC313010DAA
	for <lists+devicetree@lfdr.de>; Mon, 16 Feb 2026 22:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 215F4289358;
	Mon, 16 Feb 2026 22:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="Ji03fOLS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5499627442
	for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 22:16:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771280206; cv=none; b=cWbggHugfoJetaKuxOSXtzBzpcAIcjM5dvBLbM6vHk3n0mWAnZj+Q6SEMcCEYEAf4hPUOagMQRkSjvEmKdRN9F4FCkVJ4gAg76UgAv3HzvocSXJJkqX1/HrOPOjCBuIE6abChEL5kujPDDKDEA1TXmUXzqCuAdEsQHN7fgrg5Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771280206; c=relaxed/simple;
	bh=6aL+HzXpIXeZw0HFDGLSsl+OGwfYHoq+DFpiHFyFEQI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=J8i4MQTND4Uq7o1VHF5ahMiOF9qdoXrx4R1gE4mZO613Wic1YSRMBeZvmSu2HtRv1iIniHZmJKUMPX/bo9OFxiRgGa/AD+eWpE1KuC6OeNEMznFRq13/RO5WDi/6XrIbsxV7G8/z7DfWyMdrdqAzzNsFBFyfENy2pr5ryGJOXeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=Ji03fOLS; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-797de0727a4so5665897b3.0
        for <devicetree@vger.kernel.org>; Mon, 16 Feb 2026 14:16:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1771280203; x=1771885003; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6GyMKAk0KNPhLrIPgkeZaOJ2e5FaaiPOPN4sMAsFFnc=;
        b=Ji03fOLSPhPw25pjkjIm44N2rUOTzGG1/WOHQRKWEyrZh96g1f5Um0LYZKKYtSmJyD
         f83jSbpEN4Pa6tcyPH5Zm+y7LvzVFztq7ZhTng2nNhoD5jXPx3O3ysNBohaLBitNVfoA
         ikgrn+45R0Mgu4Scvu1DtOLZ5lIYAHCnCsFRNlG1lh/4NdIPAUEURFNsAFnfwbK1knV1
         Gr8Z4KAAI3Atw4nxs2UYBhr+SG6ZrqNgPvGDWHCiK6+b7O9FvVFEG5mBgRIGbPoz5CZT
         N+u/iFMlVCYGUDXzynpSDgYLyShtb04h+W9wvje0izeAiqJc847WueFxm7Oa/7TSM7nh
         6kQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771280203; x=1771885003;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6GyMKAk0KNPhLrIPgkeZaOJ2e5FaaiPOPN4sMAsFFnc=;
        b=U8nvaIksNgUZwWqsUe0uasfW4Kx21S8+xMREVZZCmuFPMhbX4N9b7so6R7c8uoSvmB
         7Ak6BLCnOTp8hemwUjrWHT+QHnHYSnC+DpHjWkoe/sGJcn+yxLeHuvtofTVY5WQ/U8yY
         FaSZX0REJnIBXSNR5hEjWosoeTBpHy7WyJco50ums2zj6ZlIA8TPQrTi70BKEBnxG050
         wS+cX806KdLETK27yY+SxE0X2fVjqRdp+bYc1gUIQvagvgg7kj35WIlvS4JqOfpj55Z5
         S9PWauPRIUGpfziTA4jAP/kG/0OG/E8gtfLRJKh3LzlsJ2CwgYoawapVwCF/M7HMeIA2
         Fs3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVqaOFbjqpQH36As+54iAt92YlHvl3L+d02b+pifd2bt3QICdhILj//UAOYxRU+pDPXDXG9K3UOBQmI@vger.kernel.org
X-Gm-Message-State: AOJu0YyTpmDRac4jOrwZGWM1fHG3xTiMsntbmg+ZRQSWU9iCSrh3NDIK
	WkJZnEvLGBhEXt7n+XeE08gAGfYLjcX5ABTiP1cBVlCl1PnlqqvX8zDVL0Fh1I2vWzc=
X-Gm-Gg: AZuq6aKVkrobyWC2cofKzHhMvJv3Ml9Dk7xmfNGVtsS8HsTq9MIc0wtlu7NKd/guKmV
	DeQTPLWgZBFaZdyoiN33fijEodjtXwD+9K2UQRkFUITADmKaYO0VhHguqqNpBzZM3cs5NE0NT5Z
	51lgaQSZBQCqhK28ghZiGpOioo7o9r2Iey6pY69HBmOYqT4atP0HM/iU2Kfs0NloJKY13m8a9Jq
	ssyTHd/dfCsaAZd8h1sxB1PYeokpenhcTBlsXrcMqm4QKQxY9vASzbqqw5CNdjCGcGZ9ykH2TXk
	rWe3WPkYeSPFo6sG90zaXuy0UOnURCaCsryl1rMk/PlovRzrXG8wkhqlTPkEn58U6n+vIjXpZ9q
	xjE2epeoYcaJesOsM2debY3whI48QzYGy3IdH1ig27k/Z9jgBqNfBHel3yGFW3kom+K3M4g4fFb
	OF/NtqLARVDe3U+b2BJDwLrCgd4KKsE5ylv7n78ie1o5FRIz/BaC/NPecuSYCPCOxM2rdI3wjRz
	pcQyFi6jNA=
X-Received: by 2002:a05:690c:6612:b0:796:4b03:7390 with SMTP id 00721157ae682-797a0c05ab7mr210848857b3.27.1771280203365;
        Mon, 16 Feb 2026 14:16:43 -0800 (PST)
Received: from [192.168.5.15] ([68.95.197.245])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c1a8222sm106705757b3.23.2026.02.16.14.16.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 14:16:43 -0800 (PST)
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Subject: [PATCH v6 0/3] Add Tenstorrent Atlantis Clock/Reset Controller
Date: Mon, 16 Feb 2026 16:16:31 -0600
Message-Id: <20260216-atlantis-clocks-v6-0-cb46d6a59c73@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD+Xk2kC/3XOwWrDMAwG4FcpPs/FkmOl6WnvMXqwHWU16+xhh
 7BS8u5zCmOBLBfBL/g/6SEK58BFnA8PkXkKJaRYA70chL/a+M4y9DULVEgKAKUdbzaOoUh/S/6
 jyEF1ykOn3Il6UVtfmYfw/RTfLjVfQxlTvj8PTLBsfy2zsSaQSrbaEFMLA57cayrlOHJciMxxP
 Pr0KRZ1wpWE268mrJIn0i2Q7phoX9JribaSrpJTQKCNMeDafalZSVptpaZKDfVssDfYYbMvmT+
 pjq1kqqQ6RG609dbZ/6V5nn8AWHWoneABAAA=
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
	R_DKIM_ALLOW(-0.20)[tenstorrent.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265932-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tenstorrent.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[asrinivasan@oss.tenstorrent.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tenstorrent.com:email,tenstorrent.com:dkim]
X-Rspamd-Queue-Id: 02FAD147E19
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
 drivers/clk/tenstorrent/atlantis-prcm.c            | 901 +++++++++++++++++++++
 drivers/reset/Kconfig                              |  11 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-tenstorrent-atlantis.c         | 173 ++++
 .../clock/tenstorrent,atlantis-prcm-rcpu.h         | 103 +++
 11 files changed, 1266 insertions(+)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20260112-atlantis-clocks-f090c190b86d

Best regards,
-- 
Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>


