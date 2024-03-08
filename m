Return-Path: <devicetree+bounces-49517-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35672876C4B
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 22:14:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66F3C1C20F27
	for <lists+devicetree@lfdr.de>; Fri,  8 Mar 2024 21:14:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E88D5F84E;
	Fri,  8 Mar 2024 21:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NqYJCVue"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDAF5F554
	for <devicetree@vger.kernel.org>; Fri,  8 Mar 2024 21:14:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709932488; cv=none; b=F7wQj4BKAz8Wq7ZWrrdZ+D4lN6Up5OKqksZtzIIIbpKi2+lHKb6h4BaElKKAD9tGhWXsiKkvsAF+WIv8SRCt/hHl2j6UjhVuKZFbgDCSTSSM9v86wC6dbkwTZNEHJflmMbFW0OrmxMh/jTegV+WaDgmX+5lsuAUQ4c0lPUAVafE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709932488; c=relaxed/simple;
	bh=kZ0TLCrmRMeOPl+rFTQmOhsHhGWo4r/ZIkktfWOLEjo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o5Namz7Q3+TfgijOEtA1tYN2sbTChAJ6sR6pnOUCIToP0f/xemih2gwUt/Dvb7QYD3EUDE8ah4Acs+hii4glvhCEmUtWMjN7xOgtiVITsctOA+XYa4PcWDNKxleisoJJ5MPNr9YIdqwSw1PsXwY3esST2uFUHtM2ORoS5BaSYWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NqYJCVue; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-565b434f90aso3172946a12.3
        for <devicetree@vger.kernel.org>; Fri, 08 Mar 2024 13:14:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709932485; x=1710537285; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=UxnqYln9ADsMyuNnl4vUkzdEy37mmTDR/E/NohQDLWs=;
        b=NqYJCVueMll6B0Wu4iSxRO9wf/Cig57Km+Nj3YbslSjwZtma0bbaHJlEd+WIoIfJlo
         ifuJNbdtcMpmx7igcVmddxdRAWH9OQGivLTW0GxxegIn7Ko9hxnH/1Ky9l0O7cLlKN/i
         wvATWophmU8KGi14xtJcckq+pe+KCuXQGujd1LzkQ0TXehlBJEq0NWr2MPWzvMoHelZN
         yYqyWu3OeJJXpCfaeSgKBFT2QBUYQZHW+heNqWC8O7YvGR4d6FUMJ1YjXtwMUzxvXKxC
         bSFtPVtVNqlIqsVMX63tA7ctnR3+G9LoOMQZjP7XfoQtabcveOt9YILjQHnuR7EOUByi
         yr6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709932485; x=1710537285;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UxnqYln9ADsMyuNnl4vUkzdEy37mmTDR/E/NohQDLWs=;
        b=oE9J9UUIKGB+HZpBFGw8Z5zWdQ2VXWV6xQIpEtUBwtb91DN9/FZREWZgquHBsXb3im
         1ChC0cgEyGCzQHGrIGbMX00z8adBiUdlyzOL8dPdRyKmuoeDpp8TFxWw7Y95XOAtsj4J
         CwRqpDe4IEqIQ6agM+HbQypdcIF+l+x5OfsYJLPSqv5Wdc+hRksFf9ICYhGWk5wQF32+
         m0CWuyHWN85RF5fIFaidwcleBaDZ/qWxJoEOu+HLT778C1DLcIf+beO3FWp2Z31Losqk
         S4rZGHKK1KYY5ehaJRWO2GwRwbniVambMPQ7aSHHZgQ/VTIjriUQUCyeKPuCgwsBzolz
         Xu1w==
X-Forwarded-Encrypted: i=1; AJvYcCXFYdm37lLk64lYXWAAMWtCjq2DAdfPuKdC9crtH8j9JSGLDuBq44+0BzrewrxEbEZxgCIvh83gmEZNOZXFxQGQlChmTm29fbYT/A==
X-Gm-Message-State: AOJu0YzQMe1eCGw4gaDQaa74fPq8DqEy83FEXN3+LHhIFlEhlQqIAgTJ
	Q9GJHOYEVVNCWaV3lW8kF+92oTpqiwhQh2eDAuGyJSaAPivr0eBdtS0cPlPe3UU=
X-Google-Smtp-Source: AGHT+IGSol2enaRnCP+rzGjQ3u/px1I+gOLFCynayO390+ONgARrx94dn8jBxEIC9XrgQ5sZ9LmJGQ==
X-Received: by 2002:a50:ab5a:0:b0:568:376e:ea2a with SMTP id t26-20020a50ab5a000000b00568376eea2amr267584edc.40.1709932484429;
        Fri, 08 Mar 2024 13:14:44 -0800 (PST)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id fd23-20020a056402389700b005683b3a471asm61050edb.72.2024.03.08.13.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Mar 2024 13:14:43 -0800 (PST)
Message-ID: <e0f689e9-db30-468d-8ffb-c809edbf7e7c@linaro.org>
Date: Fri, 8 Mar 2024 22:14:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/4] ASoC: dt-bindings: fsl,imx-asrc: update max
 interrupt numbers
To: Rob Herring <robh@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Shengjiu Wang <shengjiu.wang@nxp.com>,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
References: <20240308-asrc_8qxp-v6-0-e08f6d030e09@nxp.com>
 <20240308-asrc_8qxp-v6-2-e08f6d030e09@nxp.com>
 <20240308181103.GA855753-robh@kernel.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240308181103.GA855753-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 08/03/2024 19:11, Rob Herring wrote:
>>  
>>    interrupts:
>> -    maxItems: 1
>> +    minItems: 1
>> +    maxItems: 2
>> +    items:
>> +      - description: Combined or receive interrupt
>> +      - description: Transmit interrupt
> 
> Test your patches please because this will have warnings. Or, you can 
> put in *exactly* what I provided because this is not it.
> 
> If you continue to just toss crap at us at the rate you are, the DT 
> maintainers will either just start ignoring your patches or require some 

It happened already, at least for me, by default I move them to the end
of the patch/review queue.

> trusted review by another NXP colleague first (offhand, not sure who 
> that would be which is part of the problem).



Best regards,
Krzysztof


