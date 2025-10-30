Return-Path: <devicetree+bounces-233111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F00CC1F242
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 09:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9138446085A
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:54:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0D7B33CE95;
	Thu, 30 Oct 2025 08:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jXULy106"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6681433B95D
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 08:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761814466; cv=none; b=O+3JYtSABtQS64NMxWiEM+3NWocOzV4bmzLQVQlaB5OZp4DESzxRSucTb+W5PPoDvYAymmVFg/DZRHV5J0ViVsLN3baI2wxNAnlJgDyRntoHN4XOxm5fQm1sMSIG6tim5YNGhWCPEEREo1p2IjerIIMdX7cqSQYv5PXwpwX/L2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761814466; c=relaxed/simple;
	bh=4FbxbnCJDc/1oh2iUw/DiNtq0IJ+KihYhiAuxVGgt3k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=I6WznJp3/WGkIws07YARBPYRLoF+QbdQocoOG8NYH+rpN62z7mWraoGmiUBhz+GOuAO7dJ4G9VAZu93RBsH471aiPRUhziRoafBWejQ0mlU/6wZIgXoySdh1fjuMKjhE/GyzJfpQhzbCdYLfOQmoTU7vqxK5Fifl/9Bt00DnNQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jXULy106; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-33d7589774fso1152312a91.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 01:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761814461; x=1762419261; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=z1nbpNKxGZmwf2lpk230ytxyk1UWzh/Nxzqzjf3QY9s=;
        b=jXULy106eZuAjPjamE5lEQTRgXIck0xUm4Mc+g/UMbzE5iPATnRryx+BR3xiKhvcz4
         UJ7UWBB0ecLREAuyIaRmdlruI61fq4pu071W9KK0S7v+RYM5Dv6Kv1FMZoVbuwky8zHl
         T88sSpHxCGfWaGVP3td9QWlnnz2qz4+eDVxLerFueMeFeOeweZOWEgLNwkP65pThABnX
         jCXzStZN40lwfq/gE4Y5z8WZBG24Tu+rF15vXoLeMDotA9L8bijyFisbLXIqLq9KUQ/5
         lmty/0VDBApvHReBQFShREXxOw65dnSqE3UnKnsNLnXcv/OPFUiyxBJ8S9OcAleZ8SHR
         b0Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761814461; x=1762419261;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=z1nbpNKxGZmwf2lpk230ytxyk1UWzh/Nxzqzjf3QY9s=;
        b=EhZlxIWuhgKDSPn+rBKwHHy8BPSB+AGb2tLLV9kuLIzLTiVEnC4QybL6yxxCb+5XsI
         QrFDIJcmKeQg9SjQUpywbTIPEeda9MJMlCw27L5MM6ejuOdnunh52oJ8Y8uvG6jhSfHu
         fVJEykxQApXwkDNsWTTuzc/kSZogDeeSlHTfn8vF56YQj+314W/WWh3eGjka68Q19Ijc
         yAoRYUKK8/JkjeSdjZqFUf1NBlw6bucmq4ltXtRzxX8HU+kQJCTj4efOexHg+k2ZxzZZ
         80VHySApBYZnet8cdELjjpDGCLsG38Y2RNbURq+wmH7hkJzppRXHqH4u/rV1bYUAxxsX
         Wx3w==
X-Forwarded-Encrypted: i=1; AJvYcCWyxYL7Eira3tVLFto4o5XCoFw5/4kJaaO0hogMCEXXH+bg71dazS32nu8SeGSrXDiPZzkd11fg3bLM@vger.kernel.org
X-Gm-Message-State: AOJu0Yykn8RaQThcEuCZBA1JqoFx4ny21LdIuY45oOGTQER4Sc1o58M5
	NKMf/YBumQYEmvw6X/0F0FjppCisXbpXwnrdmzWC6UgYizXV/IrTMnzW
X-Gm-Gg: ASbGncvMl0e1nlLeFsM/iRVbhNBatgNf7bSnh5Xeb7fprsbPY9GN6gPDYNwYmS6wakM
	9k1FQlCRH7bXW5qKaYqcTc+4O1N9AivOvIlf5/x2kvPKvHEegFZaWbraDXaCqgcvaGbol8IultA
	iNvXgE7OsJpQu5C23Vx3ZeVrxKhaRk+HLn5ZvnIDGsM1nzoNWda6dCvQ8CbYqeZdFempDBmuZq/
	79awA6B1jtddOR54Pzr/PC5WKklSuc0w/WfV3feoaKeC9bN225Luv7x2pBFx4ZRePN/Ug0VjXmh
	DjR6XNasbUsAl2/xiutOfiybXPsT6PZrC5Ts9WRTxgahP38nH3mOBiB0qpK65OYaYFrP0Lrh+8d
	hzPlEAwu9Tata0cQ6OiSfrj/U1+4S8M3NkwYTpUhafAR3RWJF5a31AEE2wImzSDCMAEYOM4TsbA
	9K6lixdPbKC331
X-Google-Smtp-Source: AGHT+IGFeqYgROmr+sPNZXEEZkn6mYlrCgf3ZvBH+yTloU98WBNL4oCUsdI3RF82oEmk9ZTtm2e7CQ==
X-Received: by 2002:a17:90b:580d:b0:340:29be:8afe with SMTP id 98e67ed59e1d1-3404c56f639mr2713860a91.33.1761814461463;
        Thu, 30 Oct 2025 01:54:21 -0700 (PDT)
Received: from [172.17.49.162] ([103.218.174.2])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b712f880ef2sm15926777a12.38.2025.10.30.01.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 01:54:21 -0700 (PDT)
Message-ID: <ae9021dc-e0ca-4631-b45b-3cf9f526bd14@gmail.com>
Date: Thu, 30 Oct 2025 14:24:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] arm64: dts: qcom: talos-evk: Add support for
 dual-channel LVDS panel
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251028061636.724667-1-tessolveupstream@gmail.com>
 <20251028061636.724667-2-tessolveupstream@gmail.com>
 <d05fe82a-640f-4a09-9d83-39bb5aff179d@oss.qualcomm.com>
 <9208d2ef-79da-4e80-ac1f-e01fa5feae0a@gmail.com>
 <sfxvtfzzstdbt7in6z6ztsjfy6e555fr3sjbi5kqkv5sk77b26@kl57zs7iuuvk>
Content-Language: en-US
From: Tessolve Upstream <tessolveupstream@gmail.com>
In-Reply-To: <sfxvtfzzstdbt7in6z6ztsjfy6e555fr3sjbi5kqkv5sk77b26@kl57zs7iuuvk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 29/10/25 18:04, Dmitry Baryshkov wrote:
> On Wed, Oct 29, 2025 at 05:50:01PM +0530, Tessolve Upstream wrote:
>>
>>
>> On 28/10/25 14:55, Konrad Dybcio wrote:
>>> On 10/28/25 7:16 AM, Sudarshan Shetty wrote:
>>>> This patch introduces a new device tree for the QCS615 Talos
>>>> EVK platform with dual-channel LVDS display support.
>>>>
>>>> The new DTS file (`talos-evk-lvds.dts`) is based on the existing
>>>> `talos-evk.dts` and extends it to enable a dual-channel LVDS display
>>>> configuration using the TI SN65DSI84 DSI-to-LVDS bridge.
>>>>
>>>> where channel-A carries odd pixel and channel-B carries even pixel
>>>> on the QCS615 talos evk platform.
>>>>
>>>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
>>>> ---
>>>
>>> [...]
>>>
>>>> +	backlight: backlight {
>>>> +		compatible = "gpio-backlight";
>>>> +		gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>;
>>>> +		default-on;
>>>> +	};
>>>> +
>>>> +	lcd0_pwm_en {
>>>
>>> Use hyphens instead of underscores in node names
>>
>> Okay, will update in next patch.
>>>
>>>> +		compatible = "pwm-gpio";
>>>> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>;
>>>> +		pinctrl-0 = <&lcd0_bklt_pwm>;
>>>
>>> I think your intention was to use pwm-backlight and wire this node
>>> up to that
>>
>> Soc does not support the PWM interface hence we are using gpio 
>> as "pwm-gpio" by setting the duty cycle to 100%(i.e. "no pwm")
> 
> Why do you mention PWM here at all? It's perfectly fine to use
> gpio-backlight. That looks extremely suspicious since you are not
> referecing the pwm-gpio device at all.

Thanks for the feedback.
GPIO59 (LED_PWM) connected to the panel’s dimming input.

Since we can only drive the LED_PWM pin high (100% duty), 
it does not provide true PWM control.

I’ll remove the non-standard "pwm-gpio" node and model both lines
using the standard gpio-backlight binding, like this:

backlight: backlight {
    compatible = "gpio-backlight";
    gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>, <&tlmm 59 GPIO_ACTIVE_HIGH>;
    default-on;
    pinctrl-0 = <&lcd0_bklt_en>, <&lcd0_bklt_pwm>;
    pinctrl-names = "default";
};

&tlmm {
       lcd0_bklt_en: lcd0-bklt-en-state {
               pins = "gpio115";
               function = "gpio";
               bias-disable;
       };

       lcd0_bklt_pwm: lcd0-bklt-pwm-state {
               pins = "gpio59";
               function = "gpio";
               bias-disable;
       };
};

Let me know your opinion here,
Thanks in advance.
> 


