Return-Path: <devicetree+bounces-139026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8757A13B7A
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 15:01:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CD123A97A2
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F3122A80D;
	Thu, 16 Jan 2025 14:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kRs+2MTD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9723BBC5
	for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 14:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737036061; cv=none; b=U+bAp1lYAZAEt6B84IgQUqR72Ev6UaLfb6lnCO4sGD+N4vXn50JVZRIJhl/NxAuxjS5WBEbjieb/l5EKLe1/3EGm2bo858vBORSCSNqr6gT2U5ekXstDngcBjopeiJ/iJg+vJeB+iqjxL23Ni6K5Wsf9NAJgntv+Fh+xZSBttu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737036061; c=relaxed/simple;
	bh=LteApP4zcbsVRTQ1/uJvfFgoPA64q2wMDamS3o6c6HQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=dvM8j20R1CIBb4BxYnl+VY8hyxyXjAxLNE3MxCiEAewFtiLJQ44ZVUMHkQd1Fp6JLDq4fjFNKzdyMX6QCoqayYpfQoTput50bgL/b13C5Pa2N7omuo1j/oSYaCuYxc654Svd9o6MvwlEvVVAolM46LFj+QSW+Vs93F+IH9fRzs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kRs+2MTD; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385e1fcb0e1so522225f8f.2
        for <devicetree@vger.kernel.org>; Thu, 16 Jan 2025 06:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737036058; x=1737640858; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ws4SAtnqVk3JJRFt8cX2ALHU3VzFIfyLR+RfsV5IUkA=;
        b=kRs+2MTDoQEcxTp0xtQs350At+PbMDzuzKeDt2e2A5neaA2koGQIB09GKhhBXdQRmX
         cTXUizVAztIE48WMkAOkq78cguYRb6at/pN0BAoYIA5+YUqhqVuwotHsoVYtItRWXkrZ
         T/j2CD7NJaG05KT0OU41zGZ2Yf2RHTmTPhQd1Gz85SkJyyxtjtQJ90QAMLldqDfb4G8Q
         Kx5QZkz9O41z5l11e3G7q7/alms/ewBEwTm3B3iYSBNDg94FzPhWg4sXHtTkKUjED4fv
         gqpKNj4mtXi1BmOVD8XMvbI4+EM0yH1hTpJ2ajJiKY4BxIs/f6aYsGvDwRaYKnsMSxKX
         8CfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737036058; x=1737640858;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ws4SAtnqVk3JJRFt8cX2ALHU3VzFIfyLR+RfsV5IUkA=;
        b=CeSYr93eKZ3LyYpsb9urOTzn0huS5Ch7d2wVDAF7c2fIQMZf0f/gEuswFapUS0v+hl
         m7P22Qwxr8O1HN0Y5KwfmF9mefp2IuQMCZ4/kCIAg4zW2NfYWz6exQFWvBI266/4aRg8
         DNPJ6h/8qg6Ft4vaVe0rsv69EzOp+jhIhp4mqddLdTP8PochSFECG4ioyztNkGy1kma+
         9qijQE3JiDrAn5Iyuc+vX/L74bSOzud0hBP/1A+9ZBA/3KsifMBAAIGmRWaz3lNQeGKS
         mQfV6BAatmRqbPu0g5QcCR11D8NZlM0NSIztEMbwYcHRT5+tEJ5OMUBf68tvVhFal54U
         871g==
X-Forwarded-Encrypted: i=1; AJvYcCWYoOHWPRrsOqwH0y2mWlrWdcgKmTftQ3nU7/dx18EIzV32681qjhDIvWIYR1RbwHx5cQ0RNWj1PPRW@vger.kernel.org
X-Gm-Message-State: AOJu0YxMqj/RAMqjrCuLLsS2V/HFO3rdNjnpoz1YOR0lveuB2NoliMJd
	lEyo86tqZ7W+NLCt8Ywgw8TiiggWLPPTpkTxxcYQVKSS5n+hGy/CoFQ22JH1+52bZyoQCLXXwnw
	joww=
X-Gm-Gg: ASbGnctkFD1XuIhmlXWU5jo4tcU5YpLXoyO2/xPQPY1Y+1noacaXVekgD0UxjfP9VTl
	g/ytJ+MMbX2Ffog2XcZPaayVHPoG0bS/lZp6cK9kLrJc6LWKK7SXc2N/2EjygGn8XgKLnN6Sn/I
	UjQXuuS4WpNnqp+/u/cgYmjtAY2EvrnIOu+F1uJhfOVv1HSo2qvZu4mdfxilP3nQhZdKERVZ3+w
	0j8wOX8smpMYgDQHyj06bapc+TzEtjVir4PAIFO5w8mADFTuq6EeF9XKRIi5S8fOBwGoolzRa5j
	ZuBgZ+RWki1/rZf9IGt0a1k9RDC2bSYpzdvL
X-Google-Smtp-Source: AGHT+IGvPpadg+sm2kz/lWWsYo0WJDEriL7Nq/FH6l40zZe0/JitnmHWqWE3rExPsJ2BeJZejP/++A==
X-Received: by 2002:a5d:47c4:0:b0:385:ed16:c8b with SMTP id ffacd0b85a97d-38a87309d21mr13252241f8f.23.1737036057866;
        Thu, 16 Jan 2025 06:00:57 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e4c1f2esm20608846f8f.98.2025.01.16.06.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 06:00:57 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v6 0/3] firmware: add Exynos ACPM protocol driver
Date: Thu, 16 Jan 2025 14:00:46 +0000
Message-Id: <20250116-gs101-acpm-v6-0-e3a2e1a3007c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAA4RiWcC/23MQQ7CIBCF4as0sxYDI9DoynuYLqACnUShAUM0D
 XcXu3b5v+R9GxSXyRW4DBtkV6lQij30YYB5MTE4RvfegBylQOQsFMEFM/P6ZFyOZ0RjpVYS+mH
 NztN7x25T74XKK+XPblf1W/8yVTHOpEdtR29PXvnrg6LJ6ZhygKm19gXM/SBZpQAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jassi Brar <jassisinghbrar@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 andre.draszik@linaro.org, kernel-team@android.com, willmcvicker@google.com, 
 peter.griffin@linaro.org, daniel.lezcano@linaro.org, 
 vincent.guittot@linaro.org, ulf.hansson@linaro.org, arnd@arndb.de, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737036056; l=5682;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=LteApP4zcbsVRTQ1/uJvfFgoPA64q2wMDamS3o6c6HQ=;
 b=mvqtpSWI4vh5OK6pHgJO25ZAAu0w2S2HUM/W7V627Vh/ETlHIteDoj7ATOvHSqSRmwPFJw28K
 PWxuhzyDwRNBjFz+j6Nq4CybhFiDvppnqWSipBJPXz3cMVzWbvV/HqL
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Now that the channel identifiers are passed through 'void *mssg' in
mbox_send_message(), this driver needs to know the message format the
mailbox controller expects. In order to not introduce a build dependency
on the mailbox controller message format, I chose to use here a
temporary 'unsigned int msg[2]' instead of 'struct exynos_mbox_msg'.
Will switch to the message format struct after both drivers get in
Linus's tree.

Description and change log below. Thanks!
ta

Alive Clock and Power Manager (ACPM) Message Protocol is defined for
the purpose of communication between the ACPM firmware and masters
(AP, AOC, ...). ACPM firmware operates on the Active Power Management
(APM) module that handles overall power activities.

This protocol driver provides the interface for all the client drivers
making use of the features offered by the APM. Add ACPM protocol support.

Changes in v6:
- Kconfig: s/depends on EXYNOS_MBOX/depends on MAILBOX, build time
  dependency.
- exynos-acpm-pmic: constify tx buf, make acpm_chan_id unsigned int,
  u32 cmd[4] instead of u32 *cmd on function params.
- exynos-acpm:
  - drop acpm_memcpy_{from,to}io32 wrappers of __io{read, write}32_copy.
    Right now unailgned accesses can not happen because the only
    protocol implemented (PMIC), uses on stack u32 buffers.
  - constify xfer to make it clear that the caller keeps ownership and
    must ensure it is valid memory through the entire xfer time.
  - rework acpm_get_by_phandle() and use try_module_get and device links.
    With the device links, when acpm is unbind, its consumers are unbind
    first. Thus the acpm drvdata will be destroyed after there are no
    consumers alive, there's no need for kref. try_module_get() is used
    because we'd like to be able to delete the acpm module only when
    there are no consumers left.
  - make 'struct acpm_xfer' private (move it in
    drivers/firmware/samsung/exynos-acpm.h). Get rid of 'struct acpm_msg'
    and use 'const u32 *txcmd'
- bindings: add Krzysztof's R-b tag
- Link to v5: https://lore.kernel.org/r/20241220-gs101-acpm-v5-0-4f26b7fb3f5f@linaro.org

Changes in v5:
- depends on:
  - Link: https://lore.kernel.org/all/20241220-acpm-v4-upstream-mbox-v6-0-a6942806e52a@linaro.org/
  - it uses the newly introduced mbox_request_channel_by_args() API
- dt-bindings:
  - drop redundant binding word from the commit subject
  - remove extra blank line and update example with by complying to
    #mbox-cells = <0>;
  - drop Krzysztof's R-b tag as the example was updated.
- driver:
  - channel identifiers are discovered at runtime, use
    mbox_request_channel_by_args() instead of specifying them in DT.
  - don't call mbox_free_channel() for PTR_ERR or NULL channels.
  - introduce common method to init xfer
  - rename guard name from __EXYNOS_ACPM_MFD_H__ to __EXYNOS_ACPM_PMIC_H__
  - stop exporting devm_acpm_get_by_phandle(). We'll export the symbol
    once a client is introduced.
- rebase on top of v6.13-rc3
- Link to v4: https://lore.kernel.org/r/20241212-b4-acpm-v4-upstream-firmware-v4-0-3f18ca64f1b9@linaro.org

Changes in v4:
- rename bindings filename based on compatible
- bindings: drop nodename
- bindings: drop mboxes description
- bindings: remove initdata-base prop, and define it based on compatible
- bindings: move additionalProperties after the required block
- bindings: drop firmware node from examples
- bindings: drop unused label in examples
- bindings: rename node to power-management
- driver: switch 2 macros to inline functions for readability
- driver: add checl to avoid shift overflow on these inline functions
- driver: use ktime_to_ms(ktime_get()) to record ktime
- driver: use the default non-relaxed IO accessors
- driver: remove atomic handling
- driver: remove stray of_match_ptr()
- driver: move header in include/linux/firmware
- driver: make sure to, from are 32-bit aligned and count is a 32bit
  quantity before calling __{ioread, write}32_copy
- driver: reject IRQ channels (not supported yet_ at the top of do_xfer,
  instead of when waiting for response.

Changes in v3:
- decouple the mailbox controller driver from the ACPM protocol driver
- address Krzysztof's eview comments
- add ACPM PMIC protocol helpers

v2:
https://lore.kernel.org/linux-arm-kernel/20241017163649.3007062-1-tudor.ambarus@linaro.org/

v1:
https://lore.kernel.org/linux-arm-kernel/20241004165301.1979527-1-tudor.ambarus@linaro.org/

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (3):
      dt-bindings: firmware: add google,gs101-acpm-ipc
      firmware: add Exynos ACPM protocol driver
      MAINTAINERS: add entry for the Samsung Exynos ACPM mailbox protocol

 .../bindings/firmware/google,gs101-acpm-ipc.yaml   |  50 ++
 MAINTAINERS                                        |  10 +
 drivers/firmware/Kconfig                           |   1 +
 drivers/firmware/Makefile                          |   1 +
 drivers/firmware/samsung/Kconfig                   |  14 +
 drivers/firmware/samsung/Makefile                  |   4 +
 drivers/firmware/samsung/exynos-acpm-pmic.c        | 229 ++++++
 drivers/firmware/samsung/exynos-acpm-pmic.h        |  29 +
 drivers/firmware/samsung/exynos-acpm.c             | 767 +++++++++++++++++++++
 drivers/firmware/samsung/exynos-acpm.h             |  23 +
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  49 ++
 11 files changed, 1177 insertions(+)
---
base-commit: 5bc55a333a2f7316b58edc7573e8e893f7acb532
change-id: 20241220-gs101-acpm-047922ab4654

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


