Return-Path: <devicetree+bounces-123759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3659D5E2E
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 12:34:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4D84BB22B4C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 11:34:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CF3A1DED7F;
	Fri, 22 Nov 2024 11:34:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="qu6C+tfe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3491CBE81
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 11:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732275247; cv=none; b=Bi9BTfWzSAJfLVFNqNm8tqn2Lq86MSkXMpiGexkOPg7AxGtLiZBno4ZZbuOw8T54VBjPSq8+NgmoUgyaNJp5ZMjNA19VtK1YBm2hq6Nm8OZlKyWfTbY0KJmvYqRVdHsPhre91qEak6mjNeg/AwGceyty9b0G9Kw0mVp1uS48e9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732275247; c=relaxed/simple;
	bh=Fwu9pQaKK4bs27HnVW7THTQBGwD2l8i0eSmDYU2vXCo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gyemv1l+PQBRbvhhg/i8ECWUBrbS4sa5B+vGy0EK+ozyW9CRInI1mCvR9ljw3hu4E5V7Q0QGbglTo1qjFXcydFOnWBszMrx7KXT6LibpRjslpN4dvcBZyS1TgzhzfrQHFhGkWN2ev9HXOzbm+VrV+Yxa1PDt4eKEY7UrYxoUxlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=qu6C+tfe; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-53d9ff8f1e4so2207222e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 03:34:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732275244; x=1732880044; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpgNB9SWivbZpiMjps5KlWBpMotrye0qsJeGvBEzXWI=;
        b=qu6C+tfet0aqvhpbY2YuBHE1wgt7vUxcoRkgEI+zTI7Zqm7nn/Sly4dCl7YAcWJW3k
         AbqN3fSKlKlhpY+jgXeMhZK2zKNTbYTAtasjoBdWWnblmGwtHd3kKHTsPo/doMB2kT6p
         G7Ky+bW014wnP34lZxwNJLSNrXkHmLyt9CDGbfzoT0eiVo+8/eIHzwD1VtnS9QpgFb2L
         DAXPxJ2Cg0RYtjbNe09Dv/++va6s1Ip5jWsZR0v5Riu8zNyUwkqmQzsTK3WFDAMJp9Py
         0rDRd54HrKd1Cdv5kUkMHqV6P9XjNagjDid+uVFZALnbFW3BRsWnZna2FnhYw1PkecYm
         qGbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732275244; x=1732880044;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QpgNB9SWivbZpiMjps5KlWBpMotrye0qsJeGvBEzXWI=;
        b=MIR+a3hPueIZ2eCZXf0l0lbbEvaQC+iELgaWBpdxnWvXmH8HcMhT/pVN/ijw9wgUU+
         1gHkKQXhsR6ZM6468nadan8yyz4L13B0A1aRjOkTJuH5RcfHk3VKF5lAyMPgeOKVwxY0
         7W93lw+Aj+sQAOxAyZ14Xa5BkA6SIvlkXQmE8nRGNIadqPD2rbkxGByyMjK5iONYMpRy
         Qenl85CVmgsqHorNs9lLifJN/bJjBefBrXtSt/sMn/UK2E69suMnZKqoY0nBRhrXaHq1
         uc9kGBBCzwACyO6G3y0Nf7FuBfKWOsloB6fC6HgXXwIRSO0MrEFlOqLWRHHc+VTMkAq0
         AffQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5QB6ll53BlPpfka1/9LsrThU8aDCXQNEqVYoY+mPFCxndz2SKW3ZvgZB6OfuR3tCrwHGVIPcFNbsT@vger.kernel.org
X-Gm-Message-State: AOJu0YwAlJP0zC7HQ7MweQjnStezodsELfhwf50UpZqs45Ybge2nzWJg
	y0+yNf3iXm+6Qmm7B5W1yDb7mHh6qmI6Y+9ECrmkMUpqq9lVdMb0Zd5eaTtW5vk=
X-Gm-Gg: ASbGncvOUhMzp1l2IiMzEAuY4xAEoKYY9mkJn4XBMBFn/A+ybMuKIoW04T0uRxjg35u
	LXPhGwCHCo6gDsynyFhUsbrE+GYmLhx9LKrkE/zLzhdn2iN9ooz2I8ldPs7A5JLaIIPCm596zxH
	G6YFbFBumr7w+BP9dujw5G3W3tKkdyAb31pJ/OUD+X7kP0jJRbvtNbuBE4NzaPjIt3HwTjX4uGL
	9JhHgGUdzJDfieD4K+RLJi7liwbuLtlRhWylmbJIIRvw4iTWH4sT8VHM6ImTmWxAS6hwZVg9Zrd
	9GM=
X-Google-Smtp-Source: AGHT+IGY4KL3gCdwtgcr2ARFmOwxE6aZ74yS1b6Efv6OiNkTxvo9zl48r2AjcV4V65Rv+zVV1h8AXQ==
X-Received: by 2002:a05:6512:130e:b0:539:8d2c:c01c with SMTP id 2adb3069b0e04-53dd39b56a2mr1338934e87.41.1732275243991;
        Fri, 22 Nov 2024 03:34:03 -0800 (PST)
Received: from localhost (p509159f1.dip0.t-ipconnect.de. [80.145.89.241])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3531sm2196400f8f.80.2024.11.22.03.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 03:34:03 -0800 (PST)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
	Alisa-Dariana Roman <alisa.roman@analog.com>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 05/10] iio: adc: ad_sigma_delta: Handle CS assertion as intended in ad_sd_read_reg_raw()
Date: Fri, 22 Nov 2024 12:33:24 +0100
Message-ID: <20241122113322.242875-17-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=900; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=Fwu9pQaKK4bs27HnVW7THTQBGwD2l8i0eSmDYU2vXCo=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnQGwP+uX3MtJEWS+RfPimNiqvazuzBpl/Y/8il dAOidMUjOCJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ0BsDwAKCRCPgPtYfRL+ TtQeCACfyQe6khjGWPIs1NVzkex84kRh0k98KqeDcKOtxhCaZH9NuGYdsMLcAbk9ZqX6bPkvO5m bXHALbVMq1mIo8nyfqd3FXsnNOgAstiP27UHFEoZYoX8delxVGSXFpu9wrXDNN6P/ckZbgIngHy fm5nhBvhEYYaH4ZaFGmVzxQ5MrXQL9I/mBlJQZCuJSqn8cuWM0+2gmrkHPEkeBgQxeF42CYU9Rk Ge5koPf9IR1VdKGlTxomJy2Zl3cawmaHIMJkxEaAl/Gz8vTlY7IdP/aUikBK9nssZn6iTncyAcb Cm60Ob3X+v++8+50hE/as31pef+RAyTSP1Aw5mGy+6D/i/BT
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

When struct ad_sigma_delta::keep_cs_asserted was introduced only
register writing was adapted to honor this new flag. Also respect it
when reading a register.

Fixes: df1d80aee963 ("iio: ad_sigma_delta: Properly handle SPI bus locking vs CS assertion")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad_sigma_delta.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/adc/ad_sigma_delta.c b/drivers/iio/adc/ad_sigma_delta.c
index 4c8d986b6609..5e7e5cb908d8 100644
--- a/drivers/iio/adc/ad_sigma_delta.c
+++ b/drivers/iio/adc/ad_sigma_delta.c
@@ -109,7 +109,7 @@ static int ad_sd_read_reg_raw(struct ad_sigma_delta *sigma_delta,
 		}, {
 			.rx_buf = val,
 			.len = size,
-			.cs_change = sigma_delta->bus_locked,
+			.cs_change = sigma_delta->keep_cs_asserted,
 		},
 	};
 	struct spi_message m;
-- 
2.45.2


