Return-Path: <devicetree+bounces-127642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5521F9E5DB0
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:54:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 32006168085
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD57226EFA;
	Thu,  5 Dec 2024 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vGVzvMKd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1376C21CA1F
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733421232; cv=none; b=K2FFq9eVvOZrlxifaR+lrYrCSnmdp6Gp2RTEHHqELI7+Z+y3bOlBKo9X6jgoAk+nZSjF98diRjLzOi/7uuBE/DwNBiHwySOgd8qSmjZirll1H/CxQ57M+CeG8nCo0sz/hBHT9moSYW+mkXTcRpDdgNpv+MOyqFlAZmZN78d4DxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733421232; c=relaxed/simple;
	bh=F5+uFyFuVjSoq22HoEhipvOsq8O5C/u1+zRx6Lu+Ggk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Mw3TS3Rkq36+SShs0zMrl264DzB559prNa4HpyYgSWEiHmCPbJdT9G1Vf0xNNm8AmcoBeszCl3zb3N9RFUti57cN1WGzxYUQqdliGfHEMZ752wIikX7IgUCBZojqM/SFrSxAnLmWl9GKeoeV5OCMCZaKv12FKOnIWrAT/ODBbnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vGVzvMKd; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4349e4e252dso13109335e9.0
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733421228; x=1734026028; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JKLV+ZZ6L5RhiT3EAHJqznTL9zji3yYsZpCcDpbwg+Y=;
        b=vGVzvMKdMh2qeqfUzRbCLx+LEqG5qAzYhkmdXkBkqIGlVO9Ecs5cZs+skNNA6E8Mlv
         h4Cc1mBUmKVigWJnE89dIx98xAxEMW0+kIb1vzjNzcZRbmuwmlkhKu1EfO7IHzrqGG5s
         5WW+/NTVpPWEFLij7QbLjfZZ4fIWiogczInN1kdsZfFBFmvdBCHhkM8/nlo/BpkT4RVq
         n7+hma5JsLb1ejB6WlQhvLDGBOcLWM8SxG/TDXIhpIvfkqYFNRrNO0kpb/oZug7Y4tME
         YVv7ctmftOlhCxFPcANsHECzRobKeZ2TQIdCIxVQwiPxiF//CuZ17pXvaiyf1/0bTTgZ
         C7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733421228; x=1734026028;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JKLV+ZZ6L5RhiT3EAHJqznTL9zji3yYsZpCcDpbwg+Y=;
        b=MKnFWtdVN8IVuLdGDc4hueExmkUg6rUF0sh+Mhry5rM9nAmOTuFN8rmFWsm9jc3Oh+
         iVtWtEK2S28s74RT2fnAhFuaXMHHA5IA4jD1gsRnUcw3BoQSiQdqTiMfp1pnVktSDpiS
         A0TXfeR1ufnLgYzNinchFSh0Z3oRGOs2EnjwrEGJgz77J3DBdwpKMMCAYh/d/WtFGdkj
         RAdQPd5VMpRtUSWeMWly8L7aJZgRxA3SWI1Wprhkyx4WGAJSepWJpHwtB05qIgD1Ux9O
         5krJu3ImCKtOFaQflAqGv2Jvn3O/MayWuETWpTfNkk8i4U3MB2ToHwjNnK1dw0U3z9Ev
         tM5Q==
X-Forwarded-Encrypted: i=1; AJvYcCVe4FryCRbZQd4Fn8mjFlKuzzep+iAbDYLXgXxjhn/ERvRYXUfhMB0gQREHFjAsohc1VEIWiaTHve0f@vger.kernel.org
X-Gm-Message-State: AOJu0YyJn0aBDia66kRywIXU1On645LInUDrg3uMVlOO6V12+1Oe0ur0
	GpX6VGiVSOuWMThQEQTwJwJYN8+X0YLBey+uHRrNRbkC0WcteymcArQapfD/AQA=
X-Gm-Gg: ASbGncubMKO1A7PZMVUecU1v2IQrFcqyBk3SYrUGMO/Q8kv3rtx7Z3pAhRqjpuMwYqf
	hl8SyWThLKb8Kl9gUwS5XWjUj1oQjTaemJmwbBf2BtXPt+5CqKvAzj41gHFzKyzN4+tWHQS7d8n
	LUoWLkbXOh9J7EL0fEpjElLH9G8umZvZ7dt0vh5E8vtJx9nSkJER/Bo5vB/uiu9vVrmMQ8NGj+L
	uBnsgm6hwy4ke/QtukXVBdFi/0da8w8BklLsjLsESKbxYvh3HBG8Q1gYXCA6s68UKFvwEh/uCBk
	OhVyEppnjbaUueK4od4TUQBvuyTkW+UT
X-Google-Smtp-Source: AGHT+IHYi5ufJF54E0WyoeAp8hOns/BOtH+3X4gKSwUdN9VlL8YVCCF+k0/XEjzO2xfKiytFgL5nWA==
X-Received: by 2002:a05:600c:35d5:b0:42c:b45d:4a7b with SMTP id 5b1f17b1804b1-434dded6649mr1525615e9.25.1733421228429;
        Thu, 05 Dec 2024 09:53:48 -0800 (PST)
Received: from ta2.c.googlers.com.com (32.134.38.34.bc.googleusercontent.com. [34.38.134.32])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d5280fc4sm67882835e9.24.2024.12.05.09.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Dec 2024 09:53:47 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alim.akhtar@samsung.com
Cc: linux-kernel@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	andre.draszik@linaro.org,
	kernel-team@android.com,
	willmcvicker@google.com,
	peter.griffin@linaro.org,
	javierm@redhat.com,
	tzimmermann@suse.de,
	daniel.lezcano@linaro.org,
	vincent.guittot@linaro.org,
	ulf.hansson@linaro.org,
	arnd@arndb.de,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 0/3] firmware: add exynos ACPM protocol driver
Date: Thu,  5 Dec 2024 17:53:42 +0000
Message-ID: <20241205175345.201595-1-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.47.0.338.g60cca15819-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Alive Clock and Power Manager (ACPM) Message Protocol is defined for
the purpose of communication between the ACPM firmware and masters
(AP, AOC, ...). ACPM firmware operates on the Active Power Management
(APM) module that handles overall power activities.

This protocol library provides the interface for all the client drivers
making use of the features offered by the APM. Add ACPM protocol support.

I mark this as v3 because it is a continuation of:
https://lore.kernel.org/linux-arm-kernel/20241017163649.3007062-1-tudor.ambarus@linaro.org/

The samsung exynos mailbox controller driver, the transport layer for
ACPM, can be found at:
https://lore.kernel.org/linux-arm-kernel/20241205174137.190545-1-tudor.ambarus@linaro.org/

Changes in v3:
- decouple the mailbox controller driver from the ACPM protocol driver
- address Krzysztof's eview comments 
- add ACPM PMIC protocol helpers

Cheers,
ta

Tudor Ambarus (3):
  dt-bindings: firmware: add samsung,exynos-acpm-ipc bindings
  firmware: add exynos ACPM protocol driver
  MAINTAINERS: add entry for the samsung exynos ACPM mailbox protocol

 .../firmware/samsung,exynos-acpm-ipc.yaml     |  64 ++
 MAINTAINERS                                   |  10 +
 drivers/firmware/Kconfig                      |   1 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/samsung/Kconfig              |  14 +
 drivers/firmware/samsung/Makefile             |   4 +
 drivers/firmware/samsung/exynos-acpm-pmic.c   | 226 +++++
 drivers/firmware/samsung/exynos-acpm-pmic.h   |  24 +
 drivers/firmware/samsung/exynos-acpm.c        | 772 ++++++++++++++++++
 drivers/firmware/samsung/exynos-acpm.h        |  15 +
 .../linux/soc/samsung/exynos-acpm-protocol.h  |  57 ++
 11 files changed, 1188 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/firmware/samsung,exynos-acpm-ipc.yaml
 create mode 100644 drivers/firmware/samsung/Kconfig
 create mode 100644 drivers/firmware/samsung/Makefile
 create mode 100644 drivers/firmware/samsung/exynos-acpm-pmic.c
 create mode 100644 drivers/firmware/samsung/exynos-acpm-pmic.h
 create mode 100644 drivers/firmware/samsung/exynos-acpm.c
 create mode 100644 drivers/firmware/samsung/exynos-acpm.h
 create mode 100644 include/linux/soc/samsung/exynos-acpm-protocol.h

-- 
2.47.0.338.g60cca15819-goog


