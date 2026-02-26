Return-Path: <devicetree+bounces-268821-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NTwN/hGoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268821-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:13:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A68701A62DC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:13:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85ECD30765F1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:12:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7D332694F;
	Thu, 26 Feb 2026 13:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eudkCm8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFBD3191D2
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111503; cv=none; b=rncMyYrihtdTn5AG3V8FqjwhP1ggZk7/CQgs/Pwc0PTLYn0tQwI5ffK8EHFxFlmomEeiSBbpjcS/1eNQDaQjCbws7HDbfcHj/CKHcokh0l/C5OPkKHcQpu0Wzkijvv5HNbrKjwWUAZ3DWSwYMdyhE1PFrxDfwyov7ehkpIQRze4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111503; c=relaxed/simple;
	bh=lSJZAVOIGRRjZDHP74fEsn8JPurwxlVbyJ+3JsP+JrI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rX9HpMRq4OrLhUfs7A8f1oetJYrFLz3auTGAoHJSBTB7p7A5L7n7o2Rx+Bz4sEKc/USLBTLvtHTOB72RNPB2MpAGaLRDSOHnSAvWot5pDI8G7X/HoE9iB6OEkn/02WbnxpX4GIPr2nAhZm2niCgqjEfl5V4/97dHLjqQp1gEgwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eudkCm8O; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-65c20dc9577so1594572a12.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111500; x=1772716300; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=okHhXV7tE4rEJ4xtM8jTlPpMycDWeme/AEi2JC9Gktg=;
        b=eudkCm8OhhHcko4F2htjd0SaU6gNs5UK9zc9irI0FM1DV7AZNIiHreOdw8B2p3cogW
         9HlQfudTVP3xkYOSmg7hzaPK37mHfUARZlq7Jg5Kadr1gOnX3KbyPIjdVd8YlQjfcp85
         +1wI5+qsao0+qExsLFAEehwbUruTHAGx+DVjq5hf5tZjrUCAzyy25+jSduG5U3R+f/kB
         cNzuazjEtnRAgquJa7ToSUmrUV6kEhOrZrrisjmDBK/XygH50MhCwiXtADISMmn+SgI7
         wDQMRk9uXxdxsYYE3lnwMsyJ1rEj/R2SQMO+vJGytGShplSLFzbhECyteRT105LupMaY
         LLKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111500; x=1772716300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=okHhXV7tE4rEJ4xtM8jTlPpMycDWeme/AEi2JC9Gktg=;
        b=unsKE2tz47wtq8475gFhR7X/++0vGh4yVeKiIJJi3sIbuCphmxdSBd8F9nWnpS09Rf
         Ruum3sPvMuEEqP2cbPCWcEP2L+EQNHeMYMXFnLmZHVycPThAlsmQHuX2c9Qk+0vKuf3C
         o8GEJ4JmUT6HZkYQJZEfo0PSG39y2KHrIwef5uTsAq1vbMToRBY4LY/nTsRx52qmXmd+
         z+zpRUcYmzuIGvsc2zu00YzfqLnBMLvSvUUIQY9r9FnwN3dM35EwaC6es272ELOkfUL1
         OFa1LnHkQt8F9RJdfVdcay18/f18Ts4nnuJnU/2zPczIVQz5ERhUvhmib/bxjfeVp/eo
         J2aQ==
X-Forwarded-Encrypted: i=1; AJvYcCUN79WNXPggCqDReJJ1bORkPmmnkDrAwqbZxbKmqaNlQ5rM0QnGS/+5SfJMPeDuQD0yocDxOuLWq2jS@vger.kernel.org
X-Gm-Message-State: AOJu0YxWngJZSL3KRYgJ2A801RgERjcnZiY3qupHeIe4RjPx2e435KV8
	Bdt85qfBbETtULnbrK+2UXgtCaZrlRmUteGEMFlt8cwko0jRWryAD0GY/WUwKYEPLcA=
X-Gm-Gg: ATEYQzyUZ8iFO+T+c/0dpk1ZOy3FJa7YE6gcmZN5i9nOnFWzG+1omtihmlnWLrH8T+f
	ryvMURlTlP1iU9xPsO2H4SqqnD7jRyBbuenJ4iM8xMMfHmKLUlI54I//gKoVHImFjPFO4EjERFt
	eEfjELJNf0zdhMJFB+P6i7Bu81p5y7YAgt1MtGtm1bGwL71+El4Uf19BDUypV7JkoujBctBxk9n
	yM0WS6lvjbTf1E3C6PmMP7tgjff1EnPngLpaE7H8rMtKdujLFsWMPNaFUT/7/b1PrVZ77f6k5qS
	0b+Zxz0qn+aAzCkYHlXq71Z+C+sY2caezPoIH3fCOrZHpgQuqeo+QaKBOcR7fAZmWm1INVkSRr7
	TgvD0kNmuBR1RYl187GAjxtoxu+qVFOerD7fKZWgHVW6R2vuo3osSF+EkRkXV/OPGHlBHrOx+l3
	z/Tti1Xxx/5Px39KJ0xEpjQvSN7vVUac2cDx6VgnF1W47xPDwUsZB26VnK3dx+dsQqvgwn51rLJ
	SbLeEHvM1TKficYhQ==
X-Received: by 2002:a17:907:3d92:b0:b8f:7014:8438 with SMTP id a640c23a62f3a-b908194a87cmr1253974466b.7.1772111499667;
        Thu, 26 Feb 2026 05:11:39 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:39 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:38 +0000
Subject: [PATCH 04/11] power: supply: max17042: fix a comment typo (then ->
 than)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-4-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268821-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: A68701A62DC
X-Rspamd-Action: no action

Fix this trivial typo where than should be used instead of then.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index acea176101fa..07759d4fdc37 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -131,7 +131,7 @@ static int max17042_get_status(struct max17042_chip *chip, int *status)
 	 * FullCAP to match RepCap when it detects end of charging.
 	 *
 	 * When this cycle the battery gets charged to a higher (calculated)
-	 * capacity then the previous cycle then FullCAP will get updated
+	 * capacity than the previous cycle then FullCAP will get updated
 	 * continuously once end-of-charge detection kicks in, so allow the
 	 * 2 to differ a bit.
 	 */

-- 
2.53.0.414.gf7e9f6c205-goog


