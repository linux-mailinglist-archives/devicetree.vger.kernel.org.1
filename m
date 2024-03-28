Return-Path: <devicetree+bounces-50135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C78879C13
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 20:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48346287485
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 19:08:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F43E142623;
	Tue, 12 Mar 2024 19:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Lu4CU3Bn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2FA139572
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 19:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710270519; cv=none; b=bKxnWo2WcWNQsAkCnvbREwh3apk/H9T4ewm8JxI27klsDBlhVh+QRKsOsWwb5DjjaamQ8a4jLQjyT90ejKGAuGRjmlAemO9m7YvHECXZKOATON7YVOLv5bb0ZTY4Ncyj9PouAoRgPBXMod6gnfeLFB30FAmJ4G9hsg7QOjdKl4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710270519; c=relaxed/simple;
	bh=HOvM1INRucQgbLo4lsnsFEr6TFjoAs5K2HPCyrFjNb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NPtXrP3CLd2NTjhUZT0jVcTlSYtMnB3w9JM4eZvDm9O0QH/UF3LnbJH2Eh8YVgxD+AUv1jvRfqu7bs6lGnGnL1L/6iFWHBEL4ThjmJQDlhydJ3n4Lv4+I++mnibi4aysohf34Uj3u8v4aO3I0ixzRbcppi5ym/+Ra2mA8gLANEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Lu4CU3Bn; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-41336981b3aso2085735e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 12:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710270516; x=1710875316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=16YGdsT3Q2m5RXOX4ZkK+9AENjmmW2MP9xez+9u6hqY=;
        b=Lu4CU3BnVUtZaUl5lHwUWd9rRlqSAkmhVaKaTpQNHknXRd1dUOynD9vUxrU9LBukMW
         AV5nlkFlLw9yp7FiTdTBv5gFZXn8vjHAT1z0IaWayiu+IGGzLhqzpnjmDkCcTOzt6yi3
         jOFZ2pZ40Nt9cnJ6LfV9laaqvzGc+5A/jfzfDyQ2Tdj0J6tkIpGdhd0kMTeuiwud9uVL
         BF2vku0brV5VDgAnCHLQ7HYGxRNwlmCPFe8F/JbGNEoiqRPDWgc+cHDHIjiLDpYItxoX
         rSVzQLucqIh4FwnlfQPPR8fVWZGas2035LKMjdivAxBazkvsumikkoImh6YwzBHR6Xq7
         JCcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710270516; x=1710875316;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=16YGdsT3Q2m5RXOX4ZkK+9AENjmmW2MP9xez+9u6hqY=;
        b=lhyxnZASVwR/Niebq7zsvBTSbqnnC8eiumw56hGra8Z//BDx5ITRQcoabi4/jOi5IM
         bBCm/AIOUvU7UoJcxDiY0CeJmAPqaCDI+FnrLSr6wOIKJDDXo4zRzBep0pbSN5wgN9pi
         2xqGC0dFq4Y44f+UvhvFV0wX3Yb0y8FVFYo8fY1MSQKh6ol4WO/gL5XHWe6xo3u1Iojd
         M/v4pryl5GdGh/00Kdk02qrefqA/Eh3FL0lceeUGuEc3tATO+6yqMv10HS309R3Dlv3Q
         bOyBZbCs3QWPaw17tKIXI2hnGdjIgB/Qs7x/j7WNLJNSdixi8LbviaHVpLH1cC3W+rVm
         9Z7Q==
X-Forwarded-Encrypted: i=1; AJvYcCX0v7jJzWIyb+FnBI/Nsh4WWJxVZvHQvX47udRdEHPgBgHltf2nPdGQi6lOaS/xnA3yBNTXGI08QabY84XXQjQsd+Vp9/nk59qgSA==
X-Gm-Message-State: AOJu0YxH85bjHoA4sO4U0h4XyjpGLf+yoh0SjxzZKRYue7O0YbbWfJEw
	dJ7YW8j7VoD5wl9AnnOKnF7sCD6MYx2GDTKcVBFMQ6lJeMaxskBFstQhQ2BzYgo=
X-Google-Smtp-Source: AGHT+IHXlK5FVG9W97jusqM5BnM2BtWdimJZJvNfvTf1XxKIxw2BoowRAjRbqipjQYBQG03wkXctvA==
X-Received: by 2002:a05:600c:3b07:b0:413:27d0:45f4 with SMTP id m7-20020a05600c3b0700b0041327d045f4mr3657486wms.6.1710270513778;
        Tue, 12 Mar 2024 12:08:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id r11-20020a05600c35cb00b004127057d6b9sm19857777wmq.35.2024.03.12.12.08.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 12:08:33 -0700 (PDT)
Message-ID: <05a3763c-1855-4028-9f2a-b125c7ed58cc@linaro.org>
Date: Tue, 12 Mar 2024 20:08:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: pinctrl: samsung: drop unused header with
 register constants
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
References: <20240312164428.692552-1-krzysztof.kozlowski@linaro.org>
 <20240312-numbly-starfish-d2ebb32a222d@spud>
 <20240312-disobey-playset-f3d451adf41c@spud>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240312-disobey-playset-f3d451adf41c@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/03/2024 19:46, Conor Dooley wrote:
> On Tue, Mar 12, 2024 at 06:44:17PM +0000, Conor Dooley wrote:
>> On Tue, Mar 12, 2024 at 05:44:28PM +0100, Krzysztof Kozlowski wrote:
>>> The bindings header for Samsung pin controller DTS pin values (holding
>>> register values in fact) was deprecated in v6.1 kernel in
>>> commit 9d9292576810 ("dt-bindings: pinctrl: samsung: deprecate header
>>> with register constants").  This was enough of time for users to switch
>>> to in-DTS headers, so drop the bindings header.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> Have you checked whether U-Boot has also dropped use (or never did use)
>> of this header?
> 
> nvm, I checked it myself and Caleb's series that moves things to use
> upstream headers does't seem to use this either.
> 

U-Boot did not use it, but even if they did, they had more than one year
to change. The header had a big-fat warning.

Best regards,
Krzysztof


