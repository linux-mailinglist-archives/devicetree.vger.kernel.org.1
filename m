Return-Path: <devicetree+bounces-144169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B22EA2D1C2
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 00:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C65816C69E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 23:50:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96CB31C6FE3;
	Fri,  7 Feb 2025 23:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NkwApY7T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B03B91B85DF
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 23:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738972203; cv=none; b=Z9hVoeRUFaxxwRYBMzlRKJTi4Chr+bMTX8k3Bm0VKHJeGAontrMBkGBauEBToVgVGy8gQt2My7rwe2ZtBYPNzZDRhczy24DDM3+bOHcZSgaIbuuVzf012k4yEGWY5+JLS6oPGNAgBZJmJSlMzem1EEtku4cgqdE+OhNvZtFfwT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738972203; c=relaxed/simple;
	bh=8ACIYWoqGk3U4VYRz5tDjXeMR9/oAC3lfhPx+Efnv8Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Un4A7OYt1KPSwJ6eFqnem5KeRbWrSO09+asQk7+mfUA3R/K4ANHpH7cIViQhL2pAm82CP7Lx35NnYpXgHXfAZIRgdNTtcziui/FGo1ESlRlN7lkegwVKiKuThkvCI1sZ9YvNKYN/LYqBzp5HL1sXFKLunwTc7Hzxwcqp3QIobwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NkwApY7T; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-436a03197b2so17601545e9.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 15:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738972200; x=1739577000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uPeZcwASPgFFoWm3U6sdFbL9zCYU4rEILtPd8B2AQBg=;
        b=NkwApY7TtbZnjKogW2vfZokYvTjCiASkkBjSUH2VIrY+wlQ15W5WWefh2iJZUI/uu8
         Z8w1FNlVXqXUs4K3SysxsbPjCqO2+EQZwybDc2gyEeAGPyhrmedJ8QQ9LIe93ZTjguOW
         /U1nu+7ooyDyEFDqHcHis+nd66Z7rGsQG0iUdvR+BtNpBQK99850Yv56JgBtD+acGXKt
         9jupQxxqn/xqwiv2LECNnWrh7s/FgM0KXTypozfdRBVaxU5Br6znLB9OZRlXQ5RGUoIf
         KeVDp5c8McTejNq3uQMGTKDRQa8jZ1omgMivIvYNYtbKcrS6sfBRaRSdbydQmpTN2i4q
         244A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738972200; x=1739577000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uPeZcwASPgFFoWm3U6sdFbL9zCYU4rEILtPd8B2AQBg=;
        b=jkYc97mGgjo6NiYQJSDKuQhBB1S8jecIR4itJ9scGWz7JOljDVCzc47A8uifJ3rV85
         C6dNBwE0x9z286lRxYMfTOlDeeqCKKeOtI9k89OOoT6cWJRpMPvveZ/gF60lBAwvkUKJ
         hqgJDU7m7MKG/4TEXegzgWTt2Nm56UYIeEadD5qw4h7sUh29w+eqwQVM1lpBC0CZsbML
         X7GJT5p/0MhdlFSV8EYEwvvXjRmAbRhtykid/9xle2NJMhKWmOOcDO7IONjXFejN1M2Z
         ebhMylZSjfx8ojj3qJuL6ge9YV91f8T3ej6aeTXW+qWTeWYbTsef0k+D4Au2yPOm5Z4F
         D0Cg==
X-Forwarded-Encrypted: i=1; AJvYcCVleQHv6qq+vH/6dGZ4jADX8bBgytoKXzG+26mxAjd2TLAap2jCUd37h/rtmsfpjK81vlDz6ZkywV9v@vger.kernel.org
X-Gm-Message-State: AOJu0YzmTn9Eq5oGsxItU/by+K37bMOOMVDcI/R+HJD+OMcE74liHbSH
	d1efkqrOUjyhRjjpNkhWv9tL0QM5sjq0vrrtmSXko+CgJ2ZlF+sZ6Zk5pUcFeiU=
X-Gm-Gg: ASbGncsNY7ZlkH1ti7n2LZk4OSNIAzYnX+XuxlhorLjziW2x+bkdw41Y11x6trg3Adm
	CkXtOTcSXxjV1y+F4gsHK4bFdcYjuHtT1Wu8EA+LWJFx8/lToiTziyxC7xTh8um6QQ/6xzSA0Oz
	jyMbOTrK7SoVa3FcHS0maq0Ujh1AJ3VjLoAUAlYFyD2BoybGlrOEUBfk6e6Kg+DQ+vUvzALWp+7
	pbGCjcRWj7KGOVso9xwab/Ex+IbBU9RAiApBRyE7d+zlHc19nx3oG/CJgj9OE8ptS066YfLEL7Q
	KS+uWUy5PrIH8GoCbE3HFXg7OpIi1KR7d20JC0OeF7qJMzkvHDAlQRieTXQ0iTL268Q=
X-Google-Smtp-Source: AGHT+IG+y80FejGBBHTdW2M8Gwb5cSEiV0eYucxbfrROEnQ4LdFmSm6RxkIQPbvdHBVK3HejWlS61A==
X-Received: by 2002:a05:600c:1d90:b0:436:faeb:2a1b with SMTP id 5b1f17b1804b1-43924991f5dmr43454255e9.13.1738972199765;
        Fri, 07 Feb 2025 15:49:59 -0800 (PST)
Received: from ?IPV6:2a0a:ef40:1d11:ab01:88:c96c:f11d:1729? ([2a0a:ef40:1d11:ab01:88:c96c:f11d:1729])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbde0fc71sm5747386f8f.61.2025.02.07.15.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Feb 2025 15:49:58 -0800 (PST)
Message-ID: <a22afa6d-18de-4b83-ab08-6b23b9a1d927@linaro.org>
Date: Fri, 7 Feb 2025 23:49:55 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sdm845-oneplus: use guard pages
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: "Dr. Git" <drgitx@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20250207151706.45031-1-caleb.connolly@linaro.org>
 <85c31e1f-20bc-4e48-b179-e44ee8e1f816@oss.qualcomm.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <85c31e1f-20bc-4e48-b179-e44ee8e1f816@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

(resending from not a mobile client, oops)

On 2/7/25 21:20, Konrad Dybcio wrote:
> On 7.02.2025 4:17 PM, Caleb Connolly wrote:
>> From: "Dr. Git" <drgitx@gmail.com>
>>
>> Rather than manually define the guard pages, use the
>> "qcom,use-guard-pages" property for rmtfs.
>>
>> Signed-off-by: "Dr. Git" <drgitx@gmail.com>
> 
> I'm not sure this ID is acceptable


Linus & Greg explicitly allowed for aliases previously. Patches by 
"Asahi Lina" and others have been merged.

Ive spoken with the author several time about this in the previous years 
and they aren't interested in publicising their legal name. So the only 
alternative here is that plagiarise these patches which I didn't write, 
or i have to carry them forever downstream...

Kind regards,
> 
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>> ---
> 
> The patch looks good otherwise
> 
> Konrad
> 

-- 
Caleb (they/them)


