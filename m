Return-Path: <devicetree+bounces-69870-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AEAEF8D1CF4
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 15:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E065F1C20E34
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 13:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD9F16EC0D;
	Tue, 28 May 2024 13:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QpkJaoKs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70BD116E87B
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716902926; cv=none; b=QLUz3Bkn4SpJeLaojKYwcEIVZHk25K/+bZxrkb3K6ekwwjIxuQdKqU94dE/MT7kmqC6Tbo4WJvFefWmtloBj/9DH+D9Ey9sVBXtjETwGm9Ud4+ogMq8wBI6XEUkTdLYkucWiSB97v0sDGJ2jzN7fNTOy4GRWeLIInwQxVb6VS5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716902926; c=relaxed/simple;
	bh=gv4qXbse0+tppjc7JoxGjG2jeimv8fmDWABuQvijmb0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tqF9Lqu8NW7yieViiGSezs+JaNZQ2qBlRfIgQSaCgQvOAKsrVLM/mxtRpkN7QjM0SwkmL5bqWYKb/ZPwqpbPN0Ejr14ZpFvpLqBmrn827zeeNSqt+I5GpHHG19DACOI36eXLb+lSLJxv5XUmtve6Hjv00+WLDZiIG5/SJUNVrF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QpkJaoKs; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2e6f33150bcso8484981fa.2
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 06:28:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716902922; x=1717507722; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YUkpwY9HSnv5pwDfWQg8oJzNUY3US9PT2xcgosaYgjw=;
        b=QpkJaoKsZw+v0mKr20hihz99IBYkUEl5oRaB16XqJls/Sf53dcFcr7/Ih6y9h6Liqn
         c2al1RNuQ9V7lPCDBLGtwMdMNV2LR0NwUsp6Jt1Iku0dY4aCBN+bBgPu0PevIwZBXCZY
         xIC8wTkc5uBqu8sMLRoDZYy1lmQAZ8E7YhYuUZqXWeD3jgJ+EQiRpELitiKxT1XUmJAC
         LJacF1xAS9HsLBRVXCH9D+xdqt7CbKuK1rKlqHgYdlruslhOdLrlSo2byOm8jhWhMUGg
         vU6HW0mbQDagV1EWPpwN62Lnz7gQMUzCAIEHAEdmoX9gIreBdWRE4LlQjOVF33FO2HUM
         PgiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716902923; x=1717507723;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YUkpwY9HSnv5pwDfWQg8oJzNUY3US9PT2xcgosaYgjw=;
        b=ShMul0l/zgs/uZeryqpYN9jm+LyzmYvKxDzwBirPZ+pxGB2K66ZYor8uT5NREJPXMK
         3itSz+8EDDseea9nsXyhfuep5Tn+Noyf7wP8GWPxmSgo5HRCsvmyOWZT8syO1lcA8jBw
         pD+3ivq5XVHJrnatSO+ir97AvruBUW255jny8e1oo/AGxkDTRiyVMZZw0VEM9g8fvB0r
         1xfQgartMBxzYeUUSQeLPx4JSl8gIN8zHT6NhwnbKOr0UQzo26AzjGHdyHxCQKSqHFCv
         FflxXrTHu6gMVwtKcd7jIwxsOb9YE4+xR0pXz7BVhD8kzfSWOq9LtKynGmQoh6aY6B/x
         qi/A==
X-Forwarded-Encrypted: i=1; AJvYcCX+95XAg3pEIoAU7t3ALdJ9vrfDPDOlbHZxbsUQhCnVMM1f99cknO1OuNMNo6WDHrgoq/SHxdwD9KLp93kRfGUuEJy+VYCSmYq+FA==
X-Gm-Message-State: AOJu0Yzk5zyppRczQcn68V3pi880prykN4ojJKi/Q9e5IRFU+58RgFrO
	dw0bcO0Dn4zjtMOMkcN1xvkUfsiKwA+ddlsdQMIhO/le44OrKHNC58GLQwupUaw=
X-Google-Smtp-Source: AGHT+IE3dekc6Lsztuww8ue7HRQTAyhnH16r8hzZAigd7KWthsZqBFD7zHNZbC8qBsqegF/tuf2ZGA==
X-Received: by 2002:a2e:9c0b:0:b0:2e7:3224:9f51 with SMTP id 38308e7fff4ca-2e95b09a966mr89802871fa.18.1716902922647;
        Tue, 28 May 2024 06:28:42 -0700 (PDT)
Received: from ?IPV6:2a00:f41:c97:23a9:35bc:df2e:d894:2c76? ([2a00:f41:c97:23a9:35bc:df2e:d894:2c76])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcc48d3sm22545861fa.5.2024.05.28.06.28.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 May 2024 06:28:41 -0700 (PDT)
Message-ID: <c84715f9-4137-40a0-a108-22d0d147c3dc@linaro.org>
Date: Tue, 28 May 2024 15:28:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: qcom: msm8998: add HDMI GPIOs
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Bjorn Andersson <andersson@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: MSM <linux-arm-msm@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Bryan O Donoghue <bryan.odonoghue@linaro.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>
References: <8cc61db5-2920-4dd1-8132-5af434fb05b1@freebox.fr>
 <36f22383-79a3-427e-bf17-35ce2e1dd620@linaro.org>
 <c81feca0-3d56-4733-8eea-f8c574e99d9d@freebox.fr>
 <dcd695bb-1ba4-438a-91a6-7be4a6a55814@linaro.org>
 <3dadf1cf-5860-431d-bede-e24facb82004@freebox.fr>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <3dadf1cf-5860-431d-bede-e24facb82004@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 5/28/24 15:10, Marc Gonzalez wrote:
> On 28/05/2024 14:57, Konrad Dybcio wrote:
> 
>> On 5/28/24 14:45, Marc Gonzalez wrote:
>>
>>> On 28/05/2024 14:31, Konrad Dybcio wrote:
>>>
>>>> [...]
>>>>
>>>>> +			hdmi_cec_default: hdmi-cec-default-state {
>>>>> +				pins = "gpio31";
>>>>> +				function = "hdmi_cec";
>>>>> +				drive-strength = <2>;
>>>>> +				bias-pull-up;
>>>>> +			};
>>>>> +
>>>>> +			hdmi_cec_sleep: hdmi-cec-sleep-state {
>>>>> +				pins = "gpio31";
>>>>> +				function = "hdmi_cec";
>>>>> +				drive-strength = <2>;
>>>>> +				bias-pull-up;
>>>>> +			};
>>>>
>>>> It's super strange that both states are identical. Usually, the pull-up
>>>> is disabled and the GPIO is unmuxed (i.e. function = "gpio"). If that's
>>>> not the case for whatever reason, you can drop the sleep variants and
>>>> simply reference the leftover one from both pinctrl-0 and pinctrl-1.
>>>
>>> Patch is a direct translation of the vendor code:
>>> https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8998-pinctrl.dtsi#L2324-2400
>>>
>>> I suppose it wouldn't be the first time that vendor code
>>> is doing something odd.
>>>
>>> Though, I'm a bit confused why you would single out hdmi-cec
>>> when hdmi_ddc is the same?
>>
>> As in, me in the above message or the vendor devicetree?
>>
>> If the former, it's just an example
>>
>> If the latter, the muxing function differs so they must have their
>> own separate nodes
> 
> I meant:
> 
> You (rightly) point out that
> hdmi_cec_default & hdmi_cec_sleep nodes are identical
> in my patch.
> 
> I stated that, in fact,
> hdmi_ddc_default & hdmi_ddc_sleep nodes are ALSO identical
> in my patch.
> 
> And the reason they are identical in my patch is because
> they are identical in the vendor code downstream:
> mdss_hdmi_cec_active & mdss_hdmi_cec_suspend
> mdss_hdmi_ddc_active & mdss_hdmi_ddc_suspend
> 
> 
> If I understand correctly, you are saying I should delete
> hdmi_cec_sleep and hdmi_ddc_sleep nodes, and refer
> to the default nodes in the hdmi pinctrl-1 prop?
> 

yep :)

Konrad

