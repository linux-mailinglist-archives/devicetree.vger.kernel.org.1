Return-Path: <devicetree+bounces-183365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C40FCAD03E0
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 16:21:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DE7D17897A
	for <lists+devicetree@lfdr.de>; Fri,  6 Jun 2025 14:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6691AC88A;
	Fri,  6 Jun 2025 14:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="knH6/L/8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5574913D503
	for <devicetree@vger.kernel.org>; Fri,  6 Jun 2025 14:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749219645; cv=none; b=fyYcP04l16CQFMX+K36WKd/x86lsixG+il17YjYlHZxuEvt3wlvJzJ22LqVN629dta6GILi7y4Z1UdkKoCYVx/AtwdpqoD4o1+h3cbfOnRWk52DW7DIkjlq4MhIAN4ZWvxRNIjp6l6ZUSUe/IJ0gOtr0eQiOfpGZgx6/ckEh0wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749219645; c=relaxed/simple;
	bh=f+7ognlnkY6ABMgqMvYNANME2eJG1YvGoQid+4LAH8A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E22JaTA6dOipiRF8srErjsfpE+XfnP06MZENsZ+Lgxz+k+N87hk3vE3DLeMs6Jov885ht3DJtbysH/a3OW0PTBcd903d9r+MDLWY4ullm9B46WdpZpUrEql0Xh0zwZk2kegzZ/HJVm5qsBKlUD3zGdu2vNP4YTBtfTOLRVt2QyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=knH6/L/8; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a0ac853894so1948315f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Jun 2025 07:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749219641; x=1749824441; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jZ28Kx5QxbLsb0Rtfg5i9W4w8GmfQk90Ip8Fmjx54W8=;
        b=knH6/L/8bKWQ70j8y//qGp7dOAkjMccbvAe9lvI4Yhl//4w9pIhx7ZBga5gYH6trZR
         m8D1S0kijl0r8AJC1kAZzLvYSbSOvn6xATDVPRhoGFU0dXcLTSKbqjN5//7DFzmb6Mkw
         /mg7EIIN2cvGa4m88jin4E6Emstq6AVCFAo5YvU9gi7vhfwQCoCt96DZEnuRC9JdtHMv
         zxRvlB/wiN4fNfh/W98Np/4hBTR5nGkpBx/sab5phx/BRVNSjrxXP+T1c7UabSe/IRe4
         aAZfAGJdzUbVvCBk/uzvPuyRFOkzY8h5qwxYE6CW04i9utvnc80DtHz35+8VOUwbmGKd
         SLEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749219641; x=1749824441;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZ28Kx5QxbLsb0Rtfg5i9W4w8GmfQk90Ip8Fmjx54W8=;
        b=m+LpUPLv+j9BSKPeNEzMOiy1FE2XDGfGcjbCq4KuFlp9elAXl9dDWeLWLxPrTjoKUL
         mlbU1p9ony5jyQSwCc9HrmFKpXzy7S8CbEy/m4VISS1UjysCJHGBywDpoHR8PuRcswwd
         f111cKpZ/lpMZKoGUCNkDAAtj2WDqjkQxkjLCZQlo3JbjMTjryWswkAygqwv+XzwX2jF
         Ye1f7UMDTrAIEZlWtBpUp14JYDo8lC1R+/kbIBxfqoLpNqmg5Y1f7Qx9KeTXWK2OtkXI
         MAaMKpehQs5qaI17QireojWP7h7g7AnN7wJ7GE1WeFasImgCfqNW3Ty42NkNlhr1Hpv9
         Dgtg==
X-Forwarded-Encrypted: i=1; AJvYcCWAF88S8brX9ouKGGlVnkMmrDjzYODfOhFQdfo/OyI+XqzPaGxOk5//enXyQfi1n0/2X0KuuvPKNg+1@vger.kernel.org
X-Gm-Message-State: AOJu0YzRVSjjiU5kls9lteZFs+MziQtpEixFV9mkKZ1ehKt4p7hOvAsU
	wEZRcxRkLtXh2iOK75DXBTiKzsBYYJMEP8+6W0HXQru+1siumQwKCpzBFQXljfvWfTA=
X-Gm-Gg: ASbGncv8pUmODLsV6FsVO+sZ7wSmo4tfVAlE5g4MIq5FIEmvPilL6IrNeWZG9ekgLb0
	PZZozISHZsYwceqrO0ggfWQbOrztFDdlfEXvf5tucIyi4GQRzcWf+zIwf9gt/2jdI9PzmygldFu
	FG4Q32sqmuAlRyTamzOD9Tsp4YANGas+0JjX4vrBfzgK7LG10VFpMDzJMZ0izrjZCifZxQlNS4S
	z90eKR4dYQz9ni/rUb8/Lv6xPqxPw/6JBF2DENP4+h5AZioWVCPRe4QryoH51xlgRrH/8D48NN8
	FEPnIzDybLRgnCFXDv0pVg11w+WX7x0Y+4WA+NLmVKe+7v506j+aqjJFZ3fTt/fN5LLdYNMG2N5
	FWPNjIkfw7q5/0oIZyYrXPUkO09HC86MrUNeYH+Nbcw==
X-Google-Smtp-Source: AGHT+IHhCj/YwN7oQ3fXOgIifxbVNhKuGlY1eNZwPXPGmMH9lESTEdVKh5c3xerKbBD26znzRGWiQg==
X-Received: by 2002:a05:6000:290d:b0:3a4:fb7e:5fa6 with SMTP id ffacd0b85a97d-3a5319b6aa4mr2628159f8f.1.1749219640153;
        Fri, 06 Jun 2025 07:20:40 -0700 (PDT)
Received: from [192.168.0.2] (host-80-116-51-117.retail.telecomitalia.it. [80.116.51.117])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45213754973sm25686345e9.35.2025.06.06.07.20.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 07:20:39 -0700 (PDT)
From: Angelo Dureghello <adureghello@baylibre.com>
X-Google-Original-From: Angelo Dureghello <adureghello@baylibre.org>
Date: Fri, 06 Jun 2025 16:19:18 +0200
Subject: [PATCH v9 3/7] iio: adc: ad7606: add offset and phase calibration
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250606-wip-bl-ad7606-calibration-v9-3-6e014a1f92a2@baylibre.com>
References: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
In-Reply-To: <20250606-wip-bl-ad7606-calibration-v9-0-6e014a1f92a2@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Michael Hennerich <Michael.Hennerich@analog.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Hennerich <michael.hennerich@analog.com>, 
 devicetree@vger.kernel.org, Angelo Dureghello <adureghello@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=9455;
 i=adureghello@baylibre.com; h=from:subject:message-id;
 bh=fCW7hUH+4D7M4y8C5+DvPW92iP3q60SPzFCMbSrvenM=;
 b=owGbwMvMwCXGf3bn1e/btlsznlZLYshw+vGsZbODt2Dz693a6lPZXN59TD/IIMNaaLV+s8Snf
 yurG3i4O0pZGMS4GGTFFFnqEiNMQm+HSikvYJwNM4eVCWQIAxenAEzkYD7DP3WGSWwxLNYy5eqe
 zWqarzr0G2eHTZTa/uGbXdKu4zM/yTMyNPhG2N8oLr0/T67Au1bXZvJV/mvB7O/rd9Wk10U3nYj
 iAQA=
X-Developer-Key: i=adureghello@baylibre.com; a=openpgp;
 fpr=703CDFAD8B573EB00850E38366D1CB9419AF3953

From: Angelo Dureghello <adureghello@baylibre.com>

Add support for offset and phase calibration, only for
devices that support software mode, that are:

ad7606b
ad7606c-16
ad7606c-18

Tested-by: David Lechner <dlechner@baylibre.com>
Reviewed-by: Nuno Sá <nuno.sa@analog.com>
Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
---
 drivers/iio/adc/ad7606.c | 160 +++++++++++++++++++++++++++++++++++++++++++++++
 drivers/iio/adc/ad7606.h |   9 +++
 2 files changed, 169 insertions(+)

diff --git a/drivers/iio/adc/ad7606.c b/drivers/iio/adc/ad7606.c
index 9e489c05dea6f0a9fd144640fb0e23775eb4f3d8..f0c22365f23fa2bf00edddcdd7d608bd1393bf28 100644
--- a/drivers/iio/adc/ad7606.c
+++ b/drivers/iio/adc/ad7606.c
@@ -95,6 +95,22 @@ static const unsigned int ad7616_oversampling_avail[8] = {
 	1, 2, 4, 8, 16, 32, 64, 128,
 };
 
+static const int ad7606_calib_offset_avail[3] = {
+	-128, 1, 127,
+};
+
+static const int ad7606c_18bit_calib_offset_avail[3] = {
+	-512, 4, 508,
+};
+
+static const int ad7606b_calib_phase_avail[][2] = {
+	{ 0, 0 }, { 0, 1250 }, { 0, 318750 },
+};
+
+static const int ad7606c_calib_phase_avail[][2] = {
+	{ 0, 0 }, { 0, 1000 }, { 0, 255000 },
+};
+
 static int ad7606c_18bit_chan_scale_setup(struct iio_dev *indio_dev,
 					  struct iio_chan_spec *chan);
 static int ad7606c_16bit_chan_scale_setup(struct iio_dev *indio_dev,
@@ -164,6 +180,8 @@ const struct ad7606_chip_info ad7606b_info = {
 	.scale_setup_cb = ad7606_16bit_chan_scale_setup,
 	.sw_setup_cb = ad7606b_sw_mode_setup,
 	.offload_storagebits = 32,
+	.calib_offset_avail = ad7606_calib_offset_avail,
+	.calib_phase_avail = ad7606b_calib_phase_avail,
 };
 EXPORT_SYMBOL_NS_GPL(ad7606b_info, "IIO_AD7606");
 
@@ -177,6 +195,8 @@ const struct ad7606_chip_info ad7606c_16_info = {
 	.scale_setup_cb = ad7606c_16bit_chan_scale_setup,
 	.sw_setup_cb = ad7606b_sw_mode_setup,
 	.offload_storagebits = 32,
+	.calib_offset_avail = ad7606_calib_offset_avail,
+	.calib_phase_avail = ad7606c_calib_phase_avail,
 };
 EXPORT_SYMBOL_NS_GPL(ad7606c_16_info, "IIO_AD7606");
 
@@ -226,6 +246,8 @@ const struct ad7606_chip_info ad7606c_18_info = {
 	.scale_setup_cb = ad7606c_18bit_chan_scale_setup,
 	.sw_setup_cb = ad7606b_sw_mode_setup,
 	.offload_storagebits = 32,
+	.calib_offset_avail = ad7606c_18bit_calib_offset_avail,
+	.calib_phase_avail = ad7606c_calib_phase_avail,
 };
 EXPORT_SYMBOL_NS_GPL(ad7606c_18_info, "IIO_AD7606");
 
@@ -681,6 +703,40 @@ static int ad7606_scan_direct(struct iio_dev *indio_dev, unsigned int ch,
 	return ret;
 }
 
+static int ad7606_get_calib_offset(struct ad7606_state *st, int ch, int *val)
+{
+	int ret;
+
+	ret = st->bops->reg_read(st, AD7606_CALIB_OFFSET(ch));
+	if (ret < 0)
+		return ret;
+
+	*val = st->chip_info->calib_offset_avail[0] +
+	       ret * st->chip_info->calib_offset_avail[1];
+
+	return 0;
+}
+
+static int ad7606_get_calib_phase(struct ad7606_state *st, int ch, int *val,
+				  int *val2)
+{
+	int ret;
+
+	ret = st->bops->reg_read(st, AD7606_CALIB_PHASE(ch));
+	if (ret < 0)
+		return ret;
+
+	*val = 0;
+
+	/*
+	 * ad7606b: phase delay from 0 to 318.75 μs in steps of 1.25 μs.
+	 * ad7606c-16/18: phase delay from 0 µs to 255 µs in steps of 1 µs.
+	 */
+	*val2 = ret * st->chip_info->calib_phase_avail[1][1];
+
+	return 0;
+}
+
 static int ad7606_read_raw(struct iio_dev *indio_dev,
 			   struct iio_chan_spec const *chan,
 			   int *val,
@@ -715,6 +771,22 @@ static int ad7606_read_raw(struct iio_dev *indio_dev,
 		pwm_get_state(st->cnvst_pwm, &cnvst_pwm_state);
 		*val = DIV_ROUND_CLOSEST_ULL(NSEC_PER_SEC, cnvst_pwm_state.period);
 		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_CALIBBIAS:
+		if (!iio_device_claim_direct(indio_dev))
+			return -EBUSY;
+		ret = ad7606_get_calib_offset(st, chan->scan_index, val);
+		iio_device_release_direct(indio_dev);
+		if (ret)
+			return ret;
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_CONVDELAY:
+		if (!iio_device_claim_direct(indio_dev))
+			return -EBUSY;
+		ret = ad7606_get_calib_phase(st, chan->scan_index, val, val2);
+		iio_device_release_direct(indio_dev);
+		if (ret)
+			return ret;
+		return IIO_VAL_INT_PLUS_NANO;
 	}
 	return -EINVAL;
 }
@@ -765,6 +837,64 @@ static int ad7606_write_os_hw(struct iio_dev *indio_dev, int val)
 	return 0;
 }
 
+static int ad7606_set_calib_offset(struct ad7606_state *st, int ch, int val)
+{
+	int start_val, step_val, stop_val;
+	int offset;
+
+	start_val = st->chip_info->calib_offset_avail[0];
+	step_val = st->chip_info->calib_offset_avail[1];
+	stop_val = st->chip_info->calib_offset_avail[2];
+
+	if (val < start_val || val > stop_val)
+		return -EINVAL;
+
+	offset = (val - start_val) / step_val;
+
+	return st->bops->reg_write(st, AD7606_CALIB_OFFSET(ch), offset);
+}
+
+static int ad7606_set_calib_phase(struct ad7606_state *st, int ch, int val,
+				  int val2)
+{
+	int wreg, start_ns, step_ns, stop_ns;
+
+	if (val != 0)
+		return -EINVAL;
+
+	start_ns = st->chip_info->calib_phase_avail[0][1];
+	step_ns = st->chip_info->calib_phase_avail[1][1];
+	stop_ns = st->chip_info->calib_phase_avail[2][1];
+
+	/*
+	 * ad7606b: phase delay from 0 to 318.75 μs in steps of 1.25 μs.
+	 * ad7606c-16/18: phase delay from 0 µs to 255 µs in steps of 1 µs.
+	 */
+	if (val2 < start_ns || val2 > stop_ns)
+		return -EINVAL;
+
+	wreg = val2 / step_ns;
+
+	return st->bops->reg_write(st, AD7606_CALIB_PHASE(ch), wreg);
+}
+
+static int ad7606_write_raw_get_fmt(struct iio_dev *indio_dev,
+				    struct iio_chan_spec const *chan, long info)
+{
+	switch (info) {
+	case IIO_CHAN_INFO_SCALE:
+		return IIO_VAL_INT_PLUS_MICRO;
+	case IIO_CHAN_INFO_SAMP_FREQ:
+	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
+	case IIO_CHAN_INFO_CALIBBIAS:
+		return IIO_VAL_INT;
+	case IIO_CHAN_INFO_CONVDELAY:
+		return IIO_VAL_INT_PLUS_NANO;
+	default:
+		return -EINVAL;
+	}
+}
+
 static int ad7606_write_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int val,
@@ -818,6 +948,18 @@ static int ad7606_write_raw(struct iio_dev *indio_dev,
 		if (val < 0 && val2 != 0)
 			return -EINVAL;
 		return ad7606_set_sampling_freq(st, val);
+	case IIO_CHAN_INFO_CALIBBIAS:
+		if (!iio_device_claim_direct(indio_dev))
+			return -EBUSY;
+		ret = ad7606_set_calib_offset(st, chan->scan_index, val);
+		iio_device_release_direct(indio_dev);
+		return ret;
+	case IIO_CHAN_INFO_CONVDELAY:
+		if (!iio_device_claim_direct(indio_dev))
+			return -EBUSY;
+		ret = ad7606_set_calib_phase(st, chan->scan_index, val, val2);
+		iio_device_release_direct(indio_dev);
+		return ret;
 	default:
 		return -EINVAL;
 	}
@@ -996,6 +1138,14 @@ static int ad7606_read_avail(struct iio_dev *indio_dev,
 		*type = IIO_VAL_INT_PLUS_MICRO;
 
 		return IIO_AVAIL_LIST;
+	case IIO_CHAN_INFO_CALIBBIAS:
+		*vals = st->chip_info->calib_offset_avail;
+		*type = IIO_VAL_INT;
+		return IIO_AVAIL_RANGE;
+	case IIO_CHAN_INFO_CONVDELAY:
+		*vals = (const int *)st->chip_info->calib_phase_avail;
+		*type = IIO_VAL_INT_PLUS_NANO;
+		return IIO_AVAIL_RANGE;
 	}
 	return -EINVAL;
 }
@@ -1058,6 +1208,7 @@ static const struct iio_info ad7606_info_sw_mode = {
 	.read_raw = &ad7606_read_raw,
 	.write_raw = &ad7606_write_raw,
 	.read_avail = &ad7606_read_avail,
+	.write_raw_get_fmt = ad7606_write_raw_get_fmt,
 	.debugfs_reg_access = &ad7606_reg_access,
 	.validate_trigger = &ad7606_validate_trigger,
 	.update_scan_mode = &ad7606_update_scan_mode,
@@ -1250,6 +1401,15 @@ static int ad7606_probe_channels(struct iio_dev *indio_dev)
 			chan->info_mask_separate_available |=
 				BIT(IIO_CHAN_INFO_SCALE);
 
+			if (st->chip_info->calib_offset_avail) {
+				chan->info_mask_separate |=
+					BIT(IIO_CHAN_INFO_CALIBBIAS) |
+					BIT(IIO_CHAN_INFO_CONVDELAY);
+				chan->info_mask_separate_available |=
+					BIT(IIO_CHAN_INFO_CALIBBIAS) |
+					BIT(IIO_CHAN_INFO_CONVDELAY);
+			}
+
 			/*
 			 * All chips with software mode support oversampling,
 			 * so we skip the oversampling_available check. And the
diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
index 441e62c521bcbea69b4f70bb2d55f65334d22276..f613583a7fa4095115b0b28e3f8e51cd32b93524 100644
--- a/drivers/iio/adc/ad7606.h
+++ b/drivers/iio/adc/ad7606.h
@@ -40,6 +40,11 @@
 #define AD7606_RANGE_CH_ADDR(ch)	(0x03 + ((ch) >> 1))
 #define AD7606_OS_MODE			0x08
 
+#define AD7606_CALIB_GAIN(ch)		(0x09 + (ch))
+#define AD7606_CALIB_GAIN_MASK		GENMASK(5, 0)
+#define AD7606_CALIB_OFFSET(ch)		(0x11 + (ch))
+#define AD7606_CALIB_PHASE(ch)		(0x19 + (ch))
+
 struct ad7606_state;
 
 typedef int (*ad7606_scale_setup_cb_t)(struct iio_dev *indio_dev,
@@ -61,6 +66,8 @@ typedef int (*ad7606_sw_setup_cb_t)(struct iio_dev *indio_dev);
  * @init_delay_ms:	required delay in milliseconds for initialization
  *			after a restart
  * @offload_storagebits: storage bits used by the offload hw implementation
+ * @calib_offset_avail: pointer to offset calibration range/limits array
+ * @calib_phase_avail:  pointer to phase calibration range/limits array
  */
 struct ad7606_chip_info {
 	unsigned int			max_samplerate;
@@ -74,6 +81,8 @@ struct ad7606_chip_info {
 	bool				os_req_reset;
 	unsigned long			init_delay_ms;
 	u8				offload_storagebits;
+	const int			*calib_offset_avail;
+	const int			(*calib_phase_avail)[2];
 };
 
 /**

-- 
2.49.0


