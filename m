Return-Path: <devicetree+bounces-271221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4C7hGTaCqGmYvAAAu9opvQ
	(envelope-from <devicetree+bounces-271221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:04:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C93206D3C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 20:04:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D87E30D6D31
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 242263DA5A2;
	Wed,  4 Mar 2026 18:58:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="es3DPGsL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEC13D5242
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:58:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772650685; cv=none; b=R13+L5B/y/MmMVCW55z+D2s2oYYBuUwU/k1G5yQY9LzOAhbRYfOr8nhU51TBcDgpZdLIJvow9q9Ki6Y1Za2BTxHKEPMqNChwT1kT196VlOSErsjnbWjGRRGLwIN6Mx9/H5uO3O8WGsZV4+qG+WAVX/eqXxGsay0l2dYa7tbibL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772650685; c=relaxed/simple;
	bh=R2AUYnU8Wz8oU/h5rvR1qBJ/kWXkextxlhRXzMBmDPY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=ryJo4BgJ/+HNmwFJhjqgWtDZn+RwOH1kcQRpOVrTemDv0E7Bv6N3lm71edKQhklrdWUYcztrw8gYKDYAbSgBTpVKY5rrybxIAOhRSPnBIWWXKFkCyJhYKGR0LUOaO1m/VCBYQzd0UlqQzSN8LFD8ftT5MnGJVMTKU3RFKURNkRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=es3DPGsL; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-38a2a59baa6so14149391fa.2
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772650683; x=1773255483; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3/VwVHY85Z4sAx1gqqncPobsH7DOkhMw1reihUc4ZtI=;
        b=es3DPGsLJn26+Co2HAWCOqc4Gh2z5omQEHbjEFXZ0LWlgaoyj7VsrmenNpRO2hVVaJ
         gl4U3I10/1Ol7mUuJaJi0v52Z72Cy2jno8kmqyRx+7hpBGYkQSCruI7q3mhjBxsPFu4Q
         rHrBnBKmUw7Ctnvej6jWevizr3tfKFV2In6x5T/Kmex9f724I/bl4SK0MJY90eFv8GAQ
         Sdm0iCmjhC014efPxAQ8hkDr4RTrvjg3ud0BbuTpZUWO4uhz0Muq96QnOyoxzQzB+2vW
         fZ40xDQGoYD/OKDXCmxb8899Ywm/lXTAG7pxT4KIekaM4kYNFrns6RXfpUwd8ILkursD
         ZlEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772650683; x=1773255483;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3/VwVHY85Z4sAx1gqqncPobsH7DOkhMw1reihUc4ZtI=;
        b=ENbim6UoQqPEljzQ5Su8FUCy0E5eOj/Zx6HN9BmzZ3XLwNSZrCCqGSNQBBlzjHdGCN
         ujloFZS/wQiIOPiQJ54/X1hpu9RsNgl3A7bvxPL61z4hQ9AYFKmAbQv3mvaQzboSzC2B
         K2twUthV2PazTvHgBNPbA9rIIyDhOcKbwoDzM4IvqZ/RBlSwmSIgXVr+oh0HYgKFxI4l
         lJngDXKY4QUi7TuHwoIJNivSFQDGVcZJvBgk3KoEMkjTlrq2n7tMjWWFR99RAVIxK392
         Dw3v7wEJdy7fEephPBeauMsErWLAg55bAtoVuwF5/3FwEFbkRGBVAvZwgxm0T0TeZkYX
         VP0w==
X-Gm-Message-State: AOJu0YyVkSUSZ00SWEfJwRDVizoVD2wabFbCHuDvGElLw3eJWNVnnYyt
	JZtamcvIjUuWBV/L9GMdPjOs461hRFlr9P4W2+erTEPWrjRoCBpJ+DoG
X-Gm-Gg: ATEYQzzNBX368xvMAnnkiAjj5IsEn3tE0E14hZaho5Wt/zUQ+/NrA7Vqt6nMZbBKf5J
	V26+ny2+B/gSUZbj3pvPVQc0HXlaTRQ48l8EydedRHsEfhVyWCnPgA/kXJje8YBIhAFoc9CpPH1
	/IjQ9//6mH6nXrBLOWC2NwADLTrjnpu6CN3Rrq+uZhosw/gF5pyZT7GLmND86SuuFvzqgVSUy8E
	bSaHsNZiZ+w1VFDhU2rWqRBlMK962r034DkkVazoUlpUoDhRGN7s4dOYR2MLTycbzkCw1YzFOWX
	WZnRzdxVUCYb1OovfX8vZwFvdgQuymdv5pod+LN7IVIRNHwuUxyVFwRIObIvPRjr8x94s+QYHQc
	BRM1Myu3J1QORVfggRcfdHM8+kIvxlaAM4qqPavziMcBr82ej18cZO0WdZyEDoWk3d86qa5slH6
	bSv+qVRgvlmXLdRsDG5FNbi7g=
X-Received: by 2002:a05:651c:1581:b0:385:dde5:1bf3 with SMTP id 38308e7fff4ca-38a2c564e64mr24339791fa.6.1772650682396;
        Wed, 04 Mar 2026 10:58:02 -0800 (PST)
Received: from xeon ([188.163.112.72])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a12a6ddd3bsm704985e87.0.2026.03.04.10.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:58:01 -0800 (PST)
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
Subject: [PATCH v5 0/7] mfd: Add support for Asus Transformer embedded controller
Date: Wed,  4 Mar 2026 20:57:44 +0200
Message-ID: <20260304185751.83494-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 13C93206D3C
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
	TAGGED_FROM(0.00)[bounces-271221-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,agorria.com,rere.qmqm.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
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

Changes in v4:
- grouped known programming models of EC chronologically (both schema
  and driver)
- call debugfs init only if CONFIG_DEBUG_FS is enabled

Changes in v5:
- added asus,tf600t-ec-dock compatible to schema
- rebased on top of v7.0
- kzalloc > kzalloc_obj in keys and kbc
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

 .../asus,tf201-ec-pad.yaml                    | 119 +++
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
 drivers/mfd/asus-transformer-ec.c             | 762 ++++++++++++++++++
 drivers/power/supply/Kconfig                  |  22 +
 drivers/power/supply/Makefile                 |   2 +
 .../supply/asus-transformer-ec-battery.c      | 272 +++++++
 .../supply/asus-transformer-ec-charger.c      | 193 +++++
 include/linux/mfd/asus-transformer-ec.h       | 162 ++++
 18 files changed, 2084 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/embedded-controller/asus,tf201-ec-pad.yaml
 create mode 100644 drivers/input/keyboard/asus-transformer-ec-keys.c
 create mode 100644 drivers/input/serio/asus-transformer-ec-kbc.c
 create mode 100644 drivers/leds/leds-asus-transformer-ec.c
 create mode 100644 drivers/mfd/asus-transformer-ec.c
 create mode 100644 drivers/power/supply/asus-transformer-ec-battery.c
 create mode 100644 drivers/power/supply/asus-transformer-ec-charger.c
 create mode 100644 include/linux/mfd/asus-transformer-ec.h

-- 
2.51.0


