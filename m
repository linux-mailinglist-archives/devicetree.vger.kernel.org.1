Return-Path: <devicetree+bounces-79647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB1C916222
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 11:15:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF492B233CE
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 09:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8E9A1494C8;
	Tue, 25 Jun 2024 09:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pUSuH+yp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1093A1494AF
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 09:15:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719306906; cv=none; b=HSspMK3YhmAQf9t30p5yBkpR5ApoIeyyXE1RTJes/bfIA/08eV8yU6ogFqLumsB8Smh41QTgnTXOUDN3sFja/t4vqO4XaKUEI5iCE88YhsOjUdyhW0FYd3EbsaoibjYNOrp/EgMO6D4iLN7+kXalxdeSQBqfDGRSVw2oHlAW3SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719306906; c=relaxed/simple;
	bh=0bUvdLr0JgYvQ9Lmdqz1lLCyGNBvILccHPEUE4iewS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kgJFFoUHFkCvL1B8vdLF7IJ1WyJAqq17UWB1LKm6+/sT+4cHRzDnROcSPZyRMfLa/0cyOvA9OEJgxM7/tbQf1hmOaH2nJa2EDOEWw49zElbIBvhHGqn12ZELZ0bMzhEXtjVcpya0nRGPtXhxPqb4T2Q2D6GoN5BwMRxCDhNcelg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pUSuH+yp; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-424720e73e0so46408785e9.0
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 02:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719306903; x=1719911703; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=u7AxFP/WY+rMWV5gPbRouSNzoJd8GpupnnxgcxthuxA=;
        b=pUSuH+ype/ENKeRsyOlrOCw943c3ec9wIufGL3FRpRKlYfM5BZsR6vtpvnFjH7qyHs
         dzrkIRhbXGyu3HvTO8dMKbLzhCiR5UAgwc2TgiSDHdKaQ/08LjegQv9gZcop8BJxOMtA
         Jf4+Kt4vH15+6GOmtEXjD3cBR8Am91QQ0R2P5cGd9DnmeUQ6mQmBj5lOvWcuJdVjI/i7
         3jkPKPY3My5F6Pmr8hl8ipJhOLAmnYsmXlXEynZb6K4LAwu/RP/e4SLCqDjXXk/eLQuF
         1I9nvwJvOhAcP+YL7FZUmB4XoCgKhLCULN2vS9+SSYG/uv78J9gW3T1e+jAIuWRGMq5K
         C7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719306903; x=1719911703;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u7AxFP/WY+rMWV5gPbRouSNzoJd8GpupnnxgcxthuxA=;
        b=DuqmWSo4YbqzZ3mV5TwEuX8KVkkPCo19cvToYfwFj8ZDyM4ZLUTG21gypWZtWOabRk
         SWxtWHFf4FzP2qE9Np37qpbJqyCRxxKvRaWq/FMdWSY1L5f+RjogimDr30xwprfCs/PZ
         MnWcbmiwpTQ3AecrbeGGuMoLDREzfn8Z3yGqIpuGjkjtlqL8v5txd4lP6d5zFW6XmANH
         Q2D7bw45l/Bexpv7uPBQx6UCanu51vazKCh9vs4le8AjacjlGJiNCLShoz/wstUJyl1u
         Ia1kQYptS0LCrURoAdYfM45gyRD2bJrGL1FDjZN6WSjhVDZwAqZbR70/6yiXzhluzX2F
         3Ivw==
X-Gm-Message-State: AOJu0YwD5hWSeU/NUrPPHmymsM4pxMbrYgWV3PEZ50vLU+GuHYRHCzJw
	Qf4hS9jOYwe/JSfWgUhqR2s6TQz8xgGiBffwXj5XHKo3/cTQ3rtHLBjIubxCDRY=
X-Google-Smtp-Source: AGHT+IGs+p34wiWiFl2Hml0nKCDQtx+CtD7ziVo7/6kQbLsTqvCt7/fAA0SkkKRLvolKi34zDWZw9g==
X-Received: by 2002:a5d:6c68:0:b0:366:eade:bfbb with SMTP id ffacd0b85a97d-366eadec057mr4897107f8f.46.1719306902936;
        Tue, 25 Jun 2024 02:15:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-366383f6da6sm12307855f8f.12.2024.06.25.02.15.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jun 2024 02:15:02 -0700 (PDT)
Message-ID: <1a3e5503-8087-41de-84b4-8db533d0ad5f@linaro.org>
Date: Tue, 25 Jun 2024 11:15:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/3] dt-bindings: vendor-prefixes: add tyhx
To: Yasin Lee <yasin.lee.x@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, yasin.lee.x@outlook.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20240625-add-tyhx-hx9023s-sensor-driver-v7-0-b1d65b221811@gmail.com>
 <20240625-add-tyhx-hx9023s-sensor-driver-v7-1-b1d65b221811@gmail.com>
 <8ce23bc6-e742-4851-9a26-ca2ab947005d@kernel.org>
 <30600f33-71bf-4abd-9de6-1c7c07e94d77@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <30600f33-71bf-4abd-9de6-1c7c07e94d77@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/06/2024 10:31, Yasin Lee wrote:
> 
> On 2024/6/25 13:50, Krzysztof Kozlowski wrote:
>> On 25/06/2024 04:15, Yasin Lee wrote:
>>> Add vendor prefix for NanjingTianyihexin Electronics Ltd.
>>> http://www.tianyihexin.com
>>>
>>> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> This is the only one which could actually happen, but still after 15
>> fake tags I don't trust you. Where was it given?
>>
>> Best regards,
>> Krzysztof
> 
> 
> Sorry, I think I misunderstood the meaning of these tags. I will remove 
> all of them.

Hm, this one could actually happen, so did you receive it or not?

Best regards,
Krzysztof


