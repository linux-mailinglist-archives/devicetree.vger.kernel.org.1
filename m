Return-Path: <devicetree+bounces-277751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +OdNItHlu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:02:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2462CAD0A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:02:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4A075304D91B
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B54E43CE48F;
	Thu, 19 Mar 2026 11:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KJ+p+LcP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F623C9ED4
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921558; cv=none; b=nQmKjjJS4xcSau6q9bntxi2EBHToDQZ86z1Yp6kqt9J2S2zEbHtgVX51mOf3jJy+5wasFCgg4wkTmPRYAV5fQ4m/dyIw4uBxXa0emzNHMF9zn8SEdBAKTxC4acv4WFSSrKGYWzskQoC/NKONaJagGZD0dEWG58EGLpZX1bDcAhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921558; c=relaxed/simple;
	bh=fwyYVczkGGhNbbtuDw6wb0iPQK79Hav8hEBxFnyoihs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NYAaKWMtECLszvlew3yK8PAi/NCVnPVf2mIdCvZxaNxKdD4SuiXqcPWKVwzMqEZl/7m4LsPR15gTislXkioxxEYS4wPjnH4TB9XFs3WmUtIsnX+kZwAfxO+H8kDWAmfUI8QZg4YeS0YFXgHFBK+igQG5akWPY4Yoj/rUc13Ypgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KJ+p+LcP; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b8f97c626aaso126890266b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921551; x=1774526351; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l5lDxPgHMLUWf4KOAgcF/BaGDb9kL4QT6S8GOy/ie+w=;
        b=KJ+p+LcPAg6rX4yzoY8TJmHJ6WFt4qPQuZi50EsAg4tC6I/tiap+lBopao4J5I0hBB
         30HNCZoDi35A/yyPYWSqXkgdGXHccs+Sp06tub5I0Wh2Z9ZpFKHa6/Ichi5NFJKL9aFl
         Tv50VE1zLX1tPmY8jVcsXRZ5/YhCVqIkxUgfGnTHfYhXgNLb9WnehyeKBqiCWyyc6Elb
         uTajEnR85h8uJXZeDYaGo1EapgZZSSl/6DRmkscE2NTPclDG0ZEouL6vr8SXfC3q0C6f
         HjNwttD4NXBmWYdCzKz9rmfRvMyRYVLCwvUxNE1AfoWOBEulgm7frtrZtKJAy2ea6P1j
         bEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921551; x=1774526351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=l5lDxPgHMLUWf4KOAgcF/BaGDb9kL4QT6S8GOy/ie+w=;
        b=LXUp4YIEhPrxnWVZ0cr7n3kIDckq4+fdZ0o0BGqh+juQW+iOfXzjslL4bhcrKnrXok
         4SYfTe3amRqOqKuQqgJdQiEBCmJ5NbLXevTMB6M8sAmYUXZsRidpBgIQ/kqqwj48Mb+Z
         gCrijn96wWI+ksSReRE59gZxkFEKfdBxHzcCB3SIae/co9vYigvJ7uRXURTWI+c/oPA4
         6ioaDO0WW/76nxahE+YxYc107edTJ2r46/bBaHGMkfaMUKxptyXXwWQXRIdx/5Q3dyDn
         Lj36xrGTGfNfCEjKN60YhAYgrwra9VIgKrKMt8SHp9NB3NkqFEA1eeqZwGq9Npz+tDU7
         wa6A==
X-Forwarded-Encrypted: i=1; AJvYcCUtWnTHsZfEbKhbA1GP/XPs8F1t/SqDVbV6jZUej9TTaeNJdWGlDDeDRGcZgEF4zrnTlPSySnBzVds8@vger.kernel.org
X-Gm-Message-State: AOJu0YzTpzm/g3YjjWKZ2Tp4FGTbap4OvARtcDS+8dD8FIov8MLTKVKi
	yXIHvhXWSyHaXqUoDEdOR2PRiYwhpVLQ2KTfy2bh60zLlQEU1oIo864d
X-Gm-Gg: ATEYQzwskBFD0HfM8agLvc78uZtSc3nlYPaO0GkqPM0NGOjonmJbI3jpH2eLtFVKA9E
	BmIR+f+BkhUHJmeKaD9QYoDZYjQRhoXTnFqiuR21fJ9bWebB4KMnJbmyU3QoeYLpuRbZwVzYz/Q
	cXnQ+tABufSRYQ0d68jF4t7xSh12fvW/InS8kPn4K7zzacEeyD/jHzuOWEtiyDhpwsE+pdB08lS
	MjSsYM12ar9jzPjoGHodZyqzY87kYz41DbzbxL7fcoGSnGeUfhXgAcUpMVC8OlL7d52U7FEzwuw
	wvBG1BgjtyGkpxjLZCO+4hWdbFlj8+oJIc6lOzIBHbYkJL2exwWrm6aiizeQ7u8DdZ9dUV4OSUw
	lp3LtMRexZ/Lh7WbMbBfJcVoYr0+JyE1ggDC+0cqCx15ESdLcSDyYyWFNDVA9gACPNEuLw7ntbX
	GUv8gKlh3aX6rd7aOy75KQNILvyA==
X-Received: by 2002:a17:907:869f:b0:b93:89cd:2bbc with SMTP id a640c23a62f3a-b97f4b83175mr487536366b.56.1773921550571;
        Thu, 19 Mar 2026 04:59:10 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:10 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:41 +0200
Subject: [PATCH v5 3/8] iio: light: vcnl4000: move power enablement from
 init to probe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-3-a025d3332805@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277751-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.971];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 5C2462CAD0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Given both vcnl4000_init and vcnl4200_init end with
dev->chip_spec->set_power_state(), they can be called once from the
probe to enable the sensors. Move the set_power_state function from init
and call it after init function in probe.

Reviewed-by: David Lechner <dlechner@baylibre.com>
Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index 939ff2d65105..287ccd89cfb2 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -280,7 +280,7 @@ static int vcnl4000_init(struct vcnl4000_data *data)
 	data->rev = ret & 0xf;
 	data->al_scale = 250000;
 
-	return data->chip_spec->set_power_state(data, true);
+	return 0;
 };
 
 static ssize_t vcnl4000_write_als_enable(struct vcnl4000_data *data, bool en)
@@ -425,10 +425,6 @@ static int vcnl4200_init(struct vcnl4000_data *data)
 	if (ret < 0)
 		return ret;
 
-	ret = data->chip_spec->set_power_state(data, true);
-	if (ret < 0)
-		return ret;
-
 	return 0;
 };
 
@@ -2003,6 +1999,10 @@ static int vcnl4000_probe(struct i2c_client *client)
 	if (ret < 0)
 		return ret;
 
+	ret = data->chip_spec->set_power_state(data, true);
+	if (ret)
+		return ret;
+
 	dev_dbg(&client->dev, "%s Ambient light/proximity sensor, Rev: %02x\n",
 		data->chip_spec->prod, data->rev);
 

-- 
2.53.0


