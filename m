Return-Path: <devicetree+bounces-64019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B099C8B793B
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 16:26:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4164B2812AA
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 14:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8164F17A93F;
	Tue, 30 Apr 2024 14:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b="P4xY72de"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D929178CE7
	for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 14:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714486481; cv=none; b=gjCA2Wyj34PfN9NFu32w0Ig2QpDf3l+w+YZpEtPcku+UBZva/LYi9xQXWlyV2FehyvqH+GxtC2uhHY+YOUg9GWxv+BxvUClIWr1DuzXw3mrPumq45Tw6RJ2VKUwhOTwnP3UbzPULZhxJMeKdOoW7uLFeF83tasGVHsP/saYRtGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714486481; c=relaxed/simple;
	bh=NTGwvE5oTPK+qiXk3TYvQc1vlA1cbXpr4kZtSuS3KHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rdAky/hyhNwmIL0LaQpBUyaNxhfonTXSOUfX/Q+u376ArD/+7EC7iv05Tvkv6sfm9TybQaG9mkmr6oqXwB+xnG25UjW2NOWzS17YMnD4GPGGukHwP8ShOCY0DQJM+fZTGuYdts5KbiMEo+70nThSjpP3gwdnBcc52ufHXIF8f80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr; spf=pass smtp.mailfrom=freebox.fr; dkim=pass (2048-bit key) header.d=freebox-fr.20230601.gappssmtp.com header.i=@freebox-fr.20230601.gappssmtp.com header.b=P4xY72de; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=freebox.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freebox.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-41b7a26326eso33996935e9.3
        for <devicetree@vger.kernel.org>; Tue, 30 Apr 2024 07:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=freebox-fr.20230601.gappssmtp.com; s=20230601; t=1714486476; x=1715091276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BuJcMbRLUf82KUepIk3TKbpGuDateTsBvHpdeo4lhoI=;
        b=P4xY72deNjVVS7ep4BrZDZDyA6HVMHfAZIcQj2/rnZJrH2NrxfI/Bfr0wBGU5EJCB+
         yuNSZZEH0d/49yex4ngCqoQMAlImIe/mbkkdb18ymKJp6s5TQKEwKD95gHVgNsKv9BRE
         QdjXkQsKi2+thDYKk915sqn69DEQJEbWCrDbCpfQTpaZzoDlFmowwjE0u0tlV4Udm/Fb
         dVccPFl0WjCsvYGMm+XH5OwtJvxi9/i2KUtqFnRqyoBgcgRV+ovg51waH+1Fw/7PnlT9
         WRvd5Lkpp/2/IinSmD6cyetxTfpdG4wN404zDTMykz8lxp9USNz6nz+3EPEHtAmXbf7j
         foXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714486476; x=1715091276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BuJcMbRLUf82KUepIk3TKbpGuDateTsBvHpdeo4lhoI=;
        b=Po8QvVNpK+Fud4VjneVHCMVk0DLY/vh3eevCZB8lcvb4ARgRum6cfCjtw6MiHnFmU8
         dIKqKcP0GuSFlL5MFEeMTc3uf9uQFBAHbgSmK0d0Hpb72BH6KGMr6miyJs24GmX6odgg
         UNFctmhlHvEYYaRZa3r5aKp52PVD7DCSstSwlKWxwPIWMjoeyPulASlk0ePd/9faDN+r
         3gW5e+rIb9wCRN4sfdjZWnrZVHQ9BRCQTeLZ+i/R/kbRC2kWHBG4Vq9E8gLZFHMRe4Jw
         4hg8/MUauiJSi7/LCO4RH3Md1aTud9kWtl9GnwRNUmXczABOLkIoh/yC8XbeT9LAOLHe
         z9sA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ8Y0XQd+7+1A1H43OGH+/+5s0hTu7+LTAYgaExETrxeLJ2j/504uE85x2N57BW79h5x5lFmoRlMI56MNV+MBhn1bYyy94++bNNg==
X-Gm-Message-State: AOJu0Yybz1rlTfJoIiL1f5y819zkzHaiJIm7e6Mq9W9h8zXr4nx6IRH8
	6CRTnMtZCCyNFlVLzS4CWw7bffavIuG2w4fPRaI9z+/+ZKuEHiGWBbwmVZ5i7+g=
X-Google-Smtp-Source: AGHT+IFSKfcPM3rOfZybfP+Et3c+Dhy8Xi6uL2xbCb0wZeTmqyvosgGFBcPatPn7+KZSJ7rK2K+kNQ==
X-Received: by 2002:a05:600c:314a:b0:418:fb6f:5f59 with SMTP id h10-20020a05600c314a00b00418fb6f5f59mr12386080wmo.2.1714486476081;
        Tue, 30 Apr 2024 07:14:36 -0700 (PDT)
Received: from [192.168.108.81] (freebox.vlq16.iliad.fr. [213.36.7.13])
        by smtp.gmail.com with ESMTPSA id l2-20020a05600c4f0200b0041be78ae1f0sm12292455wmq.2.2024.04.30.07.14.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Apr 2024 07:14:35 -0700 (PDT)
Message-ID: <b206f776-f402-43b0-8db3-1b16474b3bc8@freebox.fr>
Date: Tue, 30 Apr 2024 16:14:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] media: venus: add MSM8998 support
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Jeffrey Hugo
 <quic_jhugo@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
 Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <2b21b160-a530-486a-9404-c5bf8863ffed@freebox.fr>
 <31072144-8880-483f-880b-8c8ca73b2003@freebox.fr>
 <c805843b-041c-4546-8bf8-ce2a0c71a470@linaro.org>
Content-Language: en-US
From: Marc Gonzalez <mgonzalez@freebox.fr>
In-Reply-To: <c805843b-041c-4546-8bf8-ce2a0c71a470@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/04/2024 01:19, Bryan O'Donoghue wrote:

> On 29/04/2024 17:19, Marc Gonzalez wrote:
>
>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>
>> Add the missing bits for MSM8998 support.
>>
>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>> ---
>>   drivers/media/platform/qcom/venus/core.c | 42 ++++++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 42 insertions(+)
>>
>> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
>> index ce206b7097541..42e0c580e093d 100644
>> --- a/drivers/media/platform/qcom/venus/core.c
>> +++ b/drivers/media/platform/qcom/venus/core.c
>> @@ -587,6 +587,47 @@ static const struct venus_resources msm8996_res = {
>>   	.fwname = "qcom/venus-4.2/venus.mbn",
>>   };
>>   
>> +static const struct freq_tbl msm8998_freq_table[] = {
>> +	{ 1944000, 520000000 },	/* 4k UHD @ 60 (decode only) */
>> +	{  972000, 520000000 },	/* 4k UHD @ 30 */
>> +	{  489600, 346666667 },	/* 1080p @ 60 */
>> +	{  244800, 150000000 },	/* 1080p @ 30 */
>> +	{  108000,  75000000 },	/* 720p @ 30 */
>> +};
>> +
>> +/*
>> + * https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8998-vidc.dtsi
> 
> Nice touch.
> 
> Does encoding/decoding work on -next sans interconnect support ? I think 
> we discussed on IRC it does but I'll ask again just to confirm.

(We have no use-case for encoding.)
Decoding works, of course.
I would not submit a broken feature :)

(vp9 2560x1440 59.940fps) decodes at x2  (122s for 240s)
(vp9  854x480  29.970fps) decodes at x15 ( 16s for 240s)

I find the performance quite decent.
Though I would have expected a larger performance ratio:
2560x1440 59.940fps = 221 Mpixel/s
 854x480  29.970fps =  12 Mpixel/s

If 1440p decodes at x2, 480p should decode at x30 ?
Or maybe the bottleneck is elsewhere :)

Regards


