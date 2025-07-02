Return-Path: <devicetree+bounces-192096-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3560AF15D9
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 14:38:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 20F7D1654BB
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:38:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CBC27381E;
	Wed,  2 Jul 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sORhhNBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B5D26C3A3
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 12:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751459883; cv=none; b=NPDTvH1q7hr2PYLMb4l4+Pmut+H/rOrtwx83LfPXg5dVXIcnqQ7DJbLox1dKJszppE9+8KVrtYYI++WNhs7UCaYeyKnehxWakUxF2PD/StL2fbJasOAsyRBkHhLHJkQfiaYQSQBtFShvMEGcZk5Eti8AVLGhVtx3N8gXLKYF/Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751459883; c=relaxed/simple;
	bh=uU+JKWZlOSfzPKyq1XI/5n7j3jfPISn/GknIBu+754Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A/DM0Jlag1CI0sGLUwXEiZ9ch1sY4QkPCcS/xnpP+I11Yx1hnhKflnA2IKerQXqRq/XcbW1jf0Fce1DlnSMFncvuaH0t4riI8unn7/tAPcXKVdyD0wR2HiyxYldWWHZI+pIAbXVYJrOQkWKmT37sXrwMtDHEPpM3AGRIQa8Vl0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sORhhNBR; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-4067b7d7e52so1095889b6e.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 05:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751459879; x=1752064679; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ojsw+AkNzV7erO26jokTtJOtY0VwWEiinzqI7J34IJE=;
        b=sORhhNBRPV0VFe2D0Ezy7r9MXnXH/YUd1/ktE9rGR+A08PN4c5H8EY3vH4CSUEchUF
         vJ7C5zPswNnwJql4JNvDf7+IDB/2pZ4kc32caOrxtDGjJ+eeWIRKrwK+XOXgPNCuNLoL
         aKheB+2bNYVq44FJea5TN4gSKTUWGBALNhxL+CBOsTisftoqNAo7jiFLF1KjN22TpVzw
         dV+2cooMGiZxGK1xRjU4cWPMDwW/rnnfxvug0s5znwq4QaljkY2oLWeQbRQAu34/c7TQ
         LIpW0eCGxaNUdaPlRwMI7Ubr4pBug20rntMikarEuwAv2mASAKuMDs6DCMJiDNizWKVb
         r3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751459879; x=1752064679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ojsw+AkNzV7erO26jokTtJOtY0VwWEiinzqI7J34IJE=;
        b=Jydfv3GemnhbWUHhxDHnNZpOjqB0ZOWyNVrn+6oC0Wulj5gHov4w2ZhBVwLmSIeolu
         AMBHUTiH3LNAIPi5tJblpc6Ezq/mLzIk7cwO2qqXXxskkmfPKNfytUjG2H5KI2xbtVEX
         MOrFPUdpOsvuUqEJwfgRaThId1L8dJ3GIHX89BBs1+y3sAJGXTASR30beLD7Y9qaEynm
         YrVYxDsz4JZ67bupulnPqjy2fU43ybh9TJm/zN+uMAJN2cRg6epVi//qjuITHQOHW/gy
         ORuFso/tXGJh+m54xcwbOllYPyLOwrudc7zsrZWLOJM/VLJGnmkYbLf8J6mr4H0hMBuB
         UmCw==
X-Forwarded-Encrypted: i=1; AJvYcCWFYf157cLiz6qpLYf1aoK5MHN56+a0S4GN7cL+NQyvzrP4XITEF2i/VcPqSUSl0lhc/LkMP7ihy7D2@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/PTY9WDH5wbJwnJjOR+QtToKZuusm/IJpt65YttIOw85enXbG
	OxfILxEGMw1I0D+nHgSqTaNNmS8nmczp6q5+iLmMAgK90q8w1nTmLPWiqFa7VVwgJjg=
X-Gm-Gg: ASbGncvGOUnO/EYP6xT5I24mOKDYBT4U3cUt3NnOHacCbRD3RG6mO+vdPPGgCaQBqV5
	q6n7ijFtEdsaXsayZZKUZDyjk03BJs9USuOWLzS0WRUt5qR2afq+ikPBVgV7KI0SAfd6CKndeMk
	6dQKJpRjmb2EcN5eLbG7Q0ia5FtprbrPwKH2gEDnu9TAG1eXphRDS37k5i0vQNzDFfewzDQmyyg
	w7Hb1R/MDu6rO8quA85RhvFXgtLXPdqJw6jPomZfqQvBx9s/FT2gjRelQFOJh8drX82nJYx7Id8
	Cz9XcZ8mTuZExbz8Hk3i2qdpZHg4QHD+gi0xDENjC8/s6LIYWHQq/THhpuS++WNuny6nxDMiD7T
	4cLQ+6ZN7VwNmbew+NjeJoNUVLHE5l1WpcmesUrM=
X-Google-Smtp-Source: AGHT+IEj5Dc1Netni0tqir/1xbnkQLxei6iTtHulTBtiYZFxi3bplPlig4+mWeKKumJKKpiHaH9WfQ==
X-Received: by 2002:a05:6808:2383:b0:40b:3816:6637 with SMTP id 5614622812f47-40b887f2c1cmr2015465b6e.24.1751459879504;
        Wed, 02 Jul 2025 05:37:59 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:70a7:ca49:a250:f1d5? ([2600:8803:e7e4:1d00:70a7:ca49:a250:f1d5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b32420a76sm2554421b6e.38.2025.07.02.05.37.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jul 2025 05:37:58 -0700 (PDT)
Message-ID: <e040fcf5-df6e-4d6d-be98-284362c35462@baylibre.com>
Date: Wed, 2 Jul 2025 07:37:56 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/12] spi: offload trigger: add ADI Util Sigma-Delta
 SPI driver
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
References: <20250701-iio-adc-ad7173-add-spi-offload-support-v3-0-42abb83e3dac@baylibre.com>
 <20250701-iio-adc-ad7173-add-spi-offload-support-v3-10-42abb83e3dac@baylibre.com>
 <52c1fe276d16b68b955a00d0417b40902e2aa56e.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <52c1fe276d16b68b955a00d0417b40902e2aa56e.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 7/2/25 2:57 AM, Nuno Sá wrote:
> On Tue, 2025-07-01 at 16:37 -0500, David Lechner wrote:
>> Add a new driver for the ADI Util Sigma-Delta SPI FPGA IP core.
>>
>> This is used to trigger a SPI offload based on a RDY signal from an ADC
>> while masking out other signals on the same line.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---

---

>> +static int adi_util_sigma_delta_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct spi_offload_trigger_info info = {
>> +		.fwnode = dev_fwnode(dev),
>> +		.ops = &adi_util_sigma_delta_ops,
>> +	};
>> +	struct clk *clk;
>> +
>> +	clk = devm_clk_get_enabled(dev, NULL);
>> +	if (IS_ERR(clk))
>> +		return dev_err_probe(dev, PTR_ERR(clk), "Failed to get
>> clock\n");
>> +
> 
> Small nit. Did you consider enabling/disabling the clock on the trigger
> enable()/disable() callback? I guess the ref clk will be enabled anyways by
> someone else but conceptually kind of makes sense to enable the resource only
> when needed.
> 
> Not a big deal (at least to me).
> 
> - Nuno Sá
> 

I thought about it, but we don't do that for any other FPGA IP cores
so I didn't do it here either.

Since they all use the same AXI clock anyway, disabling the clock
here probably doesn't have any effect in practice since there will
always be other users of the same clock keeping it enabled.

