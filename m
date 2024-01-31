Return-Path: <devicetree+bounces-37213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 017408440DD
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 14:42:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26DF11C265F4
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 13:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A1B080C03;
	Wed, 31 Jan 2024 13:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tJd8t3xf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66E380BFA
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 13:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706708510; cv=none; b=kSgUuakBRVZ5MN3Lt8qgbF+SQVJ/Me2+Es0OjTGFS+JhZfebARqAYL96kczCmsxBA4dy7b0LGJi1+Dg+deaUEQuRYnAOl5JEvMc2zSe4W8GSnQCJOe9CNbuiCy37zOFSI9gHXpqfvNEuxAdJQj14euOxRLPeFlRrJq/Ic+VkoPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706708510; c=relaxed/simple;
	bh=HZTj4yWFwk0INaHzIUjw3r4bOMlYrEK4vwr04nVhelc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jztoAC9Iuq9VM7f6/EUqxQWd1RYTxrSgfND17sISckxLylDbNdxF7H7yJ4i0+qkLFKqu8XX0jckMple1CPfDkZEouJamK6Hl5uQpU9e34RQTeUdfZLAwyjb9HGNjtscf06mNr0UwM8WneoSghfBzAmyYrErHaLvGTE199s/Ahic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tJd8t3xf; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a349ed467d9so633651566b.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 05:41:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706708507; x=1707313307; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R7r/S+7HI4bJ/LMU+6d34sWaFnJmP1sDFklUsVyMiB0=;
        b=tJd8t3xfR1ScTOBVV2Mh1v1HNhV8gz3RHkYnf7om/YspdYbY1Mam4G55/7/9V8Fgup
         RcXtepfCmwx6jP5Hor5YTfZLA0TktUIJIA/13qrwkCaXcFAESOf4216icWboMXgKiFVZ
         IytfbCLBZD5hnQ9Ry2mUGzOVdOG1HIW/gLFjSltJYriKLtLn/dCn0XZAXIxUTLvN8T1h
         52yJs3B3GqqFK/znGcvVKHnp35/9vOi7FefhAp/WverpxZdJWO/6HiARbejJKusgDpIB
         pAk6oM/xwNLweTgciISmgN/Q2ySZ4EquSe5EAoPsLW8nm1jEq1QA/j51dGWPcz78fna+
         1G8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706708507; x=1707313307;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R7r/S+7HI4bJ/LMU+6d34sWaFnJmP1sDFklUsVyMiB0=;
        b=mjNo60OaIYTCEIqz4tF9QZ0UF31t51DWG7iy+Yj6zC6ZTzUD7Q3ZlmJf8Xy5gJZWdW
         ngeQZ8OvU7iRx5yy0c6QKsPrfVgvvwKipmBGZSgByahmqC911eW1N5sbq4ihh60gWFjB
         09D+Z3X9GtnkplMaRHSnRv5sQr9KYkWZlIgG1lY2spjWtSmh/XBWWEFnsV/rV4iqejYW
         STrSPYZTjsVlTQAzd49EoTgBfIlaIW3OvGyjxBG68CFzhlY8m8pUXeMe2LbxU8q1cmm3
         ubeXe4nxoZ9UgzpA57qEyUqOR693w9mMQ0bPzKAmn0kYiToS1+YUNcPA8AEzCIZEAsOs
         fPgg==
X-Gm-Message-State: AOJu0YxeC0G0/IIFccMrlVEJ17+mE5v9Kjw+gqZIDnTOaYPu36ypFuOp
	/Mkd5sjNIXaqGYvudhBLupvkHvu7QnVLQzSQpmd2cF5vdemhXjv1kPFXK2tBBkY=
X-Google-Smtp-Source: AGHT+IEN6sr6ONciRGA87EDj/sBEdE2pm/itTlGhq6ISBW12r+v+uTyZ1Oq1QC1Co4jybo0pfJMXAA==
X-Received: by 2002:a17:906:faec:b0:a2c:3596:b0c1 with SMTP id lu44-20020a170906faec00b00a2c3596b0c1mr1249735ejb.75.1706708506903;
        Wed, 31 Jan 2024 05:41:46 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCU5Tg0nFqgGtu8bxPgdyVUCTAT30Zc8YLmclEkIzcUXn5+8YvfoOnAKGb4So/6yFA99gNTSVh1p2ufIeS6YkD0oXk7yo7NUh6pXvFjvpZ/ApDjXdlMyFsH9Zrspx+v9u+95ABjAUFAS2vxNbMoab8XIHCdqTbToHZFoIO8rfJdvWJvgyqQ1IvNojBUtxR08nT0VDlavy9x6706FFo3srrqweJ9Ux71Z3RCLBQgIGwmippbrHrXLKSISrp06xP9gusZP+K4DzjRQ9SVP9nI+DsQQhy/zIR4z94DBKpJFM9TYJToAQlXxq2JNp6tYcmdasb76hTM6wuqDoltQs6wLpMEQw5uKpHI2xfGKsviEwPczM91otCziuvcYydMRMfjQOK8drkj0TgmCXdkn21k4p7jJVguSuPOq2NI=
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id m1-20020a1709062b8100b00a363e8be473sm1373771ejg.143.2024.01.31.05.41.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 05:41:46 -0800 (PST)
Message-ID: <37af5a30-0e47-41f9-8d9f-f09a38d05fa5@linaro.org>
Date: Wed, 31 Jan 2024 14:41:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 00/13] Add tuning algorithm for delay chain
Content-Language: en-US
To: "Raghavendra, Vignesh" <vigneshr@ti.com>, Judith Mendez <jm@ti.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nishanth Menon <nm@ti.com>,
 Andrew Davis <afd@ti.com>, Udit Kumar <u-kumar1@ti.com>,
 Roger Quadros <rogerq@kernel.org>, devicetree@vger.kernel.org,
 Randolph Sapp <rs@ti.com>
References: <20240131003714.2779593-1-jm@ti.com>
 <5e03e867-b45f-482b-b734-7949e28fc97e@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <5e03e867-b45f-482b-b734-7949e28fc97e@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 31/01/2024 14:35, Raghavendra, Vignesh wrote:
>> Judith Mendez (11):
>>   drivers: mmc: host: sdhci_am654: Add tuning algorithm for delay chain
>>   drivers: mmc: host: sdhci_am654: Write ITAPDLY for DDR52 timing
>>   drivers: mmc: host: sdhci_am654: Add missing OTAP/ITAP enable
>>   drivers: mmc: host: sdhci_am654: Add ITAPDLYSEL in
>>     sdhci_j721e_4bit_set_clock
>>   drivers: mmc: host: sdhci_am654: Fix ITAPDLY for HS400 timing
> 
> These patches needs to have Fixes: tag as they are bug fixes IMO.
> 
>>   arm64: dts: ti: k3-am62a-main: Add sdhci2 instance
>>   arm64: dts: ti: k3-am64-main: Update ITAP/OTAP values for MMC
>>   arm64: dts: ti: k3-am62-main: Update ITAP/OTAP values for MMC
>>   arm64: dts: ti: k3-am62p: Add missing properties for MMC
>>   arm64: dts: ti: k3-am6*: Remove DLL properties for soft phys
>>   arm64: dts: ti: k3-am6*: Reorganize MMC properties
>>
>> Nitin Yadav (2):
>>   arm64: dts: ti: k3-am62a-main: Add sdhci0 instance
>>   arm64: dts: ti: k3-am62a7-sk: Enable eMMC support
>>
> 
> Can the driver changes be merged independent of DT changes? Or are they
> meant to go together? Latter would be problematic as it creates cross
> tree dependencies.

DTS cannot depend on driver changes, because that would mean hardware
description is not really hardware but OS. So the answer to your
question must be "yes, can be merged independently".

Best regards,
Krzysztof


