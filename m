Return-Path: <devicetree+bounces-261544-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLgXLIUuf2kZlQIAu9opvQ
	(envelope-from <devicetree+bounces-261544-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:44:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id C56BBC5779
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 11:44:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3F8A33004435
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 10:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FA1E322DAF;
	Sun,  1 Feb 2026 10:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gROvpyKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4CA3203A0
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 10:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769942654; cv=none; b=ZkEU8w9Yk/JVqoKLqsFphIk8/Oro6xlQdkRRhHUzFOQXLF07ZXJ8btXejZszMUbhnJM1cJH64aqNFo4cQycTcZ86GIB/P8N8BNfYvzkLwuParrnJzqOITfCVrjt14njTCyfBDmnNmQ0JaA5U4P04D5zLbNjD1/j5telABHLx4Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769942654; c=relaxed/simple;
	bh=z0OeZ0DJQ0E/+donS2QQkMz+d62Uv6TmN9IynwMz9Hs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=JHAkqly10HDbKbWlaIBV6akEZ23wNLSU4n8RB5MnGenDfb5OkirK1hdP6U3pA+hvPZaNpeWnyqo3NhuiZcxkQGRlgTHn7/jCR51vjVQRqBAs2dhDdhCJHsfBqKhPd0lTAYOtlaqispfhKaz7VmuwPzWLP2s47/btXnjQuEklmEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gROvpyKY; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4327555464cso2493219f8f.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 02:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769942651; x=1770547451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JaZLxb/TpfjjyCLjMdtwmkz7IMvUMrg74EGxr+gYNgs=;
        b=gROvpyKYSnTUJkQJcIzYaiOop7uXsdVdFQGEarkCejwB8yrnhV9oaEndWdSbYbiy3b
         Md9bmHa5C7NpPJrOD5p+eWiYPq6hIk3A2c8DIjbwrIOr8ZkaEAZfsPxsX3maXygqayPA
         LgIoDNSnASA+qeJRMbFh+OkydaJro0BjItd/+qzuZyX2TJLMXb5mRDxb3Ntlg1qxmQOK
         +RZl+xJlegAtnZnoBfTCzAfIJ7+2/Ny1+UBbKUHBl+1pkHvK85q46bRDQOdiwG5G/uTn
         +pkeornbDPnPZJbWV1TuFckhYxqC1m3K2LAyfxlzX1EpN6BM01NuxS4eV3Vz+eJ26IDA
         8VPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769942651; x=1770547451;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JaZLxb/TpfjjyCLjMdtwmkz7IMvUMrg74EGxr+gYNgs=;
        b=DKUZ1o+CwkCe2BVkPnWIYlWAQgC+g20qmBzbBjsMTgq/PeVGIEgBdN17ipgvChpDxp
         mQBsO/SnFFSTGh8cxXfkUKfg0WpbDXSOvhNK7c9Qj/lRCP4jS2lDhHFhh06MuDFCuzy3
         X3fq4bgDmbOt5d5j/wVQmDL5aI1G+nV6wICar9gpIHGMBoa7G2oAqkRGtdoelQ7JoBpl
         /Lm43vqTPoIAHjTLKIyEF4vr0GbqQS3clay85Sc4ih/d1lM9i+6iMeOo4RjR40oIz2NB
         ZOi3JB28keNS4p8atSfuXfmtNYy5GhhCcD9QsQXIASw8MrNCX0HcC4zs0x0nsvf87VvU
         F+Kg==
X-Gm-Message-State: AOJu0YzzCz8P2QHVXWmHBAXSXFg5+oIcBy+ggx9hEtvqCroAOZgACodf
	qJ7ta2uWHp5WCxQG3oy4444cRNkxWtmpfXozw1p8E9lXo4KXxB6KeAsf
X-Gm-Gg: AZuq6aKIYM3YU8U5R8X2DPCqNThA8d52SQmcjA5p00VUUzhFuaK55GfJE/YeR2S4RtJ
	bP2T6L60J857SUb6nnDhbhAi7NCjBzD9UY/odrkdSRGzpsZMg7lZw1jy2MXHpaXON+d+rp823Ku
	2CdGVfKZAI/NgdUU8UaMhCQEoL2aspGBjc67JFq83otyH/17f1/Laj0AJd3WCSXFUUCxRz/Ikap
	7i3lp+/tVztbhEelgTAwb0rR/nnFKD5DzXczPJp+mL1FML5gnI4mAQE8SiPUYRJ7wio/QhNqzEF
	iqiHQkdJJ3/U0qpiOBlcVQaWgxoPqbLsleXctR7YFrf/mauYwpelJCdiXQUNzCuCQPPRoO38PnB
	ic5k3tImZsHikv6URDN0RbeePH0hdNEaadXa9+CuLp2EK4utyQzm0U2Be7HNyABbOOlrPsGZzuR
	BE3uV80ZwTzxY=
X-Received: by 2002:a05:600c:474d:b0:47e:e952:86ca with SMTP id 5b1f17b1804b1-482db4486e9mr105328755e9.2.1769942650796;
        Sun, 01 Feb 2026 02:44:10 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4806ce56490sm308947455e9.12.2026.02.01.02.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 02:44:10 -0800 (PST)
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
Subject: [PATCH v1 0/9] mfd: Add support for Asus Transformer embedded controller
Date: Sun,  1 Feb 2026 12:43:34 +0200
Message-ID: <20260201104343.79231-1-clamor95@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261544-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C56BBC5779
X-Rspamd-Action: no action

Add support for embedded controller used in Asus Transformers for
managing power and input functions.

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
  dt-bindings: misc: document ASUS Transformers EC Dockram
  dt-bindings: mfd: document ASUS Transformer EC

 .../devicetree/bindings/mfd/asus,ec.yaml      | 153 ++++++
 .../bindings/misc/asus,dockram.yaml           |  40 ++
 drivers/input/keyboard/Kconfig                |  10 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/asus-ec-keys.c         | 285 +++++++++++
 drivers/input/serio/Kconfig                   |  15 +
 drivers/input/serio/Makefile                  |   1 +
 drivers/input/serio/asus-ec-kbc.c             | 162 ++++++
 drivers/leds/Kconfig                          |  11 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-asus-ec.c                   | 106 ++++
 drivers/mfd/Kconfig                           |  14 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/asus-ec.c                         | 460 ++++++++++++++++++
 drivers/misc/Kconfig                          |   9 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/asus-dockram.c                   | 327 +++++++++++++
 drivers/power/supply/Kconfig                  |  22 +
 drivers/power/supply/Makefile                 |   2 +
 drivers/power/supply/asus-ec-battery.c        | 282 +++++++++++
 drivers/power/supply/asus-ec-charger.c        | 205 ++++++++
 include/linux/mfd/asus-ec.h                   | 113 +++++
 22 files changed, 2221 insertions(+)
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


