Return-Path: <devicetree+bounces-39415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F0C284C927
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 12:05:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14ED82868E2
	for <lists+devicetree@lfdr.de>; Wed,  7 Feb 2024 11:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6C5F17BC5;
	Wed,  7 Feb 2024 11:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sBJ8wESf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02E1B7E4
	for <devicetree@vger.kernel.org>; Wed,  7 Feb 2024 11:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707303907; cv=none; b=mZVTprTYSSg3ffptvJmyD2iz/R4ybV58zq82l6qFlqa9vkDbprAIpYMijwoWWYo9YNjN6CYmy8gd+nvhb6qA8+dluk2Kcp4jyXTAJ89OpLSrn9WvGpI7RloVCNE548sjIuHOlJFdrRY9rSRxEy3NewIDjtKgAiC4l+rwAERunEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707303907; c=relaxed/simple;
	bh=0+Ct3FjmfiuZlfh/SzKNT+CbmGRaJsLMmVQW8wDoDsg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QSyvbogjE+Ad/eA2z/2Y2WlfzUjwrSrNcwPJ+XZfovQvzZiMNMhZNwONDsmTlCcA74q6rRx7y0lM+bFE1iMMcUfXb9NfIPph2LkqJMLZ3ptebJuYFu7VDOE9FvscT2u2IT00qyVydeigcceI8K9itrpZHiO0UtStDKGygX6M9CE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sBJ8wESf; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-33b4b121e28so290472f8f.1
        for <devicetree@vger.kernel.org>; Wed, 07 Feb 2024 03:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707303904; x=1707908704; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9JhdFREau9a6Lz9UlDo/svgNXxSvwHYR1LSN6sffUzI=;
        b=sBJ8wESfVqXadoKjiKuxVf6OlJDDO7HRT+Ak7vsTkjIBRq0Aq+zQiEGAuaOO/0FA/4
         OTDE+gBKIiP8dbF8sR3/QZLJQ+lADC4yrDTGo1v2HXG8OPLI6X1miZYS7JF4ygnnm23o
         CSp8Nt+wITQxrpJiwWxpPDNKU4FpWlFKd8xuGLeNXk3xvKS4y4IBpyqUSWURYhWCVO/r
         IPT9soOsFtVZ4GJT6o1Y/bzAXY86fCXmnCeCZJbi9s/CbAZnyQhZvv6LCgNH/PYztu9u
         rvLPG6CsPadLHR+Cm1VrBgwW1WKzLbnyFORC4CzWZxH3d3TozuhJMPVyQkNDhC0X49HQ
         0lJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707303904; x=1707908704;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9JhdFREau9a6Lz9UlDo/svgNXxSvwHYR1LSN6sffUzI=;
        b=d7cVDlpxerWcvRCVay3KHOCbAo3A0no7c+FDYSRDVx7Y9fLjoAp3cKnkIfrPPH7KPq
         v76I+xlLHZstPkDFWD0FbmAjCd2e2HiHKQ9bI6O/+Hd6EcqYxr4GoHkBjC/9Dzjy8ofB
         f3+LYt1+ksBM9xq0/9QhAKWfvbBrxZMsQpwrI1KhGS0l8JUlxbRJbGmQByLtv/vhwRaI
         nWyzsFjWoE4MaNuotWFm9YWjoQpb8TFfdkDSp1mSuIhmJADfoeAgh4p+QNCj0MGyLXXB
         xvgr9MyMHdpY99qSocKnZg/7YVpWOwKmtquCGwqFn2FjeLa/KUFGrnxxZAbyTTtaPVe2
         Us9w==
X-Gm-Message-State: AOJu0Yy+EggQm6DhXJOpJuE2J2/N4QDm6Y93DZKe+jXK9ZlLNBIedCax
	6IQl6H+XkEsMbeXshDkjTnfb/Jze/mPq1ennp7rmLPJIXIraCxD2LphQUVHnrC4=
X-Google-Smtp-Source: AGHT+IGNOZ+Ucmt/8ReBjQs9L2rBoNxgcsuKi3zDlKPcCubwuNeujFxUTR7VbZClTKUMfdsYf7R+WA==
X-Received: by 2002:a5d:5f4c:0:b0:33a:e739:28bd with SMTP id cm12-20020a5d5f4c000000b0033ae73928bdmr3925870wrb.59.1707303904241;
        Wed, 07 Feb 2024 03:05:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUIzDjQPQCruwsPLOJ4gl23f7Yhwci4/KG6rLDwv2k2dXmMNUjrT6Ji0sMcdjcUqRUMuorkoVFKzfSzRwDjKIA5GQ/kK2YcOKwAF/i6ijVHVHXOug8OHmXXYj5Y3eHbWgAX8chb2R+Qqr7y1uc8GF1jMDJQxQ+kdvEeWXC+pODREjGr6X876r1BrzRNKJQ8mmbVWYUbX1+GYAnsPy5jjqCageY+oCgTS8yA6ejjZOTwBcuig4jjwL6KyY0tFIWVv4XTaduACzx5M57+MAsXaMGMD3EbS9eK6zK8PVB+W4wZx30uAtvd+g5NU5dW0F8v1b8=
Received: from [192.168.43.244] ([213.215.212.194])
        by smtp.googlemail.com with ESMTPSA id f7-20020a5d4dc7000000b0033b51e2b9b8sm174122wru.23.2024.02.07.03.05.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Feb 2024 03:05:03 -0800 (PST)
Message-ID: <c075f2f8-4fbf-4309-a478-a5cfb199fdd5@linaro.org>
Date: Wed, 7 Feb 2024 11:05:02 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-x13s: correct analogue
 microphone route
Content-Language: en-US
To: Johan Hovold <johan@kernel.org>, Steev Klimaszewski <steev@kali.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240125154531.417098-1-krzysztof.kozlowski@linaro.org>
 <c34dd7ca-01b5-4424-a8ec-a525b8d722a3@linaro.org>
 <5497d428-cdc1-4057-afda-6861d2e3860a@linaro.org>
 <e9b6f790-831c-4df6-b16c-8d7a2f8ddc26@linaro.org>
 <CAKXuJqjDM3P4wOKz3CaAB9DUyemqQ6ks=FPnfL7OsHnnyoyn=A@mail.gmail.com>
 <ZcCX0hDGrWqRXr9R@hovoldconsulting.com>
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <ZcCX0hDGrWqRXr9R@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Thanks Steev,

On 05/02/2024 08:09, Johan Hovold wrote:
> On Sun, Feb 04, 2024 at 11:30:54PM -0600, Steev Klimaszewski wrote:
>> On Mon, Jan 29, 2024 at 8:27 AM Krzysztof Kozlowski
>> <krzysztof.kozlowski@linaro.org> wrote:
> 
>>> so I will go with that approach. Please ignore this DTS patch. I will
>>> send ASoC changes which won't affect sc8280xp.
> 
>> I somehow missed that patchset or conversation; As an owner of an
>> X13s, which is sc8280xp, I can say, neither pre-dts patch, nor post,
>> seem to do much good.  When I attempt to do a voice chat in armcord,
>> the responses I get to how I sound when using the mic on the X13s
>> itself range from "You sound like hot trash" to "You sound like a
>> robot with hiccups".

does arecord exhibit same issue?

What is your setup looking like? I would like to reproduce this on my x13s.

thanks,
Srini
> 
> That's a separate issue entirely. Both the digital and analog microphone
> (jack) is working on the X13s as long as you use pulseaudio.
> 
> As I've mentioned before, there are problems with both playback and
> capture when you use pipewire however ("robot with hiccups" one could
> indeed describe it as).
> 
> That suggests a more general problem with the Qualcomm audio drivers,
> but that has nothing to do with the audio routing.
> 
> Johan

