Return-Path: <devicetree+bounces-278552-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CMYLkdvvml1PQMAu9opvQ
	(envelope-from <devicetree+bounces-278552-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:13:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C1C2E4A75
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19B3A30182A0
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 10:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96EF3054C7;
	Sat, 21 Mar 2026 10:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wy8Cjpnl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF2B3033D6
	for <devicetree@vger.kernel.org>; Sat, 21 Mar 2026 10:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774088004; cv=none; b=GbJLIb+CPHEnKXZCBHQdhiTx5C3lL+SzlC6jYFbe/Q1LO/M34UeMdz7lW7yg+Mhxbg6fbj8Z/D8g11tChF7xLHo7kMMLZvaBDRAQDLQF8+yA5xXhxpzVj9ZxoOLSUYmRdWPcKmpQ3HzZRx4kV5UXHD0UocytHRnfIPZ4P4Tikr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774088004; c=relaxed/simple;
	bh=dY1qL4oiruMLLPPOfCTpq/3L4rUbkzScjCoW0ifJR+g=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=RfmE120EVw2g2r0gbDJQsoRb26xwxiMJXlse7jzYLo8jZwjxVHc5egYihTTC6h79e4TpXYtlOH0SRuV2TGyOvLHFKUpNUqoWci17Xw6G4FTYQt5D2cavRpD15JTATjOyH3HYampKJt5eP5upHa5utzFD9xo5XZNp3krCAY45D6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wy8Cjpnl; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48374014a77so25635535e9.3
        for <devicetree@vger.kernel.org>; Sat, 21 Mar 2026 03:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1774088000; x=1774692800; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vxcTJFOmewD2GhiVVB+6YPckSGMQdPbVx332O/W6xHg=;
        b=wy8Cjpnl2Bfu0PsOn4ROCFPXGahT9sjEL53kkUTwk7m0nWUoTg9kbEipScJTgC7BVw
         JR+Jo8HDbHmhuS9t9V7UgVFCu6FXUFCkksveZvahIre6RKfsgm5JC1fYUKB4dSot+NGa
         dtaFbZk1z/o/VI2wua1ssQq+u4xJ9NGg5GU5GTMahrEMKeArdZd0HvRqEI29A+Q6QJQx
         LR1XlipRcewSMUf1C3DNdJcSNGkTin+gvA2nTO9NHNneO44fmo4abzIbg96RxYQ3G3Xv
         miaFRtgU1eof/Xeom7cgViK31C8wdAeQq9ZyDCR653oTAvD4IAa76tM97nj7L/Sw1U+9
         12VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774088000; x=1774692800;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vxcTJFOmewD2GhiVVB+6YPckSGMQdPbVx332O/W6xHg=;
        b=QvBJLPlppVGioRra1h2n1dYqqb14DuI5iotKLIF/DwIw7fptlWW6ZTPk/wPX8ulW01
         QK3zbf3zJKoqpEMp7My6XkgOzQQo2DM9M+0WhH4q9R2L7ZJruUDksh7X+U6x15w7a6Xj
         KNHmatddrrc+4ZkkiUA/RrMreupwkVaiZwA9ZK6d1U+ZNPYOOHvOJeXoazrBfhBa+GcN
         efizhQFuUizRT/c0Am1ZL0eKyv/tHHLHtLW+ik4c9v8Lse2SA7bup0FWLoObG9mSVbs6
         XjzwK/MYr7VjecFOr1ECaGWUU32g067OdIIIJB4h7zPfoL8wpkc5nTRk9DKOhrcIhfRM
         X1cg==
X-Forwarded-Encrypted: i=1; AJvYcCXdGdjUu13jV9PYp1Q4nLsI6ol24b28PXmBAeoH2/PuTWeDcFEk0d0yKkgSmFsBfT8AXqAXSAfVdHA2@vger.kernel.org
X-Gm-Message-State: AOJu0YwZCVbEDqhwG/k8uqyHTUtUu4iwv+h5ImhzQ49LyA1MZWbb1pcG
	Ufpen/xup/1L5Zb1jrqG6UrAMVGgG2FSxg+AFnDm81ODCQrkCL58s4a8V+4mUX17iEs=
X-Gm-Gg: ATEYQzxqqZmOGdI1xK/yScCRc5fznX4cTfSSJjDZJCvYzaobS2J98oL8reJHhDfMW94
	tJQNoOS154qId4Ri80NkObiqsxqgm2IzYFP4TYpBLEieCoLOIoANxDX3dEnCGSf96qBsGFLzneS
	y3IGG4HKTq+4a0OwuZJB0vCrgMOaelJ1J2+05uRkkMZV49y5cDImq97CYZwLnE06pD7bBsJpmRF
	jzHDjkq8jupCsPIyJUGNz6kWBLOxovMt1IiiiZwlIbOkwuu8Qg9Vv1Bg1VX54K6WHD0WnpLCX82
	uNuUgCZpdnnbaEpkhRJA0Guz88areip+CTonktZ3MuDdRDJCb1OwhhgcvK2MYoq7eSHWRR7QVP9
	v8k4TFqRLfKMMjGNG84JmzE4605yes8GshFSI/pILXHiPB8A9bYbl2R6fV5LMTYSE9efNjJT4qu
	xyQcRhXS/4y1EmxA4ntV8fC/6im1NU
X-Received: by 2002:a05:600c:3490:b0:487:300:d9ca with SMTP id 5b1f17b1804b1-4870300db54mr39007055e9.31.1774088000252;
        Sat, 21 Mar 2026 03:13:20 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-487031790fdsm68147015e9.3.2026.03.21.03.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Mar 2026 03:13:19 -0700 (PDT)
Date: Sat, 21 Mar 2026 13:13:16 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Linus Walleij <linusw@kernel.org>,
	AKASHI Takahiro <akashi.tkhro@gmail.com>
Cc: arm-scmi@vger.kernel.org, Bartosz Golaszewski <brgl@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Dan Carpenter <dan.carpenter@linaro.og>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Khaled Ali Ahmed <Khaled.AliAhmed@arm.com>,
	Michal Simek <michal.simek@amd.com>
Subject: [PATCH v5 0/7] gpio: introduce a gpio driver for SCMI
Message-ID: <cover.1774087290.git.dan.carpenter@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-278552-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dan.carpenter@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: 31C1C2E4A75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This basically abandons my earlier attempts and goes back to Takahiro
Akashi's driver.  Here is the link to Takahiro's patchset:

https://lore.kernel.org/all/20231005025843.508689-1-takahiro.akashi@linaro.org/

v5: Addresses Andy's cleanups to the driver.
    Adrresses Krzysztof's comments about the dt spec file.
    And almost all the subsystem prefixes were wrong.

v4: Addressed Andy's comments about kernel-doc
    Addressed Rob's comments on the spec file

v3: Forward ported Takahiro's patches and added some fixes ups to make
    it work on current kernels.

AKASHI Takahiro (3):
  pinctrl: introduce pinctrl_gpio_get_config()
  gpio: dt-bindings: Add bindings for pinctrl based generic gpio driver
  gpio: gpio-by-pinctrl: add pinctrl based generic GPIO driver

Dan Carpenter (4):
  pinctrl: scmi: Add SCMI_PIN_INPUT_VALUE
  pinctrl: scmi: Delete PIN_CONFIG_OUTPUT_IMPEDANCE_OHMS support
  pinctrl: scmi: ignore PIN_CONFIG_PERSIST_STATE
  firmware: arm_scmi: Allow PINCTRL_REQUEST to return EOPNOTSUPP

 .../bindings/gpio/pin-control-gpio.yaml       |  59 ++++++++++
 drivers/firmware/arm_scmi/pinctrl.c           |   2 +
 drivers/gpio/Kconfig                          |  13 +++
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-by-pinctrl.c                | 101 ++++++++++++++++++
 drivers/pinctrl/core.c                        |  31 ++++++
 drivers/pinctrl/pinctrl-scmi.c                |  46 +++++---
 include/linux/pinctrl/consumer.h              |   9 ++
 8 files changed, 249 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
 create mode 100644 drivers/gpio/gpio-by-pinctrl.c

-- 
2.51.0


