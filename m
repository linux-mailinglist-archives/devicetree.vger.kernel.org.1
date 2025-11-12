Return-Path: <devicetree+bounces-237558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 09310C520B7
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:44:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B30AC504671
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 11:20:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43221312836;
	Wed, 12 Nov 2025 11:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xp9dJzVn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC52A31283B
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 11:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762946325; cv=none; b=TTQ8yKFQmo3ze74zYxp0epyciw4zYo/DZakLeHmv1IcAWkBqhKoj6rkj675/fmb0OG8SXre3r0nzrIaAoVGeCilqTPT8nMufnUtMtHDQsWn4BqGbW8VNA5GZ3ZMEjSiUemvBtrQ/+7UJ+auE8D9gAKe56xHGCYl4gXOTnMF3gDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762946325; c=relaxed/simple;
	bh=Gjco+o33Ze1VtTmwY3+n9x0V+5Bjmx76JK+PO6sbBb8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NkpWaiAfW6dHATvR+CSs8r2k+xjoYOa0l7GJ76O2EdMGM0eDmy0qFebdVL8+5/Ut9SrC0ZCT5B263B64Es/1pUsGCXK9b5N3mKye8DkM+qwpNjKz48uIxzsebuBvdYFZ96TPwKV2N5PVAiUNVrdhrziQ+0n8GtsRjkVyk/LtW8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xp9dJzVn; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b98a619f020so602904a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 03:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762946322; x=1763551122; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RMg0B2M6mlNno5KCjV7xdRrPsgdx1eaJiYPjLRnt1dA=;
        b=Xp9dJzVntfsFm6Hdqw2gc8lrNREsswKpHWO25P7JAixkO8IEj9GFCv2TV/A57HVNsK
         OA31dV371iQYe4QE+5SzJCZpuHnjIdHVh1PGFOyXBjKgfmbDzoRWO2yCoz+NYeeSZOPZ
         75YQWyULeLKPMBhWJZ7NhrtfqlTGtKFLaPP164si+N8UwslUEX0HxMmuTE+Dm7XMHr7h
         ary/9bOZz1FYET03D1da6LLHw/fXlwfBnrfi7Kxwg9NJHPfaEQe+EeUKejTbSGOJr0RU
         Dk+1I3IJ6ZPBsf2mI+olaM3jS6b42gSV0f1StWn9ubYaMYa+MVc8+s65pgJqEbmHFId6
         /QDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762946322; x=1763551122;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RMg0B2M6mlNno5KCjV7xdRrPsgdx1eaJiYPjLRnt1dA=;
        b=fZeNYCp090T8uI4+uvu38q7ZFCYSnyQ+c1Ju6CbP3WfJ8VRZ6IOcFIHC7yf9G03IWm
         xGCPwPg9U3BxBlKSvBhdvPtCxwwuCS60SGq71WxRvnjt6y+rx+WLQmYP7DCU0O8TBFAY
         37unBKQqvphNWb5+Ui67Z395ohbuzM0kz+cjd9Rf0CamdeQ/5IZSqHw2sF7t+mzqYNnl
         fBQEBajM0GAo6EMmourIWp0MXm6WGQHb0Cjke9eyhlnvZi7Bl5kxFrgRKooCw6S6JKGG
         M11Ez7orbyN7yr5JrB5y1O0M8yiby7zydR8leeyqstLb/7LXZ/K0I0F8t6WvTMLAkWOI
         3Clw==
X-Forwarded-Encrypted: i=1; AJvYcCVN3X+iQ8co0HzEFWPMSrGuh4euZiE8fvWiAsK3BR1yMPXLDRFHtGGvokBSffoPaC/Vb/wmuBVIjuq9@vger.kernel.org
X-Gm-Message-State: AOJu0YwWrTcITRPXES6z8DfJ1nmfKOUWTUKF33pGO6Ito+dOdaQG0lzD
	RF79fD4jiFgHL0YDB6mEJ+p/QOtGttNS7qm/Jn2QuYP/LbP8IRaSRf5c
X-Gm-Gg: ASbGnctPw9JZ2ipB6OT5UR1Oqkax5eFyxZUQ6hxp0MI1RWf08s1s+mLJaspOcxBTWIo
	JjPQnhlNljDug2L9v7W5OjMHVpk7LORu4tp1mPFJgyqtHjtFToccT785IlKPpS8TKKo3XoP2HUn
	RYexXprJt6KJyZUYko7tay8PaKyq5KSPRJVd6uI3kQuoi+fBNJcp8QwJ2Ax83n4T3uwxiD/9UNF
	487TP4WzP5AmNgnMYvb+l9C8TApa0xd5PvVYEQP8pbSsEpBqxbZSxOGLlv8ryCCHd9Vg2WLAL0x
	lJhMRJ2xDSMA1DZTgHXM/g7tPvIjLJYEb+T18Q5gh9J+zPEBc7QWen09FIrYKOXQcuXLu0hXjNj
	eO2ViXg0ClIEc6Fpz1vrshcWA1XhETYDh/lDKBf5ANDi+fF5jfwN8bIvIPgNg3kIUUX6+jOSPse
	4xpwjlFipfbBVcUKDhTFO1uMWjpZ7rVbHAis620i1wrFfvzAmwj6dPqXenInObv9MPCHJ7ncsBo
	XrC99jIfm0ntayxYMLn6Msp08wR8dzePePuGj3BnrMHySOnm6yVeqA=
X-Google-Smtp-Source: AGHT+IHJszkUFQqYlR5AFfzTGIEAaKvG8RL+kwBBJVNc77ojPYvNHMx8YbFZwpTAtKabQYIgMU5Dvg==
X-Received: by 2002:a17:902:fc47:b0:295:24c3:8b49 with SMTP id d9443c01a7336-2984ee0ada1mr33966605ad.46.1762946322113;
        Wed, 12 Nov 2025 03:18:42 -0800 (PST)
Received: from [192.168.2.3] (2403-580a-80ed-0-4835-5a07-49e7-f115.ip6.aussiebb.net. [2403:580a:80ed:0:4835:5a07:49e7:f115])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2984dca0f28sm27386695ad.60.2025.11.12.03.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 03:18:41 -0800 (PST)
From: James Calligeros <jcalligeros99@gmail.com>
Date: Wed, 12 Nov 2025 21:16:55 +1000
Subject: [PATCH v5 09/11] mfd: macsmc: Wire up Apple SMC input subdevice
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251112-macsmc-subdevs-v5-9-728e4b91fe81@gmail.com>
References: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
In-Reply-To: <20251112-macsmc-subdevs-v5-0-728e4b91fe81@gmail.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=737;
 i=jcalligeros99@gmail.com; h=from:subject:message-id;
 bh=Gjco+o33Ze1VtTmwY3+n9x0V+5Bjmx76JK+PO6sbBb8=;
 b=owGbwMvMwCV2xczoYuD3ygTG02pJDJkiOUe9MqcoXO87L1RrfX5F5enpO+XeLfuuXJ0+02Ubs
 7Dj91SGjoksDGJcDJZiiiwbmoQ8Zhux3ewXqdwLM4eVCWSItEgDAxCwMPDlJuaVGukY6ZlqG+oZ
 GuoY6xgxcHEKwFTPdGH472O74la/3mPRvl8BylqCRWoyR8UunDqpHsCo80ls1Q6em4wMm22qelk
 nzL8Uw5BRsPxd9cobzkyfXVcpMehOeLLkl9dURgA=
X-Developer-Key: i=jcalligeros99@gmail.com; a=openpgp;
 fpr=B08212489B3206D98F1479BDD43632D151F77960

Add the new SMC input function to the mfd device

Reviewed-by: Neal Gompa <neal@gompa.dev>
Signed-off-by: James Calligeros <jcalligeros99@gmail.com>
---
 drivers/mfd/macsmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mfd/macsmc.c b/drivers/mfd/macsmc.c
index 51dd667d3b5f..3b69eb6d032a 100644
--- a/drivers/mfd/macsmc.c
+++ b/drivers/mfd/macsmc.c
@@ -45,6 +45,7 @@
 #define SMC_TIMEOUT_MS		500
 
 static const struct mfd_cell apple_smc_devs[] = {
+	MFD_CELL_NAME("macsmc-input"),
 	MFD_CELL_OF("macsmc-gpio", NULL, NULL, 0, 0, "apple,smc-gpio"),
 	MFD_CELL_OF("macsmc-hwmon", NULL, NULL, 0, 0, "apple,smc-hwmon"),
 	MFD_CELL_OF("macsmc-reboot", NULL, NULL, 0, 0, "apple,smc-reboot"),

-- 
2.51.2


