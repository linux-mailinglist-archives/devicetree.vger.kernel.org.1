Return-Path: <devicetree+bounces-80913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1001391ABA0
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 17:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2720E1C20B94
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 15:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B69AD1991A7;
	Thu, 27 Jun 2024 15:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UflhsXFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE581990C8
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 15:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719502829; cv=none; b=A0q9FF02WXuD17wlA94MOJ74LlN8imgz2H6fpymw2/A4opU+2WBtLXU9FUqlxai0n7aJsLeqUuG4SilbzPdhxZnKmk2IlfWKF6AM+3uCdqLgna2KqcovagU5szE3xcOMwiKK+dG1uCdbIUY/fw36F1xC843rZdW5HvGg4AIfJmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719502829; c=relaxed/simple;
	bh=lHbeknsk/AtZkJcJkKNcSrP1o/ibCob0V2JnFNWEmR4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NNp8TeJIJQMzRwq3gb71SrQd2HL+9mKS/kThoz1pz2rZhTm2qF5jxlUg5BlM1WVEaA2KL9A9QGtBb22oJ5xuW8d7a+5F7P5u2AIm5PD/KiehXfMRzzEZEUZZJRpt7DuZYrr8T8ZGb4R4fxXVWOjkQlkvtIUObALyZfVKQpLM8W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UflhsXFm; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-366de090da9so3811497f8f.1
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 08:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719502826; x=1720107626; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M//oCRkOjcE/cm0/TJO4zvrkYG5iR1NNF7GP7xwS6pI=;
        b=UflhsXFmH9I12rn4Wj+4WiPABwLAStn5VJwfBJFPeJnf32g/uX4s2k9I3K1dcBfUpM
         mosePcIm3Pyg+14b2zgoHQwyxZFYhLkobX2FmHxq8NLmBUkCHlmemaehmQEU0yfMXCfs
         meXfvDwSH9l5UHXib8mjiQUCgKcuy6+l6zMWWzUpGUAbbLs8jdxEiP/rebe3E3VSStVU
         cSwe1cegN+CGWjh3/aXWShVMBJ9o8BlJJ11Ws/VDAv0EEeJcB1ukFY/L4gPq8fOyaXp5
         GCsvbtCIEMKak69MLaqk+eOQBYUL0eloXls1n3a5/Vn5+4yM+bsmKZqwpn75esOgTRvJ
         YYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719502827; x=1720107627;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M//oCRkOjcE/cm0/TJO4zvrkYG5iR1NNF7GP7xwS6pI=;
        b=rPH3sAhR+2KWHBVhgVR0Oe9xPu4V8aa6qAUz0/9SZxGUBX6GX72upA/rOeiFiPyyvq
         A6Rf9pA7utoVzLuoQzId49gYHn5sJMqBjCJ8S9wigBo1t2iuOSJQ1ozhlnQCSl9ffCQ1
         JIbNAzRNwjRwNvf1dSi8d0QNpuxnaiG1KneJd0S7LG3ZDlsVcLBEuYNN+b6WUoTZju8l
         8NQ9Lve5QCEMM2Bnx/Z3W5M8K55jC2DjbEx1RHm4i2MoBkV98nZooR4Pqp9Ah8/Gv2H4
         4CeMdp1nol3q1zi8VMT0GJcIeHRphrC+I/BZuPAuihaWA9qKPUhNezB6zZsNj7lP8+Gs
         C7OA==
X-Forwarded-Encrypted: i=1; AJvYcCWY7KpHYlwjwGZ5uu7MELk7mojtnSHI/1ExYfmIp7tso8vSYB1vAWHUrhHAT2gTVPw97urVry3ci712R8A4RsZyI/vUrSfRISUaZQ==
X-Gm-Message-State: AOJu0Yyy4xZD0kTC7BC83pR4Pi+3qKoUAgGJuXwV/Kxg0wpPQlby/mMp
	WMaWPbf8PW/r9qQ6GzOM27L8JLDIwJJr5Q0UcqbEx8el6yEP7FE4C59ZrIt07Z0=
X-Google-Smtp-Source: AGHT+IF2Wv34A+wK39TJbi5KABfsyjk15f088Qkbe7kjp7UKxS7jYKRmHLxGe+TCukAeElAkjB3rHA==
X-Received: by 2002:a5d:5f90:0:b0:35f:fb4:fc7d with SMTP id ffacd0b85a97d-366fb8dd6e1mr8917504f8f.31.1719502826657;
        Thu, 27 Jun 2024 08:40:26 -0700 (PDT)
Received: from [192.168.0.3] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674357c207sm2253742f8f.1.2024.06.27.08.40.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jun 2024 08:40:26 -0700 (PDT)
Message-ID: <7ea5890e-5c74-447c-903c-9d3e9aabb7e4@linaro.org>
Date: Thu, 27 Jun 2024 16:40:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFT v3 1/5] dt-bindings: media: camss: Add
 qcom,sc7180-camss
To: george chan <gchan9527@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240624-b4-sc7180-camss-v3-0-89ece6471431@gmail.com>
 <20240624-b4-sc7180-camss-v3-1-89ece6471431@gmail.com>
 <c33dde93-2c3a-4a00-93ee-e4de303c9057@kernel.org>
 <CADgMGSvN=uAW7z1dpETGVRewzDG=K2MAtzOkhK7xAcskU_oeZg@mail.gmail.com>
 <0a35f0bd-ceec-487f-b9fd-ae9698b74048@kernel.org>
 <CADgMGSt9Hu5Ciq=ndMTaVK23Y_ixTVtTuSfy4hJkJooFH2uv9Q@mail.gmail.com>
 <CADgMGSv+x2Z9FsWTHW0auttvpdfNDnOPxiJhXnUaW3yQczN_Ag@mail.gmail.com>
 <a7306019-9f19-4619-875f-e6b71add5607@kernel.org>
 <CADgMGStvxkaj_LxXLuwEUtm5dPT-MCr6aKp_DKZngHsRPTjmng@mail.gmail.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <CADgMGStvxkaj_LxXLuwEUtm5dPT-MCr6aKp_DKZngHsRPTjmng@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 26/06/2024 10:04, george chan wrote:
> On Wed, Jun 26, 2024 at 4:58 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>
>> On 26/06/2024 10:38, george chan wrote:
>>> On Wed, Jun 26, 2024 at 4:17 PM george chan <gchan9527@gmail.com> wrote:
>>>>
>>>> On Wed, Jun 26, 2024 at 3:15 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>>> Keep the list in "required:" in the same order as the list in "properties:".
>>>>
>>>> ok gotcha
>>> btw, i checked  "required:" and "properties:" are aligned, both of
>>
>> No, they are not.
>>
>> Which is the first entry in "properties"?
>>
>> Which is the first entry in "required"?
>>
>> Please stop wasting reviewers time by disagreeing on every little piece
>> of this. The feedback was quite clear but somehow you do not read it and
>> respond with some inaccurate statements.
>>
>> Best regards,
>> Krzysztof
>>
> 
> Then my apology. I might take a break here. Appreciated if some
> developer is willing to take over it too.

George are you resending this with Krzysztof's comments addressed ?

I'm trying to figure out what we are targeting for merge.

---
bod

