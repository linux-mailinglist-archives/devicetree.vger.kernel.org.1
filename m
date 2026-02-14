Return-Path: <devicetree+bounces-265565-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2BxODY+6kGm8cgEAu9opvQ
	(envelope-from <devicetree+bounces-265565-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 19:10:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3AC213CAF5
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 19:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 592A030067BF
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 18:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 680EC30C602;
	Sat, 14 Feb 2026 18:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e4oezl4x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16EC22FD673
	for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 18:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771092620; cv=none; b=jvvaPaIbRaI9FNzElXb346G/dJQTXbYx5ocmnl6Qj1AjGargafpQKA++EN2VsrThq/LFuRpLDLtOV1D7j1GnO/IEj2YF3fVNqfFCc/QGiA91G4eMGOHLCiWk88K/vTdhpYyw5EmpE2I8cVc2GQKM/AIJ0xiZedPTfbSj2fd43y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771092620; c=relaxed/simple;
	bh=6X1C0wECNTPSp6EP/HcEzSJeSFFFyaHViLXEg8EpYB8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=lqPbjad2yOEXBnNbGPgjNcw7624v4dUpt2JEPk5xcE5wl1DlCOZjUvrQ+5brJ9Y7VVZ5FgfDfEUg65BaZ0C6lA3+qMJw778JYiXW5cH1EfHvnltDtka6mzeOSVRNrY0lwwgjJGqE40GieBCwlR1WuqEZgwj+hl2dhOGsWvXBArA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e4oezl4x; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65a431e305eso3287978a12.0
        for <devicetree@vger.kernel.org>; Sat, 14 Feb 2026 10:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771092617; x=1771697417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mBgwHHnAe4QujYI3JUVAZlk83RlrT0NjCZwVRWPSZIU=;
        b=e4oezl4xgeX9C9zB3AMRQw6UXQ3do5VNyag1xRW+k0Dx9siqFoPexugdQS1MMq+SDB
         cMTNjdyqV3Gowof96U4AqnEr/cC3mhCg0RfKkyDINuffdnRAFQwhhZNbYMeVkHCUmRcG
         E20dgM4QYuqAoJpm9cE4gevbqkx+csZeuGNsCKxJD7I4ggSEIaISh/Vy0lXy8+ehnae9
         rdHEALQeUOR2GQnfKRMfNxl6X2IHkBG5kGeIQBrJ7TKIcjkVE9/Ae7vWg+L6Y3W3Qio3
         l2lRUmCygBVyZWG0LWzsLhLgXhOVBlyUrr3cJl8TPH3bLkWRWZDUggfLJEiaa5cWfzQ/
         UIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771092617; x=1771697417;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mBgwHHnAe4QujYI3JUVAZlk83RlrT0NjCZwVRWPSZIU=;
        b=GB7kL5Szc4qx/nMDWfd+6iiiU6BneeDamP8a/mzgqbPfjKTS5WcR6MjOFgjxEn6zMt
         uidOE806MA4vagmS8mNrjdCXHRjfCw9a/+jCwEtNdz0Kz7p99ZossjDUxr35OMFcHjRn
         eaNWm3c9qZ7+WX23elqRtMrze39SkrKdusQSe/RJq0JWphw07l2cX4tVH70bvBLunMmI
         vuNODMJdSf+w8LiFoUBJAtrmqQt9/XicTXzUx/qSJ3Y3W/w2pwvuYlJd0QaaY4aEsxGW
         WrnruV9LkNE6PSg2m7JTdrwc84FKkMxeALPe8XD5qrBfTH+i/dQ46RSNJ+cIAu+die+N
         tc1A==
X-Gm-Message-State: AOJu0YyqERocZh4qQuwuvGOv3C3oPckt4pk477SQLI1rpqOTNwsMeccN
	UutR1S4MKX8hXe8sliLPaYa//slYbpuCYCrWn4jbUI+PL1txGiSoRDdM
X-Gm-Gg: AZuq6aJJ5FbkhD7Gznd1gI8fq/jPsoIcTOyCL8kjFOAzWFGI91KjhNUMrSIODG22HMj
	2dvcdFMOv1UZpLwJFADPpBR+0xHJ10U/t21vWar9JEcwdw1IQqK3JZrxEM88w09Z2AcAKaEAyKv
	6sTj6P7fEzbCWtTMtRQsfGCNopb2QkcAyHtHm8U/QDcRsjbrv+t6fbQEIu5TYe5AWHJma9mm6fq
	zXU+L+kdHhSZ6Xwq6Nvs6Zs07IWcttbYY+h0uciPYtniU2iHgp5j9r0BfUpUz8OgF1Z3V2tAuaM
	JpMxFQY0M+hYUBQyAMLa1c0sgCdVZ13i5dRYJ5U2h51R7qu40hYO+gE8IWs1yrkzleuej3AhW4Y
	lJoSzXrBpBJkln/rACPt2qS9C20MjV9eVL6/UAKfV93I4+4qqL+hd7wjIHbKpu3+S+ATcDjDES8
	1ZBv95+u7uuLHY
X-Received: by 2002:a17:907:7ba0:b0:b8a:fd04:c789 with SMTP id a640c23a62f3a-b8fc3a358f8mr162694866b.22.1771092617220;
        Sat, 14 Feb 2026 10:10:17 -0800 (PST)
Received: from xeon ([188.163.112.48])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc735e506sm88122066b.11.2026.02.14.10.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Feb 2026 10:10:16 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Ion Agorria <ion@agorria.com>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v3 0/7] mfd: Add support for Asus Transformer embedded controller
Date: Sat, 14 Feb 2026 20:09:52 +0200
Message-ID: <20260214180959.30714-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-265565-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,agorria.com,rere.qmqm.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3AC213CAF5
X-Rspamd-Action: no action

Add support for embedded controller used in Asus Transformers for
managing power and input functions.

---
Changes in v2:
- converted sysfs debug exports into debugfs
- added kernel-doc comments for exposed functions
- fixed minor typos and inconsistencies

Changes in v3:
- dropped DockRAM commits (both schema and driver)
- integrated DockRAM functionality directly into the controller driver
- EC schema moved to embedded controllers folder
- removed all cell descriptions from the schema
- removed all compatibles from the cell drivers
- adjusted naming conventions to better align with the ASUS Transformers
- defined EC variant sets to provide coverage for all known devices
---

Michał Mirosław (6):
  mfd: Add driver for ASUS Transformer embedded controller
  input: serio: Add driver for ASUS Transformer dock keyboard and
    touchpad
  input: keyboard: Add driver for ASUS Transformer dock multimedia keys
  leds: Add driver for ASUS Transformer LEDs
  power: supply: Add driver for ASUS Transformer battery
  power: supply: Add charger driver for Asus Transformers

Svyatoslav Ryhel (1):
  dt-bindings: embedded-controller: document ASUS Transformer EC

 .../asus,transformer-ec.yaml                  |  98 +++
 drivers/input/keyboard/Kconfig                |  10 +
 drivers/input/keyboard/Makefile               |   1 +
 .../input/keyboard/asus-transformer-ec-keys.c | 272 +++++++
 drivers/input/serio/Kconfig                   |  15 +
 drivers/input/serio/Makefile                  |   1 +
 drivers/input/serio/asus-transformer-ec-kbc.c | 147 ++++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-asus-transformer-ec.c       |  79 ++
 drivers/mfd/Kconfig                           |  14 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/asus-transformer-ec.c             | 763 ++++++++++++++++++
 drivers/power/supply/Kconfig                  |  22 +
 drivers/power/supply/Makefile                 |   2 +
 .../supply/asus-transformer-ec-battery.c      | 272 +++++++
 .../supply/asus-transformer-ec-charger.c      | 193 +++++
 include/linux/mfd/asus-transformer-ec.h       | 162 ++++
 18 files changed, 2064 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/asus,transformer-ec.yaml
 create mode 100644 drivers/input/keyboard/asus-transformer-ec-keys.c
 create mode 100644 drivers/input/serio/asus-transformer-ec-kbc.c
 create mode 100644 drivers/leds/leds-asus-transformer-ec.c
 create mode 100644 drivers/mfd/asus-transformer-ec.c
 create mode 100644 drivers/power/supply/asus-transformer-ec-battery.c
 create mode 100644 drivers/power/supply/asus-transformer-ec-charger.c
 create mode 100644 include/linux/mfd/asus-transformer-ec.h

-- 
2.51.0


