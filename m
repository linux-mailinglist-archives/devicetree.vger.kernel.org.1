Return-Path: <devicetree+bounces-184521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C72EEAD445C
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 23:03:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A0171677D3
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 21:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF25D267B65;
	Tue, 10 Jun 2025 21:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nfzyURAa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76855267AE3
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 21:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749589368; cv=none; b=hkCNKRzdHS0id2S2mNwJ6IcLJSMEZO0TCWxIhzHVmlAUFiUYCXgHC1Aa3xUk6EXfNhFEV9rcavJBT/72ocHpArOY0pkwLrc3MwMsWYw3vhj+hkiDQHMU6ldlKWXLV7/JD1SlrnAZCGdIM7FF8v9U2GxRe8g8wtXT/T+/pHNeuJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749589368; c=relaxed/simple;
	bh=qfhSjwvyRn6KR8oOKBXXu50Bff40BG2bB9yxr/8s93M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tUt1jAYsTgaK0H7Jp/YY2K3w1qPYfMy0AME1+vTEsAwZUrstJyKHiwPqvbWvJ8buJIaJx8Ja6ya4Z3/sQtM9UQSyInJMCmESNTakRnKNaHrJzwHUcarquXzSnVb4zk0NQUuX3nOljXISkWPOxt2ChKHM5T2axTZpq9hWBdccr9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nfzyURAa; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54b0da81302so871272e87.3
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 14:02:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749589364; x=1750194164; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vEX5+m0SmtzPkAXHZnRUD0tql0bHqOfER1OA5um3tgo=;
        b=nfzyURAa3ozGMebl/W0JwT6lMFFWqD5gF6E5cooeyI2qhKTh2MBmE8fR/HHIDB5eKZ
         ZK17ByhiKIajULlZTtMXzkZJ9MgHRhcPvemmkvkdw5MQRdepNU2GdfWfk/jV3vzEofrJ
         UXEOdczJsBTn1Xtd2KuXoPcuhxMXykORPcMDRLwTaaeMr9r89GyeespKWKjZR4wAetYs
         vHd1AVb8uF+cql5Q5lLLCpuzrk1RsJuRr+nqUAUXk1l821OHC76r1e8Cozf+Of5kedeP
         2KLIKuq8EytLmLvaJxnsGehEl2EQq/uzqX7PDokMQoh3vL0vHkvv3eMTOzXO+Dwh1OO0
         irMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749589364; x=1750194164;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vEX5+m0SmtzPkAXHZnRUD0tql0bHqOfER1OA5um3tgo=;
        b=MrgcWZvFzgg81OSBnTAvdnEV5wB3wfhSjIwzwzB65/QdhaFgvFfgxUx6smDiVKCt8U
         TJT76S7vvM6fLYsH2Ej9IRZbmLjHdnGFXP1tZ1ObW/EyoNMlO6S/UlCObaZp3vUNKTDS
         hgYBrsiSryHEgbDCcvR91Q6fDWCl1Mr68Fx5EZbuwYyJIqyLYIIG8xJKYf6UIR8ftfoZ
         EH4JLnXAJHcsVX93p3Vh9bmqqo8v7Md+LLZFWzGUE7dgF71zJr0433FJxFf71EET0woh
         UsTZrCm6gnTYqr1qKs19A5lfXGFCbnQGcm4i5nwuGA77cf6IKeOMUCi9u6FRNuev5Zl0
         aPTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUdX22czOGL+R9b8qaLWNmCqF0Bk0pfS7/CWDUoBXZc81dZrAaZpnF7YR2ywXHhjk3YE1W+4Ngr5CBo@vger.kernel.org
X-Gm-Message-State: AOJu0YzWRW7pOlfgPmVxzarz79QMR32V9BdOL9eUSgk0vi2JYhr2hhLO
	xXPxvmjODquzuUaX8Fj2iOPH38n76G00vh6AceMz3UBel584PVWsWVXNbn+X+wxBGtk=
X-Gm-Gg: ASbGncuE5XSXbSskjXCH7eqocQbWsNv7T2F+990GPrwHyfEj8arPM/Ohw7HtOvYSJGN
	sApK6DtBf6YPvBfVCnuRBaE4YglQaac287zpH4MdQCyX5iqKrrAvylLXbvO1/xDp0+qi5GWrxXP
	XoAL/mRTND4WAgdiaohQyOlMfsRHkd/xe2D/3gjCEPB/2f/P4n2XJm0Qezai0yJGzIakFOriFcM
	Qzl7R2v/epCGUFCEKAbkXtFwEXBZSSgVl9NhwWo72SSuutqRREmGqSqAou7eGBeOBxwlNCZNJPR
	Sau/vnJRiik3CO/QPk59+s0tEHtVt5RWcMbJNDwg27+wqU7yvYrpCrmrqqSuvC4Fy5XfRhcKYCM
	z6mNMrw1IY5qtSzQiixrgqQHUUDAOKWR8J9Wet7OE
X-Google-Smtp-Source: AGHT+IFEFIJWrRfj6+Pu7NhQKIOTBe12JY90TCUN9nzhGZ8nBRQCkhDsR7KECb1Mi5qTpg+TryH5fQ==
X-Received: by 2002:a05:6512:1509:10b0:553:3a0a:188d with SMTP id 2adb3069b0e04-5539c106d7bmr77460e87.1.1749589364478;
        Tue, 10 Jun 2025 14:02:44 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553676d7b37sm1686862e87.67.2025.06.10.14.02.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 14:02:44 -0700 (PDT)
Message-ID: <1883d9d7-26d4-40b1-9848-ae0477cf95c7@linaro.org>
Date: Wed, 11 Jun 2025 00:02:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND] arm64: dts: qcom: sm8550: Add support for camss
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Wenmeng Liu <quic_wenmliu@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 quic_depengs@quicinc.com
References: <20250516072707.388332-1-quic_wenmliu@quicinc.com>
 <0367d5bd-a42e-4b6c-b841-ba20190b3127@linaro.org>
 <dc4720a8-2f15-44aa-9a52-8440c7518328@linaro.org>
 <739bad1b-f26d-44a6-9cc1-eee28023474f@linaro.org>
 <dc82457e-de2b-43ec-a50c-08f7d8bdeff1@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <dc82457e-de2b-43ec-a50c-08f7d8bdeff1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/10/25 22:02, Bryan O'Donoghue wrote:
> On 10/06/2025 13:49, Vladimir Zapolskiy wrote:
>>>
>>> List feedback from DT people is isp@ is the correct prefix.
>>>
>>
>> My bad, but I don't understand this comment, it seems irrelevant...
>>
>> The expressed concern is about the novel label name.
> 
> I mean to say the feedback from Krzysztof was that we should use isp@
> not camss@ and I agree.
> 

Let me repeat it thrice, it's okay...

I don't object against the properly selected device tree node name "isp",
here I object against a never used and very questionable label name "isp".

Please feel free to ask more questions, if you still find it confusing.

Again, I may missed a discussion about the need to get and use a novel
label name, then please share a link to it, it'll be very much appreciated.

--
Best wishes,
Vladimir

