Return-Path: <devicetree+bounces-307839-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EJU8MlGNJWqfJAIAu9opvQ
	(envelope-from <devicetree+bounces-307839-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 17:25:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A00650DD7
	for <lists+devicetree@lfdr.de>; Sun, 07 Jun 2026 17:25:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Q7ymmgk8;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307839-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-307839-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 203EF30379AB
	for <lists+devicetree@lfdr.de>; Sun,  7 Jun 2026 15:20:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED9F62773D3;
	Sun,  7 Jun 2026 15:20:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760012D738F
	for <devicetree@vger.kernel.org>; Sun,  7 Jun 2026 15:20:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780845639; cv=none; b=gK7j2N2sNXKBMS6M/e3T4//Slx7o/3HfzOZ2m0lwCTiuo8akZUixnuYdZXaGzByqiUHhuy8hh9guVWJyLn6d1Z0HJIgLzv+gc1MisBEt625zsf7x+NlX5qIyv2U8MM/9OnLaNMsxHWExV9W4q1tiYHz8H1I/BpNFlwLWklhVSLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780845639; c=relaxed/simple;
	bh=RUWoSSPMfAP/6bpsEyV8VEbxxYz0gmjyqX0rZdPDXnA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=umbBEwRNgI5oGzlqX1Ky0eGH4Gs3T7YJ8K51aLZmFTvGZZM5c0qeC01EACMnCcefnyuBkZlPy2QlqiqHxpaGbXSvGo9pQggHpBPGObkbP6zwF2hfxSQUzKatxN+HwoisqDSZkOQSnakQraj0IXffarpgjnYe/y0sso9UTHmr2Kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q7ymmgk8; arc=none smtp.client-ip=209.85.216.48
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-36d5b11201aso2204132a91.2
        for <devicetree@vger.kernel.org>; Sun, 07 Jun 2026 08:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780845638; x=1781450438; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BmdAeJeF0AXVd87AP/9ds+dEzvwxxHLJKYbOYujemTQ=;
        b=Q7ymmgk8kcHzjX3b+X2dQAgikTh3tkbCNKXsLmaXqYlK7hZ5hpyBXnV0jPD6AkAbpr
         qpZon2bi8EIrk4bUANI4E19KXn41Ds0Ksw4ump+Pea1XV46EYd2PvkOUFd6vEfAV6Ivt
         mOX7Mw5bg5vJ4RKT6VBPcr0JqkiDlvmdIaVCGhcozjybJclT/MUdeW8wr84/O9vY2uq6
         PH3JgoOa9tpew1cRUqS8vukiJaHiH9aij3PSry7LU594dQEkMTWW1CI+67+EDBm8mTbm
         EnIeOaZDxfBa33sihrGX/5Ik4HwV471L9vI2RF/lEJpmQpWXEh+x3wF8f0isVALsdTYI
         xSVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780845638; x=1781450438;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BmdAeJeF0AXVd87AP/9ds+dEzvwxxHLJKYbOYujemTQ=;
        b=tRMoWKiUcM/0wFM35YBcWJQFh0Mefb5z4KaLKkXZbPQ0D6UT0QX+GWnnfu1n3yYOyM
         nGETujPpSokj3aGf4Pcw3L75uxxmKizdtfRzBaUoNqrrUQd9PN8Gn8PqpYQ6ElmnKbqo
         Pur45viUQivHnIFjlYHe2zNDQVKbGqSJPIhtUoXCUregO9XArmVBKG1fln/hTUK3OjEZ
         3GWkeESAcCasZ1f21V8CVQ2/ZilKBEE+qfwTxbUYf/9QDy6L0eSzBHjzZwQIuukFOPX+
         1S7GzWkebbxFjS3zYeF0CB+thkGFzDubQhw+849MmNSwjIUiDmjUsRyGbYpRh1d+e3tL
         gd/A==
X-Forwarded-Encrypted: i=1; AFNElJ8+Oth6kbHuLQSLL5kbA+ZIaRpv/LOqyNtRpAZN5M1h5FoHyUV4wO1t5p7OInCWQTMCSTD7JXS7HC29@vger.kernel.org
X-Gm-Message-State: AOJu0YytWuWKw7ThCqMaCKnPb37LRsjfwM1wA5HUF0S/4OsnoNY3ShSX
	kQMfFzRQsgYiKD2MToE4LwqEyYwL+7+usJSbFyEahioLF4uQjVfDINqv6jKCoCdfm8o=
X-Gm-Gg: Acq92OGbhHD5KJi4fNBZgumr3ZryBzWqMbMxBoFdXYHgEFq4oZxFtMv2zYfRWEEuP3W
	GwDoa2hBiy0UozZ/Nf9ACRCQmKyPZXn04Ztdb+dSh46UHoLx5b1/572ERTmSvg5ntibboicHEcV
	Cqi7xNEP1+aGzTr75oC2aD2u6qn15euuNHZEPiahJKt61G0es0lO35/ziCmWfQlZdZzzgTltVYS
	k1XqAE8R+LHxvRz4sjIBOC0Iq0IDlQUQHibGd/23TMFaY8et/6bBYno0cP3ZEh4JaXFJW/rCLKY
	xHE64jUz/ORSrzf3L16VvxRrpjeCx5Sk9M/AzwfEkjfFEOy2r88ojzRL/SlEJTlkgXCJ3RZgKgb
	gmRnp4hmv3QABY93GfdyS3YKgHVofI1LsKv7sI9jIjnuJ1VHHtJxLx5soMPinmLvA28vU1/0DO/
	ck67YIt7nUWQ+DvbWKfEFa5F31o79NJxmYsGfGzwcduZjl23YKWA==
X-Received: by 2002:a17:90b:1ccc:b0:369:932a:2b6d with SMTP id 98e67ed59e1d1-370ee344ce4mr13126921a91.6.1780845637686;
        Sun, 07 Jun 2026 08:20:37 -0700 (PDT)
Received: from arch.localdomain ([2409:8a28:a54:e741:3a5a:3245:d3dc:4b5d])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37135861581sm4130659a91.2.2026.06.07.08.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Jun 2026 08:20:37 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-leds@vger.kernel.org
Cc: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	luccafachinetti@gmail.com,
	pzalewski@thegoodpenguin.co.uk,
	daniel@zonque.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH v8 5/6] leds: is31fl32xx: Fix missing brightness_steps for is31fl3236
Date: Sun,  7 Jun 2026 23:20:01 +0800
Message-ID: <20260607152002.446617-6-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260607152002.446617-1-jerrysteve1101@gmail.com>
References: <20260607152002.446617-1-jerrysteve1101@gmail.com>
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,thegoodpenguin.co.uk,zonque.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307839-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-leds@vger.kernel.org,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:luccafachinetti@gmail.com,m:pzalewski@thegoodpenguin.co.uk,m:daniel@zonque.org,m:jerrysteve1101@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jerrysteve1101@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26A00650DD7

Add missing brightness_steps for is31fl3236 to fix brightness control.

Fixes: a18983b95a61 ("leds: is31f132xx: Add support for is31fl3293")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 drivers/leds/leds-is31fl32xx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/leds/leds-is31fl32xx.c b/drivers/leds/leds-is31fl32xx.c
index b34fcef2c173..cbda7edbfb48 100644
--- a/drivers/leds/leds-is31fl32xx.c
+++ b/drivers/leds/leds-is31fl32xx.c
@@ -492,6 +492,7 @@ static const struct is31fl32xx_chipdef is31fl3236_cdef = {
 	.pwm_register_base			= 0x01,
 	.led_control_register_base		= 0x26,
 	.enable_bits_per_led_control_register	= 1,
+	.brightness_steps			= 256,
 };
 
 static const struct is31fl32xx_chipdef is31fl3236a_cdef = {
-- 
2.54.0


