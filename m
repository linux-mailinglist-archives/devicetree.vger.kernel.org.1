Return-Path: <devicetree+bounces-40734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B15C851553
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 14:35:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02A31287528
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 13:35:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5512041775;
	Mon, 12 Feb 2024 13:25:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gvU5vVcm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198E141757
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 13:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707744351; cv=none; b=lPEWOYVl3tPtv9hLekXv4A54kDEBBU1h1K1cqtX4t5Uyw918o4nsMdYaL5kXdzhl8BFL251pCg9y53ilFjMA5cWMxGAMjEJfoTBePwJE21kcr1iUQi41kx8ivwimnNC1c0YzwhmjFqC85ydPWf6SxXVaIFqbwKQA+EJ1HCGNP7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707744351; c=relaxed/simple;
	bh=c23oWq/2BjYXZdDPAYaHpYUvz+ufaYa6Lw6VQvyocRk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UyQQgKAZNkTIRgFgCvok/o1eKx0CXQnbM55iPDSpMx0PZ9Zp2avjs9a6ag2c7EezGKNfCGyxC/l5tI5gQiDTi68Qxk4rUOQMB+wUrJzakpKS6u3Wea5RnDoPfbu2WghOSdz+yWAdSUIbhKfag4sCtsgIiH1+xESu8umVBx+Gqrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gvU5vVcm; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-337cc8e72f5so2349029f8f.1
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 05:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707744347; x=1708349147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AB3gLwmIbX0H9anm0y7lLvFsRUFdenHS4G27CmRvfbE=;
        b=gvU5vVcm6LfjZmNg2eP2SqSWaojWlmKfEoD7Debjwe6rCsxB5WxREcVTCWXOJbkDA8
         kOk51CK/mSAK5oyTBl6/FSdB0Iuti4v8hYrwcS5AuTk0BcvoOAdcsDFNnmCNPUdO9xHr
         Qta4EmVWnGlKsTmtnb9uocaDMM23lf6b2lu1pDXDGnkbttTVgtXA/C7h9MDmnuedvPrE
         w6serz+acM8H9FYkwFZoG/OhFW7JHG5SGjHYEe23+tAsM35g7yTU3IvrRvfze2XTCc5+
         oCLfasJ2cupMeHTAo5OqldTdR9QwmJ7XkoajQcM3pJaVRKQ1rpm7FEV4K79kd1EFRM1X
         qeVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707744347; x=1708349147;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AB3gLwmIbX0H9anm0y7lLvFsRUFdenHS4G27CmRvfbE=;
        b=EQPUap4dIBapH5rESNgW1MTO7Ah9BfHtha3InFto41E7JAHOHP1gt4p/FvH2gxWj/+
         eYXudXU67b78ELBELn0nXswftBRFVJODtItq3xM+ID2tDztcQHGBlbtM0V/6A/MIn4p0
         Cm5GUmYYB7GNzG1wp2M7b/rtEHED52ja8sRSL3cf4SOa5KhnxwFnX5FrFcAdIPU7crA7
         JJajyJufodaCNiPlBL0kRfgDyQaPnrvdFll4CmIDkLSUPTEGpCUrMfgxHb+W5kBFsFoP
         JlRXxHlBhvvhe8RQOY0rLgn45nVQKABVHCVGChr+CIXfCgu6zE6+Xpu1SmtVDFz21Rwy
         HLLA==
X-Forwarded-Encrypted: i=1; AJvYcCVBcqv6Faal7Y/YGap5RAiSIpb2JKFhkHMEuTJH2YHa3PRJcOht8luA9FPuOFEDkJKA89LIME9Cb1w7FDeOLylYYCSSELgT7TNHCA==
X-Gm-Message-State: AOJu0Yw8YIAgiFgfik18WyLn6iW60/3i6T/dy4qE2fKIWTq/Acc97N9z
	R/sDpz2brIlX/ghw2rxBXZnlarnysYDPKgmqgZFKRA4XFTXuNTGIvoNDmplGjL8=
X-Google-Smtp-Source: AGHT+IGe8WC2ta8hPlWxdY0HZ3hWAQaVFB+AWQOhc4NzzkzIg4+zZ9tBlugAPx5N7eDjhB+Fdog/iw==
X-Received: by 2002:adf:ea42:0:b0:33b:6410:4634 with SMTP id j2-20020adfea42000000b0033b64104634mr4058984wrn.23.1707744347365;
        Mon, 12 Feb 2024 05:25:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUgJMpFHLH93Cpoan/nxYVctpRvA+u3Du42qTJYuVxI1XiD/OsGcf9O5w8kzSEDLfXpJ9DZ5BT7qV1Ycbt6ff3JpqDYPkn15MGxZdoW23EBxXq3+QZKMGJ9hc9w7n9xUMBMVFf3DjEW3GJna5VnvVGbEPxpTGdfxFUQjZv2r/ipxoZBPImENzl05EPPh+iJtavaeYvONc9epOs3Yo7FrlQCbXTDnIano7zfM9aUqjHBa2ai0vNKUS+xzgrXpJG5SkTbCsoDE1DMQR/nYFYyTDHRA90Ob9tXEtORkJLlOKveBGzAL3K4wFruQG2WnDRDgv2v/4fIM7FBi3g3ZnAJ3Ir741kbOG3n9YhaSRlG1ke7fQaR095pObyjZZJoJLPUPFY0kZ6VsaovcmoVmo0qIkYlKWg2bDdO6mqqcREotkfDcWL3vHmtWWaFidZjvc0YEerxIVOj+sNH5WGM+8+7mQ2ZqkJtc7U7pIBvB/hYra4rBswDuAazCgowZk9cHZDU+VHQbNuPPz3JbyUK//a+BhyorJxcFB9kWdpoyDZJ14EO12mplU3vw4bndLcuR5hmXWVf6E09qUVJ1/0hp/wEixy7Dwj8x0IBPXJeqZn4h9dY9CzWAJFpBxsfClXf+PiqdOwTay9V0LM5whf7XpsnONCcfajeZDgihUO4NjECLEFvgI5OfyKlTqY34PMLJKRTOWDo+KhGuFLcRkJzyJr3Z6jDrI7/kbtCjgRQ40JgPD32Flf/BhzsoUPJnWjDzAcDlDG6a29nQLbRYt3ljo3EOW/hEjEhRriyeN06tmC/+YQQCd2xzOW3VagbhLT4vwVdkGPFuCxl25VEIlYv6eImOx/6UcxzaA==
Received: from [192.168.1.20] ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id n4-20020a5d67c4000000b0033b888a0a63sm645201wrw.0.2024.02.12.05.25.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Feb 2024 05:25:46 -0800 (PST)
Message-ID: <c02af97c-7801-4d17-a83f-a72de33c7a81@linaro.org>
Date: Mon, 12 Feb 2024 14:25:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] dt-bindings: arm: qcom: Add Xperia 1 V
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>,
 James Schulman <james.schulman@cirrus.com>,
 David Rhodes <david.rhodes@cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Ricardo Rivera-Matos <rriveram@opensource.cirrus.com>,
 Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Kees Cook
 <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20240210-topic-1v-v1-0-fda0db38e29b@linaro.org>
 <20240210-topic-1v-v1-2-fda0db38e29b@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240210-topic-1v-v1-2-fda0db38e29b@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/02/2024 14:10, Konrad Dybcio wrote:
> Document the SM8550 SONY Xperia 1 V (PDX234) board.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


