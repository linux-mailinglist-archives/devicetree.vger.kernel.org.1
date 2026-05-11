Return-Path: <devicetree+bounces-295735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uNGFDpwYAmqonwEAu9opvQ
	(envelope-from <devicetree+bounces-295735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:57:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 50160513EE6
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 812893048BCD
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 17:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591954611FF;
	Mon, 11 May 2026 17:45:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lKy1Ookj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E80424779B8
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 17:45:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778521517; cv=none; b=AwZDkekqL4DDIaAicNmybQEXm8chzsiZ/nZfScbVYvQOFSMpChM+iEwt2gox7aUBQJxtSVKApO8KOTuSfmlvvLNuzJpa2F3PKTVvs6vC1FPpt6fmrxXiC/xmfwEwNHJ3GM4crY7ClJMzMeLepEOmiHrpjkb3rTIEnAGmjJ0E1O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778521517; c=relaxed/simple;
	bh=fC6+iF3wZIOJ9jkDKq6JyJEIBQEMNM9kicOyuc7ikR4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RH+zvWun1Rvcg7yMmUXrOBhaXgaMhO/PyMt7lt1YcToq4oKmc767xw5vKHpz+Iiw+x5eTTzF3aM+tneYG53jmSFgoBdcVGwE0h/D1c3cn35cgH6o7J7AwjLXoK4yz2Zadk8LPATtZHTfbvh0GxynWP3dDHIAzN4HGxZ2/SPqEFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lKy1Ookj; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-c828daf83e2so636399a12.2
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 10:45:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778521515; x=1779126315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UXBbj7mUNYlbg4rkKVQUy4THqQa8ssCmEHhDW08Rios=;
        b=lKy1Ookj0ytwjxknS9RLNUTP2b8a3jvMOa+T5gSV8t6jqcLLMmsLHBb9nMKgMDmAqc
         VbZYjcnozGjxtUWm/zKSkU4T/w3DRVzuFoK5gpCb3QOo1tjbZYBkKmmWIg5GPXRwZSYT
         xlmRJ5ovDcmQnhHS4/5F76p8ypN0jyRfSO7N001kmtRTMoXuX2UokJta4gtzhZmCF/xK
         DjIRiPBy6v3fDvRcshAr2I4MgEOWSYqWW0PS0QKQSQVeVFS04P0TH2bU7CJRK4HiFxjx
         qbrBSu0oOjdNl3IFQ5oYutpR+LKHXDQEtbrcFHnrhW8sZtl3UdmiVEYuAcTebFUrSTaA
         OK5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778521515; x=1779126315;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UXBbj7mUNYlbg4rkKVQUy4THqQa8ssCmEHhDW08Rios=;
        b=MOZhZiqwXBJgGXEdVM2R0kM6ouLX8arVfE4SnhRgrH5fxnSmxkV+e2HDxScPil68if
         x4cE/3srfpDKXOGHcsOY8x3X5mYzOI8GF+zd/HTK2t78G3++Id7h2rO5KVORXRi9u+xI
         bbakti55HtZbnvcW5Rnj1NHyI2khMGU2lGBr7/UN9A9wpqztPxF8haGE0x+QUvbJtDL6
         IMCYMBUjNF6gKfB/vFiK6Sfgf6EeQuP3TzL53L4BMBvL+MvrZcRfdqfTJryl/mAR9q1t
         nvlqFL46R8h7df2GT8WLmMOl3NuBoMh1kE0bOCRZvQza5I1JDO5EDL2DpY14ZyiceDOg
         sKPg==
X-Forwarded-Encrypted: i=1; AFNElJ85503DZgZTbZgKFNdd79CvOmsmLhoeGpafJVk3P2exRHVNmNEQQuB1Ul45Y8CMGncdrXtiazQNhHLW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1a24fc4FGwC/2Z+rUmJVoZloQLLjIwZPOBF4iDG2nEAT6qTDe
	l+J3SEtVW28sNkamTvrp6D4ZPQo9aMUwNiW4PJFeY2hOKYaPLAhCurHB
X-Gm-Gg: Acq92OGHJhHspiQ07e/axlK5E+O/pkCmbs7Kvq+mCMQ5a2gIUE5lp4Kl4hGm8ftrClS
	6uOtk1srkuGWD1Ex676pALCDgbCiR123RfzPDW3tOYJEGH/CKsBMh3XHDY7qaJmRPIOLJ7ilqhW
	50tnWNKGu0lsjUT7GJSw6nnZE9Q/JXx/dunMVUv1APK67jFs7CRGXshwYmwF0I5WBy8n/9qCTx4
	u7clUAg5QjdOHJDt6MaSNqQ0M32OrfDZ2nLlKEed/NvCO7iWg8/JBTTXxaSCLVaIxA2XT26o9kj
	VD+OB7T+GDzV0uuFP1c5Belrme0esBdJoy6ISJ8hwTwJ/xA9zXRHVAZt2wuuVxtQSqgkvVTA8cx
	5DSOfeVdtr1mrax52kVMe489v0YTmjjxIYkpe0/CTqAIp9/X3lR6rbOq/bFZOqUrCRGWD6DqQ6G
	GEsuRouk8bixsZuEbePLzazeG1bLozxf8C5Gf8RWz5xUL4yqkvUZDBSCXH0qj7G382luOkTuAaE
	0OBX1bbsND46b9NMbWQ9aoMEU2rEoEdC/Tvg8LGiJwmVWlUxPnLXEWdk8+FlGlZFC3f4Wk=
X-Received: by 2002:a17:903:2ed0:b0:2bc:b80f:677e with SMTP id d9443c01a7336-2bcb80f698bmr73240535ad.25.1778521515128;
        Mon, 11 May 2026 10:45:15 -0700 (PDT)
Received: from lord-daniel-VivoBook-ASUSLaptop-K3502ZA-S3502ZA.www.tendawifi.com ([14.139.108.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1e365a1sm106838425ad.44.2026.05.11.10.45.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 10:45:14 -0700 (PDT)
From: Piyush Patle <piyushpatle228@gmail.com>
To: jic23@kernel.org
Cc: ak@it-klinger.de,
	andriy.shevchenko@linux.intel.com,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v8 v8 09/11] iio: adc: hx711: localize loop iterators in hx711_read
Date: Mon, 11 May 2026 23:13:34 +0530
Message-ID: <20260511174342.123820-10-piyushpatle228@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260511174342.123820-1-piyushpatle228@gmail.com>
References: <20260511174342.123820-1-piyushpatle228@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 50160513EE6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-295735-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[piyushpatle228@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.997];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Tighten the scope of the loop variables in hx711_read() now that
trailing-pulse selection is already handled by the callers.

Also replace the 24-bit loop bound with a named constant while touching
the same code.

Suggested-by: Andy Shevchenko <andy@kernel.org>
Signed-off-by: Piyush Patle <piyushpatle228@gmail.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@intel.com>
---
 drivers/iio/adc/hx711.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/iio/adc/hx711.c b/drivers/iio/adc/hx711.c
index 9e5cafa1e307..0db2d2db9242 100644
--- a/drivers/iio/adc/hx711.c
+++ b/drivers/iio/adc/hx711.c
@@ -23,6 +23,8 @@
 #include <linux/gpio/consumer.h>
 #include <linux/regulator/consumer.h>
 
+#define HX711_DATA_BITS		24
+
 /* gain to pulse and scale conversion */
 #define HX711_GAIN_MAX		3
 #define HX711_RESET_GAIN	128
@@ -157,16 +159,16 @@ static int hx711_cycle(struct hx711_data *hx711_data)
 
 static int hx711_read(struct hx711_data *hx711_data, int trailing_pulses)
 {
-	int i, ret;
 	int value = 0;
 	int val;
+	int ret;
 
 	/* we double check if it's really down */
 	val = gpiod_get_value(hx711_data->gpiod_dout);
 	if (val)
 		return -EIO;
 
-	for (i = 0; i < 24; i++) {
+	for (int i = 0; i < HX711_DATA_BITS; i++) {
 		value <<= 1;
 		ret = hx711_cycle(hx711_data);
 		if (ret)
@@ -175,7 +177,7 @@ static int hx711_read(struct hx711_data *hx711_data, int trailing_pulses)
 
 	value ^= 0x800000;
 
-	for (i = 0; i < trailing_pulses; i++)
+	for (int i = 0; i < trailing_pulses; i++)
 		hx711_cycle(hx711_data);
 
 	return value;
-- 
2.43.0


