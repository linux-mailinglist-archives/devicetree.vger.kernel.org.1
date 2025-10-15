Return-Path: <devicetree+bounces-227353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E57BE0D8D
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 23:43:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9317A4E5DE2
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:43:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133FE30171D;
	Wed, 15 Oct 2025 21:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CNcsUy3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA923016F5
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 21:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760564614; cv=none; b=PO+sxhR0UI1Qm7ocuKkSKJT5+3u4633UnQKXasOGXaOXhUbk9NR3xOsj5YOQm44S1o5VDUdDfVvV3p6vTEdraznKLDi+qrA1b5cU7YUWxUyOePFFj/cXFlia7Urh5Z0Pyfk0SsUAshZDuaO3kEiIgQqJ5SvDCITdw8YUULBuAKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760564614; c=relaxed/simple;
	bh=AoGR0N/WRa1KwSM19W6VN8WXSjWSD6KuRKpcEKai8Iw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ruk8L3Bq+QZIyEh54Ea3Pvs9BAQoUzdDOjXiPi8xSS+0GtPcDRg42Xfh4wUHQTx6bEgt2dbDvscFYYexjtOMHWd6XrxJBClnqYQULD+RoiRiwoX0eCB9a7GwIYZ6KnrBa9G3D1fI4pRvN8MfsVb+stK0VFTxFRGh9bBbaqpECdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CNcsUy3O; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3ee15b5435bso55874f8f.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 14:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760564610; x=1761169410; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zDF8d+4H3i2iv4u1yiFtrqUVQxc1Kn/G01hl0muKOgA=;
        b=CNcsUy3Ol7xzE8L++OkzH05UyK7SGRYPqrU4282wKBhBI2fRgEKGcNutEjSlc91KE6
         Q0uCV9hE6bWYje+NKSLt8Ny6rZDc+Ac4QySGlPCVaW1H4TafOzVzSH7yQIA9jbP3UpkV
         Ufi5NZHL0Xv15ZRW2U8ePR1KPv8NmAuii7OVA9MavsQdRi5WvY0xU2t0dI9w6a4xSac0
         s6NAay1hscAH8ibWpbug2wyG9Ox0EX4Y2+IC6f9n/MKAUWSOqOzjd27vZXnrqGXrmxpD
         lm9IS0ZEYwqVXpqv3LNU0AAsWtfYQwR2yJAz3nVjFbM1i15QRAOUmxDssITWIVR6krEm
         igjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760564610; x=1761169410;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zDF8d+4H3i2iv4u1yiFtrqUVQxc1Kn/G01hl0muKOgA=;
        b=HPOTMjmd24Iwl87wGEDcewbdDkN9vvFJHYFAU05p55Ilyud4uwnMtnnvQMEZr8n6HM
         ZwaztDIiEeeHTjf+S0xY4Rfl0Ei+jfo2coNycQBgYYb2lpu4/vZQYY/WWhCU5zZpBAYk
         EARmLlnHjnCkgrMgjJPzsIaDLdyAcUJ64FNz5xIhs/SNXQtSp4xGneMc31/PhCRnZa7n
         RBXWvH0HK/MUxwRfx5BOUUXKXMnBWbm3mfyQM3dCw5o4bHtsoBBOgZKDWCNM25Sftjfx
         bMtT3QZwJKPG8onzUvnVc1OVakbaQAKmpdJ9SL/YopCNZHp15AfgKSffAf2PVaRBA2jg
         YEjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXKoBxF4PObL7AhCgl8IOiKM4va13BLX4ihXb0EvbJXkjCZ+4FKYF70qsoZBv2Y192lyj6kFjD6fAv/@vger.kernel.org
X-Gm-Message-State: AOJu0YxDbG0rqMOuU6ZZ2rjASFDXkvDJR2d1aCuapH78FNt65aYbvKmH
	P84Y+WomtYxY2XxHLh5W/ulkvsqHcqtD7TZzFR/D9ITC0qRccfUzBnaK2/mQ6yLWuKg=
X-Gm-Gg: ASbGnctLi32gRNLTUqYAG4D0xnIAqNxCJ4yBXFv/vD0tz8JwmI1ETnQ1/Au3i96RPKy
	QcmR0VSL7pTVrrF7DZVcqNBQ/9LHLbu/VI0RHMyLDz0idpYPsfCmx4cbLxONMqm3rcHuixkP0Br
	3Ma6DOU8paUQAIFYUf8XTdAy/KTvd6Vz9X8QMM6rdhSMy0rVfJ3GylehTUPyZtymmuez2y37BNv
	djWvXXtQtHXilWrvTfQKuWErk8kuvXpDpChjko2j7td7OOGWuLh66AKxLbAeGV5QC/BsK/L+IYm
	rOC0uxNXSF+/+xLfI99t20qttHWovE7+27GY4vpsPi+fOS5+AOVhpNUD4DK+z3E++jjnBaMFvUy
	2lfofoA0HABycMXZpTAGegd7/pE0pipeHEcAzcEJw++ytb7GSjSlU1/9OEPgOpaOb1yYTrNSePF
	mk70WqQPhyGxUKVQYaHxhxc9ercy/MH/hra04IKGS9LinUGcvJYz0IwAZG
X-Google-Smtp-Source: AGHT+IGnQKKNQd7/bwUbO/GQuYepHvtuUzlr5o5rKuZYtYUxhm0e4zkPUt4aDvFWg6NhRrSxe6cX1w==
X-Received: by 2002:a05:6000:310a:b0:414:a552:86b1 with SMTP id ffacd0b85a97d-4266e8e48ccmr20004387f8f.63.1760564610303;
        Wed, 15 Oct 2025 14:43:30 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426fc54b32dsm1314209f8f.30.2025.10.15.14.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 14:43:29 -0700 (PDT)
Message-ID: <0b6c157a-3d8d-4251-a704-31f8369f6a4e@linaro.org>
Date: Wed, 15 Oct 2025 22:43:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] dt-bindings: media: camss: Add
 qcom,kaanapali-camss binding
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
 tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
 yijie.yang@oss.qualcomm.com, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
 Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-2-f5745ba2dff9@oss.qualcomm.com>
 <dce1018c-6165-407c-8f3d-40859cb36b11@linaro.org>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <dce1018c-6165-407c-8f3d-40859cb36b11@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 15/10/2025 20:45, Vladimir Zapolskiy wrote:
>> +  power-domains:
>> +    items:
>> +      - description:
>> +          TFE0 GDSC - Thin Front End, Global Distributed Switch 
>> Controller.
>> +      - description:
>> +          TFE1 GDSC - Thin Front End, Global Distributed Switch 
>> Controller.
>> +      - description:
>> +          TFE2 GDSC - Thin Front End, Global Distributed Switch 
>> Controller.
>> +      - description:
>> +          Titan GDSC - Titan ISP Block Global Distributed Switch 
>> Controller.
>> +
>> +  power-domain-names:
>> +    items:
>> +      - const: tfe0
>> +      - const: tfe1
>> +      - const: tfe2
> 
> Please remove all 'tfeX' power domains, they are not going to be utilized
> any time soon.
> 
> When 'power-domains' list is just a single Titan GDSC, 'power-domain-names'
> property is not needed.

Each one of these TFEs powers an individually power-collapsible TFEs.

This is also so with the other xFE power-domains on previous SoC 
generations.

You'll need the TFEx power-domain to process any data on TFEx with the 
'lite' versions being tied to the TOP GDSC.

So please keep the power-domain list, TOP isn't enough.

---
bod

