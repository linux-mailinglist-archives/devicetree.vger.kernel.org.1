Return-Path: <devicetree+bounces-35242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E62A83CBCE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 20:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A49FCB25951
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 19:01:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D40A1350C6;
	Thu, 25 Jan 2024 19:01:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WfxGMDUj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20531134730
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 19:01:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706209277; cv=none; b=B+CGvw1wa/scprVyL9wNvuXmcXfEC58WbKmTyUXNdbSEM2+HxBqGKXoGxX0Mqj4c7yk2+Ll7KLPqiNkeCrjqr8+pQaJtRAlkfpuX8PLpimWW3fzubXstXQdrC19de+5Q4T8YVIVrOb0cJmnJVDIFD4gj0aOPH+pZUjj+xoEnjX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706209277; c=relaxed/simple;
	bh=3l+IaiZHZv/Fe8lERi3/HFhALnFg+BculQ2om86Od/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NzbUI/uxHjmw5rfq5KPL20pCdwOCHIjFVr30ULj6ePwPEl7eW70gbjn2UvAozjq9LTYEdU8X+mhURlcHwjXrpsbeaUHHwaEImIxlT9aqCeNeGw9v8yYBqatMueCRwDE/dekyFiubipizbFXS7MA6Lmu1BaP9ZWIAA0OhmxdjA2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WfxGMDUj; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3392b12dd21so4769911f8f.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 11:01:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706209273; x=1706814073; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dmN7I+9NF0wxlajdSp9I8HACKLWc2WQole+/PqyLTmw=;
        b=WfxGMDUj+jiNXnGj1RT38BlkPxJee9iNE+6rdI3wnr8lM1bTxwVBkVXMGTIqKEhs4A
         hrXSCzLOlaSeTEOe/Fot0dA6O9WnnSU5t6vQ8ZuJ1BLPOdQe9YwpevrLnEZ+yPFhu9YI
         0nOB4TjRcUgQMWPX2+uTNBpr08MKkoBf+m+ZbROe188Ryq26eZMqmSKr0TBxg55/9m/f
         VP0wQTBtiPEOD0YMqDBvCSYliYXEqHfAEPHcrldFHFw3gDnLZkDnv8uOid1vgw6W8uRM
         Z1BRM0l9+5nK67mNe4ax+8rze1pN94TFfTy0UoIX7HIMHSAKik28K8sRGsKADCGfIaY4
         rQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706209273; x=1706814073;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dmN7I+9NF0wxlajdSp9I8HACKLWc2WQole+/PqyLTmw=;
        b=u6nAYDQz6x4NHPIqCLcGIoQJ2kXCkjpqN47ApHkiR0oEdb17Z6aMcL9G6xnn+7PFLR
         aRxG/uNqBcVxbzqknRpppnZNhc3xNcbRICImar79XF7nS4rGU2dZ2a8cpYJQhhepG7UU
         NXhC9IzxMhyxzoxU8i/3sLCLXVYZJH96GORBFn8PLx9ffGblBxvcUiXnX2eFBWunZl+j
         mNltrEmJQEISjBIhjK4K0FMP8/Q+oSWYKJDTNchPlQWjMJfsyDNXKXnmW1ahe23emeQa
         rX+GIlN2mjnAdDh9pb+EfETBjsMaxdfALHAzvvBS62LcHhVzgCb6XtKdnetmkgLpQN3A
         N1rQ==
X-Gm-Message-State: AOJu0YzeClDF9LmW/ejYaypGcgmlNxsOSJDT2A7o9LtPhBvczaDZ4Are
	ShefhcCTuujIcSZf7ahP69ZpzTym4BdK54vVcY6AyK1CC4luk5ZphjVCsO2Wsio=
X-Google-Smtp-Source: AGHT+IHC7Mstw0DGiNo4tWtWCkZLvrWPOabFhDIsnvgtLlwTRPhqhBdNAB3jnq5GXT72VzereEQh0w==
X-Received: by 2002:a5d:5689:0:b0:337:c6be:7737 with SMTP id f9-20020a5d5689000000b00337c6be7737mr154375wrv.48.1706209273304;
        Thu, 25 Jan 2024 11:01:13 -0800 (PST)
Received: from [192.168.2.107] ([79.115.63.202])
        by smtp.gmail.com with ESMTPSA id l8-20020a5d5608000000b003392bcd6c48sm13097531wrv.79.2024.01.25.11.01.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 11:01:12 -0800 (PST)
Message-ID: <96f9306f-3445-484b-bd3c-82e708681f1b@linaro.org>
Date: Thu, 25 Jan 2024 19:01:10 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/28] spi: dt-bindings: samsung: add
 samsung,spi-fifosize property
Content-Language: en-US
To: Mark Brown <broonie@kernel.org>
Cc: andi.shyti@kernel.org, arnd@arndb.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 alim.akhtar@samsung.com, linux-spi@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-arch@vger.kernel.org, andre.draszik@linaro.org,
 peter.griffin@linaro.org, semen.protsenko@linaro.org,
 kernel-team@android.com, willmcvicker@google.com
References: <20240125145007.748295-1-tudor.ambarus@linaro.org>
 <20240125145007.748295-6-tudor.ambarus@linaro.org>
 <7ef86704-3e40-4d39-a69d-a30719c96660@sirena.org.uk>
 <1c58deef-bc0f-4889-bf40-54168ce9ff7c@linaro.org>
 <55af5d4a-7bc9-4ae7-88c5-5acae4666450@sirena.org.uk>
 <f2ec664b-cd67-4cae-9c0d-5a435c72f121@linaro.org>
 <f44d5c58-234d-45ec-8027-47df079e2f16@sirena.org.uk>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <f44d5c58-234d-45ec-8027-47df079e2f16@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 1/25/24 17:45, Mark Brown wrote:
> On Thu, Jan 25, 2024 at 05:30:53PM +0000, Tudor Ambarus wrote:
>> On 1/25/24 17:26, Mark Brown wrote:
> 
>>> OK, so just the compatible is enough information then?
> 
>> For gs101, yes. All the gs101 SPI instances are configured with 64 bytes
>> FIFO depths. So instead of specifying the FIFO depth for each SPI node,
>> we can infer the FIFO depth from the compatible.
> 
> But this is needed for other SoCs?  This change is scattered through a

There are SoCs that have multiple instances of the SPI IP, and they
configure them with different FIFO depths. See
"samsung,exynosautov9-spi" for example: SPI0, SPI1, and SPI6 are
configured by the SoC to use 256 bytes FIFO depths, while all the other
8 SPI instances use 64 bytes FIFOs. I tried to explain the entire logic
of the series in another reply, see it here:
https://lore.kernel.org/linux-arm-kernel/40ba9481-4aea-4a72-87bd-c2db319be069@linaro.org/T/#u

> very large series which does multiple things so it's a bit difficult to
> follow what's going on here.

Sorry, I was afraid that this might happen. I agree, I'll split tomorrow
this patch set in 3 smaller sets:
1/ dumb cleaning patches
2/ heavy lifting cleaning patches
3/ gs101 addition

