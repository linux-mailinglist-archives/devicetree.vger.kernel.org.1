Return-Path: <devicetree+bounces-203703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B213B22492
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 12:28:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D063189ACD5
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:28:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA8FF2EB5CC;
	Tue, 12 Aug 2025 10:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zi2mHvFO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87122E92BF
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 10:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754994499; cv=none; b=IYndKxkl0jl3PTsW6SWo3mP8rh/n8wsYOKFr27szfm0A/PjbzsgDlTaHQxfV7tBbHVyjv3NqDjxgaJqEIomWkgYjWe4EFYTMqpP/8V1in5z9VYwsO3lf1fbObQIsDynJ5ARizj7+d+LHEBIT8uatfMDtNJjuueuG+kNnEMePjo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754994499; c=relaxed/simple;
	bh=B9Vrmcfl+8IVTDBQ/VpLV4BqgqKtRjIoSIkTrqYOTCs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KO5F9tjwWlSj6LKqLDWmZtKT34u5tf3nChDiIvuYGU2QIYKImK5LIDX6Hrgs9q4RyGmfcg6OiQOZpfet1NKXm7SV6qdNBuyY0R7AE80GaVEQU/9imHMJBspS5A0FR8s+ixF57z4gXQMzd/W17ytqJewF1cvzrmxuvtNpgtbKNy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zi2mHvFO; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-459eb4ae596so48651665e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 03:28:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1754994496; x=1755599296; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Pm63ILDmwa7xNpo98Np+0qeN8z2wnjVlHzO2eRsHLP8=;
        b=zi2mHvFOFQ0696LkV8C3hFZtIhBdaTDbS9RgFnPtvUZeTCCAqsoCubS38GfcJ7cUhM
         ToxOOYi+rtpYZVBrWEIY1aE+tiQ29O0uV5ngDMpD4gYB1onlPVExDq3ikLMFkG+okD05
         djwbVT7Hq/3w/wxpZ6ZU/4aS0aBp+3ghYv0GFVcqeIhTLAJFJSOE4ayK/7bBUX0K1LtF
         wvD3gixqpEWRWkP+tuC2Q+qB9ah86Eetlkmym/z6YUEvyD+5ngaeAhqiwLvtnGZWhR+5
         x17NmBLbunYEZzOawUR2vKQg0QEqUDFcfxJoyySFKCI2Ba1NR3PNImq8zLxjmJNTj4bt
         fexg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754994496; x=1755599296;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pm63ILDmwa7xNpo98Np+0qeN8z2wnjVlHzO2eRsHLP8=;
        b=UoZKLPPyJm3Yb3Vab46vqpVEjz9O1+giJXNmmZhcwRU/AI3d7bl7VDb0SRUP9K4eoM
         lvePpqgkP7ZoeESf+7Qs9tkbgaaCOhSowRGjo7gd7nEL5RUtP7CBxPu5OkOrigFNU6Bm
         pjdp8ylZ1HapU55Q7+x+8+TOVDnL5sSvVyjKs3zTdWAD0B5iZffKaRTK6e8tz2hSO3K1
         ttYlShWO6oGhrvASxsSV6yDeIVgza77v4fX9gGtx+epuDIlsD3ZVayaKnvKsWHrYff8P
         SzFt2H0d/7P1VYgZU20CL4mSS/mKrquBmr3pm56NiaYd7xpteGP2DGbPWkJTpVC5xoTQ
         23pA==
X-Forwarded-Encrypted: i=1; AJvYcCVx3Z2mAHKgpZaGFWta4Ncqa+vk4VYeS/P6EeW5MFo4mEAreaDUzaYCZsNRdkJs11M3EMC/zYNm+l6s@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3ScRbkY3RlaETI3ERj7a5yN3tlvAQGDF3VTxKRdAJl9sVbVsM
	mlHA4e6rjRLnU0wcJ6c7TuRv1kurt/De9uQIWB0hVo9IV/olBwAE9ZV+F+jWYqVN/vo=
X-Gm-Gg: ASbGncugX8ZsvFWdlviSbyWe2H4vYnfLPt9d5JgUXxHYZlRt/86u0T3476y9afc9Re3
	1Gha1wal9F+fncxsk8+T5fSGIBY7CzUwPXXO4EPK5ZSX8qJ5ZaNZsinO2IB0K+klqFbinzXcxt4
	RhV6exoU7eIxw6GpCPyeCFnJqyrPchStLhmKVEBs/wHRYX+CMqMAz6O1b/xZk56K6FPUAXNJRhb
	MIjGjTo7z2FMEtj3MhiewK0EdQsof7E9wXYZS4usr+0naBpTArWbggxfiDWzj3IjoxVO+EcBjiw
	VuA6SwBh/dNQ6M97pDFcyR+RrDMXli9XySx6ochvgxHxpT1nJJab4b1RMHH0jU4Ma6G92ghTFTU
	t5lPM/Xr5u2GnmeWhj4rTEM/seJL0D6WYFU7LummJ4hYhBUxmtD4N5PdOh2h/Zw==
X-Google-Smtp-Source: AGHT+IFcdKMW5nagxZx6H4FgaqbvprQU5gv49abZvdzjaniK3RNc9c2E5u7r/cWE1TXNI9GVsZSWQw==
X-Received: by 2002:a05:6000:24c5:b0:3b7:8832:fdcc with SMTP id ffacd0b85a97d-3b900b751edmr12603011f8f.38.1754994495881;
        Tue, 12 Aug 2025 03:28:15 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b915deec6bsm9208f8f.7.2025.08.12.03.28.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Aug 2025 03:28:15 -0700 (PDT)
Message-ID: <b7a7f3fe-faa8-4143-a200-d91597d46124@linaro.org>
Date: Tue, 12 Aug 2025 12:28:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt: bindings: fsl,vf610-ftm-pwm: Add compatible
 for s32g2 and s32g3
To: Krzysztof Kozlowski <krzk@kernel.org>, ukleinek@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com
Cc: linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Ghennadi.Procopciuc@nxp.com, s32@nxp.com
References: <20250811223044.3087090-1-daniel.lezcano@linaro.org>
 <20250811223044.3087090-2-daniel.lezcano@linaro.org>
 <758fb1ce-bf7e-4dd8-aa24-3f89d9be5652@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <758fb1ce-bf7e-4dd8-aa24-3f89d9be5652@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/08/2025 11:03, Krzysztof Kozlowski wrote:
> On 12/08/2025 00:30, Daniel Lezcano wrote:
>> The S32G2 and S32G3 have a FlexTimer (FTM) available which is the same
>> as the one found on the Vybrid Family and the i.MX8.
>>
>> Add the compatibles in the bindings
> I already asked in previous patches - prefix is always dt-bindings.

Yeah noted (again), thanks

-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

