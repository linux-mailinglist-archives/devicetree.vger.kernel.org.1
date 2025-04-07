Return-Path: <devicetree+bounces-163870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 946DFA7E5FE
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 18:17:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC59D3B2CFD
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 16:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913832063DB;
	Mon,  7 Apr 2025 16:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TrHQ87mJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEFF1917D9
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 16:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744041816; cv=none; b=rcCneIEcGkDG0+FD4wX5amTWnt8AuwknzNRiNlqlQC262UfUzZOKS6R/9Pzh8QVobDLTP4rB/tZEzao5x60PHzP+cN2GniNnCzdmCAltBPliiV1tnnsm1c6GKkhXiN7qCO6K7tCZLfM/YHP1Zi12z6qE+xdFv4KLyD8yK9HVV40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744041816; c=relaxed/simple;
	bh=1z5coohKCAy18YJrpW1n9XP0W7BqvNtsMS+ALKwtsNA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Kg6VtJ/UKAqHiKZC2Kwspr+ZbyHk7gEfX8sLGT58QZdOSLKzItkqCH+Pi+0KSw3/U1so0r9Uj+LcDpwqy9Y2BCPivVW7/o9dJWvEoaSpIR0Hn4biFFOWDWwllvigXXmghbI1jcNfnWQWN5wQxA++9Y/ldiR/7mX55oM4jnvgC1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TrHQ87mJ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3914bc3e01aso2754745f8f.2
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 09:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744041812; x=1744646612; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TiStBVa5XzJJaIZh/XlbDgxRXeOzZkZMSa77cVqU2Rk=;
        b=TrHQ87mJeDSEPLEjSGW4MPQO/YAIIgWXIMQSnAtD0MzfNrDigYsiOkp1m3a+OwzC6F
         nRsOhagQE4RV2bPZiHv9FrMCD7Fm9+XGW9dtzxmRXbzNbUblOvlTsA1TOMGmZFNVWiQc
         r3H7cJ8jYhkB3fpWHNgXTOR6CWnR0y8M+1qT8XYbAw30XKlPgtLEyk0dJ3SeM3gJgW7P
         YLOCWnfnz1d97cscUSD4L4QjfJF/cU5LjyMoSW1OlRguMuiwp52/sR4TxrdpP74hX+i+
         gCrvSw2t6lC8T8x7nPArO3wt5mSibsind9RU5oRcIsPmo0d/kUBfZIxqE+1SKgedE0Fr
         kBfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744041812; x=1744646612;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TiStBVa5XzJJaIZh/XlbDgxRXeOzZkZMSa77cVqU2Rk=;
        b=eLMyLyk4rMvXNccH1LyH0TESqlNNFYLv7dbCjhjQ4XZ9oxEoZEjZTdtDHJEawgi67w
         UPzf2aLkNIfPW2v2BPA0ebjZa3FpHN+4nJWJyuemOqVFfN+RH2I47+LtKgQI0digZBLs
         FCubc0bpSp7tpzFJYkEti6k2A/yGQgigOmzSF3R7BWkoqHRwul8qqPCpPzV5GvluyTvv
         C/Kec5L6qXmGyQmrHeDblqpyTlV3oO715xzY/L8dQ0BrsUvX0hsf9KxZreHfUYhFk4/j
         qo19vzS9EshKFspGTfKe5zgxL78i3aCyUE2SWEg69jfK5muJ1sEOpEz25Joho4p2Lv6y
         PG9w==
X-Forwarded-Encrypted: i=1; AJvYcCV/vJ6tQTSea7GZ25Hm1TvkINofvzgetuoCCCA9+DRSd+9JmlfgaBXJ7RXZbE1oZQFhZKSn/QqCXWkE@vger.kernel.org
X-Gm-Message-State: AOJu0YwEN7d2rA979q2HCTPqXJTr+kA+5Avebc5vjrrpCZYA1wKw8rWJ
	QC6Bj420ph/58+upXTnMZ+89wrEzDYfF6tQIgKqW+9/CTvT5IRVGcC4cq4wKonQ=
X-Gm-Gg: ASbGncvwLM4SNAjeMnRmVf8zP0SKxwlCOjFsKBLTnFLvavsZ24fPMTw5hKurczsO5uI
	DwUL53REz9ryKiVu37NG6CyuLDg/jqKZdhd/1m1uGpt7w4sThn9h7VO9e9zC95S5i44ITAqS0H8
	c91H1DKCnIvW10OdMnpLLdfhDiihqoqlTj1DwRKuWzRboT+7G3PXfz1qOK6tX7ic/tMikw5ud3b
	dMJTpEeRHH7CjNJMInKcEaqpENp/4AJFogE3WY6jDdk2Sj9pebi7EddjS+lVieODVewl3p8QZih
	FW1z1+dPxvRT0/G+M/LbtDFJTH9MZ+gRoofwhKvktcwadkjtUUg0fxkHRjm+nU38OIaZA5E=
X-Google-Smtp-Source: AGHT+IGemrKXA8sM5DSUXZe2Dlbj6ooDA8zRnimiTYWgxUHTL8ryZb5AmO96jlogYy2tdpj5y3+bGw==
X-Received: by 2002:a5d:588a:0:b0:391:23de:b19a with SMTP id ffacd0b85a97d-39d0de3b163mr11548003f8f.31.1744041811910;
        Mon, 07 Apr 2025 09:03:31 -0700 (PDT)
Received: from mai.. (146725694.box.freepro.com. [130.180.211.218])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec17b3572sm137701205e9.39.2025.04.07.09.03.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 09:03:31 -0700 (PDT)
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
Subject: [PATCH v3 0/2] Add the NXP S32 Watchdog
Date: Mon,  7 Apr 2025 18:03:15 +0200
Message-ID: <20250407160318.936142-1-daniel.lezcano@linaro.org>
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

 .../bindings/watchdog/nxp,s32g2-swt.yaml      |  56 ++++
 drivers/watchdog/Kconfig                      |   9 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/s32g_wdt.c                   | 313 ++++++++++++++++++
 4 files changed, 379 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/nxp,s32g2-swt.yaml
 create mode 100644 drivers/watchdog/s32g_wdt.c

-- 
2.43.0


