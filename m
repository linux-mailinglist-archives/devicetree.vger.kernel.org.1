Return-Path: <devicetree+bounces-261587-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFWuDXmIf2mptAIAu9opvQ
	(envelope-from <devicetree+bounces-261587-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 18:08:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B88C699F
	for <lists+devicetree@lfdr.de>; Sun, 01 Feb 2026 18:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E66E30048ED
	for <lists+devicetree@lfdr.de>; Sun,  1 Feb 2026 17:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7FC7271440;
	Sun,  1 Feb 2026 17:08:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iXQPM5tN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A137226CF6
	for <devicetree@vger.kernel.org>; Sun,  1 Feb 2026 17:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769965686; cv=none; b=jn9soN8JK2OyGWATRil39f0Aj9z+gr9V+tYC9FSHKMxIQ8B8oIoVWXYvvbzOVOYE4AfaR8T2bpc+8gM7pmvCsASMe0uL94Wo/PMcn3rTQm9BVlh1FKQGonBBtM6uLZLmvD8z7+HfOHtGHVVeQ/vNLlzLUnamgfewNdGd0XpQJGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769965686; c=relaxed/simple;
	bh=HC/GsoZABfP/swmhazc2X5Dfl3xUTt1ryP1//hm9SCA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jxoNQSvjMiM3E+MdTB2o35eykHbgHLNsY60NpVtkRR8WRAGupPuqblNTvAYADOylO/tsyhnrQ50pr4nDqRm1nKzzEgK6ErLDnKJrOytFg90ksSP3pgrW+GrLzVDX42wA2PAmHlD5NxoY4WbLc5g4Phk6v7MLXuQvpNJ1/VS/bQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iXQPM5tN; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-435f177a8f7so2695536f8f.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 09:08:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769965684; x=1770570484; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NtEuBedDLC2NCvu5kyy4qD7YNneBQG05ke8bNHSOJkA=;
        b=iXQPM5tNXPSMm5qVJvFJRQCaQW+d3mm+pT5OTHJF3O/B8mP3jSpx6veXz8qH6312Cs
         v4MSZxFJxL0L5Xer2Qv7PS3jNC+zMN9SeDoJQbvkTaB9vFWuHK7k3NEhtYTvE0SI2B6c
         fuiqxoeuKB6NNIt8v6dXZOZ9ewdKcrPZXiSqonwxHTk7wCKRNs0QhVRQPLfHSKe0ZCf2
         OOqcuV2bG8kzMQiz0kjiMVVJDXe8AoVhuJUvU1Akt6RClWBXqkj8l9If616hTH4iZGu/
         GjZSpIkwGLQ5+W5YBxNi0amGfO/YjWELptcbtbXOy+W2/spWAE84ztM+gxgkeeICCzQk
         5FQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769965684; x=1770570484;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtEuBedDLC2NCvu5kyy4qD7YNneBQG05ke8bNHSOJkA=;
        b=buYvnz1r21eUQUzFUCqnHfByI/pRxK/XoFhww/PKW79dNPwRSrUuaHunVuJ9IwXzjh
         y71dWf/kC3BQagYfa4AU0xgqo2EqVkC6HklAloP2oQlS0GAbjAWatojod1+tsVuTEj0p
         1FtomWBa769AGtkV/c2DbtyBOibGzS0l7g3NwZ/5J+Tbtn47d24EyqgS+gSinRxvW/iH
         LnKiYRDwuGNEFgne2rhD3M3tvlAuG5bD+EphUEPMe/y6xzInA93q8wNgG/O4R8E//Hj6
         d88NIDOb3+sS3/yhwIgjya1RboPJI+xS2sm4oIevZqi9ntF8qS5umo3L9NANwoSKsl5N
         n+9A==
X-Forwarded-Encrypted: i=1; AJvYcCXPw/q2VDTZXkNnAR7Ke1Ij6rN+O2BqN4Lshm+uEqxmq1QJkrat1Ailg+i8uDfABZvXKnH7rF27ihlX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhy2pS/OTezDqMAlpVkHiyN7+gBRj+VXLmWIe1OOrXL27npZoW
	YPiBhVzv0Ebtm83Jm85EQ6D9h21Bby1a9wRWiElJ1gJQ9b/PixY2wqoK
X-Gm-Gg: AZuq6aLt4SPhPn8MHusQwhLFHG34AjJemaDhwmc0VS4eEbSakFEggfUhCpO6WydMc4Y
	KNUuNXrUBleZuJ+TvGzLJZD0ExHzy8n+wT5lv/ZvEyxZiRy76onSRDxLw6BJ5WWF0jrG/6WaRRz
	9OC++BEQ2dmDMyalT+LQNKVQxMFvcI3+m2tnpJ9jx8zTunc9KKLhbHVVFnvnC6mgJkeJwdrOFrI
	mkrXhyVlC31M4Y5AbL3yCiUSb7YXhixysrbDNRhRZx2PO8WKIDGGjGbls+D6hbZxQCW8yWYNjZM
	eFsIdtskmHNuYAy7sNtRhrxjAAAatKGW75kdxNiUTNaIbQ1bcobfFIu0cWzuuyv1sgunDwvA3dQ
	aoSpfm0ikoXzcgGLdYCVBkZDRajLujdceXqMqNXkcQRgyueVqEu26zky5qLAW7On5Kyvb54aLc7
	a5kOb6sguwdDsGKg==
X-Received: by 2002:a5d:5751:0:b0:436:1b1:6cbb with SMTP id ffacd0b85a97d-43601b16f1emr3377181f8f.7.1769965683658;
        Sun, 01 Feb 2026 09:08:03 -0800 (PST)
Received: from [192.168.8.10] ([2a00:f502:260:44d4:a26c:adcb:8da8:2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e10f82aesm40615460f8f.19.2026.02.01.09.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Feb 2026 09:08:03 -0800 (PST)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Subject: [PATCH 0/2] iio: light: Add support for Capella cm36686 and
 cm36672p sensors
Date: Sun, 01 Feb 2026 19:03:47 +0200
Message-Id: <20260201-cm36686-v1-0-4949a2a9ba63@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDIwND3eRcYzMzCzPdtGTzRAtjC9M0w+QUJaDqgqLUtMwKsEnRsbW1ACN
 mvQRZAAAA
X-Change-ID: 20260201-cm36686-fc7a8385f1cd
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Tsai <ktsai@capellamicro.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261587-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 85B88C699F
X-Rspamd-Action: no action

This patch series adds support for Capella cm36686 and cm36672p ambient
light and proximity sensors.

Capella cm36686 is a combined ambient light and proximity sensor with
adjustable integration time, interrupt and hysteresis support. It has
the slave address of 0x60. cm36672p is fully compatible with cm36686,
except that it is a proximity-only sensor.

Unfortunately, datasheets for these sensors are not publicly
available. This code is based on Android downstream kernels for devices
which did use these sensors and a previous submission for cm36672p to
mailing lists:
https://github.com/LineageOS/android_kernel_xiaomi_msm8992/blob/cm-14.1/drivers/iio/light/cm36686.c
https://github.com/shakalaca/ASUS_ZenFone_ZD551KL/blob/android-6.0/kernel/drivers/input/misc/cm36283.c
https://lore.kernel.org/linux-iio/1465462845-1571-1-git-send-email-capellamicro@gmail.com/

The following code has been tested on Asus ZenFone 2 Laser/Selfie, which
uses cm36686 as its ambient light and proximity sensor.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
Erikas Bitovtas (2):
      dt-bindings: Add binding document for cm36686
      iio: light: Add support for Capella cm36686 and cm36672p sensors

 .../bindings/iio/light/capella,cm36686.yaml        |  74 ++
 drivers/iio/light/Kconfig                          |  11 +
 drivers/iio/light/Makefile                         |   1 +
 drivers/iio/light/cm36686.c                        | 810 +++++++++++++++++++++
 4 files changed, 896 insertions(+)
---
base-commit: 4c87cdd0328495759f6e9f9f4e1e53ef8032a76f
change-id: 20260201-cm36686-fc7a8385f1cd

Best regards,
-- 
Erikas Bitovtas <xerikasxx@gmail.com>


