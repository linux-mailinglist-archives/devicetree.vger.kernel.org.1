Return-Path: <devicetree+bounces-239223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D14FAC62BC6
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 08:35:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3CEFA35BBFC
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 07:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA43A3191BF;
	Mon, 17 Nov 2025 07:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="n/ebQqN0"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4032319860;
	Mon, 17 Nov 2025 07:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763364870; cv=none; b=kG1AVSfqLMJFnO4DpznOuJrR6Jmc6MLDX4iLZj1iIRHAabqH3GtVSTqFWpA6WUbg3FasK9n8RlZh8ImI15NHtpNYxYdz9eRUB53pGZgE6RCsy8HTvOM1QeuPm6XlNaRqHtvSMcLBw67IUjQ82ovLMxxeZ4LL7ykTK9mSMvP4vS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763364870; c=relaxed/simple;
	bh=0iuOGBnrhDMM94jDGCDMuxnsr/Vi1o6oMJi3lzdHWaA=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JNs6OaN8EjGLqQvsO91q7YCQZ6gq7ccET7998tGvAbhIa7nTB0pWmp+74Q/dDY4ZAeeHbvE/TP0yJCDJcusFXi/oLxfl/ZJz+R8UqWuibwWYv3vjcGLLISA8DiBjLBhbv8vKDBHZGARfKsGCTX6TIG00Mc2cthVFF3WTgjhCBQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=n/ebQqN0; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AH7Y7Lf83177069, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763364847; bh=uwH3XQgRU9KTTuzr9vEL/W+BG1nvurEK+OlNGkahY+0=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type;
	b=n/ebQqN0P8om+QumlWjbk/7hswfOBiohICoI4CnpCKPpc5Dc/P63BYG47fcRuKd5+
	 uG6aVPHYHcd2eTI7tdlFnErV6uWNPi9xXi+/EYSJCiez0pTHyckOh2HsdS1Po9Ed/S
	 d10UKeautFMqE5As2DLnyjeOPTIwH+C7LfqtchCrqL6VN6hnToWQGtygYS5dtJi+px
	 hePtmFvAi1mlMjwJqmurgGnsdU/HiZJ/fr+MFjrbXaPigtnZ3oQaR0YzB0GTH6l+vE
	 NdOQlQZo1hZjTGuLUjNI809pI2vSOXxH4GVGiUwV8/V4npJXsF6eDP2jtrF33qdS7/
	 V4xo2AWGyqa2w==
Received: from mail.realtek.com (rtkexhmbs04.realtek.com.tw[10.21.1.54])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AH7Y7Lf83177069
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Nov 2025 15:34:07 +0800
Received: from RTKEXHMBS05.realtek.com.tw (10.21.1.55) by
 RTKEXHMBS04.realtek.com.tw (10.21.1.54) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 15:34:08 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS05.realtek.com.tw (10.21.1.55) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Mon, 17 Nov 2025 15:34:08 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Mon, 17 Nov 2025 15:34:08 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v3 0/2] Add Realtek System Timer driver
Date: Mon, 17 Nov 2025 15:34:06 +0800
Message-ID: <20251117073408.428190-1-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Changes v3:
PATCH 1/2
- Rename binding documentation to match compatible string
- Drop redundant "binding" from commit subject
- Add example node and description for realtek,rtd1635-systimer

PATCH 2/2
- Add Kconfig dependency: ARCH_REALTEK || COMPILE_TEST
---

Changes v2:
PATCH 1/2
- Add full name 'system timer' to description
- Remove redundant commit messages
- Clarify compatible strings for specific verified SoCs
- Remove redundant reg and interrupts description sentences
- Use generic node name in example

PATCH 2/2
- Correct MAINTAINERS to alphabetical order
- Update Kconfig: switch dependency to ARM/ARM64
- Remove redundant pr_info output
---

This patch series adds support for the Realtek SYSTIMER, a 64-bit timer
that serves as a tick broadcast timer on Realtek SoCs.

On Realtek platforms, CPUs can enter deep idle states (C-states) where
local timers are stopped and powered off. Without a global tick broadcast
timer, one CPU must remain awake to wake up the others, preventing all CPUs
from entering deep idle simultaneously and limiting power savings.

The Realtek SYSTIMER remains active during deep idle states, allowing all
CPUs to enter power-cut idle states simultaneously. This significantly
reduces overall power consumption while maintaining proper tick broadcast
functionality.

The systimer hardware for both RTD1625 and RTD1635 SoCs has identical register
layout and IRQ configuration. The driver therefore matches both compatibles
without special handling and has been tested on both platforms.

Technical details:
- 64-bit timer operating at 1MHz fixed frequency
- Supports oneshot mode for tick broadcast
- Uses standard TIMER_OF framework and Device Tree integration
- Remains active during CPU power-down states

Testing:
- Verify the functionality of tick broadcast timer on both RTD1625 and RTD1635
SoCs.
- Verify the power consumption reduction on RTD1625 Soc in deep idle scenarios

Patch organization:
Patch 1/2: Device Tree binding documentation
Patch 2/2: Clocksource driver implementation

Best regards,
Hao-Wen Ting

Hao-Wen Ting (2):
  dt-bindings: timer: Add Realtek SYSTIMER
  clocksource: Add Realtek systimer as tick broadcast driver

 .../timer/realtek,rtd1625-systimer.yaml       |  55 ++++++
 MAINTAINERS                                   |   5 +
 drivers/clocksource/Kconfig                   |  11 ++
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-realtek.c           | 172 ++++++++++++++++++
 5 files changed, 244 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,rtd1625-systimer.yaml
 create mode 100644 drivers/clocksource/timer-realtek.c


base-commit: 948b99877bf5a1cd58bee930e455b7574daba5c3
-- 
2.34.1


