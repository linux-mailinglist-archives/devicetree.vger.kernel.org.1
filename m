Return-Path: <devicetree+bounces-243999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28960C9EEA7
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 12:58:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF0373A749C
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 11:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EBFB2F60CA;
	Wed,  3 Dec 2025 11:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Cl0oH+JJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A2E2F60CF
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 11:57:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764763062; cv=none; b=OaKmDmtR91BUWagCTgwV1Sb9f3wfg28RLHstlPkYLvk9fAQnuxieH6mwfScAKHoyNFf9s5/IUkIDuJcafNq09eyFbmlLw7jNKGqbcqnqXo7AXhEi+SrvStcXuo7ol+prI4UJLdOC1B0h9MGEA9N3iSB4nT95jZAjcQSHJeMYTuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764763062; c=relaxed/simple;
	bh=LPKwLwISED/VLZ+wyALuzSxuIRAJQmsGoVwD5UqGVRE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I5XF6njUZrickzisL1oErRdVkiqYVIgw4ie3foSbTh3D5XMBnkPd6gEbr2m7VlMalx26b9KGM8m/VBrK0YK2mE+LMzf/VU4jCVsz9w22qvBG/RtXjUittGCC4FaidxDSlT2oLEw6cMFihi0VUnGTQxfuhKDvDXZWXoYzL5vwsAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Cl0oH+JJ; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59425885f65so417935e87.1
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 03:57:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764763059; x=1765367859; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lmmz3wGYuAOnOg8QMFr0ARgUibgo3L//u7jYl7HIUsg=;
        b=Cl0oH+JJ3vq8ZLraORHFhXpsAJl/8Cx+PyGnAcvU9MsEFuwmTB8LSp5SkjZ+8mours
         NedaOQGFJQG6JEvHajUnr/FhizSgwN3yPBV2fLZvEQDMsunmlFVu2GOx+TE76A0hWY0B
         GvET17M6dmO8TXp5BvCLf6xCh2WI9+jdc55B97igoR3GG/S4wwsJWRymf1/DlOR5eTmr
         kT4mbFVRDRVS1R0aWHA+MhZYB1vgHejTALubZ6Zp/cHlfgSzkNXOYmXYgZpUTDAB2fWW
         wJLy4wdNjjwd7jZb5B9kHJKRHcwxOA8SVkvxRebpOUvvWkBqKuNcVhVOIradAhzUDnfY
         ldJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764763059; x=1765367859;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lmmz3wGYuAOnOg8QMFr0ARgUibgo3L//u7jYl7HIUsg=;
        b=LUO2oqrdBhHMNgUs6sDePrQPg34PGtp4tBkOkWIC3Rzr+q0NQNMZcGq0xO+RFYS5iH
         t2KragbuEUGZdO6ZMeAw6hvBq7UbYrBHVVSYkaOKWssnmw0pf7GFQ3bn5tAjd8Q3EVX/
         ViyzaK7QT2USvuNQUlLOQG2j1rShRys1xC/QzRRdQyfMtbPtlfnSaZG/kAi/sG0X1nAX
         fV33GloKraNHE3sMWWarfhK4PY8bxq5rk0FuL70mMdG5V62KnE+QfLlm3nWZJfSqTEn1
         86TbvjD7SbM6sYA8JrtTX3CPNvg+ImKDixAskWyhDeSZz70CVXn9X7EeKlLSujARyTaR
         xflQ==
X-Forwarded-Encrypted: i=1; AJvYcCWVW8ZAmF6dEvgqInTyEU5NhCvCWQn+btsTvcRRbAh3Vk9mnDwldojWfR0hvLTc9+WAy/R3KcgaophL@vger.kernel.org
X-Gm-Message-State: AOJu0YzEdjJw/2wL6gB0UsVOETQB+4/xIp1E0VEbYJXpd8vh+mRdC5+n
	SYkCPbPnv1Nw1abafCRzU26FaBYuviPAOHswWaffSz6mNhPAQBGrzkm5LN/CXAe9FWc=
X-Gm-Gg: ASbGncu9pj7Gmav37/1BqNzQuRHntri96PChTZ+Af95oTLauYZxsppLinUSlwzlBK8k
	rKOrCo2MIE+mb8gXUA0KKxD5IVSA+iC0z8MhROykZ7RLxWg7+Ru51jEyahhDVKCUqbyU68dsH3I
	WCuAjEMmKanWxayFa08stWUTnvqjusOV3E5fYyQKzcnUDZApoECAwLGWGTv/JhG4/8znYaRFXoU
	OOKHO+Y8cR6l8U49FDNndhZX4G9LVnS47VzxsQup8Zif7ZkPBuOSj2R5KfZ060PRe61AP6P32c5
	ORFJpqfN9mw0QtWQCUAyySVPxv6Yj0bvLDTnO1VU3AyOpyrHm1drx5aMhsT3xBx9PWFtGGozXgS
	iyRxNop2drEgvIfoyZtMZsAFeFKUdgS0uU1WuJua8RAaxBAMYXilg9dK5eOwYXw6l4KqDnkhn8J
	wgDUc09g2h6rVNFmlvukJkiJdCmkoG+KOb4c+Ena3uXzZRt4Q5V+O4ZyHNu4vF8KWoxg==
X-Google-Smtp-Source: AGHT+IGe2OQoXICFOyfigwG22HGnS3iFhKdt6cwRjTvC1hJEg3a+rMZEtqZi9qXjIGMgEvHgF14L4Q==
X-Received: by 2002:a05:6512:3186:b0:594:2f72:2f78 with SMTP id 2adb3069b0e04-597d4b5efcfmr316636e87.8.1764763058582;
        Wed, 03 Dec 2025 03:57:38 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-596bfa4406esm5630377e87.66.2025.12.03.03.57.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 03:57:38 -0800 (PST)
Message-ID: <5c163334-2ddd-4e52-8add-30652b34dc0f@linaro.org>
Date: Wed, 3 Dec 2025 13:57:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] arm64: dts: qcom: sm8550-qrd: remove data-lanes
 property of image sensor
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
 <20251203040538.71119-3-vladimir.zapolskiy@linaro.org>
 <9252338e-c775-46db-9376-53002edf429a@oss.qualcomm.com>
 <40980eac-9e9b-4293-8986-bff46f30a50b@linaro.org>
 <94d6d26e-8009-437d-af9f-0a3c69fe8ed3@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <94d6d26e-8009-437d-af9f-0a3c69fe8ed3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/3/25 13:50, Konrad Dybcio wrote:
> On 12/3/25 12:41 PM, Vladimir Zapolskiy wrote:
>> On 12/3/25 13:11, Konrad Dybcio wrote:
>>> On 12/3/25 5:05 AM, Vladimir Zapolskiy wrote:
>>>> Samsung S5K3M5 image sensor supports only 4-lane MIPI CSI-2 interface,
>>>> which makes the sensor data-lanes property redundant, and it can be
>>>> safely removed from the board dts file. Noteworthy that the property
>>>> value is incorrect, because conventionally lanes enumeration of image
>>>> sensors starts from index 1.
>>>
>>> This seems to vary between sensors
>>>
>>
>> It should not, from Documentation/devicetree/bindings/media/video-interfaces.yaml
>> the clock lane has index 0, data lanes enumeration starts from 1:
>>
>>    data-lanes:
>>    ....
>>      description:
>>        An array of physical data lane indexes. Position of an entry determines
>>        the logical lane number, while the value of an entry indicates physical
>>        lane, e.g. for 2-lane MIPI CSI-2 bus we could have "data-lanes = <1 2>;",
>>        assuming the clock lane is on hardware lane 0.
> 
> I interpret the last sentence as ">>if<< the clock lane is 0, then data lanes
> start at 1. I'm not sure if the spec mandates that's the case though.
> 

Well, that's the absolute common practice for media devices, which I'd like
to follow without a deviation from it or introducing a novation.

The dt bindings documentation of this S5K3M5 sensor device describes the value
of the optional data-lanes property accordingly:

https://lore.kernel.org/linux-media/20251203040241.71018-2-vladimir.zapolskiy@linaro.org/

So, I belive, this change under review should be fine as is.

-- 
Best wishes,
Vladimir

