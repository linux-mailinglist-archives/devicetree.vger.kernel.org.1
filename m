Return-Path: <devicetree+bounces-209408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BABB36F5C
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 18:04:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB3D3189A482
	for <lists+devicetree@lfdr.de>; Tue, 26 Aug 2025 16:03:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90FD2313E2B;
	Tue, 26 Aug 2025 16:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LpLPbOUx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8026A08A
	for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 16:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756224165; cv=none; b=GMm2w35rvVMcjW/EiL0J+FKwKhmIkIzftfYi3B2V1Vpf9k/d4lCbRdwbygdfKtegR85/bPAvOCDzaP8ByG3po/oEWSWLb9PweB5Fosd7bKkUId8DlKsFcLZp3TP0w3Nd+4e0/mPofHREsOHoOVPWZ8iORM+j/0KwRBA8smDDOYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756224165; c=relaxed/simple;
	bh=3UQpnIJPKnKLpAGt26ffAbECgihu3iAliObcW5TWBeU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bfpiNnkjlS76BiAhLJK/vaXrxpGQnn9+LOyZpI/eXKoKc6zCgaDXftwufQ1zoOjwNF4lZGMQIa17DTWm0nrmLhUf3OmqY0hA/zv7PyHocnCNIqI8+s9XsP2Y7o/uOdlR+ipphysJ5QmuBzbDjiNJ9OiqAlbvVhDX2l1fzlzJFRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LpLPbOUx; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-30cce5b711bso4835869fac.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 09:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756224162; x=1756828962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6hKICjV+6/lxNLEk1c9nfVe+ZCE9ECioreCtxFio2KU=;
        b=LpLPbOUxmF7GImYlxTvLsuZMqiZzQBoaMv+rWsIto8V9hiQoWJowZZxoaqGGbuyoB0
         CrRDiM3WLugpla/B2rtUWSaOVmJ3oPVO1LMXE0BB3WvbY20nam7TOV4pCY3Trw81y66C
         lf7RyWf0zkthHoUCa1ZqiLEu3TUDpT8vwYzF+TmuEAHQ3mTFpcoxa92jX3o1Vdo/derL
         oEkhakGv1Taci5vrLeq7iqh19nTj/pGrJkNt9JOIxvjXRNaqM3xUwceAVR+CgurpioE2
         nbxsoda/y8Qy6NbAjEsrp1GoZYYJjDvkT90axxjjBJjv/zdbbulPV9PG/V13xpF4fTRv
         Nz3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756224162; x=1756828962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6hKICjV+6/lxNLEk1c9nfVe+ZCE9ECioreCtxFio2KU=;
        b=ex1T+pN2WpjT6jFg3oJP4TQX4TNK0PVS3Tpu5h+EbSNkN/fYcWbNUOyct8Ec37i/xl
         NxFLXctVd7aGMttR89o73/El1ftAjPhhDSKXHafWxEsdgjj1TiLi2lCBnVSZzhf3Yz4U
         GJWjUTUBZb7r6IN5GFfXZkEUU0dN5UI+RAOLXBUoBQQiqtIYBdtzDNwySVXbxr5uQSV+
         oOqVMqZtdLd4xnO3cC1fCuVumE+kSKv17RXQZquci7bhV7syCCeQ8T9+3PAd6DHF+PQP
         4FeVob3rQRmyA6FAFTn9q7Lq+SYNo0pLpfp5n1B2Lzecom6hT0lOHCwd+1Uqx2cWOlrD
         rHZw==
X-Forwarded-Encrypted: i=1; AJvYcCUlPeXzB7rFEvqyzR0TS5+ygOO+6dc1jErghIF+b4f1qWB1s8DULWQALLpAftZd/OM/5NdVxsK1WkYJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzhrcLNOPF38orcTJpVj24gpJNIqmYLN0Ij42+xPvLD20XNpxiL
	oVJntAFefx6D/XErMR7MqcHKg83d6Ef2edVeN1PWsEI0e0RK41yhDitWe+CG1Oq6LhQ=
X-Gm-Gg: ASbGnct4lXo3wxiRH2aa7BT/0kmWy4sQIZsCIvBsRPvcltB3Qjk88rc06ERoK84XDrk
	h+OUUUz2Bw0RaNabh3vgjzCVo5bKidMxymJwe5cSWnDg9nth/vr2QqqGdy9lBbHT/CWcfUcq/as
	kyxZ00+rT8IOwG9Oh6raqqexZiPWLOqE/Ww0NBPi/XkHxTkbk7NeH2Un2SLAxKF70MuEjJ7QIue
	hDXyFTxThi0ZNhiXSBTbdWkLtI04zg6ZuPUzfPmBSxVH1Du52L9oI5T1chpAFTqRwVzcV+xEBHw
	O51hRcfc3jRreHu2GonVjpTNqwEoBspQeFjGKdw0IUyoetsapyrfiQsrHWHoJCNxUU7ALEj9Yo9
	WHsQIAwCFU7eNx3ftcgB10ulPU9Lc4ioVB44ZwYs6FHHY69xHZs4qFR7nkPqbAG2/p2i51SNzHx
	c=
X-Google-Smtp-Source: AGHT+IH30+gvcYtT1WdKMDYQghSW8SLUW2fPPTOAELgVrWD2i+MlWze4f6hNHUyN3ijUu3eoWuMyWA==
X-Received: by 2002:a05:6870:ec92:b0:301:eb97:1f7f with SMTP id 586e51a60fabf-314dcc14230mr8054282fac.3.1756224161690;
        Tue, 26 Aug 2025 09:02:41 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb? ([2600:8803:e7e4:1d00:aa9f:f4cd:76b1:fecb])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7450e29b211sm2433761a34.21.2025.08.26.09.02.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Aug 2025 09:02:40 -0700 (PDT)
Message-ID: <1dcaf589-2ff2-4af1-9177-ee129b403272@baylibre.com>
Date: Tue, 26 Aug 2025 11:02:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] iio: adc: ad7124: add clock output support
To: Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250825-iio-adc-ad7124-proper-clock-support-v2-0-4dcff9db6b35@baylibre.com>
 <20250825-iio-adc-ad7124-proper-clock-support-v2-4-4dcff9db6b35@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250825-iio-adc-ad7124-proper-clock-support-v2-4-4dcff9db6b35@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/25/25 5:55 PM, David Lechner wrote:
> Add support for the AD7124's internal clock output. If the #clock-cells
> property is present, turn on the internal clock output during probe.
> 

...

> @@ -1164,6 +1168,33 @@ static int ad7124_setup(struct ad7124_state *st)
>  		}
>  
>  		clk_sel = AD7124_ADC_CONTROL_CLK_SEL_INT;
> +	} else if (!device_property_present(dev, "clocks") &&
> +		   device_property_present(dev, "clock-names")) {

Found a mistake here. This should be #clock-cells rather than
clock-names.

