Return-Path: <devicetree+bounces-162638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 017C5A79269
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 17:50:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6C3D13B5C5C
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 15:49:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B80E17084F;
	Wed,  2 Apr 2025 15:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RFoiOwtW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D88BD1519A0
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 15:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743608997; cv=none; b=C6ytvHmzT5jwOWa4H0IeKo2acP6e4pFlZKuj1Us/03nxg0oczmvxIYpWvPwtkn3P0ePYd8HOLyOtJyvlrtJekxQdvZAb7q+K7hD3FURjO1CE1DHYrhAQdMXeMflOHzUYS+AV72HFCpvdHyxGGhwd9BQZYQry3cYdBJEpmbh7/gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743608997; c=relaxed/simple;
	bh=PasM5YaQBRCOTlF0h7ViV2MKKK4sOojopu+VEkTaWWM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z5u2KmSQ8m1NJMFu05BV65Z+kvxb9JwSZMiIvj6gVMi69i4pOc+V+e6YyDj0Npk7Suzvn1q6kds9KSx1gn8IrqYBnCTYC/s0UFcPmt8/Gh4m/3By46iOnQiK+a29H7wilUDE0yBIaj3dJTDBiEDbtZmCzBUx4CDZmpmQ8plMzA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RFoiOwtW; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43ce71582e9so50999845e9.1
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 08:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743608993; x=1744213793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Bqn9BbeSUizG/y07EEBC/bR/zNHBJe7SEgbqhMAefw=;
        b=RFoiOwtWknbL9vm1iOEJIzsYvooSv+eLWc5YG9jur2zZ5qevqJ+mECG6PkAklnkeyZ
         ydBbMN49K7x6raYsN7TNBqd9ys+9UKHUxsqzWmhrIe0XYj5gkziiKP118QIWQgzRM4NP
         uKfoYflCr/H+8kWl721RMGJqhIub/sdOIrXpxx/6AmEWuM3JhxlAvmtC9KVKWALL3yDo
         Kn4iRHsB+mHTkn9AWqP67EBNuejiYqlZrrPKIfp6/lJrPNyftl1CQ+sI2uo4MCGtPAK1
         0KVmiJCFQ2+Zev2dZNl5t+vvAcmwryl5idd2jONTF7dfNYgLJQQqtw402aEBMkfd4kZD
         spNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743608993; x=1744213793;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Bqn9BbeSUizG/y07EEBC/bR/zNHBJe7SEgbqhMAefw=;
        b=OTlUjNzOIdaXqyc410IIE5sOwQaGnEixzRzZrg/xEfLQbkZ7zLBXsohzRK77XPJ7pH
         ob6ZcacIK/IbEMd0isaF/omkuAxl+2++8r6RJhHSbiLTAL+lC8ByvFIno36sGg51hkv+
         Pv8vuBSevy3eLJ6ifdMuv8NJeZO2JgI6U6OHtkM5GL1ID1ChCzbCNru4QebQ2LiMCubT
         mu0XMPbqgXAguOrpup33M/EZcQWOCwp8i3+HsKapkgAdwuZtXuHh0eAtZ6OmxNyHV76K
         F/DX0SXGa6E+e83EtQ23lAHH1qkQpktn40KhnztONaEArc14EODGJ4qAYJMFwreia+YT
         tOqw==
X-Forwarded-Encrypted: i=1; AJvYcCXF/yF4o3kyh4vHphgS05wFl/ixcRapmU4zUeJlppAJMUWR7bYH6vvwvy0TvrpTe0pg+BxVwGVJMkBg@vger.kernel.org
X-Gm-Message-State: AOJu0YyjP38i22Hp9D9MV9lS+uhBDklJtUzwcNOWGn+F2U42/seIsyUb
	qQB1y+69PPgjLUSTkvw4xEITyN3ObFy5gmqRn0NAUlgHpvoKCd1KefBaMqgzTNo=
X-Gm-Gg: ASbGncueyGmffqqUHcuN0Kd0QV5rPHdJqVwTDBf2xNFob5gm0K0nrwNcbOM5BzactaD
	3VxzydiZ/aXILlBrSr+Y+8/FvZMmrzbLrEA5hhSP8AM9+n+eHZxDjsiJWYNu0dlydkkvdy3axRY
	0+Eh2fG3cboNlgVY4B74kv3baWUzvVBg0DUxFh9I/x2H0nFRyGpmenWJdryG/+DPXnLqEdyqCgp
	t6Me0tsctH0gAAFW8h3lGRj9efj9hj0NXIMmt7D4o7hH14AD7MaWc8N0WIm/9+RVwHw1895DXu8
	b84Kr7m1TFacQ/FfyY8JSxMe8QRTrQ07AG7rgRsdm7+USCDzeIeAVXE7bpA247hg3B9THog=
X-Google-Smtp-Source: AGHT+IEZ/EOF+JRXdK+jXCO4XGHidXIrT+gdu+fSLqMc/ZMnNAQHSkb0GwK5dwOyPteuXVEFCqvVHw==
X-Received: by 2002:a05:600c:4f0e:b0:43d:abd:ad1c with SMTP id 5b1f17b1804b1-43db61b3623mr144309085e9.6.1743608993165;
        Wed, 02 Apr 2025 08:49:53 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43eb5fd1194sm24674555e9.11.2025.04.02.08.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Apr 2025 08:49:52 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: wim@linux-watchdog.org
Cc: linux@roeck-us.net,
	linux-watchdog@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	S32@nxp.com,
	ghennadi.procopciuc@nxp.com,
	thomas.fossati@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/2] Add the NXP S32 Watchdog
Date: Wed,  2 Apr 2025 17:49:38 +0200
Message-ID: <20250402154942.3645283-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The NXP S32 watchdog, referenced in the documentation as the Software
Watchdog Timer is actually a hardware watchdog. The system has one
watchdog per core but an assertation does not directly reset the
system as this behavior relies on a particular setup and another
component which is not part of these changes. However the first
watchdog on the system, tied with the Cortex-M4 #0 is a particular
case where it will reset the system directly. This is enough for the
watchdog purpose on Linux.

The watchdog relies on the default timeout described in the device
tree but if another timeout is needed at boot time, it can be changed
with the module parameter.

If the kernel has to service the watchdog in place of the userspace,
it can specify the 'early-enable' option at boot time.

And finally, if starting the watchdog has no wayback then the option
'nowayout' can be also specified in the boot option.

Changelog:

 - v2:

    - Removed debugfs code as considered pointless for a such simple
      driver (Arnd Bergmann)
    - Replaced __raw_readl / __raw_writel by readl and writel (Arnd Bergmann)
    - Reordered alphabetically the headers (Guenter Roeck)
    - Enclosed macro parameter into parenthesis (Guenter Roeck)
    - Fixed checkpatch reported errors (Guenter Roeck)
    - Clarified a ping on a stopped timer does not affect it (Guenter Roeck)
    - Used wdt_is_running() to save an extra IO (Guenter Roeck)
    - Fixed a misleading comment about starting the watchdog at boot time (Guenter Roeck)
    - Replaced allocation size sizeof(struct ...) by sizeof(*var) (Krzysztof Kozlowski)
    - Drop old way of describing the module and use table module device (Krzysztof Kozlowski)
    - Replaced additionalProperties by unevaluatedProperties (Rob Herring)
    - Removed the DT bindings description as it is obvious (Ghennadi Procopciuc)
    - Fixed DT bindings compatible string (Krzysztof Kozlowski)

 - v1: initial posting

Daniel Lezcano (2):
  dt-bindings: watchdog: Add NXP Software Watchdog Timer
  watchdog: Add the Watchdog Timer for the NXP S32 platform

 .../bindings/watchdog/nxp,s32g2-swt.yaml      |  42 +++
 drivers/watchdog/Kconfig                      |   9 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/s32g_wdt.c                   | 313 ++++++++++++++++++
 4 files changed, 365 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
 create mode 100644 drivers/watchdog/s32g_wdt.c

-- 
2.43.0


