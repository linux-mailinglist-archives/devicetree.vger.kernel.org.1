Return-Path: <devicetree+bounces-277749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yFxGCLrmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAF52CAE41
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 38C7D328B283
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33FD03D16F2;
	Thu, 19 Mar 2026 11:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jr5exfEK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B904E3D0917
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921556; cv=none; b=LMt8lAX2cFpalskuRWwnfjhV6AY+RhfMY8P70PLA8vQDaxj7D3D+mbeZt2mL+gb0Me6UggEhCEMnNwxDreKm9mH5NA4XX/TSgw1ZDfoY5Q1W3dGbjSpzmOHAwAcE5IkeKW3Tc6/PM/zfLA3B0AP6mFUlRkvcCL26dHmgHtMu9qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921556; c=relaxed/simple;
	bh=FyYL7KjhfBkhq4Z8eKOH65vilPS2pr7+rN80jiOzQpc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=H1NqpKcfL9Sd8Z/OKIsixQqXAap9prYTjuHlq4TgXHET44OdsahNy90JZK/4COldYTvmOX/fz7LqnSn18dMpLYzWiLTD/HyOWLDf3jnfuV8J4YL6VT2afPcZ03Uz+bBtR6EF5iz7BXBvDXTH2zJZGd1TR434g55+gPip/8qCfr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jr5exfEK; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b936331786dso60142566b.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921549; x=1774526349; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AGTiQESNTxF+kqg9mPQcr06UPYRyUnWm55j6lAp7RWY=;
        b=Jr5exfEK9YaQ/thIlySFnLsSKgAz6iUh/nMJRplGQa9P+FisjinJcPAKWx5ZaVQz+2
         Wm1R7NhYdxJCX7v83hVDHWgUsD5n/310rd2G3+a1p2AFhxxmKZNmWt61KRSUor7/7JDe
         BYwieDWtqGI61vosW7Nfty+w1swF66taFB9GUaUayGLWfRhOFHwyD1I8gG8mrOH9ckuF
         P59NgU18z2kQwL8mV2t24SpkQWH5zSXgCTuWOJhjRcntvvld0wMPfHNF1dOd8hI/deCV
         AkDdmlyJO2RKgxibJKUvRRDcc6NN1tAJiLwsrpYESDVbvVbtT4z2REU50pTQXuGVxJbE
         vjTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921549; x=1774526349;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AGTiQESNTxF+kqg9mPQcr06UPYRyUnWm55j6lAp7RWY=;
        b=cxgmgdkd0OHXTQfGXXVcD71mPYer1q9+L0P3KABXyXAqlxvp3N/8TosBc3t9M94+p6
         XCUBBN9UXrv5FMs2hPSCko/nlEA9+7EYtxpxXZVlE0AXR/QwrN14pnNHH2v+VlLrjL5G
         gNLDa6gmFDa4LaJ0efsZX5oG7430kojTEA9LMpjnWvPal/x40UgkJQSR9mAwTZXluN9U
         dRSmBJQLKO0B2izXP4maK1JpjRkE1dKwn6yaroNNHUN3Y6fm9J9XQls/bam2Y1pTScXW
         +NsX5mioxeh4YU6p0fxDkk+AQlBzjyMttNwrCU2py5pRNa6t/fpqC/w9AsNv7FPQEUvV
         HCgg==
X-Forwarded-Encrypted: i=1; AJvYcCV5lqL1nswZIRCSQr7vDyr5NPB3CU8Ow9xY9fMscuWm0cpeMaxSOihvD3AvEpsx4qoziw+1+wcEk35w@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+Yg6JqOoY/xGj2wHYvD/9aZEl5NADY+xM0Orkhg9ZE1lqxX1K
	Y1dt925R9ykwhgvOum+ncAXCu/ZfrOJIq1wNHS97r7pAl8DCFYia1Ui5
X-Gm-Gg: ATEYQzy6nM2luwDqRjfxYV0evsz8RuGfaeOjoZLC4YQs9BvsLdiST1tcSB07RUCjSYh
	/wUVxlzfr50Pnt5CwR/pfuwTxQGltMLIssjuWZDkj81/TqbH5lCbRD0yxUtD967pfg/vPUVy99d
	RafQNjczVCjXaMovlTgXtew6JwweYrJYMlDuNu03CrygHaynNv77COApCH298moOOa5b+vAXFpB
	Q1GwVm26xJO9E57SpMwkLKJ7wrINAJJ1NWnbrx9Sp8LrRY/oNdUXqTm9D/fqc5SiWfgYI64Qo9Y
	Jfuc5Y/uELj2+EFI+8jxCzC4MHSr2iQcpLvs1CYBT7n0aNit2XJ5ahxfp2/rAhr+HEKZ31xURmM
	f4m6n73ng8Vh/wnrhNi6cD0CpVX9z482TOIiLTs7ZKrQ/S/aUMDeyaC2+ZuPKnHtOkHtTzlTzcP
	3jjVF76rupAkajgfsOxOxKBmVbIw==
X-Received: by 2002:a17:907:ea6:b0:b97:fb80:dd12 with SMTP id a640c23a62f3a-b97fb810dcfmr397921866b.33.1773921549259;
        Thu, 19 Mar 2026 04:59:09 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:08 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:40 +0200
Subject: [PATCH v5 2/8] iio: light: vcnl4000: sort includes by their name
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-2-a025d3332805@gmail.com>
References: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
In-Reply-To: <20260319-vcnl4000-regulators-v5-0-a025d3332805@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277749-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: BDAF52CAE41
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Sort include headers by file name for better readability.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 5e03c3d8874b..939ff2d65105 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -18,12 +18,12 @@
  */
 
 #include <linux/bitfield.h>
-#include <linux/module.h>
-#include <linux/i2c.h>
-#include <linux/err.h>
 #include <linux/delay.h>
-#include <linux/pm_runtime.h>
+#include <linux/err.h>
+#include <linux/i2c.h>
 #include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/pm_runtime.h>
 #include <linux/units.h>
 
 #include <linux/iio/buffer.h>

-- 
2.53.0


