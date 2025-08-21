Return-Path: <devicetree+bounces-207384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D96B2F598
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 12:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD3C41CC5E12
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71C18305E04;
	Thu, 21 Aug 2025 10:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cNv6Ofge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC7E2E9ED5
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 10:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755773273; cv=none; b=NuKbNZItFqTjwC58nChBoiRtIhmK0sjDd62FVqsYCHjZEH4WSQsvLPd3Q4ZrEhp/CZUJsrtL03PaFaMXoYQzs/oQVOioFfrPs5VJ57jQbL5hiMr7NbwEFP2fK2l0qEpmG2nfd5AVaM+0yU6OfY+loTw6fqvkEN2m+Z3MXzMJqBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755773273; c=relaxed/simple;
	bh=d6mlwhT2su9qa8vix4Pan6BLcJvWfn4JYlKfBmKvXS0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f+QA4VoJZFY9XaP5sSy9voGXQcGMu25xVQab43M4p6kA9KS9RPOapQvRGyEuidZHbE37Ra7V5qz8P0nvDyty4eX45mhbzQVyLKoCs2cpzGL6bNogsErcKzPHOuPSrICs6WQgVJyl3P4rWMXNgVhD1Ua6RG5ivj3rd7oDBj3Tqqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cNv6Ofge; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-afdf5843940so14742966b.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755773270; x=1756378070; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=dVbp5VEevIzU+DOmYmf8+fiHHpxEQNhrQHq+gJJCu9U=;
        b=cNv6OfgehJQH6SN2/yRzwROwput5m0FKZakJ8DGt9C+WTNPd5SFeRZwRriED23526R
         SmJIT9exRLHdZ9+zd4lMz3WK6xdKPparDWInTghRJHHrjkHnDnXxqavG2q2PvyooND0g
         rOUHrt40kcNOk61nxYFY/OxpBYpJ3gNnBL1XQywIU9qR/SnZgxxss2hVc8tZkV9R0mdl
         wFfETOnV1yB/M0yNP30WWBqVJIbPj/yOv9Bq1QecMmX7fAhociocQtNqjNL37y+6kS/q
         Y+XjzPUNULdTZd7vyEOKa4anUQSJoQpScJ1zZPrga0TYX/rc+/UK/cOM+8moie1R5+Lr
         /MAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755773270; x=1756378070;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVbp5VEevIzU+DOmYmf8+fiHHpxEQNhrQHq+gJJCu9U=;
        b=ET4BSGkxEa9kDRDAC3UptxbolF1ANLLx2TbQj3cT5ELcUMUuC2SkX6HYAjXdIx4TNx
         42YBSDPX/mg9cnLBNi0BtRU3pUe63Vuc9howa72+WX8z6MnWjGOQVQJWmlfdEcyyYx7u
         zpZRE5Ml7a0y6QsBk6YJ+wv9nAr1zXlSsaVvE3GwfbSeQqWaILzKJK4L2hcvtq+MnqKp
         He+VSFhQHU9ACWXZlIDDQvoo4CAySFaMIonZA8XVSkYLe4aaNDQyDLl7Z1/Y2XZWbNuu
         AcMeXRLHvSojw1xybOLanKDbn7dwveconnhXabr6MpDv84YCiZh6rlR8kDS4DZ5vW77d
         g6lw==
X-Forwarded-Encrypted: i=1; AJvYcCW1bjrm6BoLcZKzV7P58H+XtrPoEaIL2Rwj3FFMqrj36QB87HeVUeiJahZ7RUb7WGHvl45CHxs1xuKV@vger.kernel.org
X-Gm-Message-State: AOJu0YxGPz4zmPJ7KTkI+K9ZWk5X+8fPIqtzohRT710sqB+kJpEJJubY
	H2PLn2AEi5PdtSILxvzx1OoI3mU6JXf1AL3afKSsgm1RPjiedSrlS+txhz4lkknoRXE=
X-Gm-Gg: ASbGncu9X6LV22Urj2IBti66PoeQB0pWvWWLjGG4TqgVxzkjM5pSMiZGoXMfUDc7OY1
	fM2bLidho+9e3PohHr+RjPsSSTB72omdWezej2CvcNS8Q8aYBLz0APdi4SXg7NV+AvCU5zV7/uB
	lgluaGOXF66gIDg4IlwGEYvWs5qFzuMcfCAA4YAc76XlX6V0iiZhSX67600L6uFyEk6Zxg/eBmG
	0rn78tF3aDahoazZ0byNwN+bQojVVM7UTcL8H8kLgnEUcYrlsbMPQRc9CvLKOFB5l85o3gzs8+m
	5fXb5xvgHhWgOoPmEpxHByb0IeVC24R8n2hQEktPWeawFp/XBjKZQK4AyvwCoP3wsuYhqjWJ7TQ
	Oczz55qRosdoLAVMw4rSHHX5EEdnd7tS4NXmS2/wtr94=
X-Google-Smtp-Source: AGHT+IHCAOX4dEbN4jo7tRSriMB8agTClON+dVRCCbViFG7GF5YhsPbQI02bBpWrMm6OfuU6BlXntg==
X-Received: by 2002:a17:906:f584:b0:ae3:63fd:c3b4 with SMTP id a640c23a62f3a-afe07b03c9amr106481966b.5.1755773269885;
        Thu, 21 Aug 2025 03:47:49 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded2bc3e0sm375390866b.22.2025.08.21.03.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 03:47:49 -0700 (PDT)
Message-ID: <1b5425bf-a84f-4bc7-9975-fb7b1260df8c@linaro.org>
Date: Thu, 21 Aug 2025 12:47:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750-mtp: Add speaker Soundwire port
 mapping
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250820141233.216713-2-krzysztof.kozlowski@linaro.org>
 <wbjvk52opr574rlmsd7whmtfcrubsbcufsthqpmxdejbcjhtv5@mbz4hj6ronwl>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <wbjvk52opr574rlmsd7whmtfcrubsbcufsthqpmxdejbcjhtv5@mbz4hj6ronwl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/08/2025 12:37, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 04:12:34PM +0200, Krzysztof Kozlowski wrote:
>> Add appropriate mappings of Soundwire ports of WSA883x speaker
>> to correctly map the Speaker ports to the WSA macro ports.
> 
> Would it make sense to define constants for these values?


I am not aware of new findings here, so same answer as last time:
https://lore.kernel.org/all/dd271e8c-e430-4e6d-88ca-95eabe61ce94@oss.qualcomm.com/

Best regards,
Krzysztof

