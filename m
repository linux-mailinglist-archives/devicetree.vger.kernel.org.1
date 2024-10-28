Return-Path: <devicetree+bounces-116604-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E2ADF9B35D9
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 17:08:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 44B45B21E49
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 16:08:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 439571DED6F;
	Mon, 28 Oct 2024 16:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cNeDHi49"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0080D1DED6C
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 16:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730131702; cv=none; b=PK9DpLMV/TkHaAFb7NvSae+yk6bEYHN4oECSXWditgjkK/sf08Sqxy+I6q+wiD43Zxu8Fm8eHqbUxLZpRtBs1yTgmFsiOR9Xy2ren3LdkxfoF5bx7v9G+eGZNJ8RjM52h8EB2M+PLmgF2cBX53CFb5cOQfbJBEcAEgInJ1qW2LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730131702; c=relaxed/simple;
	bh=0N01AvBl0uJvKMTxgBJP6kgP/tEGMfe142ivUmjogG8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SqGLztPu8gag+uqS4XclOcjIW+KNTgU2oKBxzwIvkjbx0XHKh0ZWtqvuUy+URkH1MY8/ZqBhPkU1yjbU7fLcfEvIlNaSRbZN0MM2WAtZLrKnFuoCDP5tfX4aolo6dhwbbX1jqDweh1uzAa1o4+m0oafckHnemPkg3FKVraz5CQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cNeDHi49; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-431ac30d379so8817185e9.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 09:08:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1730131698; x=1730736498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yDqZMtYQ911IVoh44LgqSLk8tfAEAk1LjxbYN8N2FQM=;
        b=cNeDHi49IuT3K9ROnYwPOhod8/HZIf7GrQmLs8r4P0t/inI5Konvxqx2idsVwYUKUO
         KGkPQYPc7mqJcdpXshzd6+M+A3e8rg/1reGn1qj2SSC23i9VqMUF7Ww1EioxW99CPH73
         Mw7lCW1OKMprKrG/tCZuFNT+ce3JdG+MttvyDEpaMJndjQyNibqp6dswkgdtkn74nKWV
         8MPVx9Hgac6XVnISA8OJGafEDaCO1wW6adzxkInKD0ObxRpnY2qSZNwwV02Z2oA6uocx
         fgwJxZwv1i01fcQ/tyvnw1oezfDnqsA/vNaXc5I4pjCAKdDWSBxyBPiTFFicWyyjQdMz
         6UVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730131698; x=1730736498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yDqZMtYQ911IVoh44LgqSLk8tfAEAk1LjxbYN8N2FQM=;
        b=WAd1Ep1TCTAB0N8PJzA3QyMikRE1xuXLaHUmTINWVb8rgo3hghdFJ6D3vYaqmkGEaV
         Prla5RUKBRBpCFHWbUeANAwVxCdXWnWXJJrpZMPOoPPBSlY65TX003BI5VkuEsRHXDvT
         9VEV0h9dNDi1YnTT8iWRx1RvxCGOrSBjU970S1FfpgNciNBUB/MQm28JcwaLIhG5/B4D
         PK12owo58J06eZ9ri/Uy79Ei6aCSdtpREaE/cD6NSnMmQiPwJzshfxeFgHgPx2+diY2m
         jU/IL5xUlC0rFmFMZFNm++Z+/UIiSVAQo7+K4ifcipKNzxwYR1NjRAIgcY4YRgfgtbsB
         uuqg==
X-Gm-Message-State: AOJu0YyMxhgOv9fxI2vl+rkWAsOywptIm7+mfYdLw8c3VnXyFHJp7fr3
	S6yAQW2Nzml/MA0sX5qsfLrPy7kkXxOm19Qzu6tj1rPcgoI4cwxQJhgszBTu+LY=
X-Google-Smtp-Source: AGHT+IE9MmEjtbzZdsfKj2QOyaCwDFePwJfeeepNxFHDAUu5yysG0Dm6iQx0/6I+8sAZYGhDKuaavw==
X-Received: by 2002:a05:600c:1c82:b0:430:699b:7d22 with SMTP id 5b1f17b1804b1-4319ad14d14mr85589385e9.26.1730131698361;
        Mon, 28 Oct 2024 09:08:18 -0700 (PDT)
Received: from localhost (p200300f65f0c3200f401bf2b6011cd64.dip0.t-ipconnect.de. [2003:f6:5f0c:3200:f401:bf2b:6011:cd64])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43193594fffsm113281335e9.13.2024.10.28.09.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 09:08:18 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Dumitru Ceclan <dumitru.ceclan@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Nuno Sa <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v2 4/4] iio: adc: ad7124: Disable all channels at probe time
Date: Mon, 28 Oct 2024 17:07:53 +0100
Message-ID: <20241028160748.489596-10-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
References: <20241028160748.489596-6-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1375; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=0N01AvBl0uJvKMTxgBJP6kgP/tEGMfe142ivUmjogG8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnH7bgOE7iGbMylKJAJvbiBOX3hRV9bssr11z64 7939T0xdzKJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZx+24AAKCRCPgPtYfRL+ TgC+B/44r6pWumnFJVv8sIK1/jyHfPZCcQ7yuo9dHdXU3Xs0gWCaZOI30gRKb/nCh2Na4w8TUEL GIJ/fERJXDUhc9+Xp2z+lrhKkb/Sbg8ztcG2QcAHSZfVDewE2+kCM3/bdOecr96lLvQHzM59x4B ba5NEVL7gOuzgEQpjxUwWX3kewz2leypkjDfd4ejD/PGKrmkv7123qE5CMDobb2s3w6Z7x1FQO9 NoTOAKiI9R/YF8KYZlGuRLvhtDcN+Tt9oFKcDyctDE7b3Yj96eFdRmMQVVt7NA3pyKBku4UMHFe uZntXo5tLoaBzWBx37E50DuxLjsriVZmmItgEU7MPcGY3mqx
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

When during a measurement two channels are enabled, two measurements are
done that are reported sequencially in the DATA register. As the code
triggered by reading one of the sysfs properties expects that only one
channel is enabled it only reads the first data set which might or might
not belong to the intended channel.

To prevent this situation disable all channels during probe. This fixes
a problem in practise because the reset default for channel 0 is
enabled. So all measurements before the first measurement on channel 0
(which disables channel 0 at the end) might report wrong values.

Fixes: 7b8d045e497a ("iio: adc: ad7124: allow more than 8 channels")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index a5d91933f505..749304d38415 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -917,6 +917,9 @@ static int ad7124_setup(struct ad7124_state *st)
 		 * set all channels to this default value.
 		 */
 		ad7124_set_channel_odr(st, i, 10);
+
+		/* Disable all channels to prevent unintended conversions. */
+		ad_sd_write_reg(&st->sd, AD7124_CHANNEL(i), 2, 0);
 	}
 
 	ret = ad_sd_write_reg(&st->sd, AD7124_ADC_CONTROL, 2, st->adc_control);
-- 
2.45.2


