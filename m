Return-Path: <devicetree+bounces-263941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KMZqEBe7iWmEBQUAu9opvQ
	(envelope-from <devicetree+bounces-263941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:46:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A5210E4BD
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 11:46:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7B1A302D978
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 10:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0904B368278;
	Mon,  9 Feb 2026 10:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wh8NScqi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3552368269
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 10:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770633868; cv=none; b=PiXf7wWj9XzQJ1QxxN+ATrDieoKba8M3f0Lr3WkA0JU04n/3Ehw4l2hpQdWtOTG0nKIQtWwZ9rX0evkDU6RAHoDkPiI9EdCVmipW/XSF/2cziAOyE5e7fmj+0Th1UrQJGaPdWqP/vkp43VZrSxxaNRnzEAnwTKDjuLHfkgDYMu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770633868; c=relaxed/simple;
	bh=08Kt50dHkpQiui6kV4b2Z9IHxPwovMpEiTWbFMykybY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XCXpIjcT0XPGEovzjm+aOgWRKRzDU8AUqaAi7pnImLqBijTD9x7pTK2rDn4Unbl5Hnoq4MkKnJ1nON3KKE1q2xY3jQvO3SA35bMsFE21+ynm2VcDlwRyZlCXEv1sVrEMyGmFdvGJig+ZpS6D0QsUkdRGsRBILNnYXXt6RLAtZK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wh8NScqi; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-59dcd9b89ecso5761625e87.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 02:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770633867; x=1771238667; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hyllhJpxVbOC8g6WTpUW33ixHuDxxdyB8h+jNgtxccg=;
        b=Wh8NScqimUGJl9ddKTCTGbl3AuAdghPHSLsOQBAEcJarZJzPuJOpNshSF/2vyXbElM
         mrQsBU38gFlLPvYmONhpjzfiSYEv7dEj1v0iamxB8PCvC2C+NFXSANCXQ7k48Ui/wf/X
         dw/2aAEh82nijJVnIgxYXwOiyiuCwvt3Y0k6yveHWe2xjTXIqjADKMjLQR2zgbRgnuYx
         fSUtH88FOhbx89e8kGYmW42/waZhw7L7VN09vtOcOrZzkhSdqTO6V6lbT5IKfAQV/Y0w
         EBXeTJiNg2bbuxYHJjk4nGwjShFnSWzI2Ltq04fBHuOp5chGOtOekk3qSWIrMiODZopC
         p9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770633867; x=1771238667;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hyllhJpxVbOC8g6WTpUW33ixHuDxxdyB8h+jNgtxccg=;
        b=tvR6QawrrmrVEHXUMDdPxXrqn5dWdKKkcmRa+dlYb+hbYZUk+AMNMLhoG1Vrytoh09
         LJf3bQSBoGMP08CbPcCkwVK1j6WqYbHtixGfi/kcXNCxQFLRJNlrhqGZykU/HNLtEFa0
         PM95NPFGUmXcWOX0285CKfuk4H11EpkOJRvHNGItzHydn2dMd6PtRnMQA+ccva6dp8jL
         XJ85DT7fI1fVrlEJsPsV/C/BSE3zJ3a/7YqF5OXkeI7TkjishtlsyVFJaaFbKvsFoHjL
         6v7W2f6xnJG2p4bOqgDXotcGwhcfqpRLfgp4mLxJ9oJPbQFN3NBwtROMSExK0C4g8FIx
         34rw==
X-Gm-Message-State: AOJu0YyRE6vDAQsQOs5o0TCF656M5kIzIQfjgNnaRH8p6jCRRtvIsANO
	Q3D7FDBzqUNi0zDUk88s4Yz3DiJIyYf650n4gx2a2YMoVa86lfrXMVbG
X-Gm-Gg: AZuq6aKsAbpyA5dHQZf5hqvGpUe7VaZAmjOIzqKwO1esD+H4ctmSidVaZBdrmUkAcgw
	/in5u/ezXSJPSWG3DlIVR3cL1YjIUDlPq7XcB46Qyu1iY2QessJROvQssDQy6hDUgMljrkADX+Y
	nP0neTSptMVHBG+JsLV+ZQ5cYhHku+NEXhOLsm+5x+I0Bm1S2ul30NVVXxqy2DKArPFDAGRqQX6
	dlFitpEx0tUthOlrrYDP4MmCU7O7jaTUNDTiheGdSW3DVorqveyTzuDZL93MeTraUMGEzfnW8Vl
	fz7+eK6PMflFjikCvQmoXMrtWPHkecrkAdEWsGasOTGkUEFTfRzqLjHoyBupIlpOIU8dwrkuetW
	SgudH+VHZCfgZ24EZTG2/RvqeCfH3pbTG2sNinbiUqfYCZOrihGr5AmDJBw8u5CDr1bQnQJYi0g
	7G
X-Received: by 2002:a05:6512:250c:b0:59e:5243:6c94 with SMTP id 2adb3069b0e04-59e52436eb1mr251424e87.5.1770633866556;
        Mon, 09 Feb 2026 02:44:26 -0800 (PST)
Received: from xeon ([188.163.112.51])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e44cf6f88sm2501469e87.21.2026.02.09.02.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 02:44:25 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Pavel Machek <pavel@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sre@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	=?UTF-8?q?Micha=C5=82=20Miros=C5=82aw?= <mirq-linux@rere.qmqm.pl>,
	Ion Agorria <ion@agorria.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH v2 0/9] mfd: Add support for Asus Transformer embedded controller
Date: Mon,  9 Feb 2026 12:43:58 +0200
Message-ID: <20260209104407.116426-1-clamor95@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263941-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.989];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 94A5210E4BD
X-Rspamd-Action: no action

Add support for embedded controller used in Asus Transformers for
managing power and input functions.

---
Changes in v2:
- converted sysfs debug exports into debugfs
- added kernel-doc comments for exposed functions
- fixed minor typos and inconsistencies
---

Michał Mirosław (7):
  misc: Support Asus Transformer's EC access device
  mfd: Add driver for Asus Transformer embedded controller
  input: serio: Add driver for Asus Transformer dock keyboard and
    touchpad
  input: keyboard: Add driver for Asus Transformer dock multimedia keys
  leds: Add driver for Asus Transformer LEDs
  power: supply: Add driver for Asus Transformer battery
  power: supply: Add charger driver for Asus Transformers

Svyatoslav Ryhel (2):
  dt-bindings: misc: document ASUS Transformers EC DockRAM
  dt-bindings: mfd: document ASUS Transformer EC

 .../devicetree/bindings/mfd/asus,ec.yaml      | 152 ++++++
 .../bindings/misc/asus,dockram.yaml           |  40 ++
 drivers/input/keyboard/Kconfig                |  10 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/asus-ec-keys.c         | 285 +++++++++++
 drivers/input/serio/Kconfig                   |  15 +
 drivers/input/serio/Makefile                  |   1 +
 drivers/input/serio/asus-ec-kbc.c             | 160 ++++++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-asus-ec.c                   | 104 ++++
 drivers/mfd/Kconfig                           |  15 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/asus-ec.c                         | 467 ++++++++++++++++++
 drivers/misc/Kconfig                          |   9 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/asus-dockram.c                   | 370 ++++++++++++++
 drivers/power/supply/Kconfig                  |  22 +
 drivers/power/supply/Makefile                 |   2 +
 drivers/power/supply/asus-ec-battery.c        | 283 +++++++++++
 drivers/power/supply/asus-ec-charger.c        | 206 ++++++++
 include/linux/mfd/asus-ec.h                   | 162 ++++++
 22 files changed, 2318 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/asus,ec.yaml
 create mode 100644 Documentation/devicetree/bindings/misc/asus,dockram.yaml
 create mode 100644 drivers/input/keyboard/asus-ec-keys.c
 create mode 100644 drivers/input/serio/asus-ec-kbc.c
 create mode 100644 drivers/leds/leds-asus-ec.c
 create mode 100644 drivers/mfd/asus-ec.c
 create mode 100644 drivers/misc/asus-dockram.c
 create mode 100644 drivers/power/supply/asus-ec-battery.c
 create mode 100644 drivers/power/supply/asus-ec-charger.c
 create mode 100644 include/linux/mfd/asus-ec.h

-- 
2.51.0


