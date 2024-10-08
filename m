Return-Path: <devicetree+bounces-108999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DDAF99947E3
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:00:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 122701C24A21
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 12:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E32C61D8E01;
	Tue,  8 Oct 2024 12:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QZp6ciEE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C08981D54E9
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 12:00:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728388839; cv=none; b=I5Gi2fzqUSH666gAncI1GIIuoFKw0hl8cIvaoX19SBUluPx5FWWuIkUHQgom9k341WnCrk8lsnVF6cSgVh2WvQUrdhTjfj1SBMx7NLb6mbTaU/kmFsXIFU4T6Z0+S89l2ZLqgO8uWEqYWQ8wyhIZsCIsymV53HvMmy+Cq4c+F8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728388839; c=relaxed/simple;
	bh=HGcC7+VY91jM9PbU/jtXNCSHPq24Ef2KCeukkznljEU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FkklP/JPgZFspAGXnrbuil4L9kGl3p+MuN9Y0bC0gE9NiWcY4bzC68LtOIdbZmbtsDoM+56OgNl1Bze2e4E5y3Ji+gm/RjEzuFg5q+EWP3Ezb5FNYON4mogywm8qSr3/Nv/zeoDDqhXWXT0WHyDKpTNmfmsd2Ih5UjHfmHK9CtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QZp6ciEE; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fac4aab70eso1810611fa.3
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 05:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728388836; x=1728993636; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wy3ZB9kP2gzcnlBFACJDVgdVUyuV83Cv1jwMAxXcqpA=;
        b=QZp6ciEE7DQght2FUAydelFM2EF2c6kG51XcrHjpCvNI62tNVv8k9qTz+GJDrSQGF1
         IvoyGoYnTEguArmA8vGw7w75vy/GureuPrq+ADKNyJqy1e56BvNYnrHkxBmXS7iVsq8E
         cjeF2nesoYtWB1aYdtNah21LxCxJ6URIhYOLs8sYCo80ufEvPAs+pSZhmuRW7YJCs2EK
         Wit8fEsjU4TMV95DnSs4EXKS+NEf/rzsrmvdAlx83sa09aTIT02Fdw0ELVWh8v9KQ/F/
         uPgvBYnZQwny+YKgXqboBN6FXX7aDXlQKyhYBqsvCWF7N1FC8kIAlF0joCg/4N3moycl
         qPqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728388836; x=1728993636;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wy3ZB9kP2gzcnlBFACJDVgdVUyuV83Cv1jwMAxXcqpA=;
        b=mO+7LfXVmRq+JNnzjbRfsisE+Qjcwu2AywSjlKyNloBkXwjChZRaRCVJmDGRznC5aw
         yvjv7+5A21xhCiFTXIB3nj6uWco0rhSj4fqOcXp1kNEQDwH8ssyyOBZ/tOUuYR/q8/ar
         76v5NXOy3fHElcP6zAMp7KjamHjUrijqcAu2YWhEF80KGAlOs2wYNBR77DZ5SwUE6czC
         dJc6D4xg76iU1g1U88M8rCQ5BiyrgMX3tH/34MyPZyjs5vJhQMy67yx8t0hEuE0gm2VW
         EC/LQHe++MjcNs0t+GmKNsvEPz7bSK7P202R6p/Lqv+9k3hu6iTQoX7x21idlKZSeeq7
         68Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUWbDF4jGqnNyqBroWW6nosSaNSnVT547xn9CQbFQpu6BxrBQcIBbuquxnJsiCppucsV8RCpBtKcUgF@vger.kernel.org
X-Gm-Message-State: AOJu0YxfmBR0re78F4CKcSA2IXxhv32OiVvVqdzuXc4AMwJtDA1kTAqR
	ZRK+GvUeg7b89EDBAL0tQjWRT1qvTNSRX3IU2tsF+2CD46mqOyAZ/1g+BFEad4I=
X-Google-Smtp-Source: AGHT+IFu5Dr2I7al/DxAhjX9t4A2v1hWE9wdfRqfKCp15yXf/s2VQgi5jVFxvuIB4EgUK++HDAqY5A==
X-Received: by 2002:a05:6512:b29:b0:535:6986:9806 with SMTP id 2adb3069b0e04-539ab856991mr2131126e87.3.1728388835774;
        Tue, 08 Oct 2024 05:00:35 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539aff283a6sm1180276e87.287.2024.10.08.05.00.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Oct 2024 05:00:33 -0700 (PDT)
Message-ID: <c18a92f0-5824-417c-94b2-ed10f4580cfd@linaro.org>
Date: Tue, 8 Oct 2024 15:00:32 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: media: qcom,sc8280xp-camss: Fix
 interrupt types
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240923072827.3772504-1-vladimir.zapolskiy@linaro.org>
 <20240923072827.3772504-2-vladimir.zapolskiy@linaro.org>
 <datahu33nmsser2p4fb2hyncsujtkwaca377ivwmpc6yj2naut@2sjsbebfm3gf>
 <3f87e855-8779-4df3-8f26-e3d2b611d3e9@linaro.org>
 <313667a6-afcd-44cb-a6f6-0d550e8f68a0@linaro.org>
 <4bf490cb-228d-4f01-a956-cacbafa94e2a@linaro.org>
 <27f39cda-932c-4b79-84d4-be78d266ebdf@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <27f39cda-932c-4b79-84d4-be78d266ebdf@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan,

On 10/8/24 14:50, Bryan O'Donoghue wrote:
> On 08/10/2024 12:37, Vladimir Zapolskiy wrote:
>>
>> I don't have access to datasheets or hardware of sc8280xp powered board,
>> someone may either verify, if CAMSS level high type interrupts are
>> supported/working at all or not (obviously its current presence in dts is
>> insufficient), or check the SoC datasheet.
> 
> I've tested both as was submitted and your change.

let me give you a correction, whatever is found in the CAMSS device tree
node is ignored - unless you meet the problem fixed by this changeset.

All what you see and on any variant of CAMSS device tree node is
rising edge interrupt, this is the type requested by the driver, and
I believe you've tested the driver.

> I _always_ test my patches. I'm not sure there's a datasheet which
> spells this out to be honest.
> 
> Rising or High can both be justified, its really down to how your
> interrupt controller latches the state change. However I personally am
> fine with the change you've provided because I trust it fixes an error
> for you.

Please share the change to the driver, which you've used to test
high level type of interrupts, shall it be send for upstream inclusion?

Such a change has never been a subject of discussion.

> I didn't try loading and unloading that module but, since you did I'm
> happy to Ack the change and trust your work.
> 

--
Best wishes,
Vladimir

