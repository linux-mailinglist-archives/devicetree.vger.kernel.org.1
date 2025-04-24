Return-Path: <devicetree+bounces-170328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 116EAA9A886
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 11:43:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 342547B42E9
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:41:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310C42586C4;
	Thu, 24 Apr 2025 09:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sh38oJ8H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A99B02571B1
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 09:34:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745487262; cv=none; b=GlLGoj9S9bfNqipiAsvqOe/Mwmeaz/KiYb+Phg9yb+hyR26BG77SiEK1bZGUFN3YYhryGlnLq8kgTQDxJgOGZueul0N+CNlyJGo5e/Pbwk5mu8zPmzJhoOkzx8I5Ix5AjvwCEeUN4qJVysD5gxlJk/KPy1hBQyK5sVdQ5kHyq2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745487262; c=relaxed/simple;
	bh=W2UdDM9Gz5lK2YImWaOi4sawa1oA0xKXY9iJZEb34wU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jgkA2wUAR3fMGJKycwMS4e4ZlaHpx5gCsqOST8TQl4SKIS1mEitSlHJfYuKYaNmwpwX70VSjHjxv+c3gsc4lcrPFxQEOixJjgxrzR+FzKZNIqghvxurGRu6x/YaT0Fob1Sd60JjGZIqXOvJm9YLoWMCuvqsbLidn8th5ncb/1lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sh38oJ8H; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso6762205e9.2
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 02:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745487256; x=1746092056; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VtiMeBtG7DKFIw/MlZYPyAoFtecT0rBQL9R+KBs9yMk=;
        b=sh38oJ8HTQdcmD6Kl1dDD54+5NzOLoLVvGiC0pMAp3KIgu63cTY67XTGc53J6wHumR
         Mk8uWVJeftnvaDVNCdmIDjgjGt/eKnnxrZWxShWTTBd1q1NU3ON7ek0mOMN0vvBiN4sj
         2hn3wNf5ydBJHG1e5aY64C1jxRxOSOmoWbtj/1vqH2Eup6L3g9cAKiSGM8MSzzmRnXAX
         PM2Os5RjCBQ+ow42ovTFVUlkMNTDY9Gt4NwOOBVkUFBSJfgz27W/gGsiFwJcolBwjoRh
         yyutPLKTRldJ5ZjHeKo/tPD1AVAmEVTGZb+WzNxuGjlgGasykl3RnJAVcXueWZqcOJu/
         5vOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745487256; x=1746092056;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VtiMeBtG7DKFIw/MlZYPyAoFtecT0rBQL9R+KBs9yMk=;
        b=TWZqFfk7SqcYrOcPLmT+T9I+CzDXSZhRT2r5m3+Y0uqjFL0WFBtUFe4SwGVk+XxLAG
         ty6GgPd5tnJztQ+dSJ8Wllk1JZjk3SyefZjYE+d+PKejtr8tW6cKBTIY9RHOOKMhwAA6
         iV0N9p4FdbWTwxe0q1bw4ba2hfsPDH2oFbj2wd8/TTezi5zSCDu0vAqUcKlepZvPm1nx
         RjwANNPmoYw252ImBaETA4cYy347EHXUSvHH//SexpKVONG7tsljZV6ptuJ+NeWksW+9
         5DoNgrjdEhgyIeTZNlkKMWz6ZyaHmfDr/Hr8keaTQfglJAI7dG/x4KuGX98c3XxufwwY
         jQWA==
X-Forwarded-Encrypted: i=1; AJvYcCV1mRc+2dzofRFHi/84ZKkzkHUtJXkGWvXPiHiRqFGvGWLEaRhd3Krzm8eEEZaEEJD4T/M26DpozfB8@vger.kernel.org
X-Gm-Message-State: AOJu0YwLnvR/+ei/eZFx9NuCQjZ0O3uYnGWG92+vU6JSTIhZCYXI+l6s
	E8e2bx5fcZKhnay2X9pbW0T4UVN6594OFveGFYQ81i+wSZdBJIlaS3edCCOMNRg=
X-Gm-Gg: ASbGnctf5gWMDOIPzQBYdNWk2sxLAlY2sJ0zz3u6d/bnP7IIdY87vCusAcM85nb2mVJ
	/b7Tis5FQIS0h9mRZw5t+TGKocimnxmQcrXm6pJJNBP/r3L4bKpBHxXbXoKIGUUfkRqAJS3LEqS
	TrgLILWDbLa+bn+pWNiRDQYdcLEnBMvRRc/OBS1atLPYdNalrxmLEaHpf+S4Zk9NQgwZI7F/jqP
	bDgQIf9cmv0fBkvxELUiXQYlZN4Q/3gERlN/KDwqAm6ZDBVXdHKpxMRBBRKBjvZ7MeLyabnQgNK
	qrSF3hfh4/jKh0F9ySaVnOLpJkdfV6kgksYTFxm6LOs8ukEYHGUie3nVKGlviH/bq0lusE5HaXy
	MYdNlGw==
X-Google-Smtp-Source: AGHT+IEdBmL2+QOX0Fby79sdwrm+D04fNRL3vM33gjqGvaPB6uAl38Q5X0016d+zpuDYUabB6o/lJg==
X-Received: by 2002:a05:6000:4008:b0:399:6dd9:9f40 with SMTP id ffacd0b85a97d-3a06cf4b575mr1650020f8f.9.1745487255883;
        Thu, 24 Apr 2025 02:34:15 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a06d54ea48sm1476432f8f.94.2025.04.24.02.34.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 02:34:15 -0700 (PDT)
Message-ID: <54eeb470-cd90-4bc2-b415-6dea1ce2321d@linaro.org>
Date: Thu, 24 Apr 2025 10:34:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] dt-bindings: media: Add qcom,x1e80100-camss
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-0-edcb2cfc3122@linaro.org>
 <20250314-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v6-2-edcb2cfc3122@linaro.org>
 <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <3ec3fd62-bf21-47e7-873c-ce151589d743@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 24/04/2025 07:40, Krzysztof Kozlowski wrote:
>> +  vdd-csiphy-0p8-supply:
> Same comment as other series on the lists - this is wrong name. There
> are no pins named like this and all existing bindings use different name.

The existing bindings are unfortunately not granular enough.

I'll post s series to capture pin-names per the SoC pinout shortly.

---
bod

