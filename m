Return-Path: <devicetree+bounces-57573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C80D89DEF8
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 17:26:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AB4DB2224C
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 15:17:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6BF4137C2A;
	Tue,  9 Apr 2024 15:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cD5k3yge"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D082B137924
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 15:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712675589; cv=none; b=Txqabod28v59irEyWUEpsosJrqvlmsaTLt5PQRKm9ldX8QuBpaNxrg9u1mBwtbejxywePM87jzOi9YpTnIpCdnQ9S56ZCJo+8tsanlWffQ9zMQGD42lINxtDz93adUQ+Bcf0rQtuSJvScJkNiMWN3ubpLlFiKhOJm9nRKi6IVoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712675589; c=relaxed/simple;
	bh=svXoUn7pJbodvM/2XilyJXI5NmN/Wi+8SzXisEBwYbw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MvAGuWieK+bsCesJzMOfIReDHEDoTad7jhh7QBwHfIEmf38LLPyP45MkUMWJELoZ/3C+ZOM3Z1Xrvn+1ARuf0o5UKsU60t6c5DusktYZSJzunuZMnoR+hRcQwXC3cuBAL7esFhTgsdxZGc9bEQmgNW5RAVOb2wQjjbao+Amk7Tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cD5k3yge; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-516d2b9cd69so5179966e87.2
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 08:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712675586; x=1713280386; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MDKIxls1YcB1qEzw3C9K5gDjPIzcv/YgHt6CoWlWLcc=;
        b=cD5k3yge+H1z+kuZkwHTJYRgDd7G+ZeNpUcdBSEB942uetxRq6dIQVihdKKtMaLv9t
         KMuti7oaHMypkAQ3vPdtR0+9CR15v+r0RuFU6Q2ys1asPVdXx/V0p1JM/H9NyY/hbjD9
         xaXo1K/R67WTPZZ1yZoPFCqAmgvyFFwr7KS8r4JPaaOsMPM3CAKH98acD6w9Iah23ouQ
         L9jlVkkvxrR7zs5H0qlgbNr9QL/3x9i9CnVB7rL/X4l3E2FAeIk+4v3au+VpedwVSElA
         yxtOVQiIdUMA4bPR3A0ZVz5Co7b1BOJY2Ie5QK3wMp624YI0c4I1HYfRL0mekG0FZ7uM
         h+9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712675586; x=1713280386;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MDKIxls1YcB1qEzw3C9K5gDjPIzcv/YgHt6CoWlWLcc=;
        b=EwylNPqzQWtApHTI99dznlXaKsqbnwSgXz+P9eO8NT52hWrEIhg+nZmB+fg9QNUhYF
         wm9dje6/gMYWQXmUHod1uO+4Bo5nbczppPah6FP723uUrHgsvs+a7e0fz7WiJYbt0bI/
         lKKouclLvbAGbZuddHDBeLFoWULTlC24BQjJ6gZCu87U14T3BvgYYO4kYH5ypZZFjJ79
         DV5bJ0o70Al+YCa/OUALOSfs86/q4OtnoPtV/S/X59957RpbHcitNhPAmg93eks9jxrK
         vwZUNodujrAMGuHvQtwRcOmA/xtNSeKmqYSxWxBCsi1wp/kYB/hi/4mpG+wZe/I2EPdl
         tl/g==
X-Forwarded-Encrypted: i=1; AJvYcCVpw9dlDvO7oRM6H3300hURb//ZPGXlwv6cKAWCdmRrVc/w8PRcOFZVFZSNNcRA1vKJguSGDKydooJh46klWrmsbnRWXJDue5le7Q==
X-Gm-Message-State: AOJu0YxdE6gTR4FB7hvP7X5tQyFdh/mOgMKWC+fdWMYCH2DAdUG39fuC
	upOz4HK3YazN8bpTibpZRr4VLQEHDQKzhwj9Wr7gD3QxLO5Lu4xA5B02vk42Jm/4gH207inr61n
	tsfs=
X-Google-Smtp-Source: AGHT+IGhk42UgX0piJ3IhGVv53mL8Xv3MlZAlkmhqiALnY/XM/pfqByw6e+NvkM8SZnf8BoJDnWAbw==
X-Received: by 2002:a19:8c5d:0:b0:515:93ef:98ae with SMTP id i29-20020a198c5d000000b0051593ef98aemr8314023lfj.54.1712675585961;
        Tue, 09 Apr 2024 08:13:05 -0700 (PDT)
Received: from [172.30.205.99] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f9-20020a193809000000b00516aff23fc1sm1610227lfa.138.2024.04.09.08.12.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 08:12:59 -0700 (PDT)
Message-ID: <d8a2ef87-f29e-4bdb-a9b8-591b8bd5d2b2@linaro.org>
Date: Tue, 9 Apr 2024 17:12:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] drm/msm/adreno: Allow specifying default speedbin
 value
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
 Neil Armstrong <neil.armstrong@linaro.org>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-3-ce2b864251b1@linaro.org>
 <pncr7ecf4eir36skul3iwt2nf5bpuwd5zjfzzfwwnxjwe4hoes@6z2xe54crijp>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <pncr7ecf4eir36skul3iwt2nf5bpuwd5zjfzzfwwnxjwe4hoes@6z2xe54crijp>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/6/24 04:56, Dmitry Baryshkov wrote:
> On Fri, Apr 05, 2024 at 10:41:31AM +0200, Konrad Dybcio wrote:
>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>
>> Usually, speedbin 0 is the "super SKU", a.k.a the one which can clock
>> the highest. Falling back to it when things go wrong is largely
>> suboptimal, as more often than not, the top frequencies are not
>> supposed to work on other bins.
> 
> Isn't it better to just return an error here instead of trying to guess
> which speedbin to use?

Not sure. I'd rather better compatibility for e.g. booting up a new
laptop with just dt.

> 
> If that's not the case, I think the commit should be expanded with
> actually setting default_speedbin for the existing GPUs.

I think that should be addressed, although separately.

Konrad

