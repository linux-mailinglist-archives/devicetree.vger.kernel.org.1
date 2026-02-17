Return-Path: <devicetree+bounces-266106-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +INlBYRblGmrDAIAu9opvQ
	(envelope-from <devicetree+bounces-266106-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:13:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8155914BD14
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2367E302F691
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 12:13:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608542EA159;
	Tue, 17 Feb 2026 12:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KEvHhf9j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF6A3382EE
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 12:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771330415; cv=none; b=HbUH2r045q4GPK+xuaC2V9IYrdlI6j6MNc8pOdtJnPboj8gmuJZGIlYZjVDLH8erxsQQH4xtgS36n78a5e8YGgAcHE4zIPZGYnZboZ5jNU6uZ9LQGDqkakCaFayaoA6yHRVLqZqzJthZCvWoi9RYDfBai+SVaOgHncWWlJ+XUZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771330415; c=relaxed/simple;
	bh=YpXWy4g7+t7X7zx1cT8W68M3ZmvB/pe8TsSW1+fLS3I=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=YzGPg9pWvfVRf2hLAhBwZaZcjWUUq3O5nCHFBM+Li48P3FD9V+mq+tMReqcCnm9yp+W8YFnDoA76vmuslYA9ZQncbfGUV98ol3E0rhwuAz6ZWY7e+1LvGtJBRoroSjK71D/YvHDgQOgf6krkqoYvSl2G9hMsrX+ld7/5TgWxEe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KEvHhf9j; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-790992528f6so34521727b3.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 04:13:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771330413; x=1771935213; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ad+zouveqL0jevr2Wpb297zGwvqmkqHDiYrYOYw1pbk=;
        b=KEvHhf9jEMLq6m+C8bP21gXfThW2EicJ7pFNoNLSfXB7cLhEgKcB+eVb9NCcNhjRNG
         p3T8cWiqA0xrDyTwRuvqvZoiknYKl/wurDY9yPRkKJSWONHsO2OLKeiMk0vaGbd5r6cL
         RJ/Z6genHZUdrLYeKJ6SXLT7TnRxdAK7jUxz1/ByXJLVygSCmSSG3TIIdFHbWz+WnFzo
         PUdAsgsUEyAkAxNApEvpc2JLDgzD5hLoxmmKEcPjtrfCHaSyY0zuH994dSWHHoBVOmMm
         ePnyViELZbfVdcLpHZXkHui9pVgrs5zz9SOiA74TQV2NfjRbXFvnPlQZ7Lv5H+l9QfNS
         +kIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771330413; x=1771935213;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ad+zouveqL0jevr2Wpb297zGwvqmkqHDiYrYOYw1pbk=;
        b=U2dvm/D1rB8FB1ZcmfWl70/DTcLsKepV3hWkEC56QK8+XRV5d8me6g7ht99O95LRR+
         zR7tp9VsL66JWmWoMlWbYRcZsasXsSQMoa1CFPdHpA7zgWJZe8+de44GlMcQTUDyrpNR
         D1ksryhhbHJULzNT7UGGP21PiRsHfQnbKJJbmMY5zjVdmr3RUWsMaOu3pdWsg8+VJqQ5
         Xm81ktM7fHI578AmRX2vFtHjs//uaNwcL5gskP0iCbGgSWS349gwJO43Y8Suiw8NwPyA
         HjFujxbtj5V6MMxf1Pal6WQCo22A5VTJDitXrCXZ2UaBKbya6pc9HRndOxbQbIRbdgqH
         0EEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXYokYRr1yDfyHCKQbWgKtr8rGyIju5Ad/l1Oyl6nueQlLzDey3mV3l9sXwAY50K1RnWmGHMLGjHOJu@vger.kernel.org
X-Gm-Message-State: AOJu0YxLsKomz6CWyPDHxm3YHJOMkhxEp4uiqx05mVSP2o5U0vbF+vYd
	RK0UH+4WeE3M2FgcQqWafkXG6UEdRrKk9M0yvJPcSItqpJnS3QVWTIzg
X-Gm-Gg: AZuq6aIDyEk6e2olcKvHH8LO57Pb+dDVennZCIy4nSNU4r3HPz7Y7vs52CHcYP5bBzm
	Zb+5F/HWoDU5vLTAjRYvPi60qdShJXyZ2O7KveVwPYUtZlnkMk0xDBDYu0dPMlpDwbWloeSUyCA
	ALH2OgYRy+Tlb3xKbGr76q66LJ3tR6lvH8iP2koPLLlfqQydVHLGPGS2TO5JVHSFEHrkkuKmFjC
	r7ZjqT8d9iR2fP9rzJevNo6HDy11stpBOfBR530ZoLBGEavA3muf7Vkdix9osMFl+5OQHijtBmX
	mJG0zxOWFIiH9yH+wBj6akMDzPQMj5xM1wZnRGOIFmu669KyLmDLzLI+apj6QZ2R2RtQ/xiH11N
	M7XXYagaGzSsmBNZSlFuUjG2NngF7iZQy5+6PnPmjGKC+k3OPIlJ5O5cqXOfqx9fIUsJ1VceHz/
	QEVnAfO3dJVItzZfE+9pF3Bj46VQ==
X-Received: by 2002:a05:690c:113:b0:796:3f2f:a310 with SMTP id 00721157ae682-797a0cb9039mr93355227b3.32.1771330412998;
        Tue, 17 Feb 2026 04:13:32 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7966c16eb07sm115610727b3.7.2026.02.17.04.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 04:13:32 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v5 0/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
Date: Tue, 17 Feb 2026 14:13:14 +0200
Message-Id: <20260217-cm36686-v5-0-63c2de9709d8@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwND3eRcYzMzCzPdtGTzRAtjC9M0w+QUJaDqgqLUtMwKsEnRsbW1AHg
 nh2pZAAAA
X-Change-ID: 20260201-cm36686-fc7a8385f1cd
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Andy Shevchenko <andriy.shevchenko@intel.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266106-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,intel.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8155914BD14
X-Rspamd-Action: no action

This patch series adds support for Capella cm36686 and cm36672p ambient
light and proximity sensors.

Capella cm36686 is a combined ambient light and proximity sensor with
adjustable integration time, interrupt and hysteresis support. It has
the slave address of 0x60. cm36672p is partially compatible with
cm36686, in that it is a proximity-only sensor that shares the same
proximity register field interface with cm36686.

Unfortunately, datasheets for these sensors are not publicly
available. Initially, this patch series introduced a new driver, which
had code based on Android downstream kernels for devices which did use
these sensors and a previous submission for cm36672p to mailing lists:
https://github.com/LineageOS/android_kernel_xiaomi_msm8992/blob/cm-14.1/drivers/iio/light/cm36686.c
https://github.com/shakalaca/ASUS_ZenFone_ZD551KL/blob/android-6.0/kernel/drivers/input/misc/cm36283.c
https://lore.kernel.org/linux-iio/1465462845-1571-1-git-send-email-capellamicro@gmail.com/

The following code has been tested on Asus ZenFone 2 Laser/Selfie, which
uses cm36686 as its ambient light and proximity sensor.

Changes since v4:
- CM36672P is only partially compatible with CM36686, reword patch
  series commits to reflect that.
- Add comment explaining why we use VCNL4040 device ID for CM36686.
- Link to v4:
https://lore.kernel.org/linux-iio/20260212-cm36686-v4-0-8f587d4a72bf@gmail.com/

Changes since v3 (misversioned as v1):
- Move Capella enum IDs up so device IDs are sorted by string literal.
- Move device tree table entries up so they are sorted by string
  literal.
- Add a trailing comma to the cm36672p_channels proximity channel entry.
- Link to v3:
https://lore.kernel.org/linux-iio/20260210-cm36686-v1-0-aef68dd46ad4@gmail.com/

Changes since v2:
- Remove the previous unnecessary proposed driver and bindings.
- Add a fallback compatible for cm36686 of vcnl4040.
- Add a new compatible for cm36672p.
- Add channel info for cm36672p.
- Remove redundant information in the dt-bindings commit message.
- Link to v2:
https://lore.kernel.org/linux-iio/20260209-cm36686-v2-0-a48126d2b124@gmail.com/

Changes since v1:
- Add copyright information.
- Sort includes in alphabetical order.
- Add trailing commas.
- Remove blank spaces where unnecessary.
- Add a fallback for capella,cm36686 compatible.
- Make power supplies required.
- Add '-microamp' suffix for capella,proximity-led-current.
- Replace local caching and i2c_smbus calls with regmap API.
- Make interrupt optional.
- Add action or reset only after setup is done.
- Replace mutex_[un]lock calls with guard(mutex)
- Add comments on where mutex is used.
- Add comments on proximity register defaults.
- Remove default proximity sensor duty ratio and integration time. Those
  were taken from the testing device and had no real reason to be there.
- Replace dev_err_probe on device's part ID with a warning.
- Replace chip->supplies property with a single
  devm_regulator_bulk_get_enable call.
- Use individual structs instead of array-style device info
- Remove enums which are no longer used.
- Link to v1:
https://lore.kernel.org/linux-iio/20260201-cm36686-v1-0-4949a2a9ba63@gmail.com/

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Erikas Bitovtas (2):
      dt-bindings: iio: light: vcnl4000: add Capella CM36686 and CM36672P
      iio: light: vcnl4000: add support for Capella CM36686 and CM36672P

 .../bindings/iio/light/vishay,vcnl4000.yaml        | 17 +++++----
 drivers/iio/light/vcnl4000.c                       | 41 ++++++++++++++++++++++
 2 files changed, 52 insertions(+), 6 deletions(-)
---
base-commit: 350adaf7fde9fdbd9aeed6d442a9ae90c6a3ab97
change-id: 20260201-cm36686-fc7a8385f1cd

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


