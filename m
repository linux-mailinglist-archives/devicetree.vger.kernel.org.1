Return-Path: <devicetree+bounces-221609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B103BA1597
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:26:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5968219C3CC2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 20:27:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EFC02F83A0;
	Thu, 25 Sep 2025 20:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="wj5nX/GA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBDC5695
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 20:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758832003; cv=none; b=MN8rldDvgdqRhuZ9BVTh53QItwJd5HI581VU7ySXbukCy7G8jVBn8HMv6Fn8af1Bblaw3tevWOLfsoYIgPIgKEcL8buLGcTJq6bAdZPQORaHpvCY67nnYmkYGuqj9FOCu5yvh0eFqnRDh71pkE0g0H9XfCbTsXK4KUpJcppEGUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758832003; c=relaxed/simple;
	bh=NIugp2fbJWeDznKGvAEJerKZJQxZbeRNgyq7Txs6LEY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bQYwszcZrprDGDQmMgDCzh9aO9cD8UMVwXumWJ4ahyzr1cc6zZR+UrkpAngiOn4ALknFfoehHCbsp3xMHYE/tAzPV16SZsIxHeOe8gXMg5IiBojCGfFZaDNGFgqTOL8QDteXFHY9dw8TV01NDi0CKvuTmnHuJX+FfNJ39M4piNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=wj5nX/GA; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7939ac99c29so1321696a34.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 13:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1758832000; x=1759436800; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mxfegnmNEJxxDs3mqI/l4EZdUjsV9AajOSMpQHLr4h4=;
        b=wj5nX/GAe1db5/2yCHZHlQtS98ijNq+MXB8sdoth43a1XzgVzKLCtiw+NvmlqgJJYc
         qqyj0ofiV6nxUFOHVvWbMAr4rtKTvOHhouHaJwJ5RreeCZEX4a5d3SmANjBUBKkDTfzk
         JTvLLSu/4IPP4cGO8MI9CT9ct4BK1SknMPYOXCXiUEyof8hWEjesyn3hH1TloCtLeO78
         LQ1PgptMhv4UjtCe/VUSJUvTQoa81RGcAGg5DKRQpJet8ZD3XZLyQ9w+DGy5NMokWO2e
         GTzkC0F4PbPiS4LKaX/6V6PgMKuylj1oWfl7Pk0Y1Bvx+XI6X004FHpeQLj0bkbT4+9e
         CzQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758832000; x=1759436800;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mxfegnmNEJxxDs3mqI/l4EZdUjsV9AajOSMpQHLr4h4=;
        b=gQwaNoZPEvhPO0HNK0IQnsFmJ66UxWlim6n9Kf5s4f+iAeHMzcBuETK8OOf37QzZ1y
         5UqvftrYLYbgSS05FnAiLeODFd0hMngkFtJsVWQQQS12pWU2Znq3kU4ME5Ts3wya2Tkh
         a6AqGy4BtZDdMjNzdHl1Gmw9unDLSf/nmC9FTB+nzjb/Qu6ntw2QVlOWPYfyK533RB40
         a54xUNn3xf8wlPrljBaY5zK7ETTULgDDnmjbGmlmS7e43L80l3P+tGOonBbEeCkei/e/
         V0EJGFYRwi9AMN2pDrxhtMhy1e8ohLj5WUWeYo8HUvvtXP6XMcm8XsXwH599JH8rE0Wj
         dNug==
X-Forwarded-Encrypted: i=1; AJvYcCXNMSNyi57pJEWAxJ+EADdKUzJadsHT1cfuuHzlnTo9YZYpJv8A+NmZFIMt3Vy8/lJt67Qs2igD+Zy3@vger.kernel.org
X-Gm-Message-State: AOJu0YzAbj+m6oLcvJ5WslcB8OGO5ZrehL8ZDtuOJfnwS2YSaK4r3r2j
	B1fdu9rboYQcRl7+7airEozdZWSW+5bbpRqVhcnbbFE5bmNiWuy4xMuFi+WVqUdaM88=
X-Gm-Gg: ASbGncszOv9WTLbaFvi5VeLqtkDolCzts4TtyhGaZJXJARjHdP6RRK3AKp1dUMvb0Bb
	Pf+Sfxrh/C7D2yMqbLGDL1OQkQN6yguT0kPqSVo35IvXo8yxUQ4d1nX57Qd8niMCh6Jl2+U9Ms4
	ztO1YmpprtSViOjrNJi1O3fRMszUJaz651cJux57nkJpnvQTLr36Z5SiX7P7WuKFW/PQ6Q7OcJk
	DDMSMsquHsgHWtXTQ2DASH2dNOU54F5YIfJVQYb5YTLDH0jCZSiqhX6vYzvm5b6Lg7FuDw7wjJw
	9F9rpb+OGvTj5NLUgn7RaMozYyz10sS7uFGYYq440NwW0nWXBftXe17BITFTrntUt7hGZzu5/MT
	/iX8AY6FHZLgq6CtwPAlxW1JsA8fwCu1BXfOTYUc7cWxk1cygLabbdhyNSNe2T3kRbN1AbOol
X-Google-Smtp-Source: AGHT+IGR2wlvFPurlbBB+p/mOH+8U3zcrAxgD5zjtS2zL1ZgQH1ws/3KfE6l31vd4RAjlNXmRm6aWQ==
X-Received: by 2002:a05:6830:2b0b:b0:758:6251:2e5c with SMTP id 46e09a7af769-7a04ee87769mr253143a34.31.1758831999994;
        Thu, 25 Sep 2025 13:26:39 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:68ee:c62f:fd8:aec9? ([2600:8803:e7e4:1d00:68ee:c62f:fd8:aec9])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7a6dc805845sm230444a34.6.2025.09.25.13.26.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 13:26:39 -0700 (PDT)
Message-ID: <49b24a0d-a2ac-4620-9a1e-a94e5a2db075@baylibre.com>
Date: Thu, 25 Sep 2025 15:26:38 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/5] Add kunit tests for iio_divide_by_value()
To: Romain Gantois <romain.gantois@bootlin.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>
Cc: Hans de Goede <hansg@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20250925-ltm8054-driver-v2-0-bb61a401a0dc@bootlin.com>
 <20250925-ltm8054-driver-v2-3-bb61a401a0dc@bootlin.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250925-ltm8054-driver-v2-3-bb61a401a0dc@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/25/25 7:37 AM, Romain Gantois wrote:

...

> +static void __iio_test_iio_divide_by_integer(struct kunit *test, s64 numerator)
> +{
> +	int ret, result, val;
> +
> +	val = 42;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT, val, 0);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator, val));
> +
> +	val = -23;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT, val, 0);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator, val));
> +
> +	val = 0;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT, val, 0);
> +	KUNIT_EXPECT_EQ(test, ret, -ERANGE);

I would expect EDOM for divide by 0 rather than ERANGE. The function is
undefined at that point.

> +}
> +
> +static void iio_test_iio_divide_by_integer(struct kunit *test)
> +{
> +	__iio_test_iio_divide_by_integer(test, 2000);
> +	__iio_test_iio_divide_by_integer(test, -2000);
> +}
> +
> +static void __iio_test_iio_divide_by_fixedpoint(struct kunit *test, s64 numerator)
> +{
> +	int ret, result, val, val2;
> +
> +	/* positive >= 1 (1.5) */
> +	val = 1;
> +	val2 = 500000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_MICRO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * 10, 15));
> +
> +	val = 1;
> +	val2 = 500000000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_NANO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * 10, 15));
> +
> +	/* positive < 1 (0.5) */
> +	val = 0;
> +	val2 = 500000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_MICRO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * 10, 5));
> +
> +	val = 0;
> +	val2 = 500000000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_NANO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * 10, 5));
> +
> +	/* negative <= -1 (-1.5) */
> +	val = -1;
> +	val2 = 500000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_MICRO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * -10, 15));
> +
> +	val = -1;
> +	val2 = 500000000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_NANO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * -10, 15));
> +
> +	/* negative > -1 (-0.5) */
> +	val = 0;
> +	val2 = -500000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_MICRO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * -10, 5));
> +
> +	val = 0;
> +	val2 = -500000000;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_INT_PLUS_NANO, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64(numerator * -10, 5));
> +
> +	/* Zero */
> +	val = 0;

Odd to break the pattern an not have `val2 = 0;` here.

> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_FRACTIONAL_LOG2, val, 0);
> +	KUNIT_EXPECT_EQ(test, ret, -ERANGE);
> +}

...

> +static void __iio_test_iio_divide_by_fractional_log2(struct kunit *test, s64 numerator)
> +{
> +	int ret, result, val, val2;
> +
> +	/* positive < 1 (123/1024) */
> +	val = 123;
> +	val2 = 10;
> +	ret = iio_divide_by_value(&result, numerator, IIO_VAL_FRACTIONAL_LOG2, val, val2);
> +	KUNIT_EXPECT_EQ(test, ret, IIO_VAL_INT);
> +	KUNIT_EXPECT_EQ(test, result, div_s64((numerator << val2), val));

My instinct would be to write it like this:

	div_s64((numerator * 1024), 123)

This follows how it was done in __iio_test_iio_divide_by_fixedpoint() and
makes it easier to see that it matchs exactly the value in the comment.


