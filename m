Return-Path: <devicetree+bounces-5753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 278787B7C5F
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 11:39:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id D1406281460
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 09:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0D310A23;
	Wed,  4 Oct 2023 09:39:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E3A510A0B
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 09:39:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E8B7C433C7;
	Wed,  4 Oct 2023 09:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696412376;
	bh=Mo9aBSue9VgCsnzG+WTcEHnQB+oqgaq0bf1pV4lpD7s=;
	h=From:To:Cc:Subject:Date:From;
	b=j8Tr0MiZaTgG2SgRnZTV7+1OuMwIoz8poMpoC5wZM+h+1Wp4gQhB4uJc1OrJl+iy5
	 BCr2XqZ4FzC8o71iWEgHlY+LnM2NJ/B65xYXFLwZsaDurmNYivr+ESxvNYTCt15on0
	 22gtaA35KcSe0zY1WSNEAfOGavpt0Kybof/3PViaXe0KKQARS5XTjO1z5mY/WacIb+
	 F8GNHTNlNPExRwrVtO6lMtuzaZJbGKeVcsNCD2lwMUFId/wUEIMzEkM+Zliflf57vk
	 uYdwjXA3ljT6I2G0oxpzTqdY2qODHtv0meyVUVbnKQpVKvTyuY0s90QZe19scZvsuP
	 5AZ15FkVv8lGA==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2 0/2] pwm: add driver for T-THEAD TH1520 SoC
Date: Wed,  4 Oct 2023 17:27:29 +0800
Message-Id: <20231004092731.1362-1-jszhang@kernel.org>
X-Mailer: git-send-email 2.40.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

T-HEAD SoCs such as the TH1520 contain a PWM controller used to
control the LCD backlight, fan and so on. Add the PWM driver support
for it.

Since the clk part isn't mainlined, so SoC dts(i) changes are not
included in this series. However, it can be tested by using fixed-clock.

since v1:
 - update commit msg and yaml filename to address Conor's comment
 - use devm_clk_get_enabled() and devm_pwmchip_add()
 - implement .get_state()
 - properly handle overflow
 - introduce thead_pwm_from_chip() inline function
 - document Limitations
 - address pm_runtime_get/put pingpong comment

Jisheng Zhang (2):
  dt-bindings: pwm: Add T-HEAD PWM controller
  pwm: add T-HEAD PWM driver

 .../bindings/pwm/thead,th1520-pwm.yaml        |  44 +++
 MAINTAINERS                                   |   1 +
 drivers/pwm/Kconfig                           |  11 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-thead.c                       | 274 ++++++++++++++++++
 5 files changed, 331 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
 create mode 100644 drivers/pwm/pwm-thead.c

-- 
2.40.1


