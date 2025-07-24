Return-Path: <devicetree+bounces-199581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 996E5B11472
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 01:26:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C12185826E2
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 23:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19679242D7B;
	Thu, 24 Jul 2025 23:26:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iyv4YIxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428462417C6
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 23:26:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753399564; cv=none; b=czSIqNPhciAbyEbIKdwwWaUnoVplMfABs8US0/gVounS/j93uvhHHHUQUB5FS4EIhPzv89bTqffEXSR6bhG8gBVDo7zM2ONqniicj90sfgeQlYAQCfb7UkFl2g0GARvfwrDRh4mRPM3zM9Q6P5/wY16aFQYNocY6TVAQWrI3ouM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753399564; c=relaxed/simple;
	bh=dL2PSwFlohMjte/0MXtPjUXionCzDJupDvIGkJBlwK8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XobJvcpOnI+fnD4Bs632c+wsic1Ot8lLNraJiogOMv/GLccztJ55rOvPVK6j4ZppzResm2/05E9p8gnZBN4J/rghupNfi9EVg9JYSIriyjROqB84Cxw543QopmMbPBreELa/D851F5ZhTnLFujYDIuFkQO4PHDiEtls6J6heliw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iyv4YIxR; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-2fef7f6d776so536465fac.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 16:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1753399561; x=1754004361; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KeKHbbTRbkREiyUQUHW3LJ0gzMYahsTWwJDV1ry44cA=;
        b=iyv4YIxRAS4ln2n3tH0FN/Z98V/M7ur1o14sA9eI4hQ4TdPCPIl/Jw0fbWCeSzafWx
         CfKsuZfqUDgoJ5fJK6LWsdTy6g9rOpVpivtU1P1XMQLBkrK20HCOw74n3R/NOFFRLQXe
         PZ/2l7kN+8lp8oSpV0/In/PwziXoiQ8QYpiuKEfFatzRJrq+Kjpiwq8je7ykZzNhji6c
         DX9iH9WIJY3uu9mzQw7zDthkee6T4ORdiNn7bpe9zxYrMhXm5XzvLWBZoVDhbN2nBDsj
         KItd8fmjGH5WSbB+i0eXnlxAKqzNqKk/1/zS5KLQYArVDmighoy/gVXlvX+UvYIuuL6i
         cUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753399561; x=1754004361;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KeKHbbTRbkREiyUQUHW3LJ0gzMYahsTWwJDV1ry44cA=;
        b=NvR1Y4SmWFMBb9//K486pGYvyyT2lkgmQq8eSshNS00J9QCJKRqbFzhgKdtDfRViKx
         tfrwbSWApVG7Nk9t0Lxfzmk4cgCd0rf6AcYE87Dp2TT4mR8oQciZ7RlRKNJTloZZgAVh
         XlR+ffh2+U4gBY7XE4ZgnaRvXgck8taRyPzqAswZplDOCGyq8VwT50PkrKhRJ2CH0cRV
         iu8Eu+cbDMDVtFmnuHPr7rG0rD6n3haMD5+YBpFOZ4mhUutgeJ2XnX0wmWCY4w9D4W2U
         jiiL7t3raB+TPOJlck7xDgVuBvGati48vkLvD2rphbjfv/vlM0Hcse+zS8k/my01SWhP
         tzeg==
X-Forwarded-Encrypted: i=1; AJvYcCWMl4qUYu43UWYXvxYPHvlonQ05lPqS2fC1LjplqEWeyC9PfB93Og37WjPiI4vdYF6hEAfdMnj1zJ9I@vger.kernel.org
X-Gm-Message-State: AOJu0YxtwtgTWsntCx81Ta8gZn/7WHNKkq5nGJ2GHHzVLMSaT1At9GHo
	8i1vHIwbMON17JIbtA4ikg31KBoiHOEjUu4p6/A5rM+mkFGdoCXut5S+AV/GPdUyviQpGeJbA4G
	r2jeB
X-Gm-Gg: ASbGncsO+Br8els4A3YYk+hR698vRzPBHfxeHB3+LFGtuf9x/oEJ/DzFjJoj8aqsDl7
	OOJkzHes4CJAVKlcJaGQ4demCAmcrTqJ+Ao7rQefQMcbA2PGGytgAbt78y7WGU/AN7tWARPwzWo
	LlY2OSVScoOlXgMBXEn5YpldQm52Am7Ij/5HdQV9fk+jt7pZJ9ZTcN+H1xnfq3Bo7DG/jh3gWf7
	MH3b/vq6pkbWgVPl9RreL0kvMQfTfgqOAhiZaEBh1cTiL4ZU0ZirTt/qRcBqkwRgwz/4KMoh1Os
	PGjwh89UgN+qp3zyGZYj1c1jzyQvJCZjEhIEUD1G9RFtW8smb9266r87NoUVeNS3fhOEKleU4DI
	g0ge6Ry8BGx53r2S9XAkCyJSlEw==
X-Google-Smtp-Source: AGHT+IGQrI5um8n+0JkcZXB2b0zbweZ5nlNx1XY8MFeNT5SIYqpju8IAvichyXi7+QEtARAFQIZnwg==
X-Received: by 2002:a05:6870:a712:b0:2c1:bc87:9bc0 with SMTP id 586e51a60fabf-306c6facfb5mr5934201fac.15.1753399561216;
        Thu, 24 Jul 2025 16:26:01 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:1d00:337f:e3bf:e9d2:b3])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-306e3971332sm689626fac.0.2025.07.24.16.26.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 16:26:00 -0700 (PDT)
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 24 Jul 2025 18:25:23 -0500
Subject: [PATCH 2/4] iio: adc: ad7124: do not require mclk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-iio-adc-ad7124-proper-clock-support-v1-2-88f35db2fcaf@baylibre.com>
References: <20250724-iio-adc-ad7124-proper-clock-support-v1-0-88f35db2fcaf@baylibre.com>
In-Reply-To: <20250724-iio-adc-ad7124-proper-clock-support-v1-0-88f35db2fcaf@baylibre.com>
To: Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron <jic23@kernel.org>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, David Lechner <dlechner@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4299; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=dL2PSwFlohMjte/0MXtPjUXionCzDJupDvIGkJBlwK8=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBogsDy4SoQeoOS7NnvFMFXpRdK2BmluaOODtBco
 Xy3K+fKiD6JATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCaILA8gAKCRDCzCAB/wGP
 wFznB/9yEt3eAkwnrFqny2nq2ETRVdI4p3bnMMQt3f3QrIzSZCumGS1D03+77M/bUppwuMrdQWh
 /uO6TAziTIp4jmVQgcfTkhVtDU/5yVs7qZXi/2b3vzyBnvWBrqylyds/c7QfUoExZX/haKvInVl
 elpxiM3dLH8/bEVRGu2r4Sp2Wws0jvt6U3DCcspEQzchr19xFVbDhvarzgyJeBiX75D1q1xlokO
 r9fzvFUeBMuWlFh9Hj1dWdP8T8QXVtFv5sOK2i/nXwnaniVr2rKCci0ka8/Kkh2fW1p7ypBq0/l
 86V9C9yRQdcs74vUogXxaIbs4CiInTHdW8jXcJGHVKBa7Vfw
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03

Make the "mclk" clock optional in the ad7124 driver. The MCLK is an
internal counter on the ADC, so it is not something that should be
coming from the devicetree. However, existing users may be using this
to essentially select the power mode of the ADC from the devicetree.
In order to not break those users, we have to keep the existing "mclk"
handling, but now it is optional.

Now, when the "mclk" clock is omitted from the devicetree, the driver
will default to the full power mode. Support for an external clock
and dynamic power mode switching can be added later if needed.

Signed-off-by: David Lechner <dlechner@baylibre.com>
---
 drivers/iio/adc/ad7124.c | 61 ++++++++++++++++++++++++++++++++++--------------
 1 file changed, 43 insertions(+), 18 deletions(-)

diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
index 9808df2e92424283a86e9c105492c7447d071e44..f587574e8a24040540a470e13fed412ec9c81971 100644
--- a/drivers/iio/adc/ad7124.c
+++ b/drivers/iio/adc/ad7124.c
@@ -174,7 +174,6 @@ struct ad7124_state {
 	struct ad_sigma_delta sd;
 	struct ad7124_channel *channels;
 	struct regulator *vref[4];
-	struct clk *mclk;
 	unsigned int adc_control;
 	unsigned int num_channels;
 	struct mutex cfgs_lock; /* lock for configs access */
@@ -254,7 +253,9 @@ static void ad7124_set_channel_odr(struct ad7124_state *st, unsigned int channel
 {
 	unsigned int fclk, odr_sel_bits;
 
-	fclk = clk_get_rate(st->mclk);
+	fclk = ad7124_master_clk_freq_hz[FIELD_GET(
+		AD7124_ADC_CONTROL_POWER_MODE, st->adc_control)];
+
 	/*
 	 * FS[10:0] = fCLK / (fADC x 32) where:
 	 * fADC is the output data rate
@@ -1111,21 +1112,49 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
 static int ad7124_setup(struct ad7124_state *st)
 {
 	struct device *dev = &st->sd.spi->dev;
-	unsigned int fclk, power_mode;
+	unsigned int power_mode;
+	struct clk *mclk;
 	int i, ret;
 
-	fclk = clk_get_rate(st->mclk);
-	if (!fclk)
-		return dev_err_probe(dev, -EINVAL, "Failed to get mclk rate\n");
+	/*
+	 * Always use full power mode for max performance. If needed, the driver
+	 * could be adapted to use a dynamic power mode based on the requested
+	 * output data rate.
+	 */
+	power_mode = AD7124_ADC_CONTROL_POWER_MODE_FULL;
 
-	/* The power mode changes the master clock frequency */
-	power_mode = ad7124_find_closest_match(ad7124_master_clk_freq_hz,
-					ARRAY_SIZE(ad7124_master_clk_freq_hz),
-					fclk);
-	if (fclk != ad7124_master_clk_freq_hz[power_mode]) {
-		ret = clk_set_rate(st->mclk, fclk);
-		if (ret)
-			return dev_err_probe(dev, ret, "Failed to set mclk rate\n");
+	/*
+	 * HACK: This "mclk" business is needed for backwards compatibility with
+	 * old devicetrees that specified a fake clock named "mclk" to select
+	 * the power mode.
+	 */
+	mclk = devm_clk_get_optional_enabled(dev, "mclk");
+	if (IS_ERR(mclk))
+		return dev_err_probe(dev, PTR_ERR(mclk), "Failed to get mclk\n");
+
+	if (mclk) {
+		unsigned long mclk_hz;
+
+		mclk_hz = clk_get_rate(mclk);
+		if (!mclk_hz)
+			return dev_err_probe(dev, -EINVAL, "Failed to get mclk rate\n");
+
+		/*
+		 * This logic is a bit backwards, which is why it is considered
+		 * a hack and is only here for backwards compatibility. The
+		 * driver should be able to set the power mode as it sees fit
+		 * and the f_clk/mclk rate should be dynamic accordingly. But
+		 * here, we are selecting a fixed power mode based on the given
+		 * "mclk" rate.
+		 */
+		power_mode = ad7124_find_closest_match(ad7124_master_clk_freq_hz,
+			ARRAY_SIZE(ad7124_master_clk_freq_hz), mclk_hz);
+
+		if (mclk_hz != ad7124_master_clk_freq_hz[power_mode]) {
+			ret = clk_set_rate(mclk, mclk_hz);
+			if (ret)
+				return dev_err_probe(dev, ret, "Failed to set mclk rate\n");
+		}
 	}
 
 	/* Set the power mode */
@@ -1303,10 +1332,6 @@ static int ad7124_probe(struct spi_device *spi)
 			return dev_err_probe(dev, ret, "Failed to register disable handler for regulator #%d\n", i);
 	}
 
-	st->mclk = devm_clk_get_enabled(&spi->dev, "mclk");
-	if (IS_ERR(st->mclk))
-		return dev_err_probe(dev, PTR_ERR(st->mclk), "Failed to get mclk\n");
-
 	ret = ad7124_soft_reset(st);
 	if (ret < 0)
 		return ret;

-- 
2.43.0


