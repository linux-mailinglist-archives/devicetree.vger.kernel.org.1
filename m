Return-Path: <devicetree+bounces-100844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C7D96F25B
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 13:06:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B7C9C1F2111D
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 11:06:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 880071CB12A;
	Fri,  6 Sep 2024 11:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YQL3zS7M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40801CA68E
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 11:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725620813; cv=none; b=hufg6rLnZAT3T0WqJmCEVPp8STwNkL3VSFl4AJtqZ0eTYOEYUIBaeylhgJTLHQDwGeIj7IGHljhJyJN36fR75OAqJTpyhA5CnJjC9zUomHVRNDV+EPLhys5hpQ12XEih5WbzUmiHHI8uBzVXmdemL3sxqHl7mkMiv3cnAS3e30g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725620813; c=relaxed/simple;
	bh=h1vwEP0cuQMdp14/UgZnixBfsliTd6QLTnCPDcR39+4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sMBBtgEjMIMLxuZ8O5El8JDKriLPFYtJo/MQg2rh614tKL0G6h5Pq8M3LGK+wfu6cw/mnkxY4F71yide8COp1QmFe3LZpi4GPdKWkioXkt9MizWNkdxMxPJmrNQQboTndrPwVCwwNALbPlpdUy9QtiIx6x1BVD3RLo3/GXW845U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YQL3zS7M; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-53569ef26e6so281702e87.1
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 04:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725620810; x=1726225610; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ChifwwOuuB/6xRZn3gwrFiT8292fujEUOwkXOINezS8=;
        b=YQL3zS7MlzL25qOts7El5GxwoB7jYUVANnbHeCXfTdPRp8dMOMs+s1qcRrSy5Rzy2e
         cgTKvjcq6WikNiomL0jzbkbd3xW61zoT9iCjT8u7HSS4vwKjNU679irxoleCPN0RfN7N
         ScR/HXkhEWem3jCy2wM3b86BCrLOeTpsCqa9VsPsh4BorqfKcK9J8OK7m1lvgKF2ABuW
         p0uU8ApW76xBt3hSwCT9rAaClOqC5GzoiEO8fEEAGCTmX/uJzgrzu9b2Bu0DjO55xIqd
         4Ia7zT9nzOjb9C2CCdplXIfL+jI/R2j68Mcw+BTGJrYNOCgIXomiwOjtA46NueX/V7rd
         BxgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725620810; x=1726225610;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ChifwwOuuB/6xRZn3gwrFiT8292fujEUOwkXOINezS8=;
        b=saSSP16icpg8QwrEA5Z9kTd1fLlLVM4RyZawzw0+dydwBTQJ3Og5eUsdWmQ5UOXN3W
         Nwh2ZTB3wCDs8Gqb+7ZwyrRBbxg5jv+mMWRzrxbuB2RXsgoq6d4Y2CwE1Fb4q1rSHzvB
         HtEzIhAsRX8xbt3uuH8iuWYsrsp+MvAv7DJk1A8q7UKlrlOyxCDPomstmZbjnSBhNeVm
         4dhkuL548vJDRS89prtuvdCUMqmhIPEdfAbbEOeMzoxy0qnX8P4Q9WRQjnUlrEIuXRi5
         zgHu5/NfCTwg1rcUS//Ue8cfvzVNnA+tY45BJ9tw5ldOu6q3RjmtVrslnC+LPxFuXWYt
         6hAw==
X-Forwarded-Encrypted: i=1; AJvYcCVIezAYB2M7n8s4z3UCOWcPPcKNUS1/qFvXyqU1Bitwox9WNJO+5aTI+Ek8KE9a8P6MVCD3WqGFRf3g@vger.kernel.org
X-Gm-Message-State: AOJu0YzTZ/isQyBM8W2Swf17nvJ7WsmygDvdAGqeL9KhNkUscMtCMLQL
	vyF2YLqCBQPbguLncO4+8/MaJEZSDj2/wWe+ZN1Xz2VqTsbjzJWW7YoTz/6E7Ms=
X-Google-Smtp-Source: AGHT+IFHkE3GGJigRGGkkRpsgVp6469WptDk6ts3BfHIOiLZVXKNnY2eY3gLz53vzL007VIPxDGuIg==
X-Received: by 2002:a05:6512:b25:b0:535:4144:f9d3 with SMTP id 2adb3069b0e04-536588197c5mr723241e87.11.1725620809618;
        Fri, 06 Sep 2024 04:06:49 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53655aa72adsm257995e87.304.2024.09.06.04.06.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 04:06:49 -0700 (PDT)
Message-ID: <9f64102b-407d-482b-bd0b-b158fd7b255d@linaro.org>
Date: Fri, 6 Sep 2024 14:06:48 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] media: dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
 <20240905164142.3475873-2-vladimir.zapolskiy@linaro.org>
 <run5ffs6udya6a2opphkt2chenjgelnlmnjtyeyulinpuxacmn@im72ytiz33q3>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <run5ffs6udya6a2opphkt2chenjgelnlmnjtyeyulinpuxacmn@im72ytiz33q3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Krzysztof,

On 9/6/24 13:31, Krzysztof Kozlowski wrote:
> On Thu, Sep 05, 2024 at 07:41:37PM +0300, Vladimir Zapolskiy wrote:
>> The expected type of all CAMSS interrupts is edge rising, fix it in
>> the documented example from CAMSS device tree bindings for sc8280xp.
> 
> Subject: drop duplicated media. One media is enough (the first).
> 

thank you for review, here I've attemted to follow the established practice.

% git log -n 500 --oneline Documentation/devicetree/bindings/media/ | grep "media:.*media:" | wc -l
166

So 1/3 of relevant commits to the folder have the duplicated "media:"
in the subject, the reason is not totally clear to me, thus I've just
inflowed into the same.

--
Best wishes,
Vladimir

