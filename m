Return-Path: <devicetree+bounces-242225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 35062C8831C
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 07:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E6DC64E22CE
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 06:01:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E662330C63E;
	Wed, 26 Nov 2025 06:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="vVPj72SP"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F28231AAE28;
	Wed, 26 Nov 2025 06:01:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764136883; cv=none; b=T+xVTNmwrxujkzXPAaHfaI0gEdAntQqimMfsDUelrfu9JxMPBnT++nX4uodkenPCi60YrnRZ4OPixm3C90bSL0MtKbe4turCLyBeQ8/b3eERYNcLkwZsbSQXGV7HdUTumypVMOltmUh3XMY+mg1B4CLTPAJQTei4EniOfBK/xb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764136883; c=relaxed/simple;
	bh=qlv7tTlBRQLP0a2BEcxbwkbFunT6xexjtRtuWVg0jxs=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=cSU4H5jVkY/zBddwWooUZnTpr4ySxJRoFqes2V13TuapiF1LbtJ0zIMXpVHb6Ku+/5y93mqb5oIz7uhIqYVmaWbp9JZtuJKTafSUezAq93/KFpjxK2zQMZVmgyL0YlbLmVbBf2xpz3NuyEBOJVPjHAzdsV2lTqo/NQfslZj9bSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=vVPj72SP; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AQ61At74315780, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1764136870; bh=UuW8KfjJGwMJ4uZF+kCXc3t9JFFCXETH1n4IDrvBex0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type;
	b=vVPj72SPnVMUgb3mcTUXfhTUgaeeVmArsHU+GcsWa0EWKHcuYoI5QKNB3ceP9yaiR
	 BbCbONZ+Vc1mmppUu5qf5rxrx1ACu3ZN2rmfUl4wyMRJMuZesOecXmxB2vEWXZN4J5
	 sZS3aVTK4hIHjQuOcGvTI5cChh2ZHXKXz9evoqgo9DT/iG8QWYi8f+ud0r/iTtmBLj
	 pw72pBHXJOLoeo7zgThYZU63NNX1zEfF4V/gmk8+5SfTDRI4JgqjHvRqGWO4gwDNRR
	 bTmOt0IqhjDqbRcEzR0MkRRrqD72L7tW+tWXa64LjNlI18VaeO406QnZbnzGZR+reT
	 7J9AdnFOr9kow==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AQ61At74315780
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 26 Nov 2025 14:01:10 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Wed, 26 Nov 2025 14:01:10 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS03.realtek.com.tw
 (10.21.1.53) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Wed, 26 Nov 2025 14:01:10 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>,
        <stanley_chang@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
Subject: [PATCH v5 0/2] Add Realtek System Timer
Date: Wed, 26 Nov 2025 14:01:08 +0800
Message-ID: <20251126060110.198330-1-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Changes v5:
PATCH 1/2
- Drop redundant description markers in binding documentation.
- Add "Reviewed-by" tag

PATCH 2/2
- Add "Acked-by" tag
---

Changes v4:
PATCH 1/2
- Adjust compatible property description to match actual DTS and validate
  it with dt_binding_check.
- Refine binding documentation descriptions.

PATCH 2/2
- Reorder variable declarations.
- Remove debug prints.
- Eliminate unnecessary line breaks.
- Switch to set_next_event() callback instead of set_next_ktime().
- Remove operations that caused build error.
- Rename the struct `timer_of` instance variable for clarity.
- Tabularize struct initializers.
- Refine descriptions.
---

Changes v3:
PATCH 1/2
- Rename binding documentation to match compatible string.
- Drop redundant "binding" from commit subject.
- Add example node and description for realtek,rtd1635-systimer.

PATCH 2/2
- Add Kconfig dependency: ARCH_REALTEK || COMPILE_TEST.
---

Changes v2:
PATCH 1/2
- Add full name 'system timer' to description.
- Remove redundant commit messages.
- Clarify compatible strings for specific verified SoCs.
- Remove redundant reg and interrupts description sentences.
- Use generic node name in example.

PATCH 2/2
- Correct MAINTAINERS to alphabetical order.
- Update Kconfig: switch dependency to ARM/ARM64.
- Remove redundant pr_info output.
---

This patch series adds support for the Realtek System Timer, a 64-bit counter
that serves as a clock event device on Realtek SoCs.

Technical details:
- Implements a 64-bit timer operating at 1MHz fixed frequency.
- Supports oneshot mode and tick broadcast functionality.
- Remains active during CPU power-down states.

Testing:
- Functionality verified for tick broadcast on both RTD1625 and RTD1635 SoCs.
- Confirmed binding documentation passes yamllint, dt_binding_check, and dtbs_check.
- Driver successfully built under COMPILE_TEST.

Patch organization:
Patch 1/2: Device Tree binding documentation
Patch 2/2: Clocksource driver implementation

Best regards,
Hao-Wen Ting

Hao-Wen Ting (2):
  dt-bindings: timer: Add Realtek SYSTIMER
  clocksource: Add Realtek system timer driver

 .../timer/realtek,rtd1625-systimer.yaml       |  47 ++++++
 MAINTAINERS                                   |   5 +
 drivers/clocksource/Kconfig                   |  11 ++
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-realtek.c           | 150 ++++++++++++++++++
 5 files changed, 214 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
 create mode 100644 drivers/clocksource/timer-realtek.c


base-commit: 948b99877bf5a1cd58bee930e455b7574daba5c3
-- 
2.34.1


