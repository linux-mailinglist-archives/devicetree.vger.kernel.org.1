Return-Path: <devicetree+bounces-259317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Ce69L5jDdmmnVwEAu9opvQ
	(envelope-from <devicetree+bounces-259317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 02:30:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A8E834F7
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 02:30:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC5613003E81
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 01:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0820C13AA2F;
	Mon, 26 Jan 2026 01:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EoPCOPOm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9BE48460
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 01:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769390997; cv=none; b=bfFIwFln9sdZAEux3Eg4IndQ5F9IIh0bku9oW9VJT8HdVI1D0fOMFOiFOTFIMdB+yJvmWb2eqvCkLITFxzbzVYam21z6l3tAI4CMQ0hVBBY8tSRHamLQzwN+aXrDRjRnUmJXPR+mtK+BmYEoiwYIR2GmjA7g1chUWlFgPwjG1gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769390997; c=relaxed/simple;
	bh=MS9YqVJ1t3sphEVL27nIRnA6q3zwr4ViVe0zpRvavmg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PU1nBDQGLh3TWvVC21vIZB8CURdEzG+g9n5ZDqHcr0L9y8KxH9J676RZzIuWRBYGllNU+sUfxKHF62F57qZBdt1eVcDanHPajiVy6x5QXF9nFLTk/ctYw/S8W/jgHVAuBpRyQYiH22EB7LJFqd8Pum8/BenqgcNGV84HOhhSu2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EoPCOPOm; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-bd1ce1b35e7so2687009a12.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 17:29:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769390996; x=1769995796; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mYrNczo98zZ1oh2WwPTAQz02YYW6IaFFH9AxrDCmqsQ=;
        b=EoPCOPOmdhTD6P7Mjy2ZFl3JOgKheWMcb3g/IW9Bq5V534PqEc1u3xgw0zzXEBI9Hb
         YLC15lyqgj94NHxj29+AxolC1I2L8u26CY6XLjxClpKk9EjxruuDiAeW5zFuX22eJ197
         nZFywBzK/Ex+clWCStvjBCH4zkSI8/qjr7AzICA6lb2EEOsuo2x1aUDyAuIO2wNrLlXZ
         DGIlaUBolsKGM4+lhDeJH8RZSRqU1iga5UVYPB68jg5nsJ0EBtxn1RHpulTb9XfkAUk7
         5TEmRqy67UeAlTJ4+Dc55qtzYfK8g9n0rAadBcWvemMeDnH1VrLMhMqL34UVb6GX/rtQ
         U99g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769390996; x=1769995796;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mYrNczo98zZ1oh2WwPTAQz02YYW6IaFFH9AxrDCmqsQ=;
        b=Aeh1llrPPaxALIWaNmp9NShGnjT0LlPahu/ugAni0mc+5V/nOPrFB/DO+WO0ie65iY
         352KflB9V8/OkqsiMGWaqtg/mg+OpFvYeOJYm6Xf1ZX5DRiZDzOWYAKMy2hXkdAVDfix
         qatqmIb9O9I0qS/F6P5A/yXvnDs1pNfTTpzS3LG1tU2u3v1UQ9bhTPrIN+olZ/Cs0kJl
         6f0IxSVC6CWpaKf1QGMNaH79qpha1l8NENsZUleiiIkLhKR0PSXkYd1Qey9s23Q1Ai2b
         g98vUsgqPpjcUkX9hJ19OqLzEf//hC1ZtYjlAMoG1uPMXr3aywnZB4YGyLIdEamZyiRO
         +1QQ==
X-Forwarded-Encrypted: i=1; AJvYcCXSOco1g1EFmkuLGlJn5alJqvK0euX2+cid7TSii2imkNudjcGeukgd5fKK+NJwErWD2ysLDReX/41o@vger.kernel.org
X-Gm-Message-State: AOJu0YwMdS1lycYYranHjIlfDK6+CdTrgE3KDJnMmOFHKjNKLlgXQGv0
	j3mVHQKCUNo/o9j2ROJunOo9z7FIee/0sAsIfc77pBdPDKWBLPnlbLpjL5Z7tg==
X-Gm-Gg: AZuq6aLj1cV+ViPUyY6uiedx5neaDg3ioLwV1xAfO+736xKycro8ZMm/pnCAJgDeePy
	i+kg9erx2UwXeYPCBmMMQbIllA+qlsIxcGV69/1u/xmX+uSIFTKv/NbHpk8B5p0DSII5UZVvdgB
	HgqJ0S2fH1FS24RRF0mKr5CVQixqVVIkQjSNugzjcYIiBgcF4XHtgSXNjISy7t2FFMk7dzHW7fS
	i8hZ9CNLMYagDj+Hakb0Lfm5Tb9Y37rVGYxSfuNjOa9yXttOxnCfI0bKLJUb14H9ySg99t8Bx/C
	vdkmvaxHuhUpZ8zScJIrAanZ7Tl1ZG14s1JbJZAFK90MHUrlWoeOlOffYexCAoSu6qscHaneC8Y
	XXdyKU4rXfZVsgIBC7TxiLVJ7Pw0opBthIrfLFM2oZmhH6O55yWuY7I3D8WW2yUdL5MonImIFVz
	UB+IOToOo0dtiuI8Q8dLTMugIV6OtvY6aPNPUngUBJD0Jw4Dp7A5g=
X-Received: by 2002:a05:6a21:2e18:b0:366:5d1a:c737 with SMTP id adf61e73a8af0-38e9f14efa5mr2293253637.16.1769390995922;
        Sun, 25 Jan 2026 17:29:55 -0800 (PST)
Received: from [127.0.1.1] (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a1309dfsm7010359a12.6.2026.01.25.17.29.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 17:29:55 -0800 (PST)
From: Kyle Hsieh <kylehsieh1995@gmail.com>
Subject: [PATCH v3 0/2] iio: adc: ltc2309: add support driver for ltc2305
Date: Mon, 26 Jan 2026 09:29:40 +0800
Message-Id: <20260126-add_ltc2305_driver-v3-0-951349a87f97@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAITDdmkC/33NTQqDMBCG4atI1k1JJmpsV71HKZLmRwfUlERCi
 3j3RlcuSpfvB/PMQqINaCO5FgsJNmFEP+UQp4LoXk2dpWhyE2BQcQBBlTHtMGsQrGpNwGQDldA
 4deE1f2pJ8uErWIfvHb0/cvcYZx8++4/Et/Uvlzhl1DjFGpDO1MBu3ahwOGs/ko1LcCTKnwRkg
 tXcyUa7slLiSKzr+gWQPPnU9wAAAA==
X-Change-ID: 20251223-add_ltc2305_driver-728fa9161bc7
To: Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Liam Beguin <liambeguin@gmail.com>
Cc: Michael Hennerich <michael.hennerich@analog.com>, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Kyle Hsieh <kylehsieh1995@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1251;
 i=kylehsieh1995@gmail.com; h=from:subject:message-id;
 bh=MS9YqVJ1t3sphEVL27nIRnA6q3zwr4ViVe0zpRvavmg=;
 b=owGbwMvMwMW4tNlpO2fYkUbG02pJDJllhydE6N07wNqnnzpzt28Y04yAhaEyao93TBE+v8zJT
 mLNs55bnYzGLAyMXAyyYoosJ+WO9aY8j/hpeGzFdJhBrEwgUxi4OAVgIta67P9LDjfHzHt+4Lpq
 V2WL+gcDNqY3OtLXE9uENYt2L/t5NGmZqm+kKZuR9FOJhyvu655MLONanGV77vS8V+fOfHNV/qe
 d+qTHzXTRWSetLanlFS0tQX4pJ2N6Iy6FMvc66v52NhRxdXAX19bcI7d+hu+jTe5NHOm+7T+alq
 vFxLxYsC2tTPHFql6jOZNij844ePz6Zq6789VfNJSv2fEvqaQiumSS/t+PAp2cE0XfP47xXm912
 vAC/8ptejPbonZc1UhqjeZ2k6k62Wi3aC1fZ17KRr95xo0lssvPmEV5VQTGxzhxztONfK4p08Gr
 eT1jTZtTz/ZVO9m9xD/mSIo4sPgsnPNErSplj52Wc9QVAA==
X-Developer-Key: i=kylehsieh1995@gmail.com; a=openpgp;
 fpr=C91EC68D64E758F931C6A897A58342B70956C481
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
	TAGGED_FROM(0.00)[bounces-259317-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[metafoo.de,analog.com,kernel.org,baylibre.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[analog.com,vger.kernel.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kylehsieh1995@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 14A8E834F7
X-Rspamd-Action: no action

The series add support for ltc2305 controller from 
Linear Technology Corporation(lltc).
This is low noise, low power, 2 channels 12-bit successive
approximation ADCs.

Signed-off-by: Kyle Hsieh <kylehsieh1995@gmail.com>
---
Changes in v3:
- Modify ltc2305 channel mask to compatible ltc2309.
- Link to v2: https://lore.kernel.org/r/20251224-add_ltc2305_driver-v2-0-061f78cf45a3@gmail.com

Changes in v2:
- Reordered chip descriptions and code from low to high order.
- Renamed chip info structure to use ltc2309 driver prefix.
- Switched to i2c_get_match_data().
- Removed unused variables.
- Added chip info to i2c_device_id table.
- Link to v1: https://lore.kernel.org/r/20251223-add_ltc2305_driver-v1-0-dfa0827fd620@gmail.com

---
Kyle Hsieh (2):
      dt-bindings: adc: ltc2497: add support for ltc2305
      iio: adc: ltc2309: add support for ltc2305

 .../devicetree/bindings/iio/adc/lltc,ltc2497.yaml  |  7 ++++
 drivers/iio/adc/ltc2309.c                          | 48 +++++++++++++++++++---
 2 files changed, 50 insertions(+), 5 deletions(-)
---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251223-add_ltc2305_driver-728fa9161bc7

Best regards,
-- 
Kyle Hsieh <kylehsieh1995@gmail.com>


