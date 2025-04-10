Return-Path: <devicetree+bounces-165254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B11F5A83CD2
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 10:27:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 890811889827
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 08:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6FDE820AF9A;
	Thu, 10 Apr 2025 08:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JHbPptnu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE861FDE31
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 08:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744273608; cv=none; b=BXttYtsnT4YtXDn7VfbhgBlgc5I8g0cpuCGA+m1Q23duIfMlpELcVusf1t2gO7lJHezPT2qIcD9N6mH/0jENJnnHPEaaJLLrsReCXj1u219ckVmReuv5OSVJnjJIw/K1uP3TQ/OXKIqtqIwEAkycHCpXXN8DTaJ0pPnsWjBlaCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744273608; c=relaxed/simple;
	bh=1MwayweBMCGI1FLlKVhQxmnVp9c11rxMnbmLOw/VEXY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=a2xx+KlLnEcUVjeGQGBaX+++v59ZUp+7oVBMzXKy6f8NwSYagoeBqukF7XyAIhU1Dq2/3/EtWeHYX09wYa3riznD9+dBVmRfAt7DEHm9azJh4bFyFYSfpQewYMx/KbmMcdwv9NrMb8iWH08HCOimuBsK5UlntWNrZHaf7TUoeKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JHbPptnu; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf0d787eeso6132995e9.3
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744273605; x=1744878405; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=by0C3qcBJWPP2R5Tts84nwTn6pqrbnhx93UsShQdVNQ=;
        b=JHbPptnuJMFxceSbvazDapKu5L+m0xCVYqqxx4PJC/hk4QM7H6uujswVXqWcG4x4qX
         WJEDDP+7rsQDWT6w13Q26NjzQKEwZ2mjdTLkYdsBiitSvaiPUuLker7d0TWtTjpyhJJm
         mHpxeAcqtHi7wcYEqYmAQEimg1ZaIz4RZM434lWv4H2BkHFZT1GQJjoL1U3td04deZRg
         8CLfk+F9JMOkL+UBIX1ua9Z8MgbUeviEgpXzja4PnkHjxtrVINPbPdm2+BUt3TXEUg/m
         FGdX1vNLss27fT71mVz+sY1G/2yW9TcCj93rNnTuaCD7kr4DRXmw6K5dzzXKHo7GXN4C
         EwLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744273605; x=1744878405;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=by0C3qcBJWPP2R5Tts84nwTn6pqrbnhx93UsShQdVNQ=;
        b=roHqxGb7gGEeZODBxW+R3+wfkt9SUEjFKb02poCv4Q7stZuHveEjYLA5vU9QLBSQol
         hfUg4F9OUyhIZwhwG9qv8Vomh9l2vFqd2FY70OKT8c6P4nZsNKnM8xDoYbIDB36LwdMP
         L/xXpj1/lQz4DYFoDmp7L1Yoj/i4JKhIBtiZZmD+hPMr3b9VO9Vube4MtocgWRVbnJCn
         jQHOxG5tPxBcFc/djOp79DZA9WedL/ek2PLYYKlKuwSNnC5gSHm6DI/3djqkx+YvCT76
         puGuz1EJT4hIJOo0nITv29afZaLd3jR/UX1j9XkTjlWVnMf/MnWcNo/icSizIrSkkz4Y
         WdEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKJjFXzdmDZIee6cWdIrW761P3OVOxkepORUf5/FuDyQADn47X8ACDmV1X+JSguXadTrg6cBwXQ+Jl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6TPnWntLNbLDIlNcUm1w4MilgNCiC/+o1bkPD+1zY2LWJdIf0
	g5EvuibniFfEAgO7xs5jmyA9PfyBBLVnzK3O+xCuzmyT1k9LPEuxQxG1WhHJMjA=
X-Gm-Gg: ASbGncufJcf9k7ItW3s2oXVUD/w2zGPbFq4pKP0MsJN2UyEXLXah1OZGXMqgdcVlLmr
	ueoGKC801rhAufQe/GjBZQZfcYybrqOPZsbpfKjSeq4KrdaAmWaLlE25cal8eZZmO55PehwygOx
	oaHNKt+RWa1f3A0DDCJSTc1M4YO5j6Sxig+FYweBjaFW9Zqs/+8MenL6x+IB/x0AfclWZAMKTuw
	J37YOvbUJM9aJATBCljd/td2e3PMUoxryfM4utuf51yeb/z0qqwbNBwFi//ugnQT6p1FB+zc940
	HbJLlarbcvGlnJ/BqfWSA5duohjgUCMKTGN6eQmoCmPqobytVL3F+YoMu2bD1gBZSiQ=
X-Google-Smtp-Source: AGHT+IFY9hRZTvaafYq2hL5p30TOnetIisE6/GIMeJNcOc0jS1+hW0A56uPnzu4Ixw/+IUcYhD8Lxg==
X-Received: by 2002:a05:600c:1da4:b0:43c:f44c:72a6 with SMTP id 5b1f17b1804b1-43f2fdced9cmr13942095e9.2.1744273604558;
        Thu, 10 Apr 2025 01:26:44 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233a2c84sm42884645e9.11.2025.04.10.01.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 01:26:44 -0700 (PDT)
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
	devicetree@vger.kernel.org,
	alexandru-catalin.ionita@nxp.com
Subject: [PATCH v4 0/2] Add the NXP S32 Watchdog
Date: Thu, 10 Apr 2025 10:26:12 +0200
Message-ID: <20250410082616.1855860-1-daniel.lezcano@linaro.org>
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

 - v4:
    - Update the watchdog timeout when the callback is called (Alexandru-Catalin Ionita)
    - Fix the clocks bindings to have all the clocks described (Krzysztof Kozlowski)

 - v3:
    - Add the clocks for the module and the register (Ghennadi Procopciuc)
    - Use the clock name from the driver
    - Removed Review-by tag from Krzysztof Kozlowski as the bindings changed

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

 .../bindings/watchdog/nxp,s32g2-swt.yaml      |  54 +++
 drivers/watchdog/Kconfig                      |   9 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/s32g_wdt.c                   | 315 ++++++++++++++++++
 4 files changed, 379 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
 create mode 100644 drivers/watchdog/s32g_wdt.c

-- 
2.43.0


