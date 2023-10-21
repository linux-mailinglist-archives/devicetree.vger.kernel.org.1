Return-Path: <devicetree+bounces-10564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C8FF7D1EB3
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD9C01C2091B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C27D31DA5B;
	Sat, 21 Oct 2023 17:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fs3NgqHl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C4461C286
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:44:29 +0000 (UTC)
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA5D6126
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:44:24 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2bfed7c4e6dso28177951fa.1
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697910263; x=1698515063; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UoasJeMHJhW5CXL/sOqNM0supbI5sNc/uFqVtuDpdGU=;
        b=Fs3NgqHlDVkanP6y6zMeORMLG1v7obFTvG+ILSCqGy0WMGNKLjshF8vcJxJrUICmuv
         DZUdNa0W61iQ5PelnPoAWXl1YOKJIaldwx8kSK2B7j4T49iIJX1oa4CYrXaspfL8ZADS
         ok1OdtdJIaGjzpLXz0pIyXq2RUCJs2lw0bepS8piQ+VcntZA2vVzBTEHm7AcQfc19SHx
         Yr49JGlRuXxjv9kf+fcuUIa8wVDIyknLurjXOq0Y5x72DKoO71XYo8obUMm6QQFGxome
         5zwDV2YczpkVz33/CfJEmg/zoIXHEzFFBGF5p63Bw6JuaWIh64SXfVbLgHD0vLC6TN30
         x6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697910263; x=1698515063;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UoasJeMHJhW5CXL/sOqNM0supbI5sNc/uFqVtuDpdGU=;
        b=mjJTAUap08EUIcbxqLh6F0Hy/ch7O6zLNKZZhv8gVKeVPZEVFW/Q4SGX9j/G5rf6Et
         vFzc0nR0Y0ICkiiuRlhmozx8gCyhHnEi3zsR6oeyyyCOh4+IlZ+B017CwFkGJ4echRX0
         C5cpLfs2ytlcDkPHcQc72nwRvBL8Yha7tTbH0edtq0BubmgMelnTsU8t3WN/dU/m/JUn
         lUlMQsvfUPvilAgZlaWmvupGK+/Yum9ac9AHuv8O7MObCGPkATghzs+uvyydtPpiKXQ6
         epIdD4f6YPel2klkI4VGUm87H1bqPmu3u1eeKMKITV8V/zwYpzhomIaaPrFG0xQh6MU0
         q0yg==
X-Gm-Message-State: AOJu0YzArCVHN9B/GFVQm9SDRYQgGIRCmZwrspRwfeSiUYx1bpCHh8Ql
	cLo/Zh0KEkEWJWt55Afgzy4+aA==
X-Google-Smtp-Source: AGHT+IEbFzaZS+dnmBS51ZSelYmo3ZzmrtQTm4KQyqkuixDFb0K0sGOqrz5O+WilnmyP7JPEXSDU/w==
X-Received: by 2002:a05:651c:50f:b0:2c4:fe0a:dc3e with SMTP id o15-20020a05651c050f00b002c4fe0adc3emr3465198ljp.36.1697910263090;
        Sat, 21 Oct 2023 10:44:23 -0700 (PDT)
Received: from [10.66.66.3] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id p12-20020a05600c418c00b0040773c69fc0sm9634204wmh.11.2023.10.21.10.44.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:44:22 -0700 (PDT)
Message-ID: <ca42af11-7b92-4d07-9b93-367f92c886fe@linaro.org>
Date: Sat, 21 Oct 2023 19:44:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: sm8350: Fix remoteproc interrupt
 type
Content-Language: en-US
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Nia Espera <nespera@igalia.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kees Cook <keescook@chromium.org>,
 Tony Luck <tony.luck@intel.com>, "Guilherme G. Piccoli"
 <gpiccoli@igalia.com>, Vinod Koul <vkoul@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, Rob <Me@orbit.sh>,
 Clayton Craft <clayton@igalia.com>,
 Caleb Connolly <caleb.connolly@linaro.org>,
 Luca Weiss <luca.weiss@fairphone.com>, ~postmarketos/upstreaming@lists.sr.ht
References: <20231018-nia-sm8350-for-upstream-v2-0-7b243126cb77@igalia.com>
 <20231018-nia-sm8350-for-upstream-v2-4-7b243126cb77@igalia.com>
 <6ac842b8-5fcb-4094-8488-4d6e250bf102@linaro.org>
 <20231019040623.GA5142@thinkpad>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231019040623.GA5142@thinkpad>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/23 06:06, Manivannan Sadhasivam wrote:
> On Wed, Oct 18, 2023 at 10:17:15PM +0200, Konrad Dybcio wrote:
>>
>>
>> On 10/18/23 16:25, Nia Espera wrote:
>>> In a similar vein to
>>> https://lore.kernel.org/lkml/20220530080842.37024-3-manivannan.sadhasivam@linaro.org/,
>>> the remote processors on sm8350 fail to initialize with the 'correct'
>>> (i.e., specified in downstream) IRQ type. Change this to EDGE_RISING.
>>>
>>> Signed-off-by: Nia Espera <nespera@igalia.com>
>>> ---
>> Hm, apparently 8250 and 7180 have the same thing.
>>
>> Mani, could you elaborate on this?
>>
> 
> So the remoteproc driver expects the wdog interrupts to be edge triggered as the
> rest of the interrupts, but DT specifies them as level triggered. This won't
> cause any issue during the first instance of the probe as the driver requested
> trigger will be given precedence. But if the probe defers for some reason and
> during the next try, request_irq() will fail with error similar to below:
> 
> irq: type mismatch, failed to map hwirq-x for interrupt-controller@xxxxxx!
> 
> This error is often confusing and I tried to fix it. But Maz didn't agree with
> me, so I just ended up fixing the DTs for some platform I have access to.
> 
> So ideally, DTs of all platforms should be fixed to pass correct trigger type.
So, this should be edge for all platforms, correct?

Konrad

