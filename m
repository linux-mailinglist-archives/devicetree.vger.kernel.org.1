Return-Path: <devicetree+bounces-162006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D967A765C9
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 14:27:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB9233AAF2F
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 12:26:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7021E5210;
	Mon, 31 Mar 2025 12:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="elT7LGhx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B26821E520F
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 12:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743424021; cv=none; b=L4VmvKHJbLWsxG64YYVBl5wyEafUNcJAniXo77RynA+q7nEvLyleSkkrxq7IH9t9lWt9kesdjCIGpaa4hcqVXsA37VEN5f8fGr8IJ3Yt4upUc6pK0uoxZJzGNTkOP+RRyrwvZbE3MZPAej3xYViqUFvq2vvnppZevn2Ui/nDJ8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743424021; c=relaxed/simple;
	bh=UUuc7dIP2gWnCcNPvSCcaeucx7hYL3gOra1QnwgCgYU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h4oW3dAKPO1AvYP1hKcpIZbWHHKoAImd15vPCrp2OxoMQaPlcLNyLW/WGWe3IehkHxslMm+DHq2094vkgg47LLxhQ0SZHw6bR/orJLY1rcichgbFlmz6fZ+MhzSfTV9Uzi0R/mlRJJ+BpygpNlfGV8CpFeWqk2Tk039EwtbJB0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=elT7LGhx; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3914a5def6bso2445239f8f.1
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 05:26:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743424018; x=1744028818; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3x79T25mcbeoFEkgmh008rE5iCXhvbvrLc2rO2Sk8dg=;
        b=elT7LGhxQ2lu8zwnf5VnkH7Fr+pYRhPq/2vR8e8jWh4qK4rUboo2iIRBzY01FgiqKp
         /BCDNr5tNoxX+ICzs2c8HpmtLZMEaFs9Qn1Pp617SylkYzpHGUT10P0HUigESHlj7vCV
         9jldOgfL6XbMRelh0xiVC2oxKXxHKPw0uJ+AQncaUyQ0OMOyLMJahS3KD64UxgikVsyt
         u6GECfnpv0Sa/7PruRzg+EYRWCPY4QcPcIyHyD+UlA1EXlf5vtaniaLjXg//wbfKvsov
         M50ZlhxFV3y//cjsIhbMfSAKdztrOiFvV/bYSbSY1Eoz8A3ngzRYrKxmnRwwc7fP53iX
         Ysdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743424018; x=1744028818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3x79T25mcbeoFEkgmh008rE5iCXhvbvrLc2rO2Sk8dg=;
        b=Ke4/PrfIlBC0+vEeoqiC7xELmkI1RYT4HbdI/8asnFbdA0DU8s8qhKDJ43IujXnwZN
         GoNvHy5M765J9Y4/srq5Eo3dCfgI7Ip0x4W8khjK+G+4rsVBOxnG0k9u4wDwFun/vxDQ
         q3Ef0p/RS58dPZQf45x/qKIq0uIiijt2dVBYvTG7LoNgd8zIeoC8ypFAL0hZozA2enGy
         k6B1CTKXrqlw4SC0AAMkbvuiTMnF5cHuTEy1LhG7BMb/ZwfdjCJYFDboTzy5wTeELudZ
         LCx9Fe9xlVlxNAHZPWAREZcrYbdOLK773PHc1Q9v5Hy/N/w4xqrOmMoSRxbUKy+FZcF8
         Dpkg==
X-Gm-Message-State: AOJu0YwIlB/wknGS4AwHG3DTSfunH12SVD7CgWeyny7NQU/lR2/DO2k7
	kUrfq+f+5xJy7lonUeGpiP2FTVm6LR43IGWElQxgmmeI/tHMgXFieiYNZlG6k6U=
X-Gm-Gg: ASbGncsbZwbNWYj7r1p7A/ZqSmp9B2DcAo139snK9tRGDIoQXdjrvH8xLbYijfQhsrr
	5LlFsyKqbt3STb0NgKF4/n0GmxWsvfQ2vVJN31pxpRZ09BwPGsrNWR40V+20w2hudRZg9vOB3G6
	JlGeCnsltp67FUs6AHQKCHrSZ849rF4NEYA7CTl49zr64DOS8q0HSjqFlb9dhAJSsYf4jvAgsfA
	xsC/xv5iOWFIvvUIpE/g9+boLPWZFbqnzVJS1yXiggh701mSEnxpCjiuFE5P3xn31Ayx9yJNOuk
	JBp8LqVULD1mtAVC4pXA1DKyI1FsyYpArJ9JTNAundmPBE2k9QcraGOwWwSNLLEQgaNNNmZAmWt
	OneZZjStOdg==
X-Google-Smtp-Source: AGHT+IHlIdilrfFFA0MAO6ZfhQdImZ4QQ/ZvskizrLt6LkgnFy72xbppMo3mTTikHz1qkDd9yfa6uw==
X-Received: by 2002:a05:6000:1ace:b0:397:8f09:5f6 with SMTP id ffacd0b85a97d-39c1211d5ecmr6387955f8f.47.1743424017917;
        Mon, 31 Mar 2025 05:26:57 -0700 (PDT)
Received: from [192.168.1.38] (i5E863BED.versanet.de. [94.134.59.237])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82a041d4sm168174385e9.0.2025.03.31.05.26.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Mar 2025 05:26:57 -0700 (PDT)
Message-ID: <39c6bada-9068-42f6-85f1-d5a4214f6b3b@linaro.org>
Date: Mon, 31 Mar 2025 14:26:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: align gpio-keys label format
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250331121011.385250-1-caleb.connolly@linaro.org>
 <D8UG37Z20WLF.1EH3L1KZTJKO8@fairphone.com>
Content-Language: en-US
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <D8UG37Z20WLF.1EH3L1KZTJKO8@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/31/25 14:20, Luca Weiss wrote:
> On Mon Mar 31, 2025 at 2:10 PM CEST, Caleb Connolly wrote:
>> Most devices follow the practise of capitilising all words in a label,
>> this seems to be the standard elsewhere too (e.g. run "evtest" on an x86
>> ThinkPad).
>>
>> Adjust the stragglers to follow suite, and standardise on "Volume
>> Buttons" over "Volume keys" as the label for the entire device where
>> applicable.
> 
> In theory some weird user space could find the correct input node based
> on that label, which would 'break' if we change that label?

heh well part of the motivation for this fix is that we do exactly that 
in U-Boot, so having consistent names helps (though, so will changing 
the strcmp to a strcasecmp in U-Boot).
> 
> Not that anyone should really do this I believe, checking the supported
> keys on a device is a much better solution.

Definitely agreed, I feel like this is better as a "revert if someone 
complains" patch.
> 
> But good to keep in mind.
> 
>>
>> Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
>> ---
>>
>> This is really a drop in the ocean, a good next step would be to fix the
>> pm8941-pwrkey driver so your power button doesn't show up as
>> "pm8941_pwrkey".
> 
> "Power Button" would be good there, that's what my Intel Dell XPS 15 reports.
> 
>> ---
>>   arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi | 4 ++--
>>   arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts    | 6 +++---
>>   arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts   | 2 +-
>>   arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts     | 2 +-
>>   arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi       | 2 +-
>>   arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi  | 6 +++---
>>   arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dts | 2 +-
>>   7 files changed, 12 insertions(+), 12 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
>> index e6a69d942a4a..452c455294d0 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi
>> @@ -90,17 +90,17 @@ gpio-keys {
>>   		pinctrl-names = "default";
>>   		pinctrl-0 = <&vol_keys_default>;
>>   
>>   		button-vol-down {
>> -			label = "Volume down";
>> +			label = "Volume Down";
>>   			gpios = <&pm8998_gpios 5 GPIO_ACTIVE_LOW>;
>>   			linux,code = <KEY_VOLUMEDOWN>;
>>   			debounce-interval = <15>;
>>   			wakeup-source;
>>   		};
>>   
>>   		button-vol-up {
>> -			label = "Volume up";
>> +			label = "Volume Up";
>>   			gpios = <&pm8998_gpios 6 GPIO_ACTIVE_LOW>;
>>   			linux,code = <KEY_VOLUMEUP>;
>>   			debounce-interval = <15>;
>>   			wakeup-source;
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
>> index 0cac06f25a77..2a62d58195fd 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
>> +++ b/arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts
>> @@ -124,16 +124,16 @@ zap_shader_region: memory@f7900000 {
>>   	};
>>   
>>   	gpio-keys {
>>   		compatible = "gpio-keys";
>> -		label = "Volume buttons";
>> +		label = "Volume Up";
> 
> Not sure where the label from this wrapping node would show up, but you
> maybe want to keep this one as "Volume Buttons", like in some of the
> other files?

I was a bit unsure here, but this doesn't contain "volume buttons" it 
contains a single key, volume up. So labelling it as "volume buttons" is 
wrong, right?

I don't suppose it matters much.
> 
> Regards
> Luca

-- 
Caleb (they/them)


