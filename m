Return-Path: <devicetree+bounces-276336-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJ4sBDc8uGmpagEAu9opvQ
	(envelope-from <devicetree+bounces-276336-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:21:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C529729E105
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 18:21:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E0163303FD22
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D637E3D4139;
	Mon, 16 Mar 2026 17:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P0XfAtwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600003D3CEA
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 17:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681599; cv=none; b=e1uTrFQAWXq8FcBJ8ZkeqhH8HHhFG+lOhoeaWrNo1xVd1SbFUSOaFlCm/bW3bM8FTQlWNrDoB3L4bVjx8OIIsqukAAVdAfAA0bgvdcxzqC5BtQceogeRkf3HkRJGEALksQoEoTlpGxGJr6YRBWkR8lNSNgmYyqNXgBrmT+s7Pmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681599; c=relaxed/simple;
	bh=F8JhpNRtISwTJCZ0mFH9huui70rVNKoYVUHt0NiS600=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=idL2K35IxWN4lbiwD7EV4B/bE1vaw/zbtZcjzq8/rWDZ8z4Du7piLpwjTdrM1N+bklJDcKxB8Zym/JJqDClTiSRu0p5uB8siQRvvkdyuaxRyAytfMsB3sUKsZ5/PiV7gAmmSI7JeAGe0eQIneKoxpSGujaMeki+sUSrNv9i/lRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P0XfAtwB; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b886fc047d5so804193166b.3
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773681597; x=1774286397; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NwqEwLydPXTJh37lAhGuKLAvUQ1T9VTG2r0Fov0v/5k=;
        b=P0XfAtwBdOvGFKYo+PTFs/vZ/4mclwhGJT3I+2/p8DyJeNobGGBFtctWHTCjfGDXMu
         RzXC6DHveAUq9CYbkXeTE1tY24DoBmq0g2fIpgIQIy/vxk23Z+yKnwMBAxv1KKjld7wI
         gKh3y6WHEqPEnqz1ua7Azu38LDwElq2AfcNgSuIEwtXUai5FnLwUIdYwJqYWUXPWrNRc
         v/s+Gwyx1Uq71OCTmcZg71vQMLYcGGRk0fmYaPEc1G7+blAYLiZsoseT3l/dmgvEZH85
         u0GKCgT24x4RIYEmLOq8ALc4SyaUkuP/evt+i9GdwkitwPDYL2zIsi9TjU4bUzadbktu
         hWEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773681597; x=1774286397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NwqEwLydPXTJh37lAhGuKLAvUQ1T9VTG2r0Fov0v/5k=;
        b=B0sEY3hzyORDFcDq2VAx8qjQcr6N9CoRNYGxAOHTY7b5OcUBkzlsFj5VJuOa1etgFS
         NGlwZuoWf0MO7uRDW7EFS3/ctaaGKjEfHOwycaqhQOfaiGmQwhnCI4ZBPrIe1gygfRac
         2wotPe6ZtyJkNDuDSSoZrH2HC0P+7kJrYU50VhL6MV9GasDdfb7mgVJmGAIqLUPv911h
         gFQbkZMw9ZLCFbgQPcAxW5ejicnCqyY+QZiheT4CU2PwxUiSjxsSFvKX4YVFBJ1IbCQm
         9fpRaG8rLPYmT/SQxW2x5sWnB6zfogG0uuX8XB6cOJ02l3W9Onf+YK12GuhNru8Rw3EO
         bzSw==
X-Forwarded-Encrypted: i=1; AJvYcCU4sUz2XJ+ynCQ4RMf58SvBRX44B04FbOd870ovxIuRnnCjEpK27dUYW/PJi4+fledPNHF6HL1odG0p@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4bDmijJP5g5asf70RTNNKVYXpE1qn/49JufFOigbS5ZxNJBw7
	P0btzwJgt5Zz/r5y1UISasIDfQ0SLTooSPD7f1VsX8YuyKnew0PVYU4C6hEIWvli
X-Gm-Gg: ATEYQzwiFC5iR/a3w21DD9eD9s3MkrBi9v4glMLhQCzZ/G5VYNDCwe8kFkREZgMRS2z
	XJTWvv3/gpwxefCVe0PgXG60P64CBBDIrpQVSe0GqqTC7VVQv45NjahrG8zEnHCv7lmIN42Ql/8
	x5qenOGDhUSL9jw53WKbbM8X7y71Ic+4jqriTVbOfBLQz4Xc0CUPyhwWsvgj6Of3C0tGaJCCy+I
	suPoLulHCFn2VucSg42fn5ec6HBeyiAQ/zhOb5F023eF3LvAfoxmFtz9D0k19hGJETMeNzh2MAL
	FBTBNTmpG5si3hxM5Uao7OiMo0thm6Ixm+jGTWi4c/uIBq5Wy6n/pDq6Q/wppfsdi4JUU/wAEtI
	ozleAgVzT/KTna5wOCHSkZxbp/NFbjyoKnkPF0jLbL0iGmQVF/F/mg04R1GkJHO3wO2DSDn3p3E
	k6JUU+lQJqsMwY4qWh7iqTK8cQnQ==
X-Received: by 2002:a17:907:7f8a:b0:b97:c5dd:c661 with SMTP id a640c23a62f3a-b97c5ddc833mr211421066b.45.1773681596530;
        Mon, 16 Mar 2026 10:19:56 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97846174cfsm505940266b.22.2026.03.16.10.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2026 10:19:56 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Mon, 16 Mar 2026 19:19:49 +0200
Subject: [PATCH v4 5/7] iio: light: vcnl4000: remove error messages for
 trigger and irq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-vcnl4000-regulators-v4-5-854fc2eaf54b@gmail.com>
References: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
In-Reply-To: <20260316-vcnl4000-regulators-v4-0-854fc2eaf54b@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276336-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C529729E105
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The error code is available in the log after return. In our case,
attaching a triggered buffer can only fail if we are out of memory, as
no other buffer is being attached. Remove duplicate error messages to
reduce noise in dmesg.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index cd7e6ee42cc5..76aee16d479b 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -2033,11 +2033,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 						      NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
-		if (ret < 0) {
-			dev_err(&client->dev,
-				"unable to setup iio triggered buffer\n");
+		if (ret < 0)
 			return ret;
-		}
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
@@ -2047,10 +2044,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
 						indio_dev);
-		if (ret < 0) {
-			dev_err(&client->dev, "irq request failed\n");
+		if (ret < 0)
 			return ret;
-		}
 
 		ret = vcnl4010_probe_trigger(indio_dev);
 		if (ret < 0)

-- 
2.53.0


