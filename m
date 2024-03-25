Return-Path: <devicetree+bounces-52847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DFD88A3C3
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:11:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA7C01C3A5C8
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:11:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88F11152E0C;
	Mon, 25 Mar 2024 10:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pMKOMEoi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74D614F135
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 09:50:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711360210; cv=none; b=XwqnxERuBpP6tIbg2bw1Oy9NShr5q9Yifuj+dhP7jNEcHqAQ1wbAjliHfBXWDR+dL38bM83sfphX2gqr9I0uQaA1xAGZporL+AhJ0+ZMhU2F2JJ7SlUJREn+xeBYOyDChZ8/Pd2d+zoC2iVAIuCI/vgI8KJABEzs0tKWzQc9UOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711360210; c=relaxed/simple;
	bh=RguhNyq8VKCcqdMobDZ5d8KWbokBDnm4sDXkSJhbkaY=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=hTGxegXj9/fFEOQPtqgyVBFoIHVkt3pCtkOnOzcbGiUWBw5JGo2QI5ESHqLtW1lfbOJDo9p1cWZG4Wdfal4M/HWWIIFFlidZ3oIzFsNOYj1UXQr8U7vjeuvKulGeau5nh0oJ/uZLLRQBMJBI+A2NY2xsMMTD1d9TO3njskUOB84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pMKOMEoi; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a4a39ab1a10so68583266b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 02:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711360207; x=1711965007; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lAVXzsVvl26kQg1gDZQrqcIA6gVD8tK0rGgKzqQmaOA=;
        b=pMKOMEoivbp9/FKScjJ72xNj4UuqjyHwykaVRHq5z9tJsXuF4KFqopKf0IdT+XtvNV
         cppvkxhnVcdHtqGQA3CRkvVyaBY5ZWRWuJ42dU5nQSZputR0q41iDhGlozzSe+1OcRRh
         wmUeJVGbe35pzVXZ0RqIXCZ+gyUanFO59NACX9siLc9WM3FuDbAsC3FxogbZiW9v8JrN
         CwN/PwgQDoF3tKNTQWrAYcqx/a/p37nBGh1IGIiwhU65VSS2A1FFWkNxPgWiLDJzBAuV
         iMElz3NO3eSZ6q9NF7bct3TriHPLVh/nBYu8Hl7kSYG7BE/V6IfbrNty7l8kPf8iYVQ/
         MqwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711360207; x=1711965007;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lAVXzsVvl26kQg1gDZQrqcIA6gVD8tK0rGgKzqQmaOA=;
        b=GLGYKtUoEtwQ4VJCANXdH2LK/8+SVqy1zMxi29fPJJgBWF1u7rZtTud4hUWO1zRu/p
         mE+r2SNQY2GAeE/2PU4WCn9cdXXGhaZui88sAhsP2f2YdM2vLvNIvQmW351nM2yspFUS
         uXncdnyMeZpor1h8f77xdKyobH8znIpww0pHT7ceOSdJ3y1iU1+2ke9NldtBWbgig5AC
         1PESoCwZ8duWmoxxYxzlyyTql+PJfLxnDkx530yXBJVzj7U9QCUhtuL8riEVM/U74qWV
         ImB0JbCed8c3VyhtYWbZh9sYdCXR1lp5zRq+kJS219ca4aInRUW6HWWOlxNiS3wCGph3
         CqzA==
X-Forwarded-Encrypted: i=1; AJvYcCXWj5iW4PZvdJKNaSV7YQDbOHT678yDe8vNNYL96RbC5hoCELxG+NQfpddIXJ9c172LfRLQtJqnP1s9vJH+j7KFqfxz1PCXstH+qg==
X-Gm-Message-State: AOJu0YzzgTyDNH4rfzKDdxd5+1NvtofiB/rkXpvMwa+nbBbqMfp4J37N
	TIp94FkU+RYgnMpsnHpwPn94fd4VGXBjHRGbMIXvdnh09Hc0NTHpT1I6Sq2XQAcIHISdrpk7O2a
	G
X-Google-Smtp-Source: AGHT+IFdHnqwTXF7AWbNNmY2g7WJshW/L6qIT7jU5SUKjSfolEmDSj+P9BTccpZWBEOh+YFvHtm2Uw==
X-Received: by 2002:a17:906:7154:b0:a4a:33e4:bcae with SMTP id z20-20020a170906715400b00a4a33e4bcaemr1509262ejj.30.1711360207053;
        Mon, 25 Mar 2024 02:50:07 -0700 (PDT)
Received: from [192.168.2.107] ([79.115.63.252])
        by smtp.gmail.com with ESMTPSA id qy34-20020a17090768a200b00a4623030893sm2854174ejc.126.2024.03.25.02.50.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Mar 2024 02:50:06 -0700 (PDT)
Message-ID: <d55f1809-3977-4942-8137-d1fa1895ddf1@linaro.org>
Date: Mon, 25 Mar 2024 09:50:05 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] docs: dt-bindings: add missing address/size-cells to
 example
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240325091139.18602-1-krzysztof.kozlowski@linaro.org>
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <20240325091139.18602-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Krzysztof,


On 3/25/24 09:11, Krzysztof Kozlowski wrote:
> Complete the example of recommended order of properties by adding
> missing address/size-cells.  They are not necessary to illustrate the
> style, but lack of them us bit really correct DTS code which might

some typo here

> confuse readers.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Cc: Tudor Ambarus <tudor.ambarus@linaro.org>
> ---
>  Documentation/devicetree/bindings/dts-coding-style.rst | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/dts-coding-style.rst b/Documentation/devicetree/bindings/dts-coding-style.rst
> index a9bdd2b59dca..8a68331075a0 100644
> --- a/Documentation/devicetree/bindings/dts-coding-style.rst
> +++ b/Documentation/devicetree/bindings/dts-coding-style.rst
> @@ -144,6 +144,8 @@ Example::
>  		#dma-cells = <1>;
>  		clocks = <&clock_controller 0>, <&clock_controller 1>;
>  		clock-names = "bus", "host";
> +		#address-cells = <1>;
> +		#size-cells = <1>;

I propose having #address-cells and #size-cells after ranges, because
they are related:
https://devicetree-specification.readthedocs.io/en/stable/devicetree-basics.html#ranges

Looking good:
Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>

>  		vendor,custom-property = <2>;
>  		status = "disabled";
>  

