Return-Path: <devicetree+bounces-267255-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mIghIi/3m2lI+QMAu9opvQ
	(envelope-from <devicetree+bounces-267255-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:43:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 004AA172451
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:43:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BC5CE300955C
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE9E834678E;
	Mon, 23 Feb 2026 06:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BuO+vC69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58BF13446AF
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771829036; cv=none; b=uWoMk6uLqnttWXjW/KAfTIgHkEEcb73KProFQ8Un1rUY4NvpjaEOevW03O5/TSIyA3tWVqX/1/keXGfm6+8ItcGbTRPYQZFQWd8t/KTgmoCrOcB+xgpZvA+uccMFcszU9zC2654ObVaNH9GfNDmhvZnbH3cW5WV7I37ut5DBSPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771829036; c=relaxed/simple;
	bh=dspz6QXb9Yft2U7sIGZyX2NlVNHVDPrmiZKhA5n6Z+s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=shtwkBHLIaEetlWLMQ7PK2OKARif0LHyYGDYG/mCtxDuB8QeaiVK2vsPaM26CqjnkV4icWhxqqErfuNG3TMMPRLkK99BQNZv9n5SJm7CmlJS4FsIduhM0xZC24C7bQ5dDvliNpDYWVaa9dmEmWeoj76vO11Vxl0xnKVtRIrXuqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BuO+vC69; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-59dea72099eso4038970e87.0
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771829033; x=1772433833; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hLqyYMDBQTM0ZGPK1mePxnH3/hIKMAhbCmXzKQT9xPI=;
        b=BuO+vC69PneZ69QqvSTF30yn3mQxv+anMP9ltNSFJPrX7qJkh2Q5QzH0taMCXcf3yc
         2qmWOisc69suSMMP9+3JJC7hJa71bLKUZk73R6n6B+UaF0chCOnswoZOEi3/QtVVWojR
         dNGNNzNYrystRC1aavyzQnkwq4JaQ0k0GXWeeHKfeaMj6/mOXupaX2TLxD9fssVMSK4G
         qptNRDqe8j5SaEUKJYUKjQ92GHfoNzIH2U0RiBSLvRhJdxIFaOF1IrBzrfV+AhfdVyqu
         wtbBCbf8CmsqEXrEPqyMfusFTfgsxZ+/4Cp6TUmNbbnwcxgfsncCiYo/rumM+WNHctU1
         cfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771829033; x=1772433833;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hLqyYMDBQTM0ZGPK1mePxnH3/hIKMAhbCmXzKQT9xPI=;
        b=IG1oorfmVsI+MJw+YcvJKvAVOqdBu8OqBE+ZKxlvYog7b76Xv4N7cSYv25hcWjjK8v
         0Yqeo19v8gMh3DnB9KfyKngYVsSQBODna0lrwCDobVDHM9tE/jsSMnRHJJPmrh4FR8x+
         f0ECHkeFAIWhhMDOO/3ivdsf3m0LUzv8PG9QmfForTO9L2ZbIlGVfAj2zja9LevHSnQm
         ly0jrkfelI2/jyO/OW0A7DdZdGF8/YBtzur+OPWi70nmHK30beWw0T6ZCie5EGFh6kUr
         YL838wze2XsYwERuNK2VlYg33LZI7JKFTqjvc4QDLYjfYdW8JSCMJqpyv6dRrGhvXoBI
         WVNg==
X-Forwarded-Encrypted: i=1; AJvYcCW2UjfeuKap/YWa6pDsOzgAxuOaXyfzC4xjzH09pJmIKUEkqArZcJ+XPB+SULG8isZgDf57nD4xYNDp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4XjSK2xuXvK/OgzMxJugOyk5dJbJcUnAjhHBfaMoSmvYdxxEd
	yenragcsHjkteaK5jGRyo5MFCcVNtRrR1pdgkmP0bnwlrM7tyqlKSEqB
X-Gm-Gg: AZuq6aLPAgJv5xFjWIQSLkIM8rqmQTLygVmIf7iC4eqCxjDE8nOtV62iQg7bfBmhOTq
	2REYZJODLHwFd6rIi9qkTLsgbPDHydFe7Mc9zfZhgKCg0ivG38hQ2ei1SX/iK4ffgoISHELTHwk
	cZFiT4rIo4GrEEZ3wc7Hn/NWh5AniLQClHPV3yhNDP5hS6GVlmD1Bat14ryGAc0BklnyVYFOLRQ
	rtn5+9J7NCpSep3ng8MHCAkrSabt5+5Pc1h5J9s+SHXVX0MV00d5uGfbuqqcFjeR9hy4bJV5Scp
	9etHXZ7V9Iy39faWAs8lEyh2+fcR/mYq+dgz3x3nXKsdFw0Rq4TBcda/TaS46Hyrtl+R9H9ABH+
	OSAaU0sfKLHWdCOEioMcznR5tLPGwjU8DlKTTAvYLscU8V1re/17CDccofqsjAXNgpkiN5F4y9+
	WPX1H1vPZSLnyuQ2jLUOznwc4=
X-Received: by 2002:a05:6512:3d01:b0:59e:249f:81c7 with SMTP id 2adb3069b0e04-5a0ed8a4d07mr2042239e87.30.1771829033366;
        Sun, 22 Feb 2026 22:43:53 -0800 (PST)
Received: from xeon ([188.163.112.76])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a0eeb3eb6dsm1363274e87.50.2026.02.22.22.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:43:52 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH v2 0/2] rtc: max77686: convert to i2c_new_ancillary_device
Date: Mon, 23 Feb 2026 08:43:41 +0200
Message-ID: <20260223064343.12516-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[samsung.com,kernel.org,bootlin.com,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267255-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 004AA172451
X-Rspamd-Action: no action

Convert RTC I2C device creation from devm_i2c_new_dummy_device() to
i2c_new_ancillary_device() to enable the use of a device tree-specified
RTC address instead of a hardcoded value. If the device tree does not
provide an address, use hardcoded values as a fallback.

This addresses an issue with the MAX77663 PMIC, which can have the RTC at
different I2C positions (either 0x48, like the MAX77714, or 0x68, like
the MAX77620). The MAX77620 value is used as the default. The I2C position
of the MAX77663 is factory-set and cannot be detected from the chip
itself.

I have tested this patch on LG Optimus Vu P895 with max77663 PMIC and
non-default RTC position. RTC is registered correctly.

---
Changes in v2
- dropped patch that changes max77686 and adjusted max77620 where max77663
  is described.
---

Svyatoslav Ryhel (2):
  dt-bindings: mfd: max77620: document optional RTC address for max77663
  rtc: max77686: convert to i2c_new_ancillary_device

 Documentation/devicetree/bindings/mfd/max77620.txt |  4 +++-
 drivers/rtc/rtc-max77686.c                         | 14 ++++++++++++--
 2 files changed, 15 insertions(+), 3 deletions(-)

-- 
2.51.0


