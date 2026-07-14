Return-Path: <devicetree+bounces-326028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hV7HIFX7VWpvxQAAu9opvQ
	(envelope-from <devicetree+bounces-326028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:03:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E692752A76
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 11:03:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=cMs3pkp4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326028-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326028-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D7A6E300E68D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C689439344;
	Tue, 14 Jul 2026 08:54:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD19D3F5BD8
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 08:54:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784019242; cv=none; b=CPpBFAZXSCL7v08vir9v4hzbAdoHC9P0ahhUsXm8e0NjU+dkSWZcxinSggQ+XFLc5HyIJR+4KyZFbqeHU02SL6mvmqoMjiMFileIVkyobTGEp8oeCKl1cQRQC8VM/IdnW4XDcksq3RKxfXOu4H4TQTyzdAXzIUJex0XunJOrTag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784019242; c=relaxed/simple;
	bh=Ls762+nAcAVDOYe/ETAhtif9vkax21EL6tHiK3Msxec=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GudLKIxUAOtpobwG6jXq/H4TMBjwDbn6I4IFERAQpWFzFdXM+bDz6ITMSYdnG3mZT79qIX8r4GKa6I6M9TB1psTIBI/RChmvC6uMTlk8Fjre5SMY6aAabhMPNnm8Qq5mnKNAdouoeVoxlLo4hlhm+SCZfSWgpxtd2cCbKBabmyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cMs3pkp4; arc=none smtp.client-ip=209.85.218.44
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-c166f1bbeaeso2029366b.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 01:54:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784019239; x=1784624039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IloFAxB4P354MyLVrL9b3phaMa87Mw8VkBQn4mh2aH4=;
        b=cMs3pkp4rUU8zI6Gpj5GYT4I+4WHOAywLq/M7VMXzKX1WLk3eghF6BdeURQ8/S8b5W
         b6A6+Wkk73TN3vr9rwlQp5ehbx5MnKZn3cpeq3/A7yJRs+qhU7XF8N5lUNwMbZ5pk949
         /4FHurP1glAQksZKCoFRe85iXGYvvXAhJaK/960AEBGHwwVLthMgEovQN8qGgugNV4bq
         Bi3m5jgfy5tyhjVqORr6yGW1Vd4XpJlUEaXNf0c7UZnyB4Ue4GfEp/0O5B49lbAUyFAa
         hRAGbn+UNIMyY308rCD+dBKqv1IyCpcA54USVU0T5344gcEGOsKHuxMmcjwY46grWGDc
         3Ysg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784019239; x=1784624039;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IloFAxB4P354MyLVrL9b3phaMa87Mw8VkBQn4mh2aH4=;
        b=oKqa0/WjliVZYi6kzVagfYeWmhDQfhW0BDcO+QV510r9oi9VVjRr5cWFYd0SECWNg0
         RCLbanoLJnoFQ3tknfe+ahbiz1T2N9tA1vAAZ3aH3ENbWkF/y9BL6nMFIa+DV3HDRCx5
         TaswEvU4mY+OMr6qzmbMVOHlwWbaTplgd46ntlkufH4XSICGAMtt7EYv+ZS/XcBc8663
         zGuhR5EOrHyuyd8eloZe7hEDWUVkY0Krm714h0D+awWStVY9EuSrsPzZCXxHnyH9AKlA
         0z49+Qbaa06V9JygxLCb7g53VcJ9M6HnRqPcT7ATvyPUr2oGRlxBDou1u6VAfGq8eB48
         UFyg==
X-Forwarded-Encrypted: i=1; AHgh+RoHnYCMwtBye0flKh8+Duj+Lm3iYO7GLhysYdBpD9A9zz9NEhKV4QsBHogHOPsgAyJSusb//X5PK1Lu@vger.kernel.org
X-Gm-Message-State: AOJu0YyI7yQxztjExK4Un4TqAeoaYAFf81aqVqVOT/WwX2doSXpy6Lo3
	OlQ7bgO5nVlIaR9urX82br9z/7sybtJdMM1GbkUnN7LEd0gdgH6lf9QJ
X-Gm-Gg: AfdE7cmcA8a1g0RyfPycrZoOHJ86SbjkxWoUcq5ob9e29sfweb3yJWowPFLUCcQOxJV
	o3zVOpk2YkWby90ouYF4OYX+tz2DSxSijeS2926D3+C0jmp/ykmQ0EXtwlA/lIiSmGX3PntoIyv
	VETgAMsqbHDDqcF3v6CwosVdH1oE6U3kNxzFObwgZd4ztaAGWR03IYq9chgaPSFr+oVCj9cvltg
	DtOqv011+0+WsaJM7h+IsqVM62KBwfQGcT88oAcbH37Zlk/xsdyyCVZPrZhoD/RDpCQwiB6yVcQ
	xSzxlnK03bc0lXDjGqbAfn1HgZNpokHVFWj/lJK1A6NS0C1d4EdOZSE6V/crUtYqVkKW7jxiP63
	iiwIgdlDnw/rBRGesngKXgcmBBRrDJEilb88Eea3KE/xEzEpz2dHNUgZgZ8T6rr6P1AtckIzDTt
	3qEZ2QNJlcCrGPP0ykxjhpWENZuMM71cRC5Q0=
X-Received: by 2002:a17:907:94d4:b0:c12:764e:324 with SMTP id a640c23a62f3a-c166161cd2bmr108616766b.7.1784019238995;
        Tue, 14 Jul 2026 01:53:58 -0700 (PDT)
Received: from DE-PF5B95TD.embedded.cmblu.dev ([87.129.199.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15ad82279csm1143689366b.13.2026.07.14.01.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 01:53:58 -0700 (PDT)
From: Wadim Mueller <wafgo01@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Maxwell Doose <maxwell@maxwelld.cc>
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
	Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
Subject: [PATCH v5 0/4] iio: flow: Sensirion SLF3S liquid flow sensor
Date: Tue, 14 Jul 2026 10:53:54 +0200
Message-ID: <20260714085358.20842-1-wafgo01@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [4.44 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	SUSPICIOUS_URL_IN_SUSPICIOUS_MESSAGE(1.00)[];
	URIBL_RED(0.50)[maxwelld.cc:email];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.15)[generic];
	HAS_ANON_DOMAIN(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-326028-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:maxwell@maxwelld.cc,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:marcelo.schmitt1@gmail.com,m:455.rodrigo.alencar@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:marceloschmitt1@gmail.com,m:455rodrigoalencar@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	GREYLIST(0.00)[pass,body];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wafgo01@gmail.com,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64:c];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,maxwelld.cc:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7E692752A76

Hi all,

this series adds a driver for the Sensirion SLF3S family of I2C liquid
flow sensors (SLF3S-0600F / -1300F / -4000B) and a new IIO_VOLUMEFLOW
channel type.

The series is now based on iio.git testing, which already contains
Rodrigo Alencar's IIO_VAL_DECIMAL64_* core formatting work, so the
external dependency listed in v4 is gone.  Patch 3/4 adds the
IIO_VAL_DECIMAL64_FEMTO format type on top of it.

The compatible/fallback layout of the dt-binding is intentionally
unchanged from v4 while the discussion on the v4 thread about the
preferred fallback scheme is still open:

  https://lore.kernel.org/linux-iio/20260621145117.70b2d50e@jic23-huawei/

Changes since v4
----------------
  * rebased onto iio.git testing; trivial conflict with the new
    IIO_COVERAGE entries in the channel-type lists resolved (1/4)
  * driver: include err.h for PTR_ERR() and math.h for struct
    s32_fract, per Andy
  * driver: fold the per-variant scale_num/scale_den pair into a
    struct s32_fract, per Andy
  * driver: add enum slf3s_variant_id and use it for the variant
    table and the I2C/OF match tables instead of bare indices, per
    Andy
  * driver: slf3s_send_cmd(): drop the "at_least 2" parameter
    annotation, decouple the ret assignment from its declaration and
    check errors first, per Andy
  * driver: use sizeof() instead of ARRAY_SIZE() for the measurement
    byte buffer, per Andy
  * driver: parenthesise the (FEMTO / MILLI) factor so it folds into
    a single constant multiplication, per Andy
  * driver: derive the temperature scale from MILLIDEGREE_PER_DEGREE
    instead of a bare 1000, per Andy
  * driver: checked the struct slf3s_data layout (re Andy's pahole
    question): the non-pointer members total 260 bytes, so one 4-byte
    hole remains for any member order; left as is
  * driver: drop the inline comment on the mutex that duplicated the
    kernel-doc, per Jonathan
  * driver: fix the duplicated argument in the DT/sensor variant
    mismatch dev_info(), per Jonathan
  * driver: reformat the i2c_device_id/of_device_id tables to one
    member per line, per Jonathan
  * MAINTAINERS: updated Maxwells address in the R: entry to
    maxwell@maxwelld.cc, as he requested on the v4 thread

The signaling-flags word (air-in-line / high-flow / smoothing status) in
each measurement frame is intentionally not read; exposing it can be a
later follow-up.

Thanks,
Wadim

Wadim Mueller (4):
  iio: types: add IIO_VOLUMEFLOW channel type
  dt-bindings: iio: flow: add Sensirion SLF3S liquid flow sensor
  iio: core: add IIO_VAL_DECIMAL64_FEMTO format type
  iio: flow: add Sensirion SLF3S liquid flow sensor driver

 Documentation/ABI/testing/sysfs-bus-iio       |  11 +
 Documentation/ABI/testing/sysfs-bus-iio-flow  |  21 +
 .../bindings/iio/flow/sensirion,slf3s.yaml    |  58 ++
 MAINTAINERS                                   |   8 +
 drivers/iio/Kconfig                           |   1 +
 drivers/iio/Makefile                          |   1 +
 drivers/iio/flow/Kconfig                      |  22 +
 drivers/iio/flow/Makefile                     |   7 +
 drivers/iio/flow/slf3s.c                      | 541 ++++++++++++++++++
 drivers/iio/industrialio-core.c               |   3 +
 include/linux/iio/types.h                     |   1 +
 include/uapi/linux/iio/types.h                |   1 +
 tools/iio/iio_event_monitor.c                 |   2 +
 13 files changed, 677 insertions(+)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-iio-flow
 create mode 100644 Documentation/devicetree/bindings/iio/flow/sensirion,slf3s.yaml
 create mode 100644 drivers/iio/flow/Kconfig
 create mode 100644 drivers/iio/flow/Makefile
 create mode 100644 drivers/iio/flow/slf3s.c


base-commit: a50909aa46dec46de3c73235fc15a7d6f763d996
-- 
2.43.0


