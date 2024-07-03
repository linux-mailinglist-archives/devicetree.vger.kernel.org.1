Return-Path: <devicetree+bounces-82959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39224926913
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 21:39:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5B8A283708
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 19:39:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67BE18F2C6;
	Wed,  3 Jul 2024 19:39:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r+fltZH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBE71DA316
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 19:39:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720035588; cv=none; b=R1qs8lwRLrp5353+ojzMhquv8UoGJGHrSD7GR9yZgjZgE8A3BXNptYGMQ0zlLqqV1YkZo2MqQfcuiVbWgNKyUP/m5NVYm1e7Rmjn3sLX4pfVy8x68O6BnFak1DE9PvfhX42om/zLsL3FSrHFTB0wRyuy4fKAo2WcrL2qwFhbnAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720035588; c=relaxed/simple;
	bh=PgjlqjpDtSMNToK+0DWfNPbGm3RXM7KEd8vklcHb2CM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T1tb4r4J+8M8obY1yxkWS0cYoSWNBPFRZbvnbJYkKspWymtg7UFb3T2ccFJM/0WpdFQPKzDNLkH9cUkanrQfgYwurvaSxmDjTkhlwjNHDy9/MFxzrbYwyPhYcRhhMmwEGh5w1+3EyqPhrjOiNtFjs7Ya2fEhzo8Q7efGIqMZfVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r+fltZH6; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ee794ec046so21309231fa.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 12:39:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720035584; x=1720640384; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NQz1UR6bDZLMmSUGCaRreiwA1h+kKJVVIEZe47xJ3rI=;
        b=r+fltZH6WIJAwES4UAwvWJ4oLyhhEbqooSzUocT6VeHJCq9vH2U6E5pwC3mbGd7+ys
         HHkHKQzphba4MrVJVJzRg6lXpbh7lhbizlNI0cIla5Fh0OUSEqdPHMYmIozDEItQ/hIG
         wWy+zwu4bKPnWtPOknh8O//M1Sij35Yw6PDWjOMRqAQit8UeL76dO395Jnsa0eig05dO
         YznBxwymNq0pUR+B5G83WDdhYJNDViZ2Dh9oLMNistyFSoauaOgjADMUZhdAcl8CRXQy
         1+vJZOj/0C7dca/oXSIQVH7mrYw2tyDCYtCZ5vTZE40xsnFNQMWGCu+blpDL1vxsbhke
         2q9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720035584; x=1720640384;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NQz1UR6bDZLMmSUGCaRreiwA1h+kKJVVIEZe47xJ3rI=;
        b=SiU366EjahYt5Yx9sFzVLKnoT01KXGaBgrCQ0P6PjYn7HPRkEnHCyNhtU6AkxSCOH+
         VQyIFQ8hTJhaUF2erV7+nvhWx/sYC1d6IAfoqsDqpAo/P9uLoGzt5lvnY0EFPAhWsiN6
         5f6P5Nk7fmk9bE75GWQOqZmAdk4glvq0ub7P28TtOggaeV/sFzMxcAo8EiWL/Ofzl8rj
         tb7z874l0BRwd3pefCHHd1cWqejvR7/0rhRq+DitPjh9w1ifi0cGeOefosiuJCQOP6TL
         9GYIlxWGlzLcBTLc8IRfqhBF+549fIG5Kj2/wickUqjADjWkDHXq1tZoJrRoraTI5wkS
         IGWw==
X-Forwarded-Encrypted: i=1; AJvYcCXJeByTJXKMta6cGhe+mHTtRF9RIiFqbSlnfk19GYxEkpCckU1WQfknI5xgJNdQVFptXBGz8m1PH7690x+1ztOGextPxyyietyqtA==
X-Gm-Message-State: AOJu0Yx/C5FdJJr8QzAVU+yhOxzoSbgQ1RibYzGUS/+AXSYzAoSYLj4L
	mAtfIMzZnW2uGmboNd1JlvAsEffxDJpg4NuYPveRi20ccU1mv2ZwbbkWFJ0bDd0=
X-Google-Smtp-Source: AGHT+IEpw4uTyTeCbt6/9ih3YCJdaiM7QLsRYETOoXHgx6zL4W2wfa3/M5DwW4ZdtGzxE5d7N91g4w==
X-Received: by 2002:a2e:a889:0:b0:2eb:dd0b:b9ec with SMTP id 38308e7fff4ca-2ee5e3a30e0mr98452451fa.20.1720035584013;
        Wed, 03 Jul 2024 12:39:44 -0700 (PDT)
Received: from [192.168.86.191] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4256af55c0asm248729915e9.15.2024.07.03.12.39.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Jul 2024 12:39:43 -0700 (PDT)
Message-ID: <80baa293-d0b1-404c-afc6-4e0e25ae7f60@linaro.org>
Date: Wed, 3 Jul 2024 20:39:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100: add Lenovo Thinkpad Yoga
 slim 7x devicetree
To: Rob Clark <robdclark@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240703-yoga-slim7x-v1-0-7aa4fd5fdece@linaro.org>
 <20240703-yoga-slim7x-v1-2-7aa4fd5fdece@linaro.org>
 <CAF6AEGt+3LFP+GCcSwiSEymixVVkYD98iJX5RJ75NQDzZbPpcw@mail.gmail.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <CAF6AEGt+3LFP+GCcSwiSEymixVVkYD98iJX5RJ75NQDzZbPpcw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 03/07/2024 19:33, Rob Clark wrote:
> On Wed, Jul 3, 2024 at 10:17 AM Srinivas Kandagatla
> <srinivas.kandagatla@linaro.org> wrote:
>>
>> Add an initial devicetree for the Lenovo Yoga slim 7x with support for
>> Display, usb, keyboard, touchscreen, PMICs, speaker audio, gpu, NVMe,
>> and remoteprocs.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>>   .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 910 +++++++++++++++++++++
>>   2 files changed, 911 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index e0babd642fa8..d7de2aea4748 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -261,4 +261,5 @@ dtb-$(CONFIG_ARCH_QCOM)     += sm8650-mtp.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += sm8650-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-asus-vivobook-s15.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-crd.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-lenovo-yoga-slim7x.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-qcp.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
>> new file mode 100644
>> index 000000000000..1d00119691bc
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
>> @@ -0,0 +1,910 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
>> + */
>> +
>> +/dts-v1/;
>> +
...
>> +
>> +&gpu {
>> +       status = "okay";
>> +
>> +       zap-shader {
>> +               firmware-name = "qcom/x1e80100/LENOVO/14Q8X9/qcdxkmsuc8380.mbn";
> 
> I ended up with:
> 
>    firmware-name = "qcom/x1e80100/LENOVO/83ED/qcdxkmsuc8380.mbn";
> 
> my DMI string is:
> 
>    DMI: LENOVO 83ED/LNVNB161216, BIOS NHCN36WW 05/23/2024
> 
> idk if that is different for you?


You are correct, dmi/id/product_name is 83ED in my case too. I think i 
overlooked it :-)


will send out a v2 to fix this one..


> 
>> +       };
>> +};
>> +
>> +&i2c0 {
>> +       clock-frequency = <400000>;
>> +
>> +       status = "okay";
>> +
> 
> I also have this, which is working for me (sry about gmail butchering
> the formating):
> 
> 
> touchpad@2c {
> compatible = "hid-over-i2c";
> reg = <0x2c>;
> 
> hid-descr-addr = <0x20>;
> interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
> 
> pinctrl-0 = <&tpad_default>;
> pinctrl-names = "default";
> 
> wakeup-source;
> };
> 
> basically just uncommented the node from Xilin's tree, but seems to work fine.
> 

Thanks.. I could not figure out the descr-addr from acpi tables.
It works now..
V2 will have this as well.

--srini

> BR,
> -R
> 

