Return-Path: <devicetree+bounces-269909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kON+JklspWk4AgYAu9opvQ
	(envelope-from <devicetree+bounces-269909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:54:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E0DA41D6E6F
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C86B9301428C
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:50:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21D9F35A39A;
	Mon,  2 Mar 2026 10:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="0K9B4Lfb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FB5359A6F
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772448631; cv=none; b=E84nkSpJ83h4olBb9hJ3T7gasItRzelYSZZsUVZzAI1c9Mch4KkVVo0oaUe5WYoSCUIP0z4sYOveSsxneohA9bknFUjNBOsbZKuXLLs9L5+7JF7Sc2aiKYJu2X+wFG4Z2+Jss3M6NHmb6t9pNgCwtdY3JoweZRnwcJ7OvzM4VFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772448631; c=relaxed/simple;
	bh=aHRIOIA82B5UmiYNaDuGLIuutpMS1GzM+k8Df5VuVF8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZGaMj5azytJFJmh4HrpFoj7rl2gi4G1o1f0J8KnYUiBNcVs1We2LowPYV0DPQrMdC4UMrGw8hJsrUsVwggNPy1D6ZeHykezqI70Yy4YmSCK28mJCDVGlwhZ/IZlGUg/PG8HZKlwfBXYBKeVSgCOLNHNmY2ejpfdPGP+Dvx4k1c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=0K9B4Lfb; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-65fb991d7e7so6158112a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 02:50:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772448628; x=1773053428; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0CDK4BH+OoJnVpsxs1bAWWhwEzUlZ60d996yFctMRUA=;
        b=0K9B4LfbBsNqMeXrxpFxGOwU4vpOH+u4RbdDMFuLT8xd8qzPEzj58dIku2Yihw/Uqf
         zfnSFTr4ir4RppBO9SmQjH8Mw/EzPUEpeGkTSvzGW6SRdHA0MtE/MjlenRLlphFuwpmf
         dYDdvCf4WfthHVF9iOLY08BzXnb0cwrzJ2j/GRMVXgMoQtvWnTuNddVy9jK5JRMxcpTI
         R0B7L0AAvH4lhebqsqISamERauouaoTi8+/7RMQWX8XhPwG6WWe94IFlM3Go2XeGGtAM
         UeprBRqS41KSgVc5FZU8OPteNRZDJlbtLjtZMwH4HIr4HENGmEGCEN9jpz2UW2TsNd/0
         AOlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772448628; x=1773053428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0CDK4BH+OoJnVpsxs1bAWWhwEzUlZ60d996yFctMRUA=;
        b=LopvZnb6pnTkryp2te/3q2oxXakg0k67ZGl13HDVweD9p2405PAGa+BeighrVCMxtZ
         RVyhPycIdbo5XhDUjn1oiYAIqfpXSHvihKbrejOYPqkeGoiw3zqTumMcbBVqgVhoQMoc
         16aAmQVSOI+4zShMnV0tMqULYUofRAvc+tpUWjpPoQfjn4d3U70glrqA0ckwMoFNf84p
         M56qsSc1Qj7Uig7GVaHmYRdNJc5nTLw3732ht/lAALBXy9ZmYqHGmp+DU3YSJx2kg4ny
         vlnsokcOgpCagMg/0hbNqBtGBjpo4GFg+zgD4nVfuThVBMF7/QZ+VPJBZkhKLV4nLKXE
         6jxA==
X-Forwarded-Encrypted: i=1; AJvYcCU/nldqh1/LwY5ejnNAVf3pg1IUGPFbBjcaoQVuIoWDAfbccKeIXn3nyrVcAvO8OuaPTuGyVezvM+f6@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3puffFGBfHNJMPd59kUUNWXNhJdw4ZHYa9RfhhMDsTCSRzn2b
	lLwmizGpUEYMtzbn7YBXVgxcPDdFUYK5Js7+95Ts+jQBR94wGjtn348cd3LqdcZO3BI=
X-Gm-Gg: ATEYQzzZvRDqtYrD2E83pCREJIA49v/7iStenLo7r5RA9rwmFehaobHhOEYSiQCsC79
	yDPixCv220/vNZydJL5kdG7MDY1yNpvpNhkBGjNcueR28YUDYEHpoO/ip/7M7HthCQjNYkzOYAl
	Sr6GRVv9Cbk7kOBC6sCH6MIrII3VLq+Cf5XX86e63Y7w2Iby3QMGrJgtwkk7mK3RBZABWlBnSgk
	4MW+R/fts3CwFAedL5HHIRsf7h09WDyIf+Cqc7yoVxsRgSABOoAD5IRr4IfMLF2E+4ExlUHepAm
	pGmCw9ZaP4X4sNUSVrFT83ss/nhJAZ5e9eTGkrm2QkY/YTLYZrUf6ApRp/1TE2jn4MvVT0jBLVE
	HjTrSijj/TvvJH70y8GbhrI4MKgiB+7q66ymRez1tKu1STx4sKszw0RmRgWnRqRlEQfo+8PMukl
	V9trSmSyXYPDP2yNw2xdt6CHzGIx/Wb/yojWOjnuGfoKEoemLIrYiviZjvJEpEEm2CvgRHbNonC
	ZwZKcbjdw==
X-Received: by 2002:a05:6402:270a:b0:65c:1483:a716 with SMTP id 4fb4d7f45d1cf-65fde4d2c45mr7809332a12.29.1772448628107;
        Mon, 02 Mar 2026 02:50:28 -0800 (PST)
Received: from [172.16.220.227] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabbd98bcsm3511769a12.0.2026.03.02.02.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 02:50:27 -0800 (PST)
From: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
Date: Mon, 02 Mar 2026 11:50:25 +0100
Subject: [PATCH v4 1/4] Input: aw86927 - respect vibration magnitude levels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260302-aw86938-driver-v4-1-92c865df9cca@fairphone.com>
References: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
In-Reply-To: <20260302-aw86938-driver-v4-0-92c865df9cca@fairphone.com>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772448626; l=1926;
 i=griffin.kroah@fairphone.com; s=20250804; h=from:subject:message-id;
 bh=aHRIOIA82B5UmiYNaDuGLIuutpMS1GzM+k8Df5VuVF8=;
 b=QMUHIQaI7C7oB7r2/diS3hfpVF30i0LI3lK0cwpYVvIDTd0cQRED/RbflRKKga8SAU/4jkimw
 eC1wRcjWk1rAAPeFM+vtN7HNuSZC0ScZYhdrByBcr5bMHIou20tHfAp
X-Developer-Key: i=griffin.kroah@fairphone.com; a=ed25519;
 pk=drSBvqKFiR+xucmLWONHSq/wGrW+YvcVtBXFYnYzn8U=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269909-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,fairphone.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[griffin.kroah@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,fairphone.com:mid,fairphone.com:dkim,fairphone.com:email]
X-Rspamd-Queue-Id: E0DA41D6E6F
X-Rspamd-Action: no action

Previously the gain value was hardcoded. Take the magnitude passed via
the input API and configure the gain register accordingly.

Signed-off-by: Griffin Kroah-Hartman <griffin.kroah@fairphone.com>
---
 drivers/input/misc/aw86927.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/input/misc/aw86927.c b/drivers/input/misc/aw86927.c
index 8ad361239cfe3a888628b15e4dbdeed0c9ca3d1a..7f8cadda7c456d7b5448d1e23edf6e3f2918ba32 100644
--- a/drivers/input/misc/aw86927.c
+++ b/drivers/input/misc/aw86927.c
@@ -180,7 +180,7 @@ struct aw86927_data {
 	struct i2c_client *client;
 	struct regmap *regmap;
 	struct gpio_desc *reset_gpio;
-	bool running;
+	__u16 level;
 };
 
 static const struct regmap_config aw86927_regmap_config = {
@@ -325,11 +325,12 @@ static int aw86927_haptics_play(struct input_dev *dev, void *data, struct ff_eff
 	if (!level)
 		level = effect->u.rumble.weak_magnitude;
 
-	/* If already running, don't restart playback */
-	if (haptics->running && level)
+	/* If level does not change, don't restart playback */
+	if (haptics->level == level)
 		return 0;
 
-	haptics->running = level;
+	haptics->level = level;
+
 	schedule_work(&haptics->play_work);
 
 	return 0;
@@ -376,8 +377,7 @@ static int aw86927_play_sine(struct aw86927_data *haptics)
 	if (err)
 		return err;
 
-	/* set gain to value lower than 0x80 to avoid distorted playback */
-	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, 0x7c);
+	err = regmap_write(haptics->regmap, AW86927_PLAYCFG2_REG, haptics->level * 0x80 / 0xffff);
 	if (err)
 		return err;
 
@@ -409,7 +409,7 @@ static void aw86927_haptics_play_work(struct work_struct *work)
 	struct device *dev = &haptics->client->dev;
 	int err;
 
-	if (haptics->running)
+	if (haptics->level)
 		err = aw86927_play_sine(haptics);
 	else
 		err = aw86927_stop(haptics);

-- 
2.43.0


