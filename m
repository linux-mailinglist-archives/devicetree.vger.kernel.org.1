Return-Path: <devicetree+bounces-115317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DE89AED8E
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 19:17:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6692F28206F
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 17:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 186581FAF08;
	Thu, 24 Oct 2024 17:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JiEZ2i5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC451F76AF
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729790250; cv=none; b=L75r+THebUJ6wZeeqtNSSOwr4xrJGcF4HsilkuVCyQIcgLzxIMXd4dLf03LhXGgw7mPR/bSwj9UvenCOS7nhOw5S4HzmiCiOaSUqMj8gyudE5SSFDdvfh8m+LgJwLxAUQVShZl2Oen3RuiTbHASEzovTDP5Y9cuUkHyfguUphjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729790250; c=relaxed/simple;
	bh=76N+Si6K+8dgLWMJ9V3NKmwxxyz+jGXcxE3eF50Hh6M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BUL/berkd4Iw98hMOMJB1KtpkNQEqqJeXlwB6WXgfkT3RytyRWJ1BtVxAR9fH6v5oqLXJXd0gvj0vh9HpccZEFX6shLWcmK/IYTR9ckgoVfCyfpVvtPgBhdA0+eHcKRCT+RK10MRd5OlRNPHG79v8++90JXcMDXXrD8YyOfJdFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JiEZ2i5L; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43168d9c6c9so12337025e9.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 10:17:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729790246; x=1730395046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CaTrXkFXaNRHKXBh+COBpt8a1vEye13/gPVK1ExC51U=;
        b=JiEZ2i5LInBI/oylnbw+zVcxtMnMYLfWF3OEvq3KvN9jDXY6CGR2z97RVEz31n4dAh
         B+5DeKwQVjch11kVYFjMruJ4w/JWm38VEVz3Kl0iw/4o0NyUOilrtiSqsj95dw4YEKBz
         AQskG8IfIqwLjyzFjfCosL1BiESPooXBVeUJ8gleLGApNHF5Sb/ZC88vZH/CEF611x+D
         Z84wp1Tb6n+kNp+njhlqBAATfCklj87ZzoCABmo1s+PvJmN71M5ti536ekHVEu8uRrQe
         5UE+f99Rw9nhmYJUqmocpSIaImiD+YOMsArHRdzqhXQCSeqB0x73So3QN4uvo/v6db6V
         ME2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729790246; x=1730395046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CaTrXkFXaNRHKXBh+COBpt8a1vEye13/gPVK1ExC51U=;
        b=Yp9vCFzZk+g3m0+GNOjNeO1YZdrj2ltgMBvSE9CX6HXBeQYCuEi5EiB10WuM20g9Pa
         Aa4WZ3xEScCEp5bseH4nrUpE131rYySX7CQ4CZPtqGT2U36phe4P+piUbDtFK7sYbR4z
         EN8CVQ3OBNAvQoHb2WO2si8uG9cHInFL3NwFxoHc3gcAX0FfQ/B+0GgNvLopssOKlmTT
         C09QIQWk7vGyOuHc1OD0wJQpOJDWUKZlTDa7UaS7CfENl6cGFZjl//pUqXO3bCID04et
         lV9v3daBwo34H/9wMPHuGkR+mbewCyZg9ZaJ0AA2ifT+cZIvk6nrmxBKY4N7QXXyz4Sc
         Bx9w==
X-Gm-Message-State: AOJu0YwCANiXF2KoufI/llWQBdyz/EXnzAO347DzhECMADwhLWKtlUo5
	iD8sk4JgvNgi/nvisigINn4WPrmScD7bORP6JW9fXqdhxicw60MV8WE4YBM1/Io=
X-Google-Smtp-Source: AGHT+IEwbgudZZknJJI3QPRz8S6wAXEhaDb0EsLnluZmeyI6CkuOGi/iWYa0RWHMwkgvamc84C7sow==
X-Received: by 2002:a05:600c:310e:b0:426:602d:a246 with SMTP id 5b1f17b1804b1-4318c77ee56mr24494575e9.32.1729790245996;
        Thu, 24 Oct 2024 10:17:25 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43186bfd059sm51365265e9.27.2024.10.24.10.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 10:17:24 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alexandru Tachici <alexandru.tachici@analog.com>,
	Conor Dooley <conor+dt@kernel.org>,
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
Subject: [PATCH 3/3] iio: adc: ad7124: Disable all channels at probe time
Date: Thu, 24 Oct 2024 19:17:05 +0200
Message-ID: <20241024171703.201436-8-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
References: <20241024171703.201436-5-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1380; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=76N+Si6K+8dgLWMJ9V3NKmwxxyz+jGXcxE3eF50Hh6M=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnGoEXamHKqM9O+c9WtTaN+6LwCefEKyEwZ/S8C gUvJD9dLpiJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxqBFwAKCRCPgPtYfRL+ Tp7UB/sHCxfRTC1Eo/unYY4t2veNOqHcpXdM4ubfIKORn11mWF9H2TezUlEJwGnKCwVSNmYqV4e LqIVVcz9dlv02GNMVmpKpUKd+3zzvpWKsInXrLA8GIgl5Bjz9SD9FcOSudiYldpoSiOkSorSW2d k+ye4Wwpe66wM2vn3fiDzZolHSAWp3ikLeRFdL0CXhldseSrfoYjwIsA6I5ocCEs5FyX27YvMlg iW/VtXCcap7aNv5GmWbzTjP3D9H7OF04uB47H64+sTtEdYXXD52p5yiP2FViZj0D4rfAK4lg4oR Mk+N0vv9P3nAUGTo4XzNYzwsW5JRe7wNjJp0Hj1JdGbSUyoR
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
index a5d91933f505..912ba6592560 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -917,6 +917,9 @@ static int ad7124_setup(struct ad7124_state *st)
 		 * set all channels to this default value.
 		 */
 		ad7124_set_channel_odr(st, i, 10);
+
+		/* Disable all channels to prevent unintended conversions. */
+		ad_sd_write_reg(&st->sd, AD7124_CHANNEL(i), 2, 0x0001);
 	}
 
 	ret = ad_sd_write_reg(&st->sd, AD7124_ADC_CONTROL, 2, st->adc_control);
-- 
2.45.2


