Return-Path: <devicetree+bounces-263440-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEV2KugkhmlSKAQAu9opvQ
	(envelope-from <devicetree+bounces-263440-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:29:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2383A100FDB
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 18:29:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 016B33014506
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 17:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E70093DA7E2;
	Fri,  6 Feb 2026 17:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BMJqig8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1163D523C
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 17:29:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770398949; cv=none; b=RuZ762C6joG0a5U/c+AxeR13Y6lAHUejOYA8yrKOX3D+lgi4GMK67dG8oFygufG5V8MW8CSiPRrY3uOPPmooNg9VNo0orpm4t0rYJevjmUWwNi4uUlkBxYsaiZAgFo1PjXvT4k5xYXtny2dXod2NzdXz4umsKAIVijI8pPevBFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770398949; c=relaxed/simple;
	bh=DMFf8IatqPgPC4SuwdNqD6eGuSOXIaGvf5N2KhUlJU0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=t6tGg/q05Z7seU0yGAedcWZZeSysmKfmhNwa8+AGQWH2/Gg63uPMZYj2LOgs3LyDIhiG6J7IrCx87Q/ryXGC5NEApWVE/FUqqyojMqt892Ax0FW/dxcJoD5WFvOYPZeVjW82uWk2VCkYC9s6diT9qeEUOYr9Ovtxg8TgbDn5ADA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BMJqig8R; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-4362507f396so1720186f8f.0
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 09:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770398948; x=1771003748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jh4BgGzIqnS2YSFnGO3bkqStjslK7T/mmxxxgCr3KOk=;
        b=BMJqig8RAQuaF6pjM+zHc6hkfNZU9rwaBeF9HWG4Dvi+DPHKv4YmQ67Pnzh+tEjdCX
         e5SiaSRpTHNSA1hKL+P0wQ/YOZuzcb+nsaaemzYKpzIacmHipVgXsuBIsLsy7SNVFLfJ
         muJckl4mGi6xGWyf8fPXeHVLqFrVM3M07am108W8GWSet7DK240Fu5/Nv44ZXapyqLUh
         goh66DjKhzTuB8N8dDAecSZmUUjQPYLdBPW19pwiC3mNNPfx9nZoKOLdhXJw4KzzswWr
         Q0PPYytLxv9DL+6GMbvWyJV/Mk7ahUfZqZlIO3os5ROH5HP3NFsgxtrrBD2ED+EfLe6O
         HhFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770398948; x=1771003748;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jh4BgGzIqnS2YSFnGO3bkqStjslK7T/mmxxxgCr3KOk=;
        b=I1GSN0zmpuZTdgINB8yN/14/tEXN2ieV5NaXIwEYOpYhfUps0qrED7I6mqW28ZPxvC
         BF2V3d1nVExWo1LFrkUO0aJrpyl3ta0PGpR+5o08knH9yRIN65/zmn17NT8nkYFCicuJ
         Euq8j+56RcCEs2lChCJyWAv4fcKBrlRoC9FFjc36VsU8w4X3tIU7pPyJsUuL75LOlJkZ
         iC9eao0Svutif91WEz0GndbnwRWX05EgMykySs52421hnjicsak7JU4eJnWmlOQARhwl
         +EdKcObM00S+jqpliu9Km8Z7rPDRjWLUO9mnqmb6UhKJnavt895clXapsesHOosoaYl5
         h9Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXL8SSK9Fp96o8vfnWlNK4VVW6t+MWmOUvZckQ0TGnDkBwNLHA4kNt/N1CqiyyeCLkZLszD0yYuno+7@vger.kernel.org
X-Gm-Message-State: AOJu0YwDIENrAs94pMcE/dk3mZsIEbyqd52W7Byj2kBP8WRd+U1CwvhL
	Jo0MSfgZTwMfyetVBUJIodxT/be0rHk/90vD0uvWbELWktdwgLmr/+Vn
X-Gm-Gg: AZuq6aL7uF2GUJipIX8jdmXGtiQ1kJKzNKDPst0dPaQpzR/4Jzpv4Jv1SGTHjMUTgcW
	HX/4BvgTZJGnSNZsW6I1RbPs8KTbIaH2ljEzznUC9LjJzRWnJyiucsHgDOJQ2BJqUkCc3LAlBGq
	fzUimIYtXf+znyNSNGvyupigOgI7M1RFRPVn0tkGQdwqxMMARFLSljSTdimKkJG0Y3iKi3keQYx
	jrzOknWQN2kdo6ctt3T6iSLrXx4M/WnCo7gp/4TzPiRoT3Dsrm1NLYuRFsNAb+XW6bdNGrIKGKp
	ICGv7jc2Y2QcFWsYpcE6FHK5Zv0OXAGzO1OlfzJeKNTOgDssslxUItHoj9G7zvfMUmDzJaJgZSY
	OnFxXt0ANRqzt8y5cuFdFBIgkIdPL04LeIHoiLrLLYh622EYQvz0isDuWMPTOIoNeXUuY5vCVxL
	xqVjanaFCgq+Y=
X-Received: by 2002:a5d:588d:0:b0:435:94f8:e7c6 with SMTP id ffacd0b85a97d-4362933ac28mr4655822f8f.9.1770398947401;
        Fri, 06 Feb 2026 09:29:07 -0800 (PST)
Received: from xeon ([188.163.112.49])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43629734268sm6846033f8f.24.2026.02.06.09.29.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 09:29:06 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Lee Jones <lee@kernel.org>,
	Pavel Machek <pavel@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Dixit Parmar <dixitparmar19@gmail.com>,
	Tony Lindgren <tony@atomide.com>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-leds@vger.kernel.org
Subject: [PATCH v2 00/11] mfd: cpcap: convert documentation to schema and add Mot board support
Date: Fri,  6 Feb 2026 19:28:34 +0200
Message-ID: <20260206172845.145407-1-clamor95@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263440-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,atomide.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.991];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 2383A100FDB
X-Rspamd-Action: no action

The initial goal was only to add support for the CPCAP used in the Mot
Tegra20 board; however, since the documentation was already partially
converted, I decided to complete the conversion to schema too.

The CPCAP regulator, leds, rtc, pwrbutton and core files were converted
from TXT to YAML while preserving the original structure. Mot board
compatibility was added to the regulator and core schema. Since these
were one-line patches, they were not separated into dedicated commits;
however, the commit message notes this for both cases.

Finally, the CPCAP MFD was slightly refactored to improve support for
multiple subcell compositions.

---
Changes in v2:
- fixed code style
- rtc conversion was picked, so patch dropped
- added audio ports description into mfd schema
- splitted schema conversion and compatible addition
- minor style improvements and typo fixes
---

Svyatoslav Ryhel (11):
  dt-bindings: regulator: cpcap-regulator: convert to DT schema
  dt-bindings: regulator: cpcap-regulator: document Mot regulator
  regulator: cpcap-regulator: add support for Mot regulators
  dt-bindings: iio: adc: cpcap-adc: document Mot ADC
  iio: adc: cpcap-adc: add support for Mot ADC
  dt-bindings: leds: leds-cpcap: convert to DT schema
  dt-bindings: input: cpcap-pwrbutton: convert to DT schema
  dt-bindings: mfd: motorola-cpcap: convert to DT schema
  dt-bindings: mfd: motorola-cpcap: document Mapphone and Mot CPCAP
  mfd: motorola-cpcap: diverge configuration per-board
  mfd: motorola-cpcap: add support for Mot CPCAP composition

 .../bindings/iio/adc/motorola,cpcap-adc.yaml  |   1 +
 .../bindings/input/cpcap-pwrbutton.txt        |  20 -
 .../input/motorola,cpcap-pwrbutton.yaml       |  32 ++
 .../devicetree/bindings/leds/leds-cpcap.txt   |  29 --
 .../bindings/leds/motorola,cpcap-leds.yaml    |  42 ++
 .../bindings/mfd/motorola,cpcap.yaml          | 413 ++++++++++++++++++
 .../bindings/mfd/motorola-cpcap.txt           |  78 ----
 .../bindings/regulator/cpcap-regulator.txt    |  35 --
 .../regulator/motorola,cpcap-regulator.yaml   |  51 +++
 drivers/iio/adc/cpcap-adc.c                   |  15 +
 drivers/mfd/motorola-cpcap.c                  | 139 +++++-
 drivers/regulator/cpcap-regulator.c           | 105 +++++
 12 files changed, 787 insertions(+), 173 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
 create mode 100644 Documentation/devicetree/bindings/input/motorola,cpcap-pwrbutton.yaml
 delete mode 100644 Documentation/devicetree/bindings/leds/leds-cpcap.txt
 create mode 100644 Documentation/devicetree/bindings/leds/motorola,cpcap-leds.yaml
 create mode 100644 Documentation/devicetree/bindings/mfd/motorola,cpcap.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
 delete mode 100644 Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/motorola,cpcap-regulator.yaml

-- 
2.51.0


