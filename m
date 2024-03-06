Return-Path: <devicetree+bounces-48786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB57087382E
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 14:55:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 092121C228D6
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 13:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C34AB13248D;
	Wed,  6 Mar 2024 13:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zufErZF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA13131746
	for <devicetree@vger.kernel.org>; Wed,  6 Mar 2024 13:55:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709733350; cv=none; b=eZHehhMK7e+J8W4bQSdbjU+pMJSyq0OuuxyaWam4a79KezjDOXRwU5vDzCwdxE624xL24/MsM1CPmbKnkLRaJvAGiKCEWRj2N+R+kakvKWmoxqvTMbHy2Lk6nBcIS8mV6s4Q7PRpCIehj1R4SCyOq9C35PipEY4TTWvYJPsnSVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709733350; c=relaxed/simple;
	bh=Esvwv4GmKkRGzYN48ZvM7fQdZPibiAf4YX9bG9qSQJs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Mvcdjd12I7BSxw4Go/6wX4zth4qWCB0bIhaovP2KH+BYxNx61PsbhJ6qbB0tUrwNd0dcD/4xAwWXiudhVVuOqf1wlmwwiflPmIlIhvdra/0aMPjW+smW3ohe6kO1pQxISr+hhXtV6fshy5OISM1cgDZGtkGtxdkeGoqeygnfGgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zufErZF2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-412f67bc6d0so4395145e9.3
        for <devicetree@vger.kernel.org>; Wed, 06 Mar 2024 05:55:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709733347; x=1710338147; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zqeQcb2lk7Isbti9CqhzC6h0iZhvy2vGvXInpl28c0M=;
        b=zufErZF2tckoyq2AJn+Jhh32JfCRaH7dxfdp/d7WuBIyHqGS1Wb4XdQaV2wNvkA5rg
         hfwdDh1YFyoXCUBepvATNtKyisE3x293UJhq56VjStj1wv40TO+AJbUaKyWhkTbgczfM
         94R6KyNawHfCxVnav5RzBMk83ZgRjRx3RXZXl6A9JAVm8sfizxyz9ahqjCxPD4L5jUpn
         fUx7p1tLW4EQR6QavWnJ8I27lpRwLGL6Kq6TKCNa1KBem9Q9vr9cpkkkAzPBQhou5yZv
         rPeMwyqTt2lofjHwZ4WWslT2Ktf3TkTZRQdCl0++WAR8v4ZNUeVqQhaf+8DhpK5g36/E
         mrAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709733347; x=1710338147;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqeQcb2lk7Isbti9CqhzC6h0iZhvy2vGvXInpl28c0M=;
        b=CdUPbuBEC88UnEM02j/5zN/j79LAja3ieOidptMydp/0iAaAkrh+K1ZvDsenQM/E79
         8wQfO1AgtYIp2ppKAwL4X+dS+SCvghypkpTCKZn3BfS87EcBQJoG9E9s9s/uL43xm2q3
         l1FY5rZTN6pFRuyLWNQkcwwch/G8xHRRYAwOmV8EUqENI1KLCTV/+o/5K+kjYu4nFs7F
         +lzDlKHVQ921lgjkyKJq398jAKlTK9Twmjtano56v/zWEEiTEZxJyfajo08mEE1jf4fA
         8ly5okVx62YPjYBtHZG4to9ll0/o9X98mmCpc365ws4XPU+M4HhfebmvN6R/e93m3hTO
         2kYQ==
X-Forwarded-Encrypted: i=1; AJvYcCUwkoiB7MSob3RcKkX+m4gq9RC6RKSJTcim0jY3lK4q13zfXjUQagv0xXosEOST13hvMv8Pmap0yzvxAbdO5mXt3Fy25ZEALbV9hQ==
X-Gm-Message-State: AOJu0Yxo/o9BJBQ8IAwJ+dlWn7h+sWPV2QH4h1VEtEpR5VMgwlAPoc7Z
	nrKXSUOQOv34HToD0W259b2TdE4Agn1NNOuw8mOU5AK9M8D4613SA80yFyvFweI=
X-Google-Smtp-Source: AGHT+IGOBEiwkCooM4Sxrm8AQUC8qi0kWf3U4eptBtTlJ4YxKa+a3fBbBRdx4QqI2Cc2S6bVl3jE4g==
X-Received: by 2002:a05:600c:358c:b0:412:b10d:27da with SMTP id p12-20020a05600c358c00b00412b10d27damr11333800wmq.1.1709733347321;
        Wed, 06 Mar 2024 05:55:47 -0800 (PST)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id da8-20020a056000196800b0033b87c2725csm17548409wrb.104.2024.03.06.05.55.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Mar 2024 05:55:47 -0800 (PST)
Message-ID: <4817a5b0-5407-4437-b94a-fc8a1bfcd25d@linaro.org>
Date: Wed, 6 Mar 2024 13:55:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] clk: qcom: Add camera clock controller driver for
 SM8150
Content-Language: en-US
To: "Satya Priya Kakitapalli (Temp)" <quic_skakitap@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Abhishek Sahu <absahu@codeaurora.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Stephen Boyd <sboyd@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Ajit Pandey <quic_ajipan@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>,
 Jagadeesh Kona <quic_jkona@quicinc.com>
References: <20240229-camcc-support-sm8150-v1-0-8c28c6c87990@quicinc.com>
 <20240229-camcc-support-sm8150-v1-4-8c28c6c87990@quicinc.com>
 <18567989-fb60-49ae-92e6-94e1bc2fa1c7@linaro.org>
 <83fd1995-a06e-b76a-d91b-de1c1a6ab0ea@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <83fd1995-a06e-b76a-d91b-de1c1a6ab0ea@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2024 08:30, Satya Priya Kakitapalli (Temp) wrote:
>>
>> Anyway I suspect the right thing to do is to define a 
>> titan_top_gdsc_clk with shared ops to "park" the GDSC clock to 19.2 
>> MHz instead of turning it off.
>>
>> You can get rid of the hard-coded always-on and indeed represent the 
>> clock in /sysfs - which is preferable IMO to just whacking registers 
>> to keep clocks always-on in probe anyway.
>>
>> Please try to define the titan_top_gdsc_clk as a shared_ops clock 
>> instead of hard coding to always on.
>>
> 
> Defining the gdsc clk allows consumers to control it, we do not want 
> this clock to be disabled/controlled from consumers. Hence it is better 
> to not model this clock and just keep it always on from probe.

Not if you mark it critical

static struct clk_branch cam_cc_gdsc_clk = {
         .halt_reg = 0xc1e4,
         .halt_check = BRANCH_HALT,
         .clkr = {
                 .enable_reg = 0xc1e4,
                 .enable_mask = BIT(0),
                 .hw.init = &(struct clk_init_data){
                         .name = "cam_cc_gdsc_clk",
                         .parent_hws = (const struct clk_hw*[]){
                                 &cam_cc_xo_clk_src.clkr.hw
                         },
                         .num_parents = 1,
                         .flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
                         .ops = &clk_branch2_ops,
                 },
         },
};

and then add this to your camss clocks

<&clock_camcc CAM_CC_GDSC_CLK>;

The practice we have of just whacking clocks always-on in the probe() of 
the clock driver feels lazy to me, leaving the broken cleanups we have 
aside.

As a user of the system I'd rather see correct/complete data in 
/sys/kernel/debug/clk/clk_summary

Anyway I'm fine with setting the clock always on, I can always send out 
a series to address this bug-bear myself.

So yeah just fix the cleanup and then please feel free to add my

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

