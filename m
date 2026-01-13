Return-Path: <devicetree+bounces-254654-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B3B2D1A6AB
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 17:52:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 83D963006721
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:52:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D9B334DB6D;
	Tue, 13 Jan 2026 16:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zuh5SqVI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D706D30AAD8
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 16:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768323149; cv=none; b=sgqCLNrEqiefiZnFVAtqymGoGGym25ldWuKANfyZV+cTO6vUQSDaeEX036di7IP7+ci6Rn0CBkNvzD8uuFHEecB70nmuXix9Sj8rva51nE1HHEn4+v2OwZlojUEMgTkt7lRsbosj/d9kpOwPBdAgFiJYLc+ibqP/XJ48OJKVhRU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768323149; c=relaxed/simple;
	bh=87sM8oKP90w0z33dkwRxWaZIAcg0ysEHSvMr/Qcbr1U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ebsJy+wjqlGXhVzN7DiWP+kaYxK/Igo5pEy1ft/OtqAfPfJJqveAhWTFbe591+n7+rlFS2TkjXjNJWgvA54CVyg3jScPVteJOKoP8ZyfPcN/A/yiCrtZ2nMsvQCTt7hdCQDNu0ejo5fS+qa0wZWWDaKjIj3aLRuoDR1nH5X+aVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zuh5SqVI; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47ee2715254so709015e9.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 08:52:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768323146; x=1768927946; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Pccbmgwn2QEBQTzOfFfVx5vnJQO1AdZUP/7cqVG+l70=;
        b=Zuh5SqVI3nB1f2A6D0Xwke4Uwe7iANDCX52uSozJ/uEowwwbOREqM8UKK7zqgZN4rJ
         9juBxgesr1nARzjrm9Ik/P4KpZn0BjKK1wckKEhT7Npqvm8fDFfPg020JKZ5fFx+zyzw
         BZfi97nYZ2nYmLfIH4xgh2dPCeQao3xGq7LWUfDI1iHujMwvfgeQN1ijs5zq7GDvlNW5
         U+6lBtnzrOkWCBhF8/419BZ0S0qeruKEg7wgaarORgmxw1o8mO42+Vk6N9XYIc+PvaD4
         IoLFNB9U0qvnkH9mp6Rvmxp06jETnrEP9SnZ9YFvu+9QLYXRjWlmUjkP8vbJYUnERv6a
         RA4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768323146; x=1768927946;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pccbmgwn2QEBQTzOfFfVx5vnJQO1AdZUP/7cqVG+l70=;
        b=Qdaq10ulr0a3dJWta1HVnKYXnawRzmzQFHpWjLNgtPeO8Z7G5T46AizMGvriGfRwXa
         ZJ673K/YhkVvhSyKu9A473o0c7RDuvpv0r6U4OT7d6YNqFKdcz/0+AL1C00wtHnik1Ej
         CzNAvB63eXCo5UV36BXDU5JnjwlDIP/RYDdxHI4wPD4Oewm9Nvo+w7UviFJGj1Jj8Yr5
         3n1d4IeL7VZEhJxaz7/zCsJyNfs8onVEN66VGNU2KY3jdbljbWTcuO2M0r9iN8DGdyCG
         32dwqmVG4YjeE1uAWKAa+qfK6Ub+SQWHd/ZDcVGDoh58lFJUZPRGQH2xfHEoHlusNtuJ
         oeLA==
X-Forwarded-Encrypted: i=1; AJvYcCVEgwScytzm8P2CRfLAktXsB7YwBlsV3M6bKPYEWOsJxby2EWL1GxQ2ODSPyAkwZp3aGDLKJjOmmIDp@vger.kernel.org
X-Gm-Message-State: AOJu0Yypeh06JNdbsU7Y5chyN0wFLsnIXjszVJFnG8qj+6SZIh7RIEnM
	1YHH4cXpThwVDN0twc5rEI+dbNkN31/+AqW7NNq6zn1U5y89Wwk0pqcougV7oOew/XY=
X-Gm-Gg: AY/fxX5UvPpbDxAxhwVfFv9qUPQrWlmd8qOcQ/TMX5u6evc34H8HX/IHXveVAQE+vO+
	AXbLV39Mnp90GvfvgcVKpH67WyHmVCjS4nIxAAdaofckH99KhTDMJRf6i189bGUYDsAm3/sNZYv
	1Kz60I58VBn+ezeOLMFklPrTX0gX9vA9AMGhlKnvZVd9H/ONxovIGcTWX2PF/AUPuLBif4xAoh8
	MGHD40F5TYv87lVRxXG8Dq9krlSsXq2zRryn/k0e1a4GFQ9XJeFYSYETB0H3vRozWP3RzC5uHuL
	4R4ykzImwG7YXdz0Nv+z4SmvbOkHp2nHer3H6DjcL9kzhGRKvj8tbvtDCqTxG0lb7ygI/txt2/z
	H1n857IuYSxx7IRYvM7IHzWMMZxq5SkuQad8t95/uccIXOP6c6P625OKlCaOzBChuqTaFM5+fJI
	2BujMpv1AIIZsTp/DbW+nu7ctwb5TrGUw=
X-Google-Smtp-Source: AGHT+IEIp1YZBUlweYWaCnnIBVy0+bF1LqyJ+T0qOr1ZxyTRb97O7yWvJcGGelOgdVfuRVXXKCscSg==
X-Received: by 2002:a05:600c:3114:b0:47d:3ffa:5c75 with SMTP id 5b1f17b1804b1-47d84b31531mr215631915e9.20.1768323146177;
        Tue, 13 Jan 2026 08:52:26 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:3594:70ab:9964:c5ec])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f41eb3bsm431684925e9.7.2026.01.13.08.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 08:52:25 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wbg@kernel.org
Cc: Frank.li@nxp.com,
	robh@kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	s32@nxp.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v5 0/3] Add the System Timer Module counter
Date: Tue, 13 Jan 2026 17:52:17 +0100
Message-ID: <20260113165220.1599038-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 family provides a System Timer Module (STM), a 32-bit
free-running counter clocked from a peripheral clock. The STM includes
a prescaler and one or more compare channels generating optional
interrupts. When used as a generic hardware counter, only the main
free-running counter is required, while the compare channels are
typically unused.

On S32G2 devices, the STM is exposed as a simple counter block that
can operate continuously and be shared across subsystems such as the
Linux kernel, firmware components running on Cortex-M7 cores, or other
co-processors. The counter can be read atomically and provides a
stable timestamp source to correlate events occurring in different
execution contexts.

The Linux kernel controls the STM through a memory-mapped interface,
configuring the prescaler, enabling or disabling the counter, and
accounting for wrap-arounds. Other subsystems access the counter in
read-only mode, making it a shared timestamp reference across the
platform.

This driver adds support for the STM when used as a counter on S32G2
platforms. The device is described in the device tree using the
following compatible:

compatible = "nxp,s32g2-stm-cnt";

The driver exposes basic counter functionality: start, stop, reset,
prescaler configuration, and overflow handling.

Changelog:
	* v5
	  - Use a lockless version to implement accumulated time (Frank Li)

	* v4
	  - Split context structure to suspend/resume
	  - Converted counter to a u64 to accumulate the time
	  - Replaced 'reset' to a count write to reset (William Breathitt Gray)
	  - Added events for userspace (William Breathitt Gray)
	  - Added action COUNTER_SYNAPSE_ACTION_RISING_EDGE for signal (William Breathitt Gray)
	  - Renamed counter name to "System Timer Module Counter" (William Breathitt Gray)

	* v3
	  - Fixed compatible typo "nxp,s32g2-stm" to "nxp,s32g2-stm-cnt"

	* v2
	  - Added Rob's tag
	  ** kbuild
	  - Reordered alphabetically the headers
	  - Added bitfield.h header
	  - Use DEFINE_SIMPLE_DEV_PM_OPS() and pm_sleep_ptr()

Daniel Lezcano (3):
  counters: Reorder the Makefile
  dt-bindings: counter: Add NXP System Timer Module Counter
  counter: Add STM based counter

 .../bindings/counter/nxp,s32g2-stm-cnt.yaml   |  64 +++
 arch/arm64/boot/dts/freescale/s32g2.dtsi      |   6 +-
 .../boot/dts/freescale/s32g274a-rdb2.dts      |  10 +-
 drivers/counter/Kconfig                       |  10 +
 drivers/counter/Makefile                      |  21 +-
 drivers/counter/nxp-stm-cnt.c                 | 432 ++++++++++++++++++
 6 files changed, 524 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/counter/nxp,s32g2-stm-cnt.yaml
 create mode 100644 drivers/counter/nxp-stm-cnt.c

-- 
2.43.0


