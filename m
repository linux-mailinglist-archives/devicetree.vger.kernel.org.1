Return-Path: <devicetree+bounces-4374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C567B2379
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 19:15:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id AC9DC282127
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C2345124C;
	Thu, 28 Sep 2023 17:14:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8BF13AFB
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:14:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8808C433C7;
	Thu, 28 Sep 2023 17:14:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695921298;
	bh=Tw/MBuqJbVhiahwI6Oee4TQln3rp94ykoKAprce0/ro=;
	h=From:To:Cc:Subject:Date:From;
	b=r5qCzk+rPVHtWc/EEbQL6oIpiG4dGv8t1ICFQP1GjEdl7w+TfNkQd0M73Qus8ngV+
	 NmUYHbyaoI2aX48wzQaW+kCrJezTfySz10bY+QqY7r+mlAyRe5wkwUFy3q7xYM85lX
	 eObkO0OVHsq76nyhuRG1E7fQqJV3TZ3Qd2HtQId0yYqSPHAS/vj+Z30gAu78VFrfu7
	 IQxRurbNS/cr1mP6hX9fksfEziEcRqFlsDnh5o4DHnX8tRd7YlwD9w/LhPHrpDgd+F
	 ciR2097/18ttEoKMuh9wtx543l9wtIlfV1nSCSZYkpremZ+6d+/gj/VYt9JNk7lK+E
	 VJGSEQ62PEQ2w==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>,
	linux-riscv@lists.infradead.org
Subject: [PATCH 0/2] pwm: add driver for T-THEAD TH1520 SoC
Date: Fri, 29 Sep 2023 01:02:52 +0800
Message-Id: <20230928170254.413-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

T-HEAD SoCs such as the TH1520 contain a PWM controller used
among other things to control the LCD backlight, fan and so on.
Add the PWM driver support for it.

Since the clk part isn't mainlined, so SoC dts(i) changes are not
included in this series. However, it can be tested by using fixed-clock.

Jisheng Zhang (2):
  dt-bindings: pwm: Add T-HEAD PWM controller
  pwm: add T-HEAD PWM driver

 .../devicetree/bindings/pwm/pwm-thead.yaml    |  44 +++
 MAINTAINERS                                   |   1 +
 drivers/pwm/Kconfig                           |  11 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-thead.c                       | 289 ++++++++++++++++++
 5 files changed, 346 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-thead.yaml
 create mode 100644 drivers/pwm/pwm-thead.c

-- 
2.40.1


