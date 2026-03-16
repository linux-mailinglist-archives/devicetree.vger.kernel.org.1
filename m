Return-Path: <devicetree+bounces-276330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SPuaIQ49uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:25:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D1829E228
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:25:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1BA0307AA30
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:19:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 939DA3CF686;
	Mon, 16 Mar 2026 17:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Vr4HZzbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182173CFF4A
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681592; cv=none; b=eCvKe8kre70DjXFu81HM6ns+yyRXdhsZCi7YJowdC/+eE88p6jS9keBSYB1PXXvn9LGiVJB7GbewoPyt/wYdBT6+LVvmN2wDDbRgJOylMRsHZSdrzw765CnMiHcPd1PM3hAeVGBt1pOtmnHgkW2RPtEcKBksohNSL7MqiI8LUHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681592; c=relaxed/simple;
	bh=OOhWhIBktKoAtdZER1V9ZuKqMI9/xmuvVzeYZnJq6n4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Melr4DYtjYnWjtfnA71fnptU/ci/4DWIRAm3EDpW34OxYB9watwaWrdbHEILr107ZPiKi9SHNqsex9gVLa6cJb7j3oNyvYz+gRtwqBm2lY7q5s8cjB5EFLbAENztV2NgX2dzmOMjRMeIBpPNIFUZgaNMtDrjRVh2cFKP+xkMbVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Vr4HZzbP; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b97be593f09so181376066b.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681589; x=1774286389; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ui4W/qmHAPpyDEXnX4wSdjce55+fYM+nlh/b/oydIMw=;
        b=Vr4HZzbPRIhBCSXdcedBYQcXcnXvLcYpInye5TgPFvzjh1Cz7l5+Hyc2QW7qbYzkuH
         kMjUhKZhe68ocfqRXvRQ/Qhw17+wZSO4S8HOhIcuUncz1hY5OLLa3BveQnBZaMg4Fi6c
         VKgZsDv+sIGexmf7tDndmT3b2Y9G6Vo7yuNpqaMV9Evjbl2mRO8h5Fe19hWNkcM3+oOu
         tWPwl24oV+DyG0D7AgsKoCFwGwaxF3HOgnoAw4/Hck0ddbxpnnHnCyVzh4osI6gsQ7ba
         ri6olGIiazlE8ttTsa7HBoVK9QnaRW25FqzsTm4Lzz3g3wrYDwJZbjf9giv2iWxBc4/c
         I5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681589; x=1774286389;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ui4W/qmHAPpyDEXnX4wSdjce55+fYM+nlh/b/oydIMw=;
        b=QcIt2u7Px923mqCKzeSKOecPYp88ia6vdMshqRzAN/vswHQOIOjbuuDf6GoNHfI3jF
         wp/+RJ/EVqwERW4gbSziNqEqd2oMXu37Q+qhXWFt2vL6/eedEVxW5wE7Hq9bqpC4x3Al
         qq9UXFzjvqAohrY9WqbiyGGc2WkFPphr8Oj7rWU21qNPPxdieEukQkKp0P2jkiZrsTis
         digFxV4QxRxnVOQvpSyjXBgbNMloSl3BBRGSld2Nhfc23NYPYBZ96r4Sc+7cwa9Iv4cX
         kG8xgPkGerYUDaUOG5fnxm9IJGWZRac/12N4vhu26sz4edp21W5Vyg+QSyUhjfjvCEtC
         1xwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUkD3fDPwh0NRS2cJ0F+p93mCJsNhQvyHqT3tQBDV4UbB7Jo1DUiW3o1lc8w9aFwtunP+rKBsg1wmJN@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmf3+loMFnwkX390Ss/6zaYFXmWiEG6lvJNMGCnSpla0+aKkOs
	LOMXNQjbqYgTAFU9X3rSgKyo2s7vjC0OIUnrLa0GMURNgvrCmmgxPtgY
X-Gm-Gg: ATEYQzzawdjm+H6WYKNBWPpvKz3rAm913sBJfuT0SF6R32KEXGtiOq4yAk2YflAAzRp
	z0rLIaaiIqAeJvUeb1RF7dn2wbG4/4y/CsquKwlbj2gIlmAfRqum+F8dn2NfsaBpB8OFuqhz9gQ
	T1Mq3lhai8H6bCYK92DD88QiL/bJkIMqYiuue8+XJ/0Yc3HHUXIpgrsE+k7+OcolPpceu+l96rt
	cvP8rITPmebjOtVKl7rF+RoJ8A8GdPZQmwyPv3Dszde3j7CsiV9e9uULhpFsI0glP3eglbvSOHZ
	jdvVLJ19SAzA3A6KZU2GOD1Xx1QSZi1YE1vXIwttFcGBI/F2roZS2RdxkuSb/u1jm/vhiMek4DQ
	ZrO8ZcP6oZfPA2AmOtgLMFOPxdUusavci973UjypSkUTcnV/6hGxj+tiuSV7Ccvr3AEB4b7M1Ra
	SNJZibhDiRVSYfFokhf4ax7DbSMg==
X-Received: by 2002:a17:907:86a5:b0:b96:e79f:194c with SMTP id a640c23a62f3a-b97d6e51416mr31543466b.31.1773681589204;
        Mon, 16 Mar 2026 10:19:49 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:48 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH v4 0/7] iio: light: vcnl4000: add regulator support
Date: Mon, 16 Mar 2026 19:19:44 +0200
Message-Id: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23NywrCMBAF0F+RrI1MHo3Flf8hLpJ02gb6kESDU
 vrvTgtCkS7vcO+ZiSWMARO7HCYWMYcUxoGCPh6Yb+3QIA8VZSZBGlACePZDpwGAR2xenX2OMXH
 na+FKC8KjYbR8RKzDe1Vvd8ptSNT7rE+yWK4/T+x6WXDgxjhqlB4Lo65Nb0N38mPPFi/LrSH3D
 UmGdBU6550rSvtvqK2h9w1FhvLa6rJSYM5ma8zz/AVwnkZ4PgEAAA==
X-Change-ID: 20260310-vcnl4000-regulators-bcf1b8a01ce6
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>, 
 Raymond Hackley <raymondhackley@protonmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276330-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com,protonmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E5D1829E228
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch series introduces support for voltage supply, I2C and cathode
regulators. This fixes an issue where if a regulator is shared between
the proximity sensor and some other device, and the other device is
powered off, the proximity sensor would be powered off as well.

One of the commits includes a Reported-by: tag without a Closes: tag -
the report was done outside of LKML.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Changes in v4:
- Reworded device tree bindings commit into imperative mood and
  clarified where do supplies come from.
- Moved data->chip_spec->set_power_state() calls from init functions to
  probe.
- Removed explicit less than 0 checks for ret where unnecessary.
- Moved the patch that adds regulators to the end of the series.
- Added an explanation for removing duplicate prints in probe.
- Fixed indentation for devm_regulator_bulk_get_enable() and i2c_smbus
  writes in vcnl4200_init().
- Removed a redundant check for "proximity-near-level" device property.
- Link to v3: https://lore.kernel.org/r/20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com

Changes in v3:
- Added a more detailed description for supplies in the dt-bindings commit.
- Separated sorting includes into a commit of its own.
- Replaced all occurrences of mutex_init with its device-managed
  counterpart.
- Moved client->dev variable declaration into a commit for adding
  regulators.
- Removed redundant dev_err messages in probe function.
- Replaced all direct usages of client->dev and data->client into usages
  by variable.
- Link to v2: https://lore.kernel.org/r/20260312-vcnl4000-regulators-v2-0-2bdebbcbb58a@gmail.com

Changes in v2:
- Removed double quotes in includes.
- Reordered includes alphabetically.
- Enabled regulators before the mutex is initialized.
- Replaced direct usage of &client->dev with a variable.
- Link to v1: https://lore.kernel.org/r/20260311-vcnl4000-regulators-v1-0-66b6038ce563@gmail.com

---
Erikas Bitovtas (7):
      dt-bindings: iio: light: vcnl4000: add regulators
      iio: light: vcnl4000: sort includes by their name
      iio: light: vcnl4000: move power enablement from init to probe
      iio: light: vcnl4000: replace mutex_init with devm_mutex_init
      iio: light: vcnl4000: remove error messages for trigger and irq
      iio: light: vcnl4000: use variables for I2C client and device instances
      iio: light: vcnl4000: add support for regulators

 .../bindings/iio/light/vishay,vcnl4000.yaml        |  7 ++
 drivers/iio/light/vcnl4000.c                       | 90 ++++++++++++----------
 2 files changed, 56 insertions(+), 41 deletions(-)
---
base-commit: 6e03baeeb160e6cfd72f2c39f26c50bcd925c7a0
change-id: 20260310-vcnl4000-regulators-bcf1b8a01ce6

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


