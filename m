Return-Path: <devicetree+bounces-265100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAYAGfvojWms8gAAu9opvQ
	(envelope-from <devicetree+bounces-265100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:51:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BB92412E93F
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 15:51:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4DDD231BD7E3
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 14:45:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F3E535C1AB;
	Thu, 12 Feb 2026 14:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kyf129lE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7717935B65E
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 14:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770907554; cv=none; b=j0VNGsVKOcvNVhSYPJndDoaoQ+VN7cvVOu2DEIEE7rXeElE2FMmESt3/ECZXBrLmA6lQbhbztAGJwRp3MxNGii+RuXdwxRN1hyHsg17aeUwqNRcSm1VpQBoeAZxE3h2DxJjS/PQ6xITyLNcn2Au4sIf9qbnuFjL0vYweWc6FM18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770907554; c=relaxed/simple;
	bh=ztzWfLugSvt8j6TU74+8rEShDoaqsOXJUBug2RAETNY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Z/nwQx79mF6rGqfFn9G0sz1pATSAfk/mnLsE60hL5VFYXi+nzDDZrZBAAP8jNdOOweg2u8giMf42BjHk/FApyrxEXEI1shrLv7oYcwK7QfXCpz+Q7KEMTJIDW5pHnZB/iJRVzdSpEoGLSni3oojwp0nrYQHbN+Nw6oEUA2zSsW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kyf129lE; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-649db2b6cdcso6026695d50.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 06:45:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770907550; x=1771512350; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xkab2DdyEe+Pi5CQKEjli4RcLlAn8ftg9dt9hgOYnmw=;
        b=Kyf129lEFeKhoB1soRRuuR7SEFLjEPB/i/MuJhuo+cMU+n4gOqCnL7/uf8r77m9XM2
         6Ulz1bNzgAvUmrGscLRNCECCitILKgKwL5wpiouEhaSVMmKVgvCik6ECxzCtawt/VGW3
         pqGI2WTXFUYtBSjlMwO1Tuncn2J8ZQC3hTwQiAXYZeFJz87dkCJJ5Y1QmhvqhgMXyDK5
         gBT2V1cmOKF0hlxTr/2CwbV+iQqXh/kSpJYcbqv1cFuC5UPAOJZLBl7J5if8LhWH36pG
         ktjHqF/5n3jzdjACnrTK5lwBQtksl7nmVQH8AhXgeD8zq77pWxzUfXq/97nxKTL1+LKD
         NGTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770907550; x=1771512350;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xkab2DdyEe+Pi5CQKEjli4RcLlAn8ftg9dt9hgOYnmw=;
        b=TsRi3+X23YHwcrN/Z+L1LN7ja4jlG+R3IwgGIObQ9N/jfUJzmpoGPRO/JveJGkHaZL
         xzVX/OZpWtCEx55NHm1l/HMdNAyUNybS0iPQTCwsO8UnLJYPvzqlai9Ots7TIufiA15l
         1S8HFS4OxqqGOuZkfuvUshybks3AEjWafO1qnad9pb37G2A3/Zd30U/wE81hfJu7aKX3
         1bMfJCHLpACsMRuDe4Anm1aPjm6WdW28kFyQJlBHOS4M5NIqiaHaumevGjPHyppbP0j2
         P7a4I1WMvPCSfXIFX27xtcl9kpjcBLDpK99nIIbfY0YxFzjnlpLikHMBobLaAekRxnmp
         vtAw==
X-Forwarded-Encrypted: i=1; AJvYcCWOqbmPiEM9fynO1rnBW1OW9sTMm5aTytgJVor2AhozkD2wxyhsGfHrLMFPYc4FPIIBTIFBS6lXnWYp@vger.kernel.org
X-Gm-Message-State: AOJu0YzPVHNiqd/YGrLeIa1UuHM545pq2V5TbtOl+FebQVvQV1HilJkO
	hlDlRmwg60LqFb5rNKKIOzOTG9IhXwiZ8LvhSbNZ9ilER3HLAL/CMQdb
X-Gm-Gg: AZuq6aJZwqhxdrjUH0/Nfh7eFqfLj1iKO2N6ZYYZUBlmseHFIzpOhRbkrpui0i4ejSW
	GQ0WzB9ssh9BMm5F+FhnEwaTE1m8TST+Skk0bhF0pxcLIEjBu7CFziwfHXUwK00bopfJCpsmk50
	KfF/6ndhwiTxCiJ24pST6HQRbKrN7Ekbe3QsLnbf0t9Pe33DAP7m3hax93irsx/i+yM+0rndo75
	SlfsA3Vx1NilCj51qUDUYgunPZwo2OEpCREfvhzMtAdgkgLaP2Hj6dAF9v/i+VPW2M1N5Rdvoyb
	AqiB43/ruOjVj1uTmwSl6J2t2nSSpLSjTU/gj6WtQdAQog7yc3MN7kGGL89IYZUtYZKO93duu/l
	Xs7H8wDx7XRUh/5o1lVYkSk7JtOtjDZrexsIhaXQWDh9J8ncV6WxBMR7Yuypy373tbPHJToc5+Y
	HM4fTmQW3+boIBsyO5f4733QCEDA==
X-Received: by 2002:a53:d041:0:20b0:64a:ea66:bb2a with SMTP id 956f58d0204a3-64bbaa47b0emr2230772d50.21.1770907550339;
        Thu, 12 Feb 2026 06:45:50 -0800 (PST)
Received: from [192.168.0.40] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc83c201sm4897318d50.3.2026.02.12.06.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Feb 2026 06:45:50 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v4 0/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
Date: Thu, 12 Feb 2026 16:42:46 +0200
Message-Id: <20260212-cm36686-v4-0-8f587d4a72bf@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHQUlJIzE
 vPSU3UzU4B8JSMDIzMDIwND3eRcYzMzCzPdtGTzRAtjC9M0w+QUJaDqgqLUtMwKsEnRsbW1AJ5
 1bepZAAAA
X-Change-ID: 20260201-cm36686-fc7a8385f1cd
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-265100-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BB92412E93F
X-Rspamd-Action: no action

This patch series adds support for Capella cm36686 and cm36672p ambient
light and proximity sensors.

Capella cm36686 is a combined ambient light and proximity sensor with
adjustable integration time, interrupt and hysteresis support. It has
the slave address of 0x60. cm36672p is fully compatible with cm36686,
except that it is a proximity-only sensor.

Unfortunately, datasheets for these sensors are not publicly
available. Initially, this patch series introduced a new driver, which
had code based on Android downstream kernels for devices which did use
these sensors and a previous submission for cm36672p to mailing lists:
https://github.com/LineageOS/android_kernel_xiaomi_msm8992/blob/cm-14.1/drivers/iio/light/cm36686.c
https://github.com/shakalaca/ASUS_ZenFone_ZD551KL/blob/android-6.0/kernel/drivers/input/misc/cm36283.c
https://lore.kernel.org/linux-iio/1465462845-1571-1-git-send-email-capellamicro@gmail.com/

However, a compatible driver has been found which is already upstream
and can be used instead. Hence, this patch series adds support for
Capella CM36686 and CM36672P to an existing driver for VCNL4040.

The following code has been tested on Asus ZenFone 2 Laser/Selfie, which
uses cm36686 as its ambient light and proximity sensor.

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
 drivers/iio/light/vcnl4000.c                       | 40 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 6 deletions(-)
---
base-commit: 9152bc8cebcb14dc16b03ec81f2377ee8ce12268
change-id: 20260201-cm36686-fc7a8385f1cd

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


