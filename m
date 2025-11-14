Return-Path: <devicetree+bounces-238537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C448C5C2CE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:11:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B85654F6304
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:05:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D0CC30276A;
	Fri, 14 Nov 2025 09:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="EXaEWir+"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F7A2FFF8D;
	Fri, 14 Nov 2025 09:05:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763111119; cv=none; b=fkBbE1+O3ZVDqH9n6VyozkUKM2889Ec2C3ynfmTlPBVoQb1eeX+j3F3ckKW3d5BGo/Po0VALetbZoES5Ymr9MXWTjJ2Agt3f42IAtpVC0Zyb0TcpRZMlIaMR1UBirOxWS2zQ8esRkphVKj/EXzkLrx4REYJ6awjDw7N83zXByrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763111119; c=relaxed/simple;
	bh=gJ8NGqH8fWFU1bVkSST5KnxIGFjoXRaj5AV+TnBI47U=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ZkGOVd6lxJvpnOkJ+Deq21QVkQ17J4uKQwk5tHgJDiQ4C4h4dr0aW2vuitSrBDH7tC0MZsZYcWF/kB9r1NSnwdLLT1bYXxpN0dbFXaaqEFTdUT/lroG5JlQostn2SpGdeeOPqw28TwhpNgR54zuH2x08tndsOqnI4VkmlR2F6qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=EXaEWir+; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 5AE94ndlE1317725, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1763111089; bh=Z5oNxnZ210QYD/rBmIJptWL69T4X/1/iwwqukPchxOQ=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:
	 Content-Transfer-Encoding:Content-Type;
	b=EXaEWir+Y+GiZZeUufWjQ02ZkHmpVx71pNvpEkjFGSq4GM4A63xQM1Mpem17fjYpc
	 LWLp8upwFmr1B45WfDfvRYWIz1bEgt7yMH7OiXXiCWclCZ1lHFsx3/ZL/ejXMITtRC
	 netR2+K8xFN2WvOeIF1znW8AD6jObSXE5kcfMXwDGTjtK4AlGMKYOSoNqKO0SvBEFI
	 I0hwB/LbC7qfC0TWFkWxMXyEeKnHFWvtUvNi8sWfuhHRO8kRo1G3X3+5BcHPQNE+ty
	 ajAaq/DWEpkI+yne++90/SbyitUE+UL/iZcPNNIyXp3wuC9GsoiGU82RWtvz4wwfOj
	 J0vwBhBgV0UHg==
Received: from mail.realtek.com (rtkexhmbs02.realtek.com.tw[172.21.6.41])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 5AE94ndlE1317725
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 14 Nov 2025 17:04:49 +0800
Received: from RTKEXHMBS01.realtek.com.tw (172.21.6.40) by
 RTKEXHMBS02.realtek.com.tw (172.21.6.41) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 14 Nov 2025 17:04:49 +0800
Received: from RTKEXHMBS04.realtek.com.tw (10.21.1.54) by
 RTKEXHMBS01.realtek.com.tw (172.21.6.40) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.27; Fri, 14 Nov 2025 17:04:49 +0800
Received: from ww-haowen.ting (172.21.177.97) by RTKEXHMBS04.realtek.com.tw
 (10.21.1.54) with Microsoft SMTP Server id 15.2.1544.27 via Frontend
 Transport; Fri, 14 Nov 2025 17:04:49 +0800
From: Hao-Wen Ting <haowen.ting@realtek.com>
To: <daniel.lezcano@linaro.org>, <tglx@linutronix.de>
CC: <jinn.cheng@realtek.com>, <edwardwu@realtek.com>, <phelic@realtek.com>,
        <shawn.huang724@realtek.com>, <haowen.ting@realtek.com>,
        <cy.huang@realtek.com>, <james.tai@realtek.com>, <cylee12@realtek.com>,
        <phinex@realtek.com>, <conor+dt@kernel.org>, <krzk+dt@kernel.org>,
        <robh@kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <stanley_chang@realtek.com>
Subject: [PATCH v2 0/2] Add Realtek System Timer driver
Date: Fri, 14 Nov 2025 17:04:46 +0800
Message-ID: <20251114090448.285685-1-haowen.ting@realtek.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

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
  dt-bindings: timer: Add Realtek SYSTIMER binding
  clocksource: Add Realtek systimer as tick broadcast driver

 .../bindings/timer/realtek,systimer.yaml      |  48 +++++
 MAINTAINERS                                   |   5 +
 drivers/clocksource/Kconfig                   |  10 +
 drivers/clocksource/Makefile                  |   1 +
 drivers/clocksource/timer-realtek.c           | 172 ++++++++++++++++++
 5 files changed, 236 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/realtek,systimer.yaml
 create mode 100644 drivers/clocksource/timer-realtek.c


base-commit: 948b99877bf5a1cd58bee930e455b7574daba5c3
-- 
2.34.1


