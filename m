Return-Path: <devicetree+bounces-276720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eG+2IPVpuWmZDwIAu9opvQ
	(envelope-from <devicetree+bounces-276720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:49:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2262AC4EB
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:49:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 681323103246
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5C423E8671;
	Tue, 17 Mar 2026 14:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d7WaUk0R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4007F25F99B
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773758421; cv=none; b=uCISDsYVaHGD8rh09SkbFd7IEMDaIb95OVax+2WJxdScObGoKIhZLPP7btYHr/HfiW8bfBmMHXskeqv1paJv+cRdsghJgbMR/dI4gDJ0vzwzWa+v3nLYseHtervGwjQO0ACNB9ovH11Zr4HqtrwVCW1XbTqd3xpqqXUFvXW54Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773758421; c=relaxed/simple;
	bh=/4E+MNf4AmhTXqW1IGhVu7c4HIHNcRISLyU5YN+k+nU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=hcFZoH42GpPFTKyTlZ3s6zuEqs1y3Tcd53rQC2WSLOMjufkNAmp4zWextTAN62imzihiLkFlD9dTxLwuJvcBbWYcJaP70pABNz3N8tIULucwyXxOVsrH+MokxVOsiUn6pyw9MUNLfyMBhSRQ4zfltVyE1CsElUmNzsr3C1Ht21A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d7WaUk0R; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b936331786dso663218366b.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1773758419; x=1774363219; darn=vger.kernel.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5F9q2Ra06tznmx/F5pEf3aEAtRQ3mACpkv9NtbBna50=;
        b=d7WaUk0R+iZzAyFwfuFWUwviPv+mFR4c8mKFsxBQsoEiCXaKCVfMGke0skFU/MDXKE
         zDWqvIdrdHh+TTF0bh4LeB+JPu3zm74xTrGcCuTmnw0BbFFZ/tSQBykZgvefaL06irHz
         jEVDFCdjDhtJPRIZQvNodWz5mbybN5zButKAYNBAOxLfL/aWsMq/OCI3NHZhUcbaJC7z
         k2O1rCm5NVtOl85iRhg/PaB1axBtfGNceAZ6qcy3mjTuOcKTREGeGD/0+CicZ8tAoblj
         GfEKVh2I+NTjuTqqUnlLtQDwP1LT3h+JTCVtsXM0obNjZp9A7Hb8DgEYAp3N7fU0Z6hS
         W1/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773758419; x=1774363219;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5F9q2Ra06tznmx/F5pEf3aEAtRQ3mACpkv9NtbBna50=;
        b=dBcbydYu6bvmONcVNdcx5lJAE9y2e0ixU4Zyh5oBGM6w1W+KzFQOy3sU3KYuH1WuPQ
         ai0T2IMTQ8OnjRp2rrWrsQ0xjSWvChfrs+JCe5f0mfjrRHQ2ei8lu/JVRqsyE+eE8Xgq
         OJhf+lVYTDhQRCr3c+FzUgtl0rIgE6yKHjTMrNYmVFq1j74u57TgtW26vJs7e4S6vlmd
         p0153iU6rumQa8TCjPaqRZPQH/elf17tm7u9Co/owp0YWGPJPFyz/6vdq8XlrdQ60VFu
         yMb5CTVehIQCTXqFQwA1eQxsaaSd2m0EHzfzVyDgXYG/SJmcALvghaoNXCZgmc7Wca4j
         VP2A==
X-Forwarded-Encrypted: i=1; AJvYcCUkRqk0RoW++LvvWpiFjcyXD/H0misSgdkW+VFbluM7ZxL3ub73PZfYGAzMkMfuRN6hRRBMbKveMRVg@vger.kernel.org
X-Gm-Message-State: AOJu0YxCugYlfTHRtrMMl/CXhf0lkG2C7rmCpvtadnQaQzlqlbQ/l3xk
	8Qn46Nkjblb5S+Aoi3mqNzPVjZ4m+zoy+BxeH6I8uMMMhkgTQ+By7W3sWEjfDFeMo7E=
X-Gm-Gg: ATEYQzyMGtOSJs6tqNwGljECjwyW0KocnkiW6/bC/7HD8GH3K+27axOrYZq5+TIdY2M
	PoDpdLQpZ8dD0FF8XKw9e0u68lecxjcZnnV43KauMxPlXgQE6a+lz5lSGE/Ckjo6WjIzxOPzDJL
	ijVTpOvu0/7C1adpOL9O70i89+IsxC0uCcr7me87+J6moMlyVPI5X62npI2auf0ru4xqV3zeVur
	odel54mOHsJk5yF+aK6bU83/WYmK1Z4X20WWT2aaUkE9Cb8MK+DtHpHGe0nz0IIwWeO57hP+CVJ
	42I/mtH214nttYJJzMrgLaQVXjKxC1n9BAmSPumOK1ktvUUhuqzpbcRiS9NTIY+bB+9NJ8CvBR5
	WS1Fh0n884hERyIUm+GfjLzUUq5+91PfDzPKlG6TYvjLp1aIAk4ZL+gAtPbg/c0dOq4HhtaA7M4
	HvQpPNW6Q2AMx1OFRziAzo7ObqjCAM
X-Received: by 2002:a17:907:1b16:b0:b97:a1ca:e100 with SMTP id a640c23a62f3a-b97a1cb2212mr737298266b.32.1773758418455;
        Tue, 17 Mar 2026 07:40:18 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cf380f2sm755059366b.53.2026.03.17.07.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 07:40:17 -0700 (PDT)
Date: Tue, 17 Mar 2026 17:40:14 +0300
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
Subject: [PATCH v4 0/7] gpio: add pinctrl based generic gpio driver
Message-ID: <cover.1773757772.git.dan.carpenter@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276720-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: DE2262AC4EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This basically abandons my earlier attempts and goes back to Takahiro
Akashi's driver.  Here is the link to Takahiro's patchset:

https://lore.kernel.org/all/20231005025843.508689-1-takahiro.akashi@linaro.org/

v4: Addressed Andy's comments about kernel-doc
    Addressed Rob's comments on the spec file
v3: Forward ported Takahiro's patches and added some fixes ups to make
    it work on current kernels.

AKASHI Takahiro (3):
  pinctrl: introduce pinctrl_gpio_get_config()
  dt-bindings: gpio: Add bindings for pinctrl based generic gpio driver
  gpio: add pinctrl based generic gpio driver

Dan Carpenter (4):
  pinctrl: scmi: Add SCMI_PIN_INPUT_VALUE
  pinctrl: Delete PIN_CONFIG_OUTPUT_IMPEDANCE_OHMS support
  pinctrl-scmi: ignore PIN_CONFIG_PERSIST_STATE
  arm_scmi: pinctrl: allow PINCTRL_REQUEST to return EOPNOTSUPP

 .../bindings/gpio/pin-control-gpio.yaml       |  59 +++++++++
 drivers/firmware/arm_scmi/pinctrl.c           |   2 +
 drivers/gpio/Kconfig                          |   7 +
 drivers/gpio/Makefile                         |   1 +
 drivers/gpio/gpio-by-pinctrl.c                | 124 ++++++++++++++++++
 drivers/pinctrl/core.c                        |  31 +++++
 drivers/pinctrl/pinctrl-scmi.c                |  46 +++++--
 include/linux/pinctrl/consumer.h              |   9 ++
 8 files changed, 266 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/gpio/pin-control-gpio.yaml
 create mode 100644 drivers/gpio/gpio-by-pinctrl.c

-- 
2.51.0


