Return-Path: <devicetree+bounces-307915-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uBN7IQsDJmpcQgIAu9opvQ
	(envelope-from <devicetree+bounces-307915-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 01:47:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4A4651F32
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 01:47:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=FvvgAz8n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307915-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307915-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 21341301A2AE
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 23:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50F6934CFA7;
	Sun,  7 Jun 2026 23:45:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B84315D3B
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 23:45:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780875933; cv=none; b=YpKz5eS2X77iM7onzoDTn3LkP6vM9v+nrv/wFqFHLhuLbpYAczdPhFOFKq5uvs3/PhcCpq27gfLZ1L0zOQZLc6pQM/9i9FrAiVM4piQExvmo/jpFyNGrLOXtEDkFbhlHqCq8z0baOekpbV8Atc3dbbUE6hhpUgj19EsM0sOjahs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780875933; c=relaxed/simple;
	bh=Io7D5KkHYqvenZqIL6Z7P+QZrmOBRoracJ76uWfi0JU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=gfpk8hJHdANnBgF0xap1rzDFrEiW1CHom7l6gO2WF/smSwS+n9bQC3T7tnRqEnooum7hwS0PdbujylWvMTrQ0GlHELstdENLiak+P6Bwp4oEjFalagLMf5CqiguCuuaczYX6afcK2cHfvriIjPKLpKyIQyftyZxT0y17EAFqeJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FvvgAz8n; arc=none smtp.client-ip=209.85.216.42
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-36dd65b95f2so2505440a91.0
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 16:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780875931; x=1781480731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q5OiZytJs8xCHWwIF7i0RCUYGoDtUsdsRhvMvvj/Vak=;
        b=FvvgAz8naXUNVfwWOhxdTpGzgl5nfFCrU3tbfBrRCrRbNy4Uhq5r5hmo6BGxt/rGxN
         HWkJY7otsUGfN6nFAW9f0eOV6kBVj3deIHXi11F3R2RF4RXLevcnG1aQlMzjieams9vJ
         xVLW9f9hkRbQJSr6Ugxli5gKwWXuKQNlPn6quWyPfMbgu1xNBBNIkkqrJYBWQY8fcoFq
         t85yA/0sRdIWx0TNaDU7o8VsRIXihAZiFdUqTxGxVk55Ujve/1wmD1hCoXiSw1zrhsWN
         DcMcPWC8aEZaxUaAtenWQaxdAC/NZvRnCm+r2TVje1pHmp6wy4BR5S5iUGQek9CZS5I2
         RfWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780875931; x=1781480731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=q5OiZytJs8xCHWwIF7i0RCUYGoDtUsdsRhvMvvj/Vak=;
        b=IPm5tAYZNxyzhpIM6wXQavnj+1wiXvXVa6jLYiGHix57mCwzjYg4Ko5PhZ2r7Gqbmm
         b41FJ/7ik8lrSB9NhzcNLTHrAUe3jnH64BkqcRf8ew2wHNtztXz3SwtFFVgyqHNvpdo1
         +nq8DXHU3RziR0EZFICXdoCor40RJGiLHWI6mcyEvGCAYPjSgNZmTEGnye+8EwYKCMqR
         Ize3yoH76eOgH4VjW+LHlSOocKpvn3gP/jvPDO4uQhSBj4cuF3WknK/sAqqDld4M6Bra
         cj2RrI7y9OREf/P5ZCAk9c2DQdUUPocAKlXFJ5nx2N3Pv5v1a0lQWZTHOr6pwLOpA1f2
         7HBw==
X-Forwarded-Encrypted: i=1; AFNElJ8ObgfpADpwwR0gN4ANRHW5fVlJFJEwh9xOp6YFVUakSyyqHKJ9GuZUbDHv9VmuZxzPExcvXQqUHed+@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2FA3q+lCdNup9vQwfrMzNb5gw/HhBmylA6idPS4u1Vzxinbiw
	VrEKjkLAHKku2wiXQZGwGBHH/IcXKg6fnkblSKRiL5923A8kOqbfGk5y
X-Gm-Gg: Acq92OGWOWacm05u41YoiOm2zZH+YK+xtUUPnTHMAwUSGCaFzDmrpM1LyDBt2wq85za
	tKK6UkJqbHbU7UyccRLoHEzZTRl7WIdgyzmQeSF+8auUj5HELXY0dlea0OR4iQrGaN1LLMa/Au7
	lcATd8TlNDc05uvlk5gcZLZ1dFK6CLKWBTBbh9pv+2sgqc3yiFX+x6AA/X03OZvjr8nEkgsLE1i
	BczfcMfXRJJGXcXq5NGuioIGWoVSbqwayZYYRgkNCxBOKJZwDJpVdjsYlXD7qLBODig/0uhZAln
	uUy913s9eMthqKJhjwt+Ba+Wq0dL881kYXsiz4WTASoqAVPpKSUGe7A4PsrrfqU0VNzYR30PMhT
	m02vBk/nq1RakXX75ezQFrH0EvHeWLwzyZI+4/UV23DhwqbEaFIrfCXm6EpRr44SlmdW7R8FBx1
	bv8AZcw72t4Yk/sB3nER80YsFH5pI2mZyhFI4JoIfRGr3/pmnX1lZ3pJ4dQnoj9g8uGX4eGixkl
	v+tGOL2fUCODZhBbFvAfJCHd6dP4hcfcheelzRMj1cXiSxM
X-Received: by 2002:a17:90a:d003:b0:368:65d1:893 with SMTP id 98e67ed59e1d1-371306869a2mr10501438a91.5.1780875931310;
        Sun, 07 Jun 2026 16:45:31 -0700 (PDT)
Received: from DESKTOP-G3E0OSP.localdomain ([112.172.255.242])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842828d6bd1sm19257732b3a.44.2026.06.07.16.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 16:45:31 -0700 (PDT)
From: Jinseob Kim <kimjinseob88@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>,
	linux-iio@vger.kernel.org
Cc: David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andriy.shevchenko@intel.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>,
	Shuah Khan <skhan@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Subject: [PATCH RFC v4 5/6] iio: osf: add UART transport
Date: Mon,  8 Jun 2026 08:43:42 +0900
Message-ID: <20260607234343.22109-6-kimjinseob88@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260607234343.22109-1-kimjinseob88@gmail.com>
References: <20260607234343.22109-1-kimjinseob88@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-307915-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:linux-iio@vger.kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andriy.shevchenko@intel.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-doc@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kimjinseob88@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3D4A4651F32

Use the generic Open Sensor Fusion compatible.

Avoid board-specific DT compatibles.

Signed-off-by: Jinseob Kim <kimjinseob88@gmail.com>
---
 drivers/iio/opensensorfusion/Kconfig      | 4 ++--
 drivers/iio/opensensorfusion/osf_serdev.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/opensensorfusion/Kconfig b/drivers/iio/opensensorfusion/Kconfig
index 957caed2b..8b9376d28 100644
--- a/drivers/iio/opensensorfusion/Kconfig
+++ b/drivers/iio/opensensorfusion/Kconfig
@@ -10,5 +10,5 @@ config OPEN_SENSOR_FUSION
 	help
 	  Build the Open Sensor Fusion UART IIO driver.
 
-	  The driver receives OSF0 frames over a serdev UART and registers
-	  IIO devices for supported capability entries.
+	  The driver receives OSF protocol frames over a serdev UART and
+	  registers IIO devices for supported capability entries.
diff --git a/drivers/iio/opensensorfusion/osf_serdev.c b/drivers/iio/opensensorfusion/osf_serdev.c
index 1ac93548d..fd36acd1b 100644
--- a/drivers/iio/opensensorfusion/osf_serdev.c
+++ b/drivers/iio/opensensorfusion/osf_serdev.c
@@ -91,7 +91,7 @@ static void osf_serdev_remove(struct serdev_device *serdev)
 }
 
 static const struct of_device_id osf_serdev_of_match[] = {
-	{ .compatible = "opensensorfusion,osf-green" },
+	{ .compatible = "opensensorfusion,osf" },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, osf_serdev_of_match);
-- 
2.43.0


