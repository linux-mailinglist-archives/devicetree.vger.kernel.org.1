Return-Path: <devicetree+bounces-258835-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QIA5GthBc2mWtwAAu9opvQ
	(envelope-from <devicetree+bounces-258835-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:39:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0ED73827
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 10:39:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 17BE03088020
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 09:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA46D36BCDA;
	Fri, 23 Jan 2026 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YzdpXDuf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5357366819
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 09:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769160833; cv=none; b=cky+KnLi2Fr9kwwSGK5CFGaDJpLkPKfktCwvOpw98SwJeomq0Xbu4SnSNRMJ8nmbUmcjfYeG7QpJXubGtwHorMq3VZ94ievb4QATqkYgyz1ymQN1/lPvk9d8Yfp4mbRtP4W+Qh6WLGkR+BImPAQ67UhZarGcwsEk9DyQuXMG9ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769160833; c=relaxed/simple;
	bh=Q3KgYH1et7yzKHhxlTEp8DKlkaoAYWa09JPpPFM34fo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Or8GPX8VNtRgdwQGps6nREZYLjOIeYGUCMZbQgPkLAhRXdKWL8tyI4oCRf4XfO6KHd5MdUzv8Ci/C5DuQ+yPIAtVyxiUKcQWSJvWTGgjX+rgaTpH2aQzOb+mXHSDalJlNZya+U+9EtCT4QGhNh9BR5FB947br4pLx/pdR+GR4iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YzdpXDuf; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id D06334E42213;
	Fri, 23 Jan 2026 09:33:44 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id A2C4C6070A;
	Fri, 23 Jan 2026 09:33:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 57F01119A879C;
	Fri, 23 Jan 2026 10:33:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1769160823; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=bcTSIzzObYHGP+bOM+AF+A6/sK8M6EvG+S57bVAeGEY=;
	b=YzdpXDufAdR1RpKSzpOR81fXvRGbimJiIwt47r6/FHFleuR5ZonWB9JJE/nnlXj5WN/Kic
	2djjgtKm0Uu18xpaVQsLKow+DGP9zwCzQA8x+7BBAz9O/HFLa/wgVMgsgKvRjR6RdNaAiW
	FHLX2LpWcUbR13ekdUEux+fYJCFiqcGNilw1ssrtEsqKMQxImUyYO9FbqSVlER5+r2SnFz
	lDvqhAxHMzvTseVj6IH1hfRk1b7fB+bbWoH62BZ1vBmnkWxxT2AW8KkhXgz/wKY4Bw7e0G
	BorrsVpaXR/OF5h8xdSiumfzN7GSx/gYCC6OuAomNd5nrUUsiN6XWTUH0YR8yg==
From: Richard Genoud <richard.genoud@bootlin.com>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Paul Kocialkowski <paulk@sys-base.io>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Richard Genoud <richard.genoud@bootlin.com>
Subject: [PATCH v3 0/4] Introduce Allwinner H616 PWM controller
Date: Fri, 23 Jan 2026 10:33:18 +0100
Message-ID: <20260123093322.1327389-1-richard.genoud@bootlin.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,csie.org,gmail.com,sholland.org,pengutronix.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258835-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[richard.genoud@bootlin.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[bootlin.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:mid,bootlin.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0F0ED73827
X-Rspamd-Action: no action

Allwinner H616 PWM controller is quite different from the A10 one.

It can drive 6 PWM channels, and like for the A10, each channel has a
bypass that permits to output a clock, bypassing the PWM logic, when
enabled.

But, the channels are paired 2 by 2, sharing a first set of
MUX/prescaler/gate.
Then, for each channel, there's another prescaler (that will be bypassed
if the bypass is enabled for this channel).

It looks like that:
            _____      ______      ________
OSC24M --->|     |    |      |    |        |
APB1 ----->| Mux |--->| Gate |--->| /div_m |-----> PWM_clock_src_xy
           |_____|    |______|    |________|
                          ________
                         |        |
                      +->| /div_k |---> PWM_clock_x
                      |  |________|
                      |    ______
                      |   |      |
                      +-->| Gate |----> PWM_bypass_clock_x
                      |   |______|
PWM_clock_src_xy -----+   ________
                      |  |        |
                      +->| /div_k |---> PWM_clock_y
                      |  |________|
                      |    ______
                      |   |      |
                      +-->| Gate |----> PWM_bypass_clock_y
                          |______|

Where xy can be 0/1, 2/3, 4/5

PWM_clock_x/y serve for the PWM purpose.
PWM_bypass_clock_x/y serve for the clock-provider purpose.
The common clock framework has been used to manage those clocks.

This PWM driver serves as a clock-provider for PWM_bypass_clocks.
This is needed for example by the embedded AC300 PHY which clock comes
from PMW5 pin (PB12).

Usually, to get a clock from a PWM driver, we use the pwm-clock driver
so that the PWM driver doesn't need to be a clk-provider itself.
While this works in most cases, here it just doesn't.
That's because the pwm-clock request a period from the PWM driver,
without any clue that it actually wants a clock at a specific frequency,
and not a PWM signal with duty cycle capability.
So, the PWM driver doesn't know if it can use the bypass or not, it
doesn't even have the real accurate frequency information (23809524 Hz
instead of 24MHz) because PWM drivers only deal with periods.

With pwm-clock, we loose a precious information along the way (that we
actually want a clock and not a PWM signal).
That's ok with simple PWM drivers that don't have multiple input clocks,
but in this case, without this information, we can't know for sure which
clock to use.
And here, for instance, if we ask for a 24MHz clock, pwm-clock will
requests 42ns (assigned-clocks doesn't help for that matter). The logic
is to select the highest clock (100MHz) with no prescaler and a duty
cycle value of 2/4 => we have 25MHz instead of 24MHz.
And that's a perfectly fine choice for a PMW, because we still can
change the duty cycle in the range [0-4]/4.
But obviously for a clock, we don't care about the duty cycle, but more
about the clock accuracy.

And actually, this PWM is really a PWM AND a real clock when the bypass
is set.

This series is based onto v6.19-rc4

NB: checkpatch is not happy with patch 2, but it's a false positive.
It doesn't detect that PWM_XY_SRC_MUX/GATE/DIV are structures, but as
it's more readable like that, I prefer keeping it that way.

NB2: for geopolitical reasons, I didn't re-use the old series that Paul
was referring to.

Changes since v2:

- use U32_MAX instead of defining UINT32_MAX
- add a comment on U32_MAX usage in clk_round_rate()
- change clk_table_div_m (use macros)
- fix formatting (double space, superfluous comma, extra line feed)
- fix the parent clock order
- simplify code by using scoped_guard()
- add missing const in to_h616_pwm_chip() and rename to
h616_pwm_from_chip()
- add/remove missing/superflous error messages
- rename cnt->period_ticks, duty_cnt->duty_ticks
- fix PWM_PERIOD_MAX
- add .remove() callback
- fix DIV_ROUND_CLOSEST_ULL->DIV_ROUND_UP_ULL
- add H616_ prefix
- protect _reg in macros
- switch to waveforms instead of apply/get_state
- shrink struct h616_pwm_channel
- rebase on v6.19-rc4

Changes since v1:
- rebase onto v6.19-rc1
- add missing headers
- remove MODULE_ALIAS (suggested by Krzysztof)
- use sun4i-pwm binding instead of creating a new one (suggested by Krzysztof)
- retrieve the parent clocks from the devicetree
- switch num_parents to unsigned int


Richard Genoud (4):
  dt-bindings: pwm: allwinner: add h616 pwm compatible
  pwm: sun50i: Add H616 PWM support
  arm64: dts: allwinner: h616: add PWM controller
  MAINTAINERS: Add entry on Allwinner H616 PWM driver

 .../bindings/pwm/allwinner,sun4i-a10-pwm.yaml |  19 +-
 MAINTAINERS                                   |   5 +
 .../arm64/boot/dts/allwinner/sun50i-h616.dtsi |  47 +
 drivers/pwm/Kconfig                           |  12 +
 drivers/pwm/Makefile                          |   1 +
 drivers/pwm/pwm-sun50i-h616.c                 | 959 ++++++++++++++++++
 6 files changed, 1042 insertions(+), 1 deletion(-)
 create mode 100644 drivers/pwm/pwm-sun50i-h616.c


base-commit: 9ace4753a5202b02191d54e9fdf7f9e3d02b85eb
-- 
2.47.3


