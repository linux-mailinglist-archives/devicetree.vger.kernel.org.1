Return-Path: <devicetree+bounces-126524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D949E1A20
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 12:01:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ABEDB166F81
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 11:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 369C61E32CD;
	Tue,  3 Dec 2024 11:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wQcFzy4H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4913B1E0E12
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 11:01:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733223671; cv=none; b=uyBb1ZzF0tAuaJQKC6UgMxSEwUvG/+bCYbxYz+FRoGgD0NSSeC/Rprt2+a+RUCue1OL/me+HCu3hvMZV6oTQxcqccZ1rw2T0jcRlXv0rpV69HhjKdS+oTSMDj/uA9vJtz7txzGUW2Kqw0ZPRNDfgVIbWiI2/ZNsrqAw8wCTfZEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733223671; c=relaxed/simple;
	bh=zn8zvV9Mo4O2rpc8Z3avU2Iyc7Z00tacRFBEl6WqSmQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=P1aZ3K+Ytd0LFhmBZ/4b7wiOqprO5iILdRruNhgtF/G8bwaZuLxqV5y2Sxt7jXUHsNMtJ7lqtsPa9bvd96yCBcoc68mqVOvDFoLKo7aReC+mWQBNGnX8Gum5rUy33gwjcBeDecEc6lCUjNvfbVzl35oYJxyNXEmtwg9ZCARPwZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wQcFzy4H; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-434a2033562so43867205e9.1
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 03:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1733223667; x=1733828467; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EoPQYGtC/ppQEZ9aVkh2TLcv9C9qeXCGvY95zPdobik=;
        b=wQcFzy4H7cx5dy4Yu0TyMNThXj+Mw9JoZklig1Im/KYg7ELkA4FK2UnXk52o8oCn9x
         NdbDPfGvNC/qBSuzmfVeiemT3+nCLd+suXjmP4VNNchyRvBwDAfSJMLuHL73hYxz7T0R
         eP9ACz+XpFOHKI9d/fDgrMgmApluJNZkzDniGkB1vtrpr0dUFYDEkXlsEyYsS9izZQ3x
         jis5tdcOf04ezsDOB2To3ewlWzb9B4Y+/7+70GEmW08JNffXob5NmxTdlWHQ8WqgsoXy
         w9NzYJMGc6yq9ujSrz9FVDMm2rjr1BX2+N8sgblHI5RkGx2jk6Cz4nk7C2G46qaabQkM
         zxTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733223667; x=1733828467;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EoPQYGtC/ppQEZ9aVkh2TLcv9C9qeXCGvY95zPdobik=;
        b=XTa88HZN7aXUHB7IEpKTwOvoJ5bl1azW8Vq3jyTKBnTZCZtZ9iHPOP+sv5GMgjkNTN
         yOaBXQ7O4O9qJgH7Ma2s7IB+mVl/qB8m0Ty6zXEnFDe4a3MU8g3fnBpo+MEErKsHbOsL
         wwQRW2XPcWJMd+y/eZp2Iqs/Lj6XizYQ9MMXoukmqSFQU96WeNlKSBSr/kViqSZ5SkNe
         7zgmAEzcJm5dw6fU4aofa4/y2HGAC1E72NN6wWcccmTMU6vbWuozY5E2cj7IfuM52IZT
         2WQBN+KFqfpUheUcE3CkYWHyvwe1Dm6yUW971EL0PkNtHSq3H0Krtc8gIFSNtIElccwY
         fItA==
X-Forwarded-Encrypted: i=1; AJvYcCUxliORZ/tOOFshrSOjWV3jAG3Y1P1uFC+UNySZusHWO8jso4I0p4eh118jKpVGEoDiG+WSfNDqoE6X@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi7UoBpCSATNAXIiMH1cbd1NzMC8iuE2R4UY7+2n42egSueBTd
	Pe7Dk3TOcJk8DnPztA/tQNP0seAQdeQHCVJKf8zx3zi4hv4QKlXnMCga0274VHg=
X-Gm-Gg: ASbGncvF+BpAeda1mgYc0ltiARRyvWJmbiX2WepEI6coyfYVlMznmOUjNHlZeIw1ETn
	Ab9m95U1okHYeZOw6IaBk6LBoTm0WOre3nFDxU1McEiyjzJZoHyhT011PM9a36jkrt+eAMoGtaX
	cCNeK+i4DOvPPMr5/5JBH/9Uq4UjOkyCbu0OGi5fAsOPpzisO7tnZAhgTHeL4S6RATf1I8Gf57l
	a3fPQlw6HjR9hsJyZK9kqiI+J32yMqrhMe/DBCoR6TzLky07BgDW90vOrDp5pNmqLm7sLmeomPS
	opa4oQborpQq24DYHfAG7Hxlf/Bz+jNkokBt3GE=
X-Google-Smtp-Source: AGHT+IE+mqQ8+E1BwU63HuYNVr0qrstUyQSQZpFE7EPJ/H5Udp+UnPnt8grdsj7aqFcWV/P4NyP+2A==
X-Received: by 2002:a05:600c:4588:b0:434:9c44:678b with SMTP id 5b1f17b1804b1-434d09c2766mr17812745e9.19.1733223667532;
        Tue, 03 Dec 2024 03:01:07 -0800 (PST)
Received: from localhost (p200300f65f242d005bbc9b581c6b9666.dip0.t-ipconnect.de. [2003:f6:5f24:2d00:5bbc:9b58:1c6b:9666])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e4d42sm215482375e9.37.2024.12.03.03.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 03:01:07 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	linux-iio@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Renato Lui Geh <renatogeh@gmail.com>,
	Ceclan Dumitru <dumitru.ceclan@analog.com>,
	devicetree@vger.kernel.org,
	Nuno Sa <nuno.sa@analog.com>,
	David Lechner <dlechner@baylibre.com>,
	Alexandru Ardelean <aardelean@baylibre.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Trevor Gamblin <tgamblin@baylibre.com>
Subject: [PATCH v5 01/10] iio: adc: ad7124: Don't create more channels than the driver can handle
Date: Tue,  3 Dec 2024 12:00:21 +0100
Message-ID: <20241203110019.1520071-13-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
References: <20241203110019.1520071-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1454; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=zn8zvV9Mo4O2rpc8Z3avU2Iyc7Z00tacRFBEl6WqSmQ=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnTuTHdZucAX2c0f4j3lwLFQfEx4Ynwm9Zsma60 WqCqNIV1u+JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ07kxwAKCRCPgPtYfRL+ TsRYB/4/A1UjY3nmdlsZz6U1VvAw06ETk1sobvVZ7QTDc131ydp5ZD3vx0mIBsp4FG1RP5ebW8f FbInr/cKnuhGQaVmdsoYhmmyw8vmHddCp/U0fjFASKcUSvmLHx7GSsTdq6Y6hjThl4rK5AZdoJH Oe4mGNiY/CDiRZ9ZjgBghjpP9N6RifJu5rrLtYIOLFQguCCH+UQIqiLjLDJHuKm6k1aWYDTVWZx FG3Q5t5OQuqTvmH5n7TWqhXJw4IjfOkCVUFDcqz/4whX7GRpIWqs2vLbqSzvoaqcVHWHnK5uMU3 og0JFKcl2dZeFJLC7YQw3kmKASeqx776mUpJlojkWIhbtcSQ
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

The ad7124-4 and ad7124-8 both support 16 channel registers and assigns
each channel defined in dt statically such a register. While the driver
could be a bit more clever about this, it currently isn't and specifying
more than 16 channels yields broken behaviour. So just refuse to bind in
this situation.

Fixes: b3af341bbd96 ("iio: adc: Add ad7124 support")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 8d94bc2b1cac..5352b26bb391 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -821,6 +821,16 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 	if (!st->num_channels)
 		return dev_err_probe(dev, -ENODEV, "no channel children\n");
 
+	/*
+	 * The driver assigns each logical channel defined in the device tree
+	 * statically one channel register. So only accept 16 such logical
+	 * channels to not treat CONFIG_0 (i.e. the register following
+	 * CHANNEL_15) as an additional channel register. The driver could be
+	 * improved to lift this limitation.
+	 */
+	if (st->num_channels > AD7124_MAX_CHANNELS)
+		return dev_err_probe(dev, -EINVAL, "Too many channels defined\n");
+
 	chan = devm_kcalloc(indio_dev->dev.parent, st->num_channels,
 			    sizeof(*chan), GFP_KERNEL);
 	if (!chan)
-- 
2.45.2


