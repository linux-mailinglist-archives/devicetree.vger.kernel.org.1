Return-Path: <devicetree+bounces-130123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F6D9EE0B7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 08:57:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C82461605F9
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 07:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36B420B7FA;
	Thu, 12 Dec 2024 07:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k+uVxJFQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E069420B20B
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 07:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733990243; cv=none; b=OxBZ0gaVjOKzFO6a0CYCZT8Qo2uNQlHnGZbzy8qGVbQnsELHR/7UyGwuZymrnuLL6LV4iJxj+uNYgGbkq7FrUlach4qtS7dOQml2uei7qb4jDxLqXS/oHag2C/QD/bGtcHT6quAUlH9+Bfobpyox5rM0vYYTGf6L51t7w1KIaNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733990243; c=relaxed/simple;
	bh=gu43IItEc69wzb0eHVqTCGsohjjMs1ZP6cMcHAUHkC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YaElNxsDnR8Kk8e+xPi8ZQF4UuH/hGZHb5HZrWfEQ2D1zq8RUaJ1UVEYMWPdZD2RitSmJtztuT9JAkaaKHOrrdQ0nZt52jbrQwg9WzC7nW5rel93gIPolCOq/Io3M6gpq141Y8VdB5CJS5ZAp14y3o1RtoW7xhu/JK5Ls/NTKTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k+uVxJFQ; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53e2ed7d951so56589e87.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 23:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733990240; x=1734595040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HWqMXO8FKfgEyH0IhREvGbWFvHCKay6Tk9EoQBbE3f4=;
        b=k+uVxJFQPzRynEVqBqVPTELlyJpwKDY/hahyfJd7h9splMnAczG1IekUlE71fQe61n
         c5fUHBpgoVsrxh8Z9HMdkcQIjK0RaNk9ukZW63hrxitdITLlr03P6GJbb2GnrgRBMwPk
         XKoS/8KITDhHwScTga5ftHCdsCq/w0MvuCFvdVt/Mc5nWExD7H9lsGbL6Ha3vUbuC0A2
         ChzDjtzQOZk0qZ7Gpnoe27DG8o+jIjJwcUWGrtlFqxDkJvQ8umBjjbjba/mcmVsPezDd
         DUwsUGul4cCpi4clYMkh/XZUV5faXvHOZhvVOMoRo6GhtjXu4YeszNrTymwu6rW6d4Cn
         5lBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733990240; x=1734595040;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HWqMXO8FKfgEyH0IhREvGbWFvHCKay6Tk9EoQBbE3f4=;
        b=EjXHix4DfHfAfdxXgwinViZlD4O6EZpOlEFAzqiD013skFcmbf2H+VLMVBmEkH3wXS
         pLUYVQ+QejKTxnvvtrfbJ3i46gwV7qxs0Bi2Z0qU/upXRQH2E8gSjUZOOmbnGneVKkxH
         hbx4WzIyk4vkmoEpZ2ndWSUXyW7pVg2jVp8Z6qOfalzkYgVJlsOdJ2y1iG0dYLCsdbB6
         ZxKBLBG56PcqTieIBmbzS9dFYXGhweqd2IimSEN872Nd0wt4kDyyzI5JAt1aP6yoJAjD
         27nJl2rIxQG59ECjlaHQw59zC22GTocMQ6wf+LgDmk1Q9FIQsCLvYI3XYOVXntUtFW7u
         mR9A==
X-Forwarded-Encrypted: i=1; AJvYcCVkbKRqnsSmd3Aw2CBSUuo7Vk69xnWfx+Kq3R5PJvGVHjrA+vqLsD7RPnig+uOf6UrNq+Opi1RPV76p@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6KMCqeTZeU8gwm2MUdrflJI6HVZ/L17M2+LMJce7L8MsAQT/K
	gKyM3Qa6KJZO6X4HNDX2J/D8vQUvQfGWFhKXLJk037Z0yAt7ctAXLN/5HaDVjPA=
X-Gm-Gg: ASbGnctct2M9stDWYnUI0MLx9GiQ4SsmSFIxf2IhZvMQWIxopy9VdlD2xpPScBULXWB
	PDeXi2KtGxR+v+g6m0DHOnsB63+mSkvk0m4ByogQzbR2GxW19vkpqszCyjzU767mYcLkylT9sRJ
	MzNkP5VMhkbRWrNjIOyQUGFdx+5/fO+xjbMmo/fD+j0dbLg1P5yFNGni6FkPhQwXa/aYmAjlgye
	zEhSi/riJf3OTk03ieX2OcpIX1CDeDfVdgN6FD5eeEAZbFwI0wPG2vtbSASCKgkRSDwVDQuCxvG
	l8agWTDh0Tm3nzbGxhXkYRS9F3cOemVw3Nc=
X-Google-Smtp-Source: AGHT+IEnjc3IkzAwCkvxBgbpNXSCFVmUmB4AdseEra75anwcsLYJFFQWNYiHrup3ASijJku99aU/ew==
X-Received: by 2002:a05:651c:b28:b0:302:27c6:fc7b with SMTP id 38308e7fff4ca-30249e053bcmr2855071fa.6.1733990240038;
        Wed, 11 Dec 2024 23:57:20 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5401d670734sm1319306e87.220.2024.12.11.23.57.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Dec 2024 23:57:18 -0800 (PST)
Message-ID: <add63655-626e-482c-a309-f124f3b18115@linaro.org>
Date: Thu, 12 Dec 2024 09:57:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/16] media: qcom: camss: vfe: Move common code into vfe
 core
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Depeng Shao <quic_depengs@quicinc.com>, rfoss@kernel.org,
 todor.too@gmail.com, mchehab@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: quic_eberman@quicinc.com, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@quicinc.com
References: <20241211140738.3835588-1-quic_depengs@quicinc.com>
 <20241211140738.3835588-9-quic_depengs@quicinc.com>
 <79fc669d-999f-42f3-948a-ee5f3a91ddfe@linaro.org>
 <ef9a65a6-339e-4428-8487-ead242b3b2d4@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <ef9a65a6-339e-4428-8487-ead242b3b2d4@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/24 03:35, Bryan O'Donoghue wrote:
> On 12/12/2024 01:06, Vladimir Zapolskiy wrote:
>>
>> This is a massive and a functional change
> 
> It shouldn't be a _functional_ change at all, just a refactoring and a
> reduction.

I've just tested that this change breaks not only TPG on SM8250/RB5, but
a regular image capturing from imx577 camera sensor is also broken.

Hope it helps.

> I'll take a look too, see if I can spot a regression on rb3-gen1 and
> replicate the breakage on rb5.
> 

Thank you, very much appreciated. Splitting the change would be still
welcome.

> @Depeng we can probably get you remote access to an RB5 if you need it.
> 

--
Best wishes,
Vladimir

