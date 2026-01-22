Return-Path: <devicetree+bounces-258336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEhNDxMIcmmOagAAu9opvQ
	(envelope-from <devicetree+bounces-258336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:20:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A31F465E52
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 63C0786BF0D
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C5D42EEAB;
	Thu, 22 Jan 2026 11:09:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="AHmLLJtL"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9118C392C2E;
	Thu, 22 Jan 2026 11:09:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769080158; cv=none; b=TDlsjO0DZO7ThjvvrkJab8ASRJHJqSdEvsjyIxacUx9O6yCxjtxzDFWGlTiUsco6UIR8/o1JUopjH8BD2dZlA2NpmKosxa6qfBIX6221hDJqcHPIqrdpMrkEQVrblORXr//eDDS+uxGCo5PFzn1JyJv3M6GzwO7+/UkVp7g2aII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769080158; c=relaxed/simple;
	bh=I+X1yuMW21pAsrV5QeG9K6y4ky5fWS/hU/5Cyb29VRQ=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=uQjlTe9tr37REyM8SLx87pOWye4xQjnJJGIZfAsh46njkRNc8LqPoIb8+XPAoZ1TVwABCcmPruJ2WFR6NxacYZlSmgCGWDboAjWPGwkxgvhbaMy4YL8Er3iJ42cd19T/u/zicU1jKJrSD3K3BPAuo1EQdaFGwYK7dPGNx1eAYQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=AHmLLJtL; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 60MB8wmH6913364, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1769080138; bh=vPvS/WBahCyjkqdMlWlXbRkm2KDG0pqnL3Axx7j1FYM=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type;
	b=AHmLLJtL0RY6/mph9steYA9YrFclw6NNsk1wL2lH0+6FdPL5bYIFsNZ8Xfj3kHmpQ
	 xFaV3Eip0GUUuiQywfbuMBO4LZERt3hlZXQymhfBrJRVWRaf4TfEplpspiY1sLWtqd
	 oKAlipOCgX70Yk5uAw/6RUBMKzrbF1TEpA0nWpM//xmzO7R23qdvDMn92I8jctN+z3
	 j1l2Gp/yv5LfznIkDqjbI5KZ38PtVrAtebJUHRaWxqWR0GW6ctTfHiKN9eX0wHdsje
	 R5o26xGaSqc95ZI1v8kZxjmJxkx+l2Mtyi42ifcIHDNb/1yGKyYMPiI82WtgY8v4IN
	 ABF7FIxCjYXjw==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 60MB8wmH6913364
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 22 Jan 2026 19:08:58 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Thu, 22 Jan 2026 19:08:58 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Thu, 22 Jan 2026 19:08:57 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS03.realtek.com.tw
 (10.21.1.53) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Thu, 22 Jan 2026 19:08:57 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
        <cylee12@realtek.com>, <jyanchou@realtek.com>
CC: <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <james.tai@realtek.com>,
        <cy.huang@realtek.com>, <stanley_chang@realtek.com>,
        <eleanor.lin@realtek.com>
Subject: [PATCH v3 0/9] clk: realtek: Add RTD1625 Clock Support
Date: Thu, 22 Jan 2026 19:08:48 +0800
Message-ID: <20260122110857.12995-1-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[realtek.com,none];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258336-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[realtek.com:+];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:mid,realtek.com:dkim,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A31F465E52
X-Rspamd-Action: no action

Hello,

This patch series adds clock support for Realtek's RTD1625 platform

The series includes:

1. Infrastructure: reset controller, basic clocks, PLLs, gate clocks, mux
clocks, and MMC-tuned PLLs.

2. Platform drivers: two clock controller drivers for RTD1625-CRT and
RTD1625-ISO.

I welcome feedback and suggestions.

Best regards,
Yu-Chun Lin
---
Changes in v3:
General:
- Added prefix "rtk_" in operation names to avoid duplicate symbol problem.
- Converted macro to static inline function.
patch 1:
- Converted header file path to the full path.
patch 2:
- Reduced the number of IDs per bank from 256 to 32, eliminating unnecessary
gaps.
- Used UL() to prevent undefined behavior.
patch 3 & 4:
- Optimized code structure by removing redundant elements.
- Replaced Read-Modify-Write operations in clk_pll_set_rate with
  regmap_update_bits()

v2: https://lore.kernel.org/lkml/20260113112333.821-1-eleanor.lin@realtek.com/
v1: https://lore.kernel.org/lkml/20251229075313.27254-1-eleanor.lin@realtek.com/
---
Yu-Chun Lin (9):
  dt-bindings: clock: Add Realtek RTD1625 Clock & Reset Controller
  clk: realtek: Add basic reset support
  clk: realtek: Introduce a common probe()
  clk: realtek: Add support for phase locked loops (PLLs)
  clk: realtek: Add support for gate clock
  clk: realtek: Add support for mux clock
  clk: realtek: Add support for MMC-tuned PLL clocks
  clk: realtek: Add RTD1625-CRT clock controller driver
  clk: realtek: Add RTD1625-ISO clock controller driver

 .../bindings/clock/realtek,rtd1625-clk.yaml   |  51 ++
 MAINTAINERS                                   |  18 +
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/realtek/Kconfig                   |  45 +
 drivers/clk/realtek/Makefile                  |  14 +
 drivers/clk/realtek/clk-pll-mmc.c             | 399 +++++++++
 drivers/clk/realtek/clk-pll.c                 | 156 ++++
 drivers/clk/realtek/clk-pll.h                 |  68 ++
 drivers/clk/realtek/clk-regmap-gate.c         |  66 ++
 drivers/clk/realtek/clk-regmap-gate.h         |  65 ++
 drivers/clk/realtek/clk-regmap-mux.c          |  46 +
 drivers/clk/realtek/clk-regmap-mux.h          |  43 +
 drivers/clk/realtek/clk-rtd1625-crt.c         | 788 ++++++++++++++++++
 drivers/clk/realtek/clk-rtd1625-iso.c         | 153 ++++
 drivers/clk/realtek/common.c                  |  64 ++
 drivers/clk/realtek/common.h                  |  43 +
 drivers/clk/realtek/freq_table.c              |  35 +
 drivers/clk/realtek/freq_table.h              |  23 +
 drivers/clk/realtek/reset.c                   | 112 +++
 drivers/clk/realtek/reset.h                   |  36 +
 .../dt-bindings/clock/realtek,rtd1625-clk.h   | 164 ++++
 22 files changed, 2391 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/realtek,rtd1625-clk.yaml
 create mode 100644 drivers/clk/realtek/Kconfig
 create mode 100644 drivers/clk/realtek/Makefile
 create mode 100644 drivers/clk/realtek/clk-pll-mmc.c
 create mode 100644 drivers/clk/realtek/clk-pll.c
 create mode 100644 drivers/clk/realtek/clk-pll.h
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.c
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.h
 create mode 100644 drivers/clk/realtek/clk-regmap-mux.c
 create mode 100644 drivers/clk/realtek/clk-regmap-mux.h
 create mode 100644 drivers/clk/realtek/clk-rtd1625-crt.c
 create mode 100644 drivers/clk/realtek/clk-rtd1625-iso.c
 create mode 100644 drivers/clk/realtek/common.c
 create mode 100644 drivers/clk/realtek/common.h
 create mode 100644 drivers/clk/realtek/freq_table.c
 create mode 100644 drivers/clk/realtek/freq_table.h
 create mode 100644 drivers/clk/realtek/reset.c
 create mode 100644 drivers/clk/realtek/reset.h
 create mode 100644 include/dt-bindings/clock/realtek,rtd1625-clk.h

-- 
2.34.1


