Return-Path: <devicetree+bounces-148004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC60A3A315
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 17:44:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95DEE188926F
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 16:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEDDC26E652;
	Tue, 18 Feb 2025 16:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LLnSo7/W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E538423AE66
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 16:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739897052; cv=none; b=CZf4n4v6OU6iuqcKmdSoPatWNDisbS46WcnIjejbsH3KmkK2kS66vSVJu14OlngtlBGLdSg2ZFk5WjRn9oC7HXfdXKJqgbSjUibK5xv0mP/58eRaU9bwbl4sirsKrrG34RMXZ2Nw96pU6BQVGe87g7OiAl1/HhTJ58rT3toeniw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739897052; c=relaxed/simple;
	bh=ecVY+gv1Bw65DvJhP3WRsBzu8IgIbbZITzxHtqJ/Ow0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=tFbmJ3ZLpbUHEwuJ/Xhj4ktClDy4EUw6VJHR1znts7ntrNvsBpgvRwKK7IlnhWKSeAbzTgk5fe6oU1pQdKYXyqCXSKdhrsuidigB5yLR0tSqwoPdP5V5xH32Hkk6Lmu7MQJGdOUOqK+5YWy3IKrQHqfpAuwzuOJl4CtOCNGtuLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LLnSo7/W; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-38dd9b3419cso3081989f8f.0
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 08:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739897049; x=1740501849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rNolTsZiemwL3MqHvmSKz5sOO+WofguQrhSb8yM7bJM=;
        b=LLnSo7/Wrx/TOXZwwpTh5iDQKrGRXm0/eyiHuMxnt2ej+x4bPCI9hWm6PLXr6QZsCP
         ltxaopu5I0UNowQbvj5DnMtVAOZbQ3ntdERzRyBKoKvGJJ6CB/fpr+O/L7N1Xb34Ybbh
         b6XAP+nF/lV2+YoWBu1rKlIXX6eMekxmrdbYlREwWrKiRkEgmxmgY37SI3qpsItnLNPM
         kko4UmjalEHMmp8LgZNybTuzmE0MAPF7qWGDnB5ceu45ClJv3aINB56mEGxCtYRkO+yg
         fq8M51JKcmw1BiYmAnZxZRdFGJr/fP9LJ0N3GnzrsbParooItfs3q679uDyemXe5WoIx
         OsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739897049; x=1740501849;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rNolTsZiemwL3MqHvmSKz5sOO+WofguQrhSb8yM7bJM=;
        b=FKPug2qxjMNf3xqfYszevtOHz4fam2ZUl4KJ/CMNOmuVmjnRc2RGB7ZImli7WtkP2l
         //atnh6ftdxcqkbaNmLplOtjToGcfmYuIPrawXKI3Ut7ZWqN1G1psXsoPn0bHaH242Qt
         V+gNxRT5eYaALFTQB4X6oCingKmMMo4GeRy5m6oQSPWVzSMZIL2rN2t1DqVLx1rabrd4
         3MyNE271bXtn2CXko+rHMR/oyRRe9FTv3+GPDpyIrohQjOR1IWPQvsi8UjkfMhyvvdTQ
         UvaBkLYPLgExQswgen9A1OivQFdEtbQ0fercljxBUFS6NopiFbF8Gnjt9l+kjy3QRssi
         L01g==
X-Forwarded-Encrypted: i=1; AJvYcCWr1yi+VWrNB+jKB+z9ShTRg2heQgZiwEd+fDf9Scu0yZhEEOi3VvMah9toZIg5ShDCBm0ZOaakn8G6@vger.kernel.org
X-Gm-Message-State: AOJu0YwOXevUcgZk+CvVvsLHHvYMtAy564ctPmN5o67tSRG1Y/ymNJzb
	H001bf7Axga3jAiva/KUC5QxQbVQnE79EkMh7yvqVvhyNrjLIwKtqb4PWJftn2I=
X-Gm-Gg: ASbGncvjus4BhaoNl6mMEiDyWmWM3nguoLGS/qdDbZVcXS4e9uuLmjPckzTFo4Fzhv4
	aTlyNkRvsABOhN5K9UpdW7+B0DqAdktJvvBMqpWX0fColEAE4ETiYz1ia23ng7/ToZ/bDVHaeV9
	m3vjZBz9lZfOpagxbpFTOkoFKu9rH7WscoU3WxpPLB2DAcB5IwfKSEhzi1bnM289r9QeMwdFZA6
	hfYR6u2DyiaRZ3XQc0sajnXgBI6liSmuZnXSfcHr7DOGNotPzdrezvbG8kQg6zrydBKEkND+lGo
	gJfPADfwHAb1VMgcr6EbQ9Qr+fScNATCExlXD6/gzSGlBIYjGzyukgJh
X-Google-Smtp-Source: AGHT+IHRNK4mSxCdis54SwXkqCDZrb5jymOcpWY4wAXt2MV8r6iy6nxS/LiPmAc4W5Fyl5byIMaTTA==
X-Received: by 2002:a5d:5f50:0:b0:38f:28dc:db50 with SMTP id ffacd0b85a97d-38f33f11953mr14595414f8f.1.1739897049224;
        Tue, 18 Feb 2025 08:44:09 -0800 (PST)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f258ddbbdsm15567675f8f.37.2025.02.18.08.44.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2025 08:44:08 -0800 (PST)
Message-ID: <9e9f742a-2972-476a-91cf-fc596221bedb@linaro.org>
Date: Tue, 18 Feb 2025 16:44:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] clk: qcom: videocc: Add support to attach multiple
 power domains
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-4-cfe6289ea29b@quicinc.com>
 <eec2869a-fa8f-4aaf-9fc5-e7a8baf0f864@linaro.org>
Content-Language: en-US
In-Reply-To: <eec2869a-fa8f-4aaf-9fc5-e7a8baf0f864@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 18/02/2025 15:46, Bryan O'Donoghue wrote:
>> +    ret = qcom_cc_attach_pds(&pdev->dev, &video_cc_sm8550_desc);
>> +    if (ret)
>> +        return ret;
>> +
>>       ret = devm_pm_runtime_enable(&pdev->dev);
>>       if (ret)
>>           return ret;
>>
> 
> What's the difference between doing the attach here or doing it in 
> really_probe() ?
> 
> There doesn't seem to be any difference except that we will have an 
> additional delay introduced.
> 
> Are you describing a race condition ?
> 
> I don't see _logic_ here to moving the call into the controller's higher 
> level probe.

I see you're saying do this before waking up the local PLLs prior to 
really_probe.

hmm.. the existing code works for me on the CRD but not on the Dell 
Insprion14 so I missed this on my series.

Instead of pushing qcom_cc_attach_pds() back up one level and having to 
do that over and over again for each clock controller that has multiple 
power domains, we could just move the configure pll logic to a callback.

Add a new callback to qcom_cc_desc()->configure_plls()

Then qcom_cc_really_probe() would look like:

ret = devm_pm_domain_attach_list();
if (ret < 0 && ret != -EEXIST);
	return ret;

desc->configure_plls();

There's no point in having devm_pm_domain_attach_list() twice within < 
20 LOC we should just force the sequencing in the right order once and 
IMO do it in really_probe() so that we don't keep adding custom logic to 
multi-pd controllers.

Its a generic problem we can solve closer to the core logic.

---
bod

