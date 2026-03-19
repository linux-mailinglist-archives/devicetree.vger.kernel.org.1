Return-Path: <devicetree+bounces-277752-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMzmJ8vmu2njpQIAu9opvQ
	(envelope-from <devicetree+bounces-277752-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AE72CAE66
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 13:06:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 061163293D02
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:00:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AB963D093F;
	Thu, 19 Mar 2026 11:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="M7rH3nYs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882EC3D093C
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921559; cv=none; b=WkxAWRYRE7XSXHuMivy5RDjNAGpWC2aCqWmL3f4fC4AQCaYhYlfXxDU7TrnKoumiG97MokBmd+jd8rObp3mA7t6M+ZTOMv301AQIxTOsvpKKaJIvItzqvxMK+rdwwRSKogQiuWV4fNnjtlT1vq5gDFyJAVXvA5zO9cewrLxHWl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921559; c=relaxed/simple;
	bh=F8JhpNRtISwTJCZ0mFH9huui70rVNKoYVUHt0NiS600=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uV6bqK68EwKFDtS4KyXQ2HoPMi5mQky6B8ic3W3Z2TUh13Ut/xzqoxn7g4iaZXl8B7JvL2ZCysk/pS5SXaMcnOYzunHw9lT+Tbaj0bPL5D2i81g7o9hslA1M/H+aReh08cCBhnnVsiJIFb9vje0s8LAJ2dpmBYd/wIRaxyGDp0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=M7rH3nYs; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b98133bdc4bso74735866b.0
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 04:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773921554; x=1774526354; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NwqEwLydPXTJh37lAhGuKLAvUQ1T9VTG2r0Fov0v/5k=;
        b=M7rH3nYsa/1bYKGY4Vf71pP3ixR4qLr4GhC1P0jTJIjtx5qT/eBaAehYKmQkQpG9eZ
         mSx71J0pmLip0//UK3SM+JCNP0myN2WkeWAIIyDM+x2YwDsybMPOsNzin9I9nln5x3JH
         gCqNDVuhtPNxMJpyxdoPX4GPLjlxX0neoyfVKBBdJoSZrTsWcC+qWQggc8GPqGU0x4Oi
         zGu0Cug4cI2MHvrPqlTOvq5RsjaP1s+ve5agb3g7ksc3chx8JLpeNe9/XSThTO+v63rV
         jcnhnafRbxBpc5ak9DJGUeLTk+ByWl8KXah7ZAmyGCCAZ1KEGmYIePNoDOLH0VOahtnD
         1Alg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773921554; x=1774526354;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NwqEwLydPXTJh37lAhGuKLAvUQ1T9VTG2r0Fov0v/5k=;
        b=JmQWaUMqYYbO5+oEPMAe+z1EjmkYFxDg1zReGjv33t8ul1Z+cxNAyWlonBltutJubA
         iEeERrIxjl0fkMY5Z1MxICYZewz/UkanoDI3Nyf3zVbKM/T3w3bqxzu0uKGGVf/sNBaU
         NPyje3E1HTBU5TJ0SRVvD3dS9ko1zaWD7pi+0epiJW/v/G7i31tRlcVX/KKr/3psVnbL
         /gEto1oRiMuGwz6d9GQsfyLaKddSNhM5W7Ox0GU7w+PgRl/r3/rVyTHzMQJodaYPe33R
         53YXCgmojNnkg/sFxD08rTqDK/qcoKcNmZMyY1GdJMZhIRFM9ul8p9/Oh5s6iKmN1doD
         gp1A==
X-Forwarded-Encrypted: i=1; AJvYcCXG5ikpjqSaiPPbM/4KOuvNgYMwYseoalIEYpNlIU4FTuFlcuPMmjMlt7VTT2cTqGkVW2rtX/W+mR/P@vger.kernel.org
X-Gm-Message-State: AOJu0YwrlM8LvI/11bOSvAmMzzIv0dEbdNQHXHRVNrOuMJ95G9Vl5694
	f5lrdY7YbQxDHTRafwrVtG1z0bumkMZHiXrunpSJmMUOtbXYBqB6Yq0/
X-Gm-Gg: ATEYQzzd4V9nbvAzgR2S3xcUY/oyirSCi4WRIm05XkucXJjw0JjKBZvjKGdcDpdU3c2
	/svGmKiar98XBUTPldqASZlQv7XlNrX7NdIwV/RT9+CrNp6nHe379/vdud1klSv7Jd6zRl0FWJf
	YXSF812EtjHa5nwVzFDKi5LdmaYMIQLi6aPr9dWEsgvh7sqQGR8iyigAByD0AKzxPr/SlaT7Iwb
	sRHTr8aQqOsVz+cH7mMHnd0JRr39q93z2xsdlcrvM6ua/8E92HwYhKH/PWOYCGILT5LtiAs6ytF
	pM5P+nLSGe9wDhDAFl41xLLPMQhV05weKGdKLc38p52TMaPqbP7coUZRAhd5m2Ce3tsp4DAPlr9
	TKXY0oVnEzlt3glTd+IE60b/uBCGlkQdqE7ioePbgOESmmgC7K9Y/DXA/D9Jb8u5Ozaxss6kr5x
	lDoNDx1IqcpDeIIb8ssbNqFJt1RQ==
X-Received: by 2002:a17:907:3d4a:b0:b96:f329:e66 with SMTP id a640c23a62f3a-b97f4b010b0mr492191266b.51.1773921553701;
        Thu, 19 Mar 2026 04:59:13 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16d3380sm461399166b.42.2026.03.19.04.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 04:59:13 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Thu, 19 Mar 2026 13:58:43 +0200
Subject: [PATCH v5 5/8] iio: light: vcnl4000: remove error messages for
 trigger and irq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-vcnl4000-regulators-v5-5-a025d3332805@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277752-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email]
X-Rspamd-Queue-Id: 17AE72CAE66
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


