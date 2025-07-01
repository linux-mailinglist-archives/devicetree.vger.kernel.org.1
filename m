Return-Path: <devicetree+bounces-191746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3964AF0532
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 22:57:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9EE2A446844
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 20:57:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF29F2FEE3D;
	Tue,  1 Jul 2025 20:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="gZ0sF+XM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E676242D83
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 20:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751403446; cv=none; b=lr3MchiDXJygRJRqXiENMOLu6hbOutEjre9hgPBrbsWs64bjhaHFd7nv1hPay/rCTn67J/5o+MCq35b0K1rDh2bIMh/ob79xERg5Mz1as56REHZ5C+wPFYmFrec4w/TweSbJUibKdovnA3sghcCksoOTS6O9dPg3EUsJbW0akxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751403446; c=relaxed/simple;
	bh=TJykQ/gRq/gf10TIynCQbjQP1Ab2MiEGTp6/NL4ri1Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yh1KBeB+8Ux/gOBgNzvmaEoPysDBcvg7AspCWzSFecSb+KZfKPsJO7tNUybTS672S6k1ZHIWne/T1Tmh+XcBZEvmdgMLzKSpL1Ak30JjWSI/cZD0GXwuJjvQy2GwJXH0MrM8vin+udcTAVusoZNdymhalr/4C6+j8ku4XUnrXAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=gZ0sF+XM; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-40a4de1753fso3814041b6e.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 13:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1751403443; x=1752008243; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f3FGHq0li4IAoMzOrmPNDDSYUiPqRZNOr/Yo4wW/FVs=;
        b=gZ0sF+XM1SpimnEhG/gqhiXbxEzZh6jN05bGhoYuexBbmOW8AEXXs57UjjNI2zV4i9
         9B3ewzV3wqv1v6JPgHq1L2NzmVEHTCv8nU5rUIe1Qb6iGD51fXEMA3GWNAkBRQgcCy4e
         1nrDBaQgfJfVw7AanYZwlzkew4cGgisZ+eig1/nPHCuA/KPEEm5BrZYOFQhIQP8G93X+
         ess3OEHJfLwCeOwOS8l6MCgjwtNDnIOXFey9BVmJb5dt2WRDQh54wYz3qnh8b4FFVqdA
         skS3pXdUe6E08aj+L16Y8t96HzFUpk+FKjmelnWF4iAvE0TRH6Aw647byaZQT8G9p5jP
         6bgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751403443; x=1752008243;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f3FGHq0li4IAoMzOrmPNDDSYUiPqRZNOr/Yo4wW/FVs=;
        b=Ny4KMeScovlAnfaUuzWI5kiIgYTCmEpXe3fPXybBeipdlmipRUjOee+Rlqk8vZO+fS
         5ODsDBNirJW3Tgc99TjqKRggim5VJcTLJxP5OP65mAqxXFt7u4cNGfAbi5fTzANjBP7L
         OUwi5XO07Z6kjgwdbo9uLRnU2WzTbrjxqZpS2RbNEOB8woNZpLxmgR0hiDwETCTlsX+I
         GhAaZ2xXweel8Lnpz2NqImy8jIkoHt4im+veR1p7R5lOKqaJVE+3EzCjBDzg9dNgDf0n
         VVvJsOB79Rw4VHzRO+wtRIU4VUI6jFttd3V4ClXgqC9K5sPeETFqt7En3EyQeK0oPn3V
         I3tw==
X-Forwarded-Encrypted: i=1; AJvYcCU9TBu6R095NsEaq1NBQ0FBzRKCNKOIpp6oXfwJVOQtn2+WrXopHWOosmnGpQ3C3LWcGWMj6K4x6Nys@vger.kernel.org
X-Gm-Message-State: AOJu0YyGs4wODLRRyY3ZpgMNosCKJDu/4p4JjA41rjT4G6vINuaURvBl
	2rLwoZ8fsBrJDFSXVTUj38vQ4icGfGaMtbY7h/ehR/6YJB61gxemh/6TLWieXICSLMQ=
X-Gm-Gg: ASbGnctEhegphqMZijVhEdTn5a24s0ABPBYS9VG+ykX5DlEtaglM+a6zadTFH80nk4W
	j0uwapFhA8d12N303t7p1x5dvYlk6NRyewRHLvHuB9vi3FojFzXaWBJedI1LcK36tDeCGeaoIhx
	llC8gmPY2njbafKGhkSzkAi1mP0ipj7azscf4Vg8l8i5Vm3kvKYl74naHdvSYqgOWwID8gvqzzE
	05+dcHt9u9hL20MIWY/ZJXsDZwfI2iqGCKwMGzyxk/gy6BMUTXoDItX7uWSh2X8y4cirny8949I
	y94DTeeH34xUGjV0MFpAkzUiTkYaqmqBFCIayVIhOLP4h7p+i9jDQMSa2csL4MISzXgcDKtr0d5
	ugZkMVivVM69bnORmci4UbkMa/s81c/vOkU9YWvk=
X-Google-Smtp-Source: AGHT+IH3mXwfNatjVX7249TuXT4mbijuHY97w9uhrbRcJoybXxQKtykU0E/lA0MVCBy0eHSWIO3Icg==
X-Received: by 2002:a05:6808:19a7:b0:406:6aa1:38d9 with SMTP id 5614622812f47-40b8a7c55c0mr82409b6e.13.1751403443339;
        Tue, 01 Jul 2025 13:57:23 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:70a7:ca49:a250:f1d5? ([2600:8803:e7e4:1d00:70a7:ca49:a250:f1d5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b3240277bsm2268043b6e.23.2025.07.01.13.57.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 13:57:22 -0700 (PDT)
Message-ID: <d1e5f360-cf2b-4c50-bb26-64db47a78c43@baylibre.com>
Date: Tue, 1 Jul 2025 15:57:22 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/11] spi: offload trigger: add ADI Util Sigma-Delta
 SPI driver
To: Jonathan Cameron <jic23@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org
References: <20250627-iio-adc-ad7173-add-spi-offload-support-v2-0-f49c55599113@baylibre.com>
 <20250627-iio-adc-ad7173-add-spi-offload-support-v2-9-f49c55599113@baylibre.com>
 <20250628160259.6f220dfd@jic23-huawei>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250628160259.6f220dfd@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/28/25 10:02 AM, Jonathan Cameron wrote:
> On Fri, 27 Jun 2025 18:40:05 -0500
> David Lechner <dlechner@baylibre.com> wrote:
> 
>> Add a new driver for the ADI Util Sigma-Delta SPI FPGA IP core.
>>
>> This is used to trigger a SPI offload based on a RDY signal from an ADC
>> while masking out other signals on the same line.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
> Hi David, Mark,
> 
> This looks fine to me and I'm not immediately spotting any
> build requirements to mean this (and binding in previous patch)
> need to go through IIO with the rest of the series? Shall I leave
> this for Mark to pick up through the SPI tree if he is happy with it?

Sounds reasonable to me. There is no build-time dependency.


