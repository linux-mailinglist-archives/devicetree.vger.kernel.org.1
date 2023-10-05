Return-Path: <devicetree+bounces-6083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DC77B9D45
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:17:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 021981C208BA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:17:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6958C1A262;
	Thu,  5 Oct 2023 13:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m0lFGNiY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B88D125A3
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:17:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87B76C4AF1E;
	Thu,  5 Oct 2023 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696511856;
	bh=ZwEQQmVK4H+n0kW8nvtsgTP5t8H63QSZoM2++l8ORYY=;
	h=From:To:Cc:Subject:Date:From;
	b=m0lFGNiYYtQacsuitgnC26c/xEIuGTF/d6mEg7LZMwELnEp3XYveg4lfDBtdX2+j2
	 d7B8QrU/W3DMi2xCWjB/9uI7Dkryi+iLeXYy0JWjn2rHv/jmhsvCGYF/zO6krKtwcy
	 8DwMpxMvpIiFEMlrQUwymiCvcPd9E9l+DMvBW7FFVpYGdV550bPgIWYhp775uhf/+X
	 bja4ti7neGfPaLxCxXH069V/YM+kK22qms2sb7Z56wMva1jMbOAEPQTHGVRaCsph+W
	 Mw+7PC1Zji87wvazHUlRfbPRBX5XQatdaN1RKilOXxi/FtWpjlyRLin1LlcdlucBCL
	 QJIt99BtOQk2A==
From: Jisheng Zhang <jszhang@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>
Cc: linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/2] pwm: add driver for T-THEAD TH1520 SoC
Date: Thu,  5 Oct 2023 21:05:17 +0800
Message-Id: <20231005130519.3864-1-jszhang@kernel.org>
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

since v2:
 - collect Reviewed-by tag
 - add CTRL_ prefix for THEAD_PWM_CTRL register bit macros
 - use pm_runtime_resume_and_get() instead of pm_runtime_get_sync() and
   check its return value.
 - remove unnecessary casts
 - call pm_runtime_put_sync() when pwm channel is disabled
 - use devm_pm_runtime_enable() and then drop .remove()
 - properly consider if pwm is programmed by bootloader or other
   pre-linux env.
 - simplify thead_pwm_runtime_resume() code as Uwe suggested
 - bool ever_started -> u8 channel_ever_started since we have 6 channels
 - use 3 for #pwm-cells 

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
 drivers/pwm/Kconfig                           |  11 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-thead.c                       | 270 ++++++++++++++++++
 4 files changed, 326 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/thead,th1520-pwm.yaml
 create mode 100644 drivers/pwm/pwm-thead.c

-- 
2.40.1


