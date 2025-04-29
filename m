Return-Path: <devicetree+bounces-172056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8A9AA1153
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 18:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1608D4A4818
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 16:09:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9107243371;
	Tue, 29 Apr 2025 16:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vmmFbF/E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E4238177
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 16:09:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745942981; cv=none; b=cnJ6P3U72jve5XKcqOOR07LeTAINIwTfKGeFyV7fl/kZ1OrqVm3n2s6ASvAF4Z/+V+dT8zog5Kfu73cHvngjClluoLmXh5G7ZBnm1FX9jm6v0MWkarZJ2jF7HF1lyrvj/Q9PvSMePb6leKLEk8TzS+Ng9nrcMrMchSDUkq2UUY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745942981; c=relaxed/simple;
	bh=FeW6NZZnT2JkGeFcJl16D+GN8m8aywarupY1yGS4RME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=by4RPshx1qG/sgDSeGHTnDr6RokJh9pTueVQXxoM0Zbk1hA57WEhFHmDgSOMaw998Y2xsE8GWXXy/rZRq35Gxla/68fA8FxD8jbZerf21Ll+5sSa+mZD9qQorUepb/AlH0dnEP6VduKKuVNu/U6iAy1anq09IVsasqbgJbK15j8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vmmFbF/E; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-2cc89c59cc0so3453fac.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:09:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745942978; x=1746547778; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=twUw4qQlTNSkf05OsZKa256sL/YQOX+GI9IF4/pR0G8=;
        b=vmmFbF/E759tZZxvnHZKNhcoRUklkjm2pWpB5sQF4glGpSXwgslTEmvb6Lu19HMWIE
         u+4YBwsFk39544OssDegMe+Xzo13JyRU+pHThRYNEQxVMDFmrABXCilp1jcBzEoAV3PA
         NoAT8ifrUqSJPCXNBnPoKpE8xvIRnSUCOeDBxOALrXAt6UVdtglJsKe146DoQi05pW0I
         N7LCbXGA5HxsiRL9wRAD64lo0ye6kETcsREQWv7/G0x7adiV7hA7mFPswTusQ08yC6Xi
         3P/5+G2ju42ZFrFirJiutS/sBfwp0czUE+oOzvUmT7hqOAXB1IyQF3VHDs24CBERolqb
         PM/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745942978; x=1746547778;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=twUw4qQlTNSkf05OsZKa256sL/YQOX+GI9IF4/pR0G8=;
        b=KrW87OkmcNh/yI9GryQgtGHwjivx/7J+plL9R29xrT9av1ch6cvtw9H5TixjX7mUZ4
         Mf7iffORSxc50+VcZUcniRgTwyLzo4TDucuKO+qbRZlHf51AxjLtxntesWLWrijK0/6T
         45PkmCQ1dx1lgr/0B8g8vOSpsRE0YsTUz6Sx5zJsPOIcAKt3hxVVJJpgqAWRhJA8200u
         YBL+WBYq81U66DCQX4F2b1S0CzLx8c0Y6Ki3clHBJruoNaE/uq0TWBmDCRro1SUahzZj
         CPlDpyv4mbmYiCMsJkq2H7Nd7hGEispEPEYIIMbv6ZM4EtVEA3CHpkYO77RDDmuWc2Rw
         Wt6w==
X-Forwarded-Encrypted: i=1; AJvYcCUoXT20ywN3QzzSCcBDyEbV7CCbAm14xoIurNAywUIKUeiH1ztmOpXCKnBHAPI9B1I+pC92D1xRB/U2@vger.kernel.org
X-Gm-Message-State: AOJu0YxgKLixPKh1k9D9g4E1tJatRYx+OtGT6ZBHrkLvwIj6rde7cH4A
	xCh/PMU/DBkxMLvD3kiEDagDjcH+Ni3CmQr9SKZvuYPLpi3sLd3rZYbWv8/bBaI=
X-Gm-Gg: ASbGncuQG/77kKnvCxlJAfYsr6z3IvB2XC5oBIP9uHbIxyM07Y05fw3g+yC786UNtYN
	wiRcJYZrulScDQhBEfbM+BJHX/v3aHMZ7lFQuC9pC0FYAYbtpl4XHZdkNezraq3QgeUpxpreO2b
	/tHfKnLFa9oIMZaXAdKkJq5HQx0CrMiXHDYsFVtoAp4JxfB8HOqAbI5aqJcR60g/OL/7C8Vl4nS
	td2SAIBtsKtfiri+xKOW26VvNUd5pCoVK9zi3uTHFgwOtgW10zo+81CHuxWGUzc5aZs5c8sQ87s
	1b7Y2945LJ80o/B0Wn0tUg27WcFGrDpLiYMBU95GUKRh0HKNeRQd9kNhPio2G96MuCw6UX4517/
	WOb4oa4aOWQNA4Ukwo/jMv77N/gQL
X-Google-Smtp-Source: AGHT+IEXP2190VLgPbiSUaZigtpyKTyEjuDG0U+ihI7tQn9U1hHD4Bc4d5pI1WBD9C2EynCfn48IMQ==
X-Received: by 2002:a05:6871:d106:b0:2d8:957a:5166 with SMTP id 586e51a60fabf-2da461bd37dmr2200377fac.4.1745942978120;
        Tue, 29 Apr 2025 09:09:38 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6? ([2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7308b0f3f26sm341853a34.2.2025.04.29.09.09.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 09:09:37 -0700 (PDT)
Message-ID: <00fdf173-ac7f-48bd-be81-5d41351e99bd@baylibre.com>
Date: Tue, 29 Apr 2025 11:09:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: iio: adc: add NCT7201 ADCs
To: Krzysztof Kozlowski <krzk@kernel.org>, Eason Yang <j2anfernee@gmail.com>
Cc: jic23@kernel.org, lars@metafoo.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nuno.sa@analog.com, javier.carrasco.cruz@gmail.com,
 tgamblin@baylibre.com, olivier.moysan@foss.st.com, alisadariana@gmail.com,
 gstols@baylibre.com, antoniu.miclaus@analog.com, eblanc@baylibre.com,
 andriy.shevchenko@linux.intel.com, matteomartelli3@gmail.com,
 marcelo.schmitt@analog.com, chanh@os.amperecomputing.com, KWLIU@nuvoton.com,
 yhyang2@nuvoton.com, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250429025505.3278016-1-j2anfernee@gmail.com>
 <20250429025505.3278016-2-j2anfernee@gmail.com>
 <20250429-sensible-subtle-cobra-badedb@kuoka>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250429-sensible-subtle-cobra-badedb@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/29/25 2:36 AM, Krzysztof Kozlowski wrote:
> On Tue, Apr 29, 2025 at 10:55:04AM GMT, Eason Yang wrote:
>> Add a binding specification for the Nuvoton NCT7201/NCT7202 up to 12-bit
>> ADCs with I2C interface.
>>
>> Signed-off-by: Eason Yang <j2anfernee@gmail.com>
>> Reviewed-by: Krzysztof Kozlowski <krzk+dt@kernel.org>
> 
> NAK
> 
> This never happened. Don't add fake tags.
> 
> Best regards,
> Krzysztof
> 

Then who send these messages? :-p

https://lore.kernel.org/all/7f2d4894-788e-4ba7-bbfc-67ac0903b6fb@kernel.org/
https://lore.kernel.org/all/20250417-acoustic-ambrosial-mosquito-9d75f4@shite/

