Return-Path: <devicetree+bounces-100610-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B759F96E40D
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 22:27:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41DB2B2345A
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 20:27:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 445C31A255F;
	Thu,  5 Sep 2024 20:27:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vQm0rNOz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB4B192D8F
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 20:27:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725568027; cv=none; b=CKotg95luv6SvHT7+5NlCC4hBuqRQvKFcvmW3Y5FkQZExwK82XMHzp/rYVnqq1nCZByFUUNFD8MpPvu4v0yLi144w5prN2fZmlxP1mKv9rkPIu6hJBRkiKSo16FQBIqzwH7SspoWwpGqqSQdHN4hEm8OuL3081qXbnUNPAr2DuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725568027; c=relaxed/simple;
	bh=p5DsupzSsGvvRpX1PPDFJLThxGvWqS+StMgVT3qE2ho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RtXQH1wln4nHfXr02FfS61PGDjGMQVwj1HgzpgwNerlHyygthdNqGlmY+xfvmVZa0bUJ8iwieulrWGjbstl/5HVUkCAN5mr3ySE1WBUE05EUpG9Z/0BjmWkvFZXcLj9UVR1UZbn7vcMVK8/AZSoZgpr5bAVau1uXfGDUQHm2i4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vQm0rNOz; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a86984e035aso182763566b.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 13:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725568024; x=1726172824; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=voy/WFgSekM1DOtV4ypJu5B6Ekd49v4BaFlj8CipYxA=;
        b=vQm0rNOzi/meZsHKNO4aA3N8t8qmz0pkcLtnzWTQMI0kOftS9egRoZ3fTyKd8/wnfQ
         DiwGFm1W2X4dc2kF9JAJGdMITpgDbHCHgqEux8kzcM45wY7IRdSLVL7CewWJaiH8ORku
         VZg3HVUR2TFvPoLYeg9Z/r7uoBsTd+veR3c5FoGxMG2pUDTrUflptZVD4echDUYWBZyo
         lV8Zifep/+t1HpoXUr1a7bay6241pVnDzZCKraw7m/UbX3SNzzRxrrcMjw4JymaJ/az8
         BpEgBgT4FDfl8bqQ1wkZVAcckpffT8YjlRyy7fvd2xQuLJGoVnajwV5kUya/b9RSyFNf
         Mjbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725568024; x=1726172824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=voy/WFgSekM1DOtV4ypJu5B6Ekd49v4BaFlj8CipYxA=;
        b=YO+2MY0Z3MeTrM9EN2FH4UlaD29B7mbEfpKLr8zNRZTh0iEdTkIebiJslQ0pV9ZPm3
         VNJcwVwZahyiYT3up27CWWZzI9DB0IGEQdL6n8Ohrci81eZsyCeLeZ6nzxjXJ6SE75IP
         Wyernx21x7E7CqevOvfdYhs4xbMjZMJU5VMW0pWtql6iUwDIsn6j/GsxtBdcp3EnEB0R
         uAYUmrMqpGD0LMMaioaWO/E2RsxTip7YmxM0146KPal3wOOZW3R6IjxJ9j/uKr2gyLj8
         i8j/m51NsSzgS5i3CNoq8sBP/FsuTZD+gf+O5Ca8p/F9Txxup706vgQYdhPVNoM/zygC
         1/Mw==
X-Forwarded-Encrypted: i=1; AJvYcCUw0A3EbxbIgzAJwCXBj70uDjf7a11dALaI1XZiXQcDCySTVkV7qGG1TgvbRJCoQU4ioX8ZCc5T2ZXG@vger.kernel.org
X-Gm-Message-State: AOJu0YyoH7PE4eLBDh3zA6GB9eCgjYCKeF7DyKHrTwHIobby6mWZwa/S
	VZP+EB7cyFlfkYgZMr6Ad909B6XQNcYc0DnNYYknCs6+6/3K+iazzZ4Tk2WoT6k=
X-Google-Smtp-Source: AGHT+IFbTaFVXqXyWB+fZvkUz298Fesm8tPV4DO+WpHNCYmPOX5uK4AKFON0clkI5YRb+CNAzrIkUg==
X-Received: by 2002:a17:906:c14e:b0:a86:ae37:63b1 with SMTP id a640c23a62f3a-a8a887fcb95mr17550466b.43.1725568023723;
        Thu, 05 Sep 2024 13:27:03 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a61d08e22sm179795966b.0.2024.09.05.13.27.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 13:27:03 -0700 (PDT)
Message-ID: <09d07962-1a1b-4df3-bbc1-649f9de7a70f@linaro.org>
Date: Thu, 5 Sep 2024 21:27:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/7] Add SDM670 camera subsystem
To: Andi Shyti <andi.shyti@kernel.org>,
 Richard Acayan <mailingradian@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20240904020448.52035-9-mailingradian@gmail.com>
 <tthbaop6bkyvebpibiyvyct4khrd5o4apdbipqdthnidxmu2cx@m726xv4ocblg>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <tthbaop6bkyvebpibiyvyct4khrd5o4apdbipqdthnidxmu2cx@m726xv4ocblg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2024 21:09, Andi Shyti wrote:
> Hi Richard,
> 
> On Tue, Sep 03, 2024 at 10:04:49PM GMT, Richard Acayan wrote:
>> This adds support for the camera subsystem on the Snapdragon 670.
>>
>> As of next-20240902, camss seems to be a bit broken, but the same series
>> works on stable (although it is much less reliable now that the CCI clock
>> frequency is not being assigned).
> 
> I am not understanding this bit: is this series making it better
> or not? Can you please clarify what is broken, what is less
> reliable and what works?
> 
> Besides, I'm reading that this series has not been tested and it
> makes it difficult for me to take this in, considering that you
> are adding a new support.
> 
> Thanks,
> Andi

Actually I completely missed the statement about "much less reliable not 
that the CCI clock frequency is not being assigned"

@Richard - what does that mean ?

---
bod

