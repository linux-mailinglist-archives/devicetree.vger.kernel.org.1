Return-Path: <devicetree+bounces-258498-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DjAB+9OcmnpfAAAu9opvQ
	(envelope-from <devicetree+bounces-258498-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:23:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7833869D37
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:23:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 79ACE3018778
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:11:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93AE646AF2D;
	Thu, 22 Jan 2026 15:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yreLf6gx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71A1144E049
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 15:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769096635; cv=none; b=t/uouobfxxMk6G8z0w1qqmH05+OWmugV3rQegl1GYIEPgo6hl3QzqUgdm3foWA18uJMTcRL7JEof8SUxjyyliAEwi+l97ZA4K4cijNCpu8ALXGHBfP2OJasB48FNoIVLZ6yqY1jKd78N5Age8eA0ooYYflgQF6Lp8/d5tvyN+f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769096635; c=relaxed/simple;
	bh=CV/1AntRv4i6Nx8kbTbv/dJgDCUxidMgMOHRqzlspiM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o8g1EHF7lD/uRtyjajUiPr/BuLox6/b9T0y+1USGTt5CohouksEOm2+S6HVtTnZVqGE+ttTazRPd0ymE8EP0tz+FYx0AtmhiHWpo3kf5lFfxqBvDIztq+iE7gjxb3Q11Ze6yICPdyYrPpf/F+iQVULcmzlpBIjvr0oKVjIyIoVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yreLf6gx; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-652fdd043f9so1943394a12.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 07:43:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1769096627; x=1769701427; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q0vnLX9gJoSUgj6PsEAnovUE20jhGMuNkb9xOcVBvuw=;
        b=yreLf6gxFTMDiCSuL/QPpteElIX5CalBHW6acpzCNfoYvNCO44mtHTgJR8Kloc3nqJ
         48CBvMOl6pMC3pDasDUaBZt/9wiUmdJUTmUWQ+OwGyWa/uWYST7raiDIlQtjzbf7gDg6
         SQq0I9id8ATFVnwepuAyPOtBa0dmLCmWvexMABxOSrhrX3GLNtDoUfnwa4jkEJWYluZy
         ZGt1E+Iej5mAY/8c1k+jXPpdWPK4eE7sIC00YzsqrBVl5yntXtl/E0nzwuPbJA0rk8UM
         W2CXJPvhvwXhFkoLcBp93vhWmLhtNW/BX+c5knis5MABOM/1yUocE4Vdvd26YlF0ex3+
         oC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769096627; x=1769701427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q0vnLX9gJoSUgj6PsEAnovUE20jhGMuNkb9xOcVBvuw=;
        b=GhoOVJw8zJ57sg/iw5aIPHEjiCNcZK2ftirDKi132lMcJzxXoRnSRZGI5cPmeqDXQ/
         LTt8U5xQ/L5GCD0la2wh/ZAz8p4nWD/OY8SDTc9T0qS6W8Hlv60gaar9dH+VN9RN1GfZ
         iif5Ky0s/ucAqU//pGrNxvy8Y9xNkvVu5A1lfePcGtyBtr8MS7JSYVNG1gyaIMkAQ4fq
         Lvt9ZznB/lwX+Yv8O5erA8ZZNyC8bFRMUHyQugkiw9O0gl3XrVe1sBDUt7YufwIhLZSl
         Ns00g1tkbMm5ZnPjf88bDA7cD1Pnc8go0RkDCeYPtHFDFX32JkROFQL+lP1PCPKtF/4n
         /MXg==
X-Forwarded-Encrypted: i=1; AJvYcCXsPIgkCJhGPYvIHKVU0s4RvNAPsUyncQ11Ffl0VHD0Hjt8PZBz0N54NYT8CrsCl/aRdJQjAgOSRP6x@vger.kernel.org
X-Gm-Message-State: AOJu0YzeM0HcBUiEMPTCFzfEPOfjWIIS4NRqrn9Shd5MLc5Dr+cZ5htP
	F4grRwsHk6FDsKtFD/VRf9Sv/BQRe6jEsD4XQ9LKtuvsslB38tUz4PqQxM9JmXF4brs=
X-Gm-Gg: AZuq6aLgCj8yf89yvqYLFddTIRKWv4FWdbdE0IwOlWvhx0Jv3eHg6OrDuChJYLKjLMP
	eVt1wxdjlW7J+HnxUn2k56+xvAxU5QyJGL0BdiMtjuF+aLHYk1t0RKoNLmNqbu0bdOthdBci2sF
	u4hU8LYVhXOnk5NH8jKzUzndMNC/4GliTfUgYA5Q+h3vxUBeHhTuATF0fmCXUfAIvQ436fUIeZ6
	qVZM9qNY/Pb5BFMfPfmVoTLN9uAwEOTqzBCewLkCWKKXOUn6z0wLpWgYBc8lk66OukeL+DJsJMi
	z29tyHUNbeRL/25yNZDsdmy6gKHZBAI0D8POvimVUJDlZGl3yCBL8Mrg07e6VJubgd54cUGbrD8
	r/392390J77Q3VQb/5OySQyqjeHb5K7OSJz/a2jabOUZoSUyJnioDmTUY4+U8LYhA4phaQAXlNf
	5c9xmSPhOeTYWinxMJzNQpmp8h/WxEiIQL0ICDYGiPcwVKtOAOv2m/gCBFQRTSsHDBugNf9S71Y
	Q3gBA==
X-Received: by 2002:a05:6402:2115:b0:649:a63f:bea9 with SMTP id 4fb4d7f45d1cf-6584879fd4fmr26109a12.16.1769096627408;
        Thu, 22 Jan 2026 07:43:47 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c49f4sm16334363a12.31.2026.01.22.07.43.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 07:43:47 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 22 Jan 2026 15:43:44 +0000
Subject: [PATCH v7 17/20] regulator: s2mps11: refactor S2MPG10
 ::set_voltage_time() for S2MPG11 reuse
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260122-s2mpg1x-regulators-v7-17-3b1f9831fffd@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-258498-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,linaro.org:dkim,linaro.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7833869D37
X-Rspamd-Action: no action

The upcoming S2MPG11 support needs a similar, but different version of
::set_voltage_time(). For S2MPG10, the downwards and upwards ramps for
a rail are at different offsets at the same bit positions, while for
S2MPG11 the ramps are at the same offset at different bit positions.

Refactor the existing version slightly to allow reuse.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/regulator/s2mps11.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/regulator/s2mps11.c b/drivers/regulator/s2mps11.c
index 0b6b28ce6465bdbc98ed72f627dc5565479ec7c0..5e35840605472e20019ef936d283be2c38146854 100644
--- a/drivers/regulator/s2mps11.c
+++ b/drivers/regulator/s2mps11.c
@@ -566,26 +566,23 @@ static int s2mpg10_regulator_buck_enable_time(struct regulator_dev *rdev)
 		+ DIV_ROUND_UP(curr_uV, s2mpg10_desc->enable_ramp_rate));
 }
 
-static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
-						   int old_uV, int new_uV)
+static int s2mpg1x_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
+						   int old_uV, int new_uV,
+						   unsigned int ramp_reg,
+						   unsigned int ramp_mask)
 {
-	unsigned int ramp_reg, ramp_sel, ramp_rate;
+	unsigned int ramp_sel, ramp_rate;
 	int ret;
 
 	if (old_uV == new_uV)
 		return 0;
 
-	ramp_reg = rdev->desc->ramp_reg;
-	if (old_uV > new_uV)
-		/* The downwards ramp is at a different offset. */
-		ramp_reg += S2MPG10_PMIC_DVS_RAMP4 - S2MPG10_PMIC_DVS_RAMP1;
-
 	ret = regmap_read(rdev->regmap, ramp_reg, &ramp_sel);
 	if (ret)
 		return ret;
 
-	ramp_sel &= rdev->desc->ramp_mask;
-	ramp_sel >>= ffs(rdev->desc->ramp_mask) - 1;
+	ramp_sel &= ramp_mask;
+	ramp_sel >>= ffs(ramp_mask) - 1;
 	if (ramp_sel >= rdev->desc->n_ramp_values ||
 	    !rdev->desc->ramp_delay_table)
 		return -EINVAL;
@@ -595,6 +592,21 @@ static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
 	return DIV_ROUND_UP(abs(new_uV - old_uV), ramp_rate);
 }
 
+static int s2mpg10_regulator_buck_set_voltage_time(struct regulator_dev *rdev,
+						   int old_uV, int new_uV)
+{
+	unsigned int ramp_reg;
+
+	ramp_reg = rdev->desc->ramp_reg;
+	if (old_uV > new_uV)
+		/* The downwards ramp is at a different offset. */
+		ramp_reg += S2MPG10_PMIC_DVS_RAMP4 - S2MPG10_PMIC_DVS_RAMP1;
+
+	return s2mpg1x_regulator_buck_set_voltage_time(rdev, old_uV, new_uV,
+						       ramp_reg,
+						       rdev->desc->ramp_mask);
+}
+
 /*
  * We assign both, ::set_voltage_time() and ::set_voltage_time_sel(), because
  * only if the latter is != NULL, the regulator core will call neither during

-- 
2.52.0.457.g6b5491de43-goog


