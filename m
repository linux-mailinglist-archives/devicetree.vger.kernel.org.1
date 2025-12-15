Return-Path: <devicetree+bounces-246495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BC453CBD330
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:38:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3529A3016C4E
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D852432AAB0;
	Mon, 15 Dec 2025 09:38:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WcohmrJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E35B5329E54
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:38:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765791523; cv=none; b=S3+oWesYP/ApwJjJTYto7JWvWc5xPF9+yahOUx1bIzDvKq7k518mjl2o3a0BR3MkTSSwohdnxdTATIfMZUucs0OMNGBWM6EdozWkQYgIml6cm8/ebzOzi8EQqarVT1ej9Y2KARWagWxW2pnNUlKUERE3y6Sl2kSWayqOwN/G6cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765791523; c=relaxed/simple;
	bh=ZLczhFCSy+m+gUzqsZBz2A7r/g5l3YzTxanZgL7vunU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r7Ug70H+WEJPj9eXCpIjGgp8RntVT64E99yktNme1UtbQnB91o+8xzks6I7QFXOkrSqalUqqjc28yOLIaXx67/CO4FRSpCVdu6EkW2uhCoDWePN3F5LONVG2UUwysyI9F5LY1PkKh+MU/EVzwObRQLFI2tBJsgiVQR16iiZAesw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WcohmrJV; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-29efd139227so39438215ad.1
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:38:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765791521; x=1766396321; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JyG1HrY6OxFyDwa94CYzQgXUA/ZnED6KNtKcs5HUkkc=;
        b=WcohmrJVPXOIaZoAVi/8VnUN/zIaNUmh+7pEmFpwXF8EJF9pVgdaakiL3m9NQydIm7
         miA7VWJ9INDWOIu6TPv3x5Es3Z2QGiUVmn3LF9ZcBxT8QamYi7J1KToQzeBg3PRrVDi3
         Sp6/QtNNozCrh2FM5Jt1s+udMt58eLtGpT4+RutiSwoM9ob3kiAlN6gsZHZ3h3CxiPEe
         RKKmnFtdHO5CoE4Q8QUtXV/j6SI5XO9nRp24RzOJkPYjIjTqrbOhN1E0NI6GJhGQufgA
         6lr3FUNF2QFzersiKVHnvL6Ey4l/Wat0bW1BJ8feKRuk8hij8BYfLbdRJERoswYF2fRl
         7KzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765791521; x=1766396321;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JyG1HrY6OxFyDwa94CYzQgXUA/ZnED6KNtKcs5HUkkc=;
        b=mkWAdvD85b3G0k6C6swPISaxfTy0bVbubWaM3GNzAPLRdP08rfvzF+mOSuTOpclc4o
         YYOF7r7GIE96n+llWqbyfYEG706rZBS8DByKEct86CtSCG/WyTP29srsaNK7zE0ia5u+
         hiwMOaqaWYEa7f6t77aZVo2ke5HBzUWuIlUeqZlMf8sFKJoIz+SM81NcLaCALTrZaNhU
         mdp2osrbPbXQGDr516FjGqUkZFW3UcdMb0C15ZQhvtSrl+BFnyAU6Br95uLBFpvMPjXh
         qDofGZtHiLxyc2qgPppYG21+8XoJk95JUdO9CdFUTWf0w0+2yVWzT4W/9vs0zWye3426
         1/Zw==
X-Forwarded-Encrypted: i=1; AJvYcCWJXPGmhnly/FfQ3Zcf+kxNtUsGAX5o0aTYbeI4K12Xro4CYrq42bkjehJ6Zu2QyQQo4crzpcLvzBjK@vger.kernel.org
X-Gm-Message-State: AOJu0YxD5HobAi7ozGzCnCOC3fx0b1qE/Q9V+dwyUJ2B8/FRZsE1EOjY
	jiJwb9vtZ+KgZ6QO6erFOn9l+cakf2BOWmTSMqmO2c+BCt3zERlWM0cR
X-Gm-Gg: AY/fxX7GDTaJc1MZy8TZUfzYH7UKD+Esi7nlDSiAG2+7E3bPh6DpaW7ytJPs7znU0Sm
	TXN+cPu5uv33qzkU8+C8ZGB6cdADp/YJLDUiJ3LbUPTCpCwVKnk+yQ+6J5SawzG+FEeff7ep34i
	dqIAO7OrZhmczAhy3k9rQjbmLS0uef4cQ58+Y+dFamDM8zoPKMGPW5BAZW1fXu/peQQs9ATjCFn
	NLf47IqvQanvK4TbluCZOnRRgdp1byEVIAPLBPb7V8m6gWrb9YVfdaWq79ifdWV3u/6hAzGW6Fq
	joskg6sP437bHEIgkip3bJeuC7+VZVWLHoJfvXWXe0RKZxbmlKfoxIrj/oAu7E9rDCqp/ZXBhX0
	eMwRfxoDjJN9k0HuAF8fyCZ+AqJ5ZxMzVlvwZxo/ovXvjVHRo7PJd1rjFUiOSwDIjR+Bkekbb5+
	g2AvlAJL1DoEI3tTQXDxcZdmUA+xl/pyNS31IRRwWvBpN48yNSTVNg/kal9WZcD9pLueySpgCVM
	sBZfZo88zpb3gT5iIxTODSnaCOyLCANZhbsaZ6caiVA2OiDyKeENr+l3EzyjDr7FPXt3G47m59i
	XAoBnTaJK5FQtFCpTKyaBxF16JpByQBtCwFe1R7fGU+VZRVVfqA=
X-Google-Smtp-Source: AGHT+IGrLdLzfp2H9tiVac+SQsAe4bk4AskKgVbq1niNwYTYkBxJLkhYZNfHpCAC+5TQzOHObd9ruQ==
X-Received: by 2002:a17:903:3bac:b0:295:560a:e499 with SMTP id d9443c01a7336-29f23b1296cmr99473905ad.5.1765791521288;
        Mon, 15 Dec 2025 01:38:41 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29efd74f5e1sm113017705ad.16.2025.12.15.01.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:38:41 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Mon, 15 Dec 2025 19:37:47 +1000
Subject: [PATCH v6 3/7] mfd: macsmc: Wire up Apple SMC hwmon subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-macsmc-subdevs-v6-3-0518cb5f28ae@gmail.com>
References: <20251215-macsmc-subdevs-v6-0-0518cb5f28ae@gmail.com>
In-Reply-To: <20251215-macsmc-subdevs-v6-0-0518cb5f28ae@gmail.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, Neal Gompa <neal@gompa.dev>, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Jonathan Corbet <corbet@lwn.net>, 
 James Calligeros <jcalligeros99@gmail.com>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rtc@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-input@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=744;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=ZLczhFCSy+m+gUzqsZBz2A7r/g5l3YzTxanZgL7vunU=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJn215lvbGxWfZmTpGq3Lqym4EiH8s2A7af357WZxnZyZ
 uYn2O/rmMjCIMbFYCmmyLKhSchjthHbzX6Ryr0wc1iZQIZIizQwAAELA19uYl6pkY6Rnqm2oZ6h
 oY6xjhEDF6cATPWbr4wMO1zKc7g2zW7v4HwR7C559/WHjwy7/16ymvClxfJzdduSfEaGPtaOhFL
 JJzUP5q6folLGbD4z69LuKwW/Ls+1WpDgv6qMDQA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the SMC hwmon functionality to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index 9099a7a22f1f..fa7b822d55bd 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -46,6 +46,7 @@
 
 static const struct mfd_cell apple_smc_devs[] = {
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
+	MFD_CELL_OF("macsmc-hwmon", NULL, NULL, 0, 0, "apple,smc-hwmon"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),
 	MFD_CELL_OF("macsmc-rtc", NULL, NULL, 0, 0, "apple,smc-rtc"),
 };

-- 
2.52.0


