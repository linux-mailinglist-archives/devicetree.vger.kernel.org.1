Return-Path: <devicetree+bounces-143991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 729DCA2C723
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 16:30:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4BDB81629AD
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 15:30:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A77DC1EB1A7;
	Fri,  7 Feb 2025 15:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oouuDkjL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA511EB1AC
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738942196; cv=none; b=P2kS/0bFJIH6K8/pkSffwDHOHjKIoawyqrKL/jW+oMsKKxaDCGYCPBAZr71s9p+YdvgCmFDPrqnpiAQ6wOAVEp7Dh55Y2JgOOXkNaChKu1NgJmZQv4MSmV5YMCZC7tiCErPuaw9Jnn5+mwoxGdzar/k4mbxFVh4VBGBM8khGeBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738942196; c=relaxed/simple;
	bh=AyOjqptG1CCXHI+5Rg2T5T4EjrErcQnovY1byDNXtb8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Vs6xe4f499FSvDeOwZlaR9ZWNeJoLifqfqB9LE/oYQKBEVY6bUi2A7dHD6f+FQmWjWID20pDAvWVnIfOPtCe/xzLgWkwUNOTULtLZBblXIApcRkPM4RLe1dgh0gCebqWUwJdHwOgb1gz/aULYayrgyLWaUYDL8/GGk91kleTbG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oouuDkjL; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43635796b48so13547805e9.0
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 07:29:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738942193; x=1739546993; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EuYjo4JUI+V0W3/HuzUdoJL4i7PKJSWth5jlL0TRFTk=;
        b=oouuDkjLti1xXLvs9+8UWe9XhK11p9CLgX59HXYHT3eEBC1kKQXpuDd+sG7u4Cqf0m
         TtjQbchAI52NgpUR56VR82B3AritfdUJ9v1MJ8oEDyfXhvJ0ArMNpSAhtcMwT4YjwqGf
         G7a8lUz2tGnDLx29jdrrhwj9aOq+fp1BgiWrubdn+tr9TPpBxULwOiby5M4yAJgxeSZQ
         LIyX4mFPEVjgGe42SEl2RNdiDbEp6BZAJTpUou4F3Xw1nq4S2c68cyyDfKYwt17BldNV
         T+J1umkryFJfQ5DHbglCkuTZtHy/MHl8jAZCleBJJDn/mYkpILrBrzQq4wjHhX8EspOj
         Btdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738942193; x=1739546993;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EuYjo4JUI+V0W3/HuzUdoJL4i7PKJSWth5jlL0TRFTk=;
        b=bePXqo20PYEhzHPXa7oof0I9INv/RKs40h+GbA/9z4ouRdo2ejaVtODFeaIKOWu1FV
         FQrXRTZLHT2E2EvCy3nZ5RKwTJVOWZvXYVUqhXhKhOoTpfm0+dlwWaVd7Jim/hUX2TKf
         oMnPv7Yi8ChPEE1cBUY0uEVT7vdUphJ9RkY8w7SI1eayQTw318/oIkhRP3MREBtaqCK/
         mfiCY0LhqF00+Eq6LQGZUJJMT8vM2ir1Ii55McTGWkxmK6S7ReLDsJMd9DVyLgJFt+px
         28xH7R1cbDWLXfRUfxA2V6IVu81lIlAHrrbvLIcva88N7SKhriVdl4lYQ0VJUzSKEunH
         kWYQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0ulfBZtR2muQ0wlAx7L19VlHmCt4xBG5yr0D85suoYbYcsVF+9LlSRjg3VVmeSCqHN07Nsti3Jvse@vger.kernel.org
X-Gm-Message-State: AOJu0YyzF8zQpUeC0KdUJjWWEBpqBPo2+IxiQ/4vw3iV8temNGxsektY
	HmyYL0+gimBfYaUeaLQkOBD6xLBwmN9E/fPKyAv2wakZKFbOGHoueCxlLUgtVec=
X-Gm-Gg: ASbGncs2UJSfhn+AauysAVmcdG4xd6lzx+oCsmEcMsKbL/kjsriRfg71rAJc9peMSlq
	f9wEwqaX3jx9k5roQHpe25JMZrIVxnF7OqCBx+Jabc/QItUqDMcJEnHPbXZjjGo5H3nSJ+Kn/EH
	2M3TWRiCnKDMyhgqjWrGAFMG35mefPwj8Y0WfR5aH0iXqfeoQ9v4Yhcd7i01MyjiCrtJU+4kkcg
	vEfIiEuL7bw5nJczL3OBy/FYGC0pWW1ryPnOLPSmbawiip82ubxSIloRgRAph9g4kNRlanZxxOi
	ShzdhYLXGPWdXZTA3pH/LZss/eqSOzjjraBcmlJ5eHXyVgFJvVoi4cETo+2ufj/x4/XIm3s=
X-Google-Smtp-Source: AGHT+IEyrqdIiXOe3BZgpVf7BRpZeU8Rj8m6AcURTfGve5w+fnKmbz6AYm2NAheZilOv2kTd5uUz2Q==
X-Received: by 2002:a05:600c:1f0b:b0:434:9e17:190c with SMTP id 5b1f17b1804b1-4392529f3a2mr23842345e9.0.1738942192661;
        Fri, 07 Feb 2025 07:29:52 -0800 (PST)
Received: from ta2.c.googlers.com (169.178.77.34.bc.googleusercontent.com. [34.77.178.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4391dc9ffd8sm57141905e9.10.2025.02.07.07.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 07:29:52 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v7 0/3] firmware: add Exynos ACPM protocol driver
Date: Fri, 07 Feb 2025 15:29:46 +0000
Message-Id: <20250207-gs101-acpm-v7-0-ffd7b2fb15ae@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOompmcC/23MSwrCMBSF4a2UjI3c3OaBjtyHOEhq0l7QpiQSl
 NK9mxYcFByeA98/s+wT+czOzcySL5QpjnWYQ8O6wY6953SvmyGgFIjA+yxAcNtNTw7SnBCtk1p
 JVsGUfKD3Frve6h4ov2L6bO2i1vdvpigOXAbUzgTXBhUuDxptiseYerZ2iv5ZBULondXV+taiF
 7YFMN3OLsvyBYfQUbPhAAAA
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738942191; l=5811;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=AyOjqptG1CCXHI+5Rg2T5T4EjrErcQnovY1byDNXtb8=;
 b=S+mD91AuVIpuztF1IMBzbkM/81nYBhcVkeCR34Ma7BXeUmhZDzTtNJRVCBui+wkGCmG6g3JOb
 ftFUxk2iibhAsFlC06/nMU6HWH37p3jIwL9V9gcRBoVxs6dLjY6QUKs
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Alive Clock and Power Manager (ACPM) Message Protocol is defined for
the purpose of communication between the ACPM firmware and masters
(AP, AOC, ...). ACPM firmware operates on the Active Power Management
(APM) module that handles overall power activities.

This protocol driver provides the interface for all the client drivers
making use of the features offered by the APM. Add ACPM protocol support.

Changes in v7:
- drop device_node cleanup because it missed initializer and didn't make
  things much smaller. Call of_not_put() after we're done with the dn.
- pass the property name containing the phandle as argument to
  acpm_get_by_phandle(). This lets consumers define their bindings 
  later on, when introduced.
- fix typo, s/acpm_dvfs_set_xfer/acpm_pmic_set_xfer.
- now that the exynos mailbox driver is in v6.14-rc1, use the
  exynos-message format for the message passed to the mailbox
  controller.
- Link to v6: https://lore.kernel.org/r/20250116-gs101-acpm-v6-0-e3a2e1a3007c@linaro.org

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
 drivers/firmware/samsung/exynos-acpm.c             | 771 +++++++++++++++++++++
 drivers/firmware/samsung/exynos-acpm.h             |  23 +
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  49 ++
 11 files changed, 1181 insertions(+)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20241220-gs101-acpm-047922ab4654

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


