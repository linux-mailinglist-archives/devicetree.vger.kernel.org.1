Return-Path: <devicetree+bounces-204661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E23D7B26403
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 13:17:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E26C3AF9D4
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 432A12BEC52;
	Thu, 14 Aug 2025 11:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XMsqoqvm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BFB75809
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 11:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755170125; cv=none; b=PP3Zv5+v3Jn0Z10/nPF79kRo8eMYWDibtqCqxx1OoGFF+lrFn9Xit9iIN0HAxKSIpSvL73qMRVhj8M6LU7eP7EMER1EPmxMBY1elN/kxKAtFy3JCXWs8XO2eccw2U+hCunejc0iAU2VGgYvbNBZVxIRVjLFg24HsK4jbSiulvOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755170125; c=relaxed/simple;
	bh=gh6vN8/4gRdDG0cIvGOL3KbpT103Y0WmLY+zXDKpVUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bceln7GWlv2AIiiOBj0A8f67rocT8WLcrqPOZttS4CqtBRzZmepq1j53JIVG0wuyE37LNaeUHG6Q2Mr/tuShXnpDXIHXFFM4ZIKXmXcB1uX5wUX8uTHwyGGfEynNE5cu3KKYdMftkSAZo7nKpI3VaWuHgNHfRUpIjcldd74nygk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XMsqoqvm; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-6188b72d690so139019a12.2
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 04:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755170122; x=1755774922; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=epMwXcbNwg48wu9OvLU05QS/hxLtltT45VrPH4Yw3Ao=;
        b=XMsqoqvmJHRV7iPaFwbTN/+CGtjtQawZqbtd6MsqksGXUqOAcHA6HZTaeIanoZgShW
         N3vnw4rnKMK9EKeKme32LoyTBg7Q7DZR20JQjnLp2Pbl9OfvDgIQnEzUoW9ixtJijdfA
         9kCFy4XdsWruaSviGrabwPsqVdOEOvKZGoBaOCk7uNLPF+rVtIRcKmhZH7gK37Y/g836
         B7h6vx4b9ExVAcHleAtnvlntKQu2T4Vz3MwpqPtSSgh0M3mVBqBlqvm9rQ7aouVrBDqb
         8u0WhyYI0zWTNYhndCqMNL+PI6QNlwSNsxrY2tNEhcVfb0jtxPoj5t5Ivw0uESMDmAlJ
         gLAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755170122; x=1755774922;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epMwXcbNwg48wu9OvLU05QS/hxLtltT45VrPH4Yw3Ao=;
        b=Loc2mz5vgE8IwwEE1hzE/f6o+/RYwDgZxSj2RQqBVd266eyOI3LVLL3WkR39uUFmj8
         4uQKcFV8mMBXVQVfX9n2xRsU4x2V8AOHs27lrNBZN6S2Ux5q5F4y3I8RqoX559IqtzsW
         rtEsMQZnJCZFKdC6smQJOL4G6rtvNUEkGvg/CWS3903IO8g5+yuYJGvr3IuOwCeu3z/i
         /IUBPEujtmR4D+1KQi62SmoD+aTaJLFidGTn1DN7+KCHFP2s/LSWHosdR8SmjaNAF5Ug
         ud3VjE4jkBIvRkZOABTWWn3+HsppQ1U9a+sLoMAUtyiY3Ln4kMhXQ3unNNl+yVrlpA39
         QKdA==
X-Forwarded-Encrypted: i=1; AJvYcCVBmFpvSWpJFGWDPzw+TOo/F4F8hJbe3SanH3GD3JCmGYz3mVvkMJJJF+U2dXdG48q21xhFfON58P96@vger.kernel.org
X-Gm-Message-State: AOJu0YzPvNuip5Zw7WUQmWO3ukvyRYhD5iMWqEvSijD9BZhYwUAPvlN7
	qfPtkHp0tLzFowfoQmWZVE8/kZc59hPEquWGiY0VBRjF94iCXczWcFD4ytUZZA8Y3E8=
X-Gm-Gg: ASbGnctKs3ZGRuIEWg5kOQHo/34oYYE/bDDUdYiJSERiIMj4JsJKot3vJnnc9e2r/t+
	cQLT316n5IeCq1VsmRjw2y9H5KBnHkdRxcXmeWhj5x9AT8Q7DeyZv6JSIezBIVMZZhY39pB+YZP
	IuWk1GghTK6DENS23zI+eaHsV/XfV96iuXarx9cd7XnihY6Jpjv+F1Q2QcuNzas0OKF9mdaqdP4
	SKmMlpOxeohofnlmba7IlNL7uoSjMmqqtCWATjRrYqk2BozJ2bpClspQIEaVOqTVID7YUO78wbN
	2XnI6CrndrWKZj8CMD6SDfGgz1scs4RXgkXSfyDca38afFKjjZluD7xRoaQeZbh5MVTm3c98MpU
	/h60bYVSG/K2UEIPDD5B0bFzwu0aMqTAjmgLY39Sp2Bc=
X-Google-Smtp-Source: AGHT+IH6LUbhuL0x1byVyu2UOmiy30Ao5UNY3EeOn4MdGJE0MaZ3KjhuLlKkl5ANwASFnXRd4nPpIA==
X-Received: by 2002:a05:6402:2686:b0:618:296b:4440 with SMTP id 4fb4d7f45d1cf-6186c22dab4mr2397936a12.3.1755170121747;
        Thu, 14 Aug 2025 04:15:21 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a911567fsm23041054a12.61.2025.08.14.04.15.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 04:15:20 -0700 (PDT)
Message-ID: <bca211d0-8d53-4f49-9cdb-67af7ba69421@linaro.org>
Date: Thu, 14 Aug 2025 13:15:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] Initial support for Qualcomm Hamoa IOT EVK board
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Yingying Tang <quic_yintang@quicinc.com>,
 Shuai Zhang <quic_shuaz@quicinc.com>, Yongxing Mou <quic_yongmou@quicinc.com>
References: <20250814-hamoa_initial-v5-0-817a9c6e8d47@oss.qualcomm.com>
 <5reeryefhw7burzf2lymhg5wivaq2n4gq5hszvfp57dergvpyx@qehaf334gdrn>
 <7e5d39e0-115e-40be-b44f-0195a4827a0c@oss.qualcomm.com>
 <63ecde5c-8234-4630-97e8-5806b9ff3eea@kernel.org>
 <a56b3e85-0d42-4945-8b6b-dcff20c7b104@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <a56b3e85-0d42-4945-8b6b-dcff20c7b104@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 14/08/2025 11:28, Yijie Yang wrote:
>>>
>>> Audio support is still under debugging due to unresolved issues, and
>>> it's unclear when it will be ready. Would it be acceptable to proceed
>>> without it for now?
>> Audio was sent to the lists, so this is confusing. What was the point of
>> that posting? It clearly said:
>>
>> "Basic test is good in Hamoa-IOT-EVK board."
> 
> Additional issues with audio were discovered during further testing, and
> the current audio series on the list is not suitable to be merged into
> this series at this time.
There was no such indication from the author in that thread.

Best regards,
Krzysztof

