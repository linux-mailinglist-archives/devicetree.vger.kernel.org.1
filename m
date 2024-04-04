Return-Path: <devicetree+bounces-56389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE9A898F24
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 21:41:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5F08A1F2AEB5
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 19:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49BEC134416;
	Thu,  4 Apr 2024 19:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vu/rY590"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742E4134402
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 19:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712259706; cv=none; b=RF0Q8Up1wV8H6aAlsV2Umz+7gcHvv0NsyMfx9iFCsIcAOeCcZ5nSOIpMhToyWRBz9XTcw/4UYTUjupgyLOHnJ4mj01NgI+kriLdeuYWR5cwwaz4gdz+RIXgdtHnCxn3WR4jTuecxjaCmFXCT7LkY18rhTWh5d7cRN7ZHg+sRn8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712259706; c=relaxed/simple;
	bh=aVZcAkeixF4g7qxwWjpSl0cSU4/81MEvk4V1zf7bPjc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j8QgSMoRKBsChGbZJB6zDP9OfKYaie6OzxAULYm8tS9scQWEXONaXHCjaaXOWLDJ6ZQoC9WZ7jJ0qNz2b1OfsYp25xN4l7cBxwB4BRml8c/LP4ycKpPZHbnn6BJcPKTkhvugHVZZYzQJdG6pDwV+3yIKWqziRkjGDGbiTVU2rpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vu/rY590; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2d6eedf3e99so23875291fa.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 12:41:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712259703; x=1712864503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hk29yQ8J33vjFT2n+Z8izmlALMtAMOY/5K09yHLiz2A=;
        b=vu/rY590Pyhq+nznz7dKHgYOFFt3l+peBLzFJu5vCajdW+l97TF/bPU/0I4SIg3KmR
         yOJUeuCfIU4Qa0cE9ZT0506rdjshR+iy7VtSm5gK+ZxIgTmczBD4DVWqWmcZpYMSOVTN
         pYhpZmeDzsSLE7vWMMj85fBxSuqvNFJspeYRfpzAsQTD8F0bROl6eVgISMNNn5GlvjE5
         wmvrDhCkgj1SUK5+rdPcgUHwjayLbyNyujV37kWM7cOAP+eHeDvEW4eP4zGiDIEUENsn
         lgHpp1oNSPajmaBBisOh1yNBQXoBNUkDZNJPmYQFJsqCav2SQhTGkR3kP4UiSYGqraq6
         z+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712259703; x=1712864503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hk29yQ8J33vjFT2n+Z8izmlALMtAMOY/5K09yHLiz2A=;
        b=bubsLOx2G7gf6B37fwJtmS+lSKw2rbtoI2mY9eC162DZzs3t+JeRS5kQFHonvBjlNa
         TJhF0dmgf9PxV2+fK7NykJpklF/cCCfYvCD/9Mt9biwXK/UucNed+EjDHiAxgA3jSj0Y
         7D2lQpM3iAeNmftW6+0JqJNE9KQWmnc9hu5dqfhshv65m/znqT0Ht4xmwdwuQm7VjGQx
         NDqYGUpUIiD66RNe1yaDnBl3rA/sEBmQ9gnqrYtHcCHGbCuti7r8XsHKXYjDjyGYIDhg
         exISkRfKu8Fh30abIAFdCKeMl3NwAMdhpXs6XPyCq1qFtGFMGGw27dc/bn9sJL1Zm7sg
         eEQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzkpT0ckh9NPgjosSC/Hgr7YeNLgiuFMyoi+w8d3qAurTF8gFm4EU4opYHAds9bXCmhVkMtbS5ySWX4Ngsgh0Dv7Y6Ffsgs7m0jg==
X-Gm-Message-State: AOJu0YxqOo5EgVS27cKdbIVbOvyhjI/xYljSXnpk1IPV/nG/Z8JCqiXY
	AQ68g/tla24DaFW8M9q/ODzo/XaYGrrA9eENioIbzvlLVO5H8jhhCItur+la3rs=
X-Google-Smtp-Source: AGHT+IGjdt8eK/21R8SNEkAuKUSS9YVD3OAhgQRK4DIdtp+I52YPNa8vy4Q5T+/BRUqKTzQAx5ppVA==
X-Received: by 2002:a05:651c:210d:b0:2d8:635d:56b9 with SMTP id a13-20020a05651c210d00b002d8635d56b9mr181907ljq.4.1712259702667;
        Thu, 04 Apr 2024 12:41:42 -0700 (PDT)
Received: from [172.30.205.19] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id u14-20020a2e844e000000b002d46be28dcfsm2239298ljh.127.2024.04.04.12.41.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Apr 2024 12:41:41 -0700 (PDT)
Message-ID: <8f6236db-0692-44c9-b136-8e0dff714c55@linaro.org>
Date: Thu, 4 Apr 2024 21:41:36 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: qcom: Add SM8550 Xperia 1 V
Content-Language: en-US
To: neil.armstrong@linaro.org, James Schulman <james.schulman@cirrus.com>,
 David Rhodes <david.rhodes@cirrus.com>,
 Richard Fitzgerald <rf@opensource.cirrus.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Ricardo Rivera-Matos <rriveram@opensource.cirrus.com>,
 Bjorn Andersson <andersson@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
 Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>,
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 alsa-devel@alsa-project.org, patches@opensource.cirrus.com,
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-hardening@vger.kernel.org
References: <20240210-topic-1v-v1-0-fda0db38e29b@linaro.org>
 <20240210-topic-1v-v1-7-fda0db38e29b@linaro.org>
 <05e6f92c-388c-4bc6-a4cd-e9d981166d1c@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <05e6f92c-388c-4bc6-a4cd-e9d981166d1c@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 2/12/24 18:26, Neil Armstrong wrote:
> On 12/02/2024 14:10, Konrad Dybcio wrote:
>> Add support for Sony Xperia 1 V, a.k.a PDX234. This device is a part
>> of the SoMC SM8550 Yodo platform.
>>

[...]

>> +/* TODO: Only one SID of PMR735D seems accessible? */
> 
> 
> What's reported by the cpuinfo pmic array  ?

PMK8550 2.1
PM8550 2.0
PM8550VS 2.0
PM8550VS 2.0
PM8550VS 2.0
PM8550VE 2.0
PM8550VS 2.0
PM8550B 2.0
PMR735D 2.0
PM8010 1.1
PM8010 1.1

Not sure if there's only one or the other one is secure?

> 
> <snip>
> 
> With the pcie thing fixed:
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

It's gonna be fine with the recent aux clock additions. If you
have no further comments, I'll happily ask for this to be merged ;)

Konrad

