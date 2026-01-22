Return-Path: <devicetree+bounces-258495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAIeD6VKcmnQiQAAu9opvQ
	(envelope-from <devicetree+bounces-258495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:04:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CECD26979B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:04:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A62F83008765
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 15:57:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED00D451059;
	Thu, 22 Jan 2026 15:43:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IZa+UIUn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA42244BC8F
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096631; cv=none; b=aq+dU8lnJcFNvFMOR0VmgZgH9so9xgJFFU37mN4L/CycN/4/yWQTZX7tOznGOxD/ktvSCsjyWaZ1JztZmCWd6bf+OiS7BOhcg9z1i4jQ46jZ3+UCA/lp0tqW3IF/5P/I9Sib2ugweVN2z5mE5KIzsQyBUmRcsOsBAvoRaQsqzMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096631; c=relaxed/simple;
	bh=GVzTile/yZwpKHms32vEGpKMdnPMenoAs31RnHnr0vo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eg3XmrX8LD8P2MqGtRaTMn1PlXQ2zP35UjiYuunlXHy6QzgLWTLyzTqjjxgwEOX3lUxfW+VJcTHD2JkFip5rmWUgYqcVv9uFnj4mHnTTnlfHPghclMXwP4asravcCmXLYbqjcx9LNLfHQb4R0y0YGMkZV/lTsz1O5G6+70rGJf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IZa+UIUn; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-65801ce918eso2393204a12.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096623; x=1769701423; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5mnYMLTw+v58WgRJpE4wU5fkf6SbugO2jmsGWp983LU=;
        b=IZa+UIUnxuvCSVrceV9c9aeWUpLVihpwcjYklH+anAqCNWYmznLgqdLr5ZiVC5Ywrd
         y60FCfX2LBUzMHwuLysQWqMnOOltb4KsoVDyUsLf9i9ku6kcrlxVPLnjGSClJxciFikO
         anp7vvJGjmepNZ1R0yZ0J8QJ+Xi+KdAF4MKNCJdYpkjAo3Zzh2BqlhdEMTPxAfweQ9aY
         s0/pyr+f4Mh9/BS4X/IHzOdQG8g0dImjxrz0ELzyVGEniNEFs/ep7gAD4d1O6omWVjhp
         z2YIw9yhwhB70p1R+F8HrWhkNEpEDfqUOAz5QCnwCQJLqySgpfeuy5nxejPkE9W7qgFs
         g6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096623; x=1769701423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5mnYMLTw+v58WgRJpE4wU5fkf6SbugO2jmsGWp983LU=;
        b=rXk7/MaRAOpfqyhYXR6nhXRPLFccEedMVedWnIXo8ajtG60U8lb0XCLFA7boUCNbaA
         sgdMlz1NGmPcJrlrz1Rft0lAPLQweaEvXyJ5e6LgCYs3ubUDORNr6xBYfbQkfIBv/Fzr
         ozSMeXfBhOhPW60XPp0hGyMEpjEOGY4/9NwzFaOzur6TbAUPHqO6Wz2sRg7lNWalchtn
         gQDNQcFmRb6/8lx2iSjSwMwCONoB8V4Al/+eRyL4/ftxeJxyXj+7HoOvgedTY/C0a8+q
         RpgvidXgBzpBuUwXFMpiw8JpLSXqSEXXVNdtOyLISEzxDsUfV77s3zRijZnzG1sjBNw0
         oq4Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkgB+5S9nF8oOL3FuRTeAYdp3d2l/rZeJRE/J0oJPaHqKYnwUw9Wfrawm0eM2FMoF5KFF6jceCNZDW@vger.kernel.org
X-Gm-Message-State: AOJu0YyQD5pZnUGkBAs3F+3rBhk2OlM6HBvyYfZEd1cNYG+eJl1JsS5z
	3bdXw/NaXmqQdd8e3IN8g3qW5s8+IKlViCTOuMy2N2DDXNYHLSC2Yv6mtH1BlCFIDTk=
X-Gm-Gg: AZuq6aJ71aR/KNpVh/il3yi49sagwy9UU1ZvEWdQ2UqJaSzXUTaEcvUtjiA07/75WAt
	d8G5+mYHkzI3VI08TmS4DT1YzEHGS3HM7Y+GjNplIv1PnXugNGuJ3/2xgV8e+tmlnq1MVqUg6/9
	iCOgtEybGRNz50eJU97bFxvylYhAluJHpHe9L2Npj9ZYXLJv2n0fzRDIijLrpxpQ2FPfhHQ3rkX
	D6qEHWWWf9wLL0WBMrEIOhTh8NGmdCISc8RQOEBgcLwY+EtCQBkukvw/cIItc1FZ3ZLlAiW59EV
	xWecOPgP3OSROo7QluQCrifliAmA6gJSz8OkDTz8ybxQ5P6PTm8ST7lwh4RLo/5V/o7vtxQVV2s
	5VaT2lragGQ9YNlD7n21yD8pqzBKGb+hNLPSYiLThh0fN2n/Qxgmy7JezD9NIX42marJmjbscuU
	jODEI4hSUb2iZKDR5bQ7r5xlVwjO4mQ/ZuBRN432554txTIw5lWmTtzwgSYWgFxOJuWS/bcV/ex
	9xbDQ==
X-Received: by 2002:a05:6402:50c9:b0:64d:2082:d027 with SMTP id 4fb4d7f45d1cf-658487b933amr25772a12.29.1769096622839;
        Thu, 22 Jan 2026 07:43:42 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:42 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:37 +0000
Subject: [PATCH v7 10/20] regulator: add REGULATOR_LINEAR_VRANGE macro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-10-3b1f9831fffd@linaro.org>
References: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
In-Reply-To: <20260122-s2mpg1x-regulators-v7-0-3b1f9831fffd@linaro.org>
To: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Lee Jones <lee@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Bartosz Golaszewski <brgl@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Juan Yescas <jyescas@google.com>, 
 kernel-team@android.com, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-gpio@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258495-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,gmail.com,bgdev.pl];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,linaro.org:dkim,linaro.org:mid]
X-Rspamd-Queue-Id: CECD26979B
X-Rspamd-Action: no action

REGULATOR_LINEAR_VRANGE is similar to REGULATOR_LINEAR_RANGE, but
allows a more natural declaration of a voltage range for a regulator,
in that it expects the minimum and maximum values as voltages rather
than as selectors.

Using voltages arguably makes this macro easier to use by drivers and
code using it can become easier to read compared to
REGULATOR_LINEAR_RANGE.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
While this commit doesn't introduce any users, the upcoming s2mpg10 and
s2mpg11 drivers are using it.

v3:
- new patch
---
 include/linux/regulator/driver.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/regulator/driver.h b/include/linux/regulator/driver.h
index 978cf593b6624228fe1fd9c2a3e186b53ef172f8..977755db64c6dfaea7246067eab0d9a2971caa01 100644
--- a/include/linux/regulator/driver.h
+++ b/include/linux/regulator/driver.h
@@ -53,6 +53,11 @@ enum regulator_detection_severity {
 #define REGULATOR_LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)	\
 	LINEAR_RANGE(_min_uV, _min_sel, _max_sel, _step_uV)
 
+/* Initialize struct linear_range using voltages, not selectors */
+#define REGULATOR_LINEAR_VRANGE(_offs_uV, _min_uV, _max_uV, _step_uV)	\
+	LINEAR_RANGE(_min_uV, ((_min_uV) - (_offs_uV)) / (_step_uV),	\
+		     ((_max_uV) - (_offs_uV)) / (_step_uV), _step_uV)
+
 /**
  * struct regulator_ops - regulator operations.
  *

-- 
2.52.0.457.g6b5491de43-goog


