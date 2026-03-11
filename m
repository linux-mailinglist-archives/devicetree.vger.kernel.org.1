Return-Path: <devicetree+bounces-274323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2O96JqHEsWnYFAAAu9opvQ
	(envelope-from <devicetree+bounces-274323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:38:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C912696B5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:38:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AEC1A302730A
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFA79324B31;
	Wed, 11 Mar 2026 19:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E5ATBm9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5622C0285
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773257886; cv=none; b=duLQfN8nAsFb39rFdkOXJco4wfgT0xZO4LzLYPwr2/GPlLmsQOq7hpV034HRx+ESK+nczGRtlsk05/vxM1L/UBbHsnCrMPkacgVKxGWArxwtNah/znE9q8unsySnydzlE7ce278VPP1DqJmDGLfMKCT83C9zBUM1cmP5nJe0SZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773257886; c=relaxed/simple;
	bh=uk+w+sTtMCxK5SSLAnjnJ8LuG+64ZZOSctjkGQ2I/K0=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=rWdmPUFcJyodjW5zidwgraO8tT5dOKBPY79vqnc/Dav/81dov4Ykt2EtbUsinyNyt6F1/Jx9H3xe6bVtyAAUn4Xo+fHk1vxrMxU+GmTgOk/kGcp0G+UKHFOzzEmeJu5EvCcpfvPVJIjZHinkG1njD9OKnueQSZpkV8l8iyrR4Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E5ATBm9g; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-439b7a87fb5so175670f8f.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773257883; x=1773862683; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+AkwVqaWf8hy65M6kQXD8z5ogodn290MdxFGjaBkgY=;
        b=E5ATBm9gH+pn7du6rh6hllyL+wj/XBoB9c86m2W94wTGwRnsHBTD4Y3oFFGzqux1v4
         H0+18KNUOU7DiOj30VbkZObJCaBfjlEiSgLX4GgaPQAxFy/gKK5QCIWxe7GltJZfjrxu
         8U0Gn2J+1/8jWzA6LFULWxkNraKUZM3quO398k4+s5xpUlvvwbHGMQJ/UcmrEFtdcOTw
         I9TkkJ/KuPpDBUWxHoF/g6HUUv+ZQKR7dRmCpJ50OrtEdIxC5ZTJv2DYZ0Ui77DENU5Y
         7vIp6vodT28GANPPvkBoJ0KkH+4/WBBCOLlMtPngxkX8cGv33GRb77B+qpsp10b2aTdj
         OOYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773257883; x=1773862683;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E+AkwVqaWf8hy65M6kQXD8z5ogodn290MdxFGjaBkgY=;
        b=M5+LOk6zWDviEsnvJrTcIkpFLyfCp2FzvXYXGQ4kuNLpbbo2zEKMA7pfsb8scuIzDI
         Hs23Z9pu1qYateXZZeDahSnQuzBvIf84NtdSULY02V2jzlgR2BB3dXdcJsMrtmUnKHlm
         F+FjfjpUvQwOwLBSwklH20YDew1HfB25eVt/NnXVwn+Vncw6Tr7YsvRMDNOsmb/p2HJA
         27V/wM+cRI/SxuaELNwkxpgurRREIAVvU2hHDm4USoDJJgp1cM0K4IXQIBuj6aP8iMP4
         gr3vg2m4TYnn9XFs9b2JQaYAkKH3DK4p3NGlwND76HGgc3hhJTwrl+08DPmrvixvAbND
         0TsA==
X-Forwarded-Encrypted: i=1; AJvYcCXc6IA/sNkFpH+HidEec4mGNDqW/2qZ7SYW/NODhAmih0sMfPIWPcEjzkAKWJyAnjdSW/uhYCXLfFU/@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0stDmZOXL7jNq+MVPUjsNW1k5Hu+lojRG53OxU5u96c0gvs1w
	xQv4h47RrtMlZ/N5IWez0uicWD/spOjfHHKx+N3/J05RHucfiszOqbIHp3CJWOWMxz4=
X-Gm-Gg: ATEYQzxua+6sq6C8EzpsrGi3OQtgkOjdM4vQ4fthN6kix/LpLwurTctdN11s5wsbiNh
	ijY9hNn3EetlG2BFpv3X3QEBcRt17cC6jXOtLxeC5SOHhGmBmNRlyNmQ3yFYajBIqxk1H4VDcQN
	IJGJ8fFddAKmANlmrJ+Nf+5rc7l8MBay/QcwoohUGVwXQxurWqkHzEluASNBXaecTjKzlu0jLso
	FH5Un37mHPbfxxNp5UgMgNlhs7/mSX1JmtGRrrEcqE+pbdXnyLz88iwgZvN6pheWfflcLmnuUsY
	gYMJi2890xSWP8mdQVwZ+GJ1HKrypAjtnyza0JzNoIzWd2RriypiBvmx3l0YVK1GrfzNZ+9X822
	AiIa9w0N+3hZ+sl5qpSVDjb+gZUm32+KpQoIC/2l41c538EVdVp68bMgwaxxN3fPTq2qYFjIDiB
	v4L+k9gBEnOanGrEMhyua9bhud3Hf/
X-Received: by 2002:a05:6000:1a8f:b0:439:bdd7:425d with SMTP id ffacd0b85a97d-439f8200089mr7617923f8f.23.1773257883423;
        Wed, 11 Mar 2026 12:38:03 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439fe1a76e5sm1426159f8f.12.2026.03.11.12.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 12:38:02 -0700 (PDT)
Date: Wed, 11 Mar 2026 22:37:59 +0300
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
	Michal Simek <michal.simek@amd.com>
Subject: [PATCH v3 0/7] gpio: introduce a gpio driver for SCMI
Message-ID: <cover.1773150895.git.dan.carpenter@linaro.org>
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
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-274323-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,linaro.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9C912696B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This basically abandons my earlier attempts and goes back to Takahiro
Akashi's driver.  Here is the link to Takahiro's patchset:

https://lore.kernel.org/all/20231005025843.508689-1-takahiro.akashi@linaro.org/

In the review comments, to that patchset we had discussed putting the
gpio section inside the pinctrl section.  The ordering problems are a
bit tricky because you want the pinctrl driver to finish probing before
you start probing the gpio driver.  To me it seems nicer to put the
pinctrl things such as pinmuxing in the pinctrl block and the gpio things
in the gpio block.

I updated Takahiro's patch to work on current kernels.  I've had added a
few other patches to make things work on current kernels.  The most
noteworthy change is that instead of calculating the ngpios, I changed
it so you have to specify the ngpios in the device tree.

I updated the device tree spec file to address review comments.  I
changed the compatible to scmi-pinctrl-gpio.  I also updated the
examples to show how pinmuxing works.  I didn't know how to include all
the potential GPIO configuration options so I set
"additionalProperties: true".  Hopefully, that's okay.

AKASHI Takahiro (3):
  pinctrl: introduce pinctrl_gpio_get_config()
  dt-bindings: gpio: Add bindings for pinctrl based generic gpio driver
  gpio: add pinctrl based generic gpio driver

Dan Carpenter (4):
  pinctrl: scmi: Add SCMI_PIN_INPUT_VALUE
  pinctrl: Delete PIN_CONFIG_OUTPUT_IMPEDANCE_OHMS support
  pinctrl-scmi: ignore PIN_CONFIG_PERSIST_STATE
  arm_scmi: pinctrl: allow PINCTRL_REQUEST to return EOPNOTSUPP

 .../bindings/gpio/pin-control-gpio.yaml       |  70 ++++++++++
 drivers/firmware/arm_scmi/pinctrl.c           |   2 +
 drivers/gpio/Kconfig                          |   7 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-by-pinctrl.c                | 124 ++++++++++++++++++
 drivers/pinctrl/core.c                        |  30 +++++
 drivers/pinctrl/pinctrl-scmi.c                |  46 +++++--
 include/linux/pinctrl/consumer.h              |   9 ++
 8 files changed, 276 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
 create mode 100644 drivers/gpio/gpio-by-pinctrl.c

-- 
2.51.0


