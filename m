Return-Path: <devicetree+bounces-65225-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5C18BD1EE
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 17:57:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DB9E12839DC
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 15:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D26D155737;
	Mon,  6 May 2024 15:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XOejWgI9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4F9B6CDD0
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 15:57:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715011026; cv=none; b=DLKOsi5pKL3LpOZ4jgkMU/i8ZSh+cST+mcIr2yOnNrGTIQh8YFXs5EEWWbfLD2kgDHcXFl7uEXRPk9qa6Nc86RYgV6VNCh1KmPiDu7HHtFsyqJmF7103A3QFr+jbGIo15Q2SZMHQbsxZYKoW4/P6DGtgjzsLVexEYHEO9IKxN6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715011026; c=relaxed/simple;
	bh=ZtS8lcUcNajD+WoC67MiBgQDHwoj62xJ41dt8MsHELg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b8lgzuRKNVtH0O+cCqRG2cSt9kpS+95WIvbM4kR6URBkox3EgU+ZDlStFcaSoOVV/UR1xcZdqUIq3CvPgOmud/2H/zfPkVlOYQRpYpK+8/SDGnm+fMPKPHxH+lG2PyNTJW/orVYzNjNvHiu6nmASjLfJ0IlUkYXjTqlf/RFGOiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XOejWgI9; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-41e82b78387so14512625e9.0
        for <devicetree@vger.kernel.org>; Mon, 06 May 2024 08:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715011023; x=1715615823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ddwM2CGl7vJRhVjDo+neqanyjQLvlT4cv1ldT0P/y9s=;
        b=XOejWgI9c4wL1LkA9fGnaTsEGbqvXzKpcYFXie5dsevu0Wb2ZCe+bxnk0IcC14P9bQ
         YP/N5w6WyDdkGLMtduG389YMOe7EkBtZrWtz5Y9Nn7ulFxN5+LFxkq81sx6kt3iqgRkH
         60PFypkhJ55YoeCaHbeyV3atB1Jcsr1YfFawrAtBoD4wdxLJrlDChuDxUG+/uxY4HjJI
         iZb4DuipROqd9pQLleAkL8rkRAFRde5LiW0hgGuZnMPWplr7oEeUnvbfZVvfvmKmVrox
         Gb6Y3mGSBh8dW9VK8VHjhe8GUwgmb2Y83SVDjxBRM5zoDfBssUWlQ8yPeDbiQYf6XLYi
         U5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715011023; x=1715615823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ddwM2CGl7vJRhVjDo+neqanyjQLvlT4cv1ldT0P/y9s=;
        b=TdlOO4GTw7cISkur3jt5E5NqnYAfYNc/pXIDkszIWIZUFun2QT4yCHigjBzZYZRX1p
         jv2FpSGjjB07C281Nj2rUL0Va3z5+LWp2B1DnR5yUacWewdk69ft8v6WYl087bKwMcSI
         m0Z/3ENQbCHe5PVoR7UDYayZank/u0vfvFyyFwZkKEf1ObQCW+acLaLgmBrJfY/a4lD6
         Jg3WasB09+nyLKbc/Ik0OOlkTVyWix8ABPQEWFVfl3wfgDgDw+k0CH9z0KS1Doc0o5hc
         UvpliDO3ebN3lztE1lAPXKK+NpIsCgeqfIzR8mlh/f+OKCad5bRCYX+UgaeKNn+NHB3+
         1A/w==
X-Forwarded-Encrypted: i=1; AJvYcCURah7n1bhJN7wz1gNwxdsLO39nB9jgrFdJaeJjY5D5yTcuN/lqXiZuYG7/5u35tpifR7x18syzWGKOWadPi2O0Y+6/O4XTSByB0Q==
X-Gm-Message-State: AOJu0YwO8LfnE6zcGlRdw4/oJ84sC0ysZdbYaqTyB2hBoDdhnhFbx09s
	YD1PRoXvuBgDZSowEp0EiBcpPm1+Xu+nQ3UC8DR/+jahSkOAFTpm9eV6wMKCCpw=
X-Google-Smtp-Source: AGHT+IEUQp+ScutCtcF5s/7UtarCLRiC92bqZUMBGgy6B2fws5M1pmrh5LYNqoTCaIaDTBhDCjvFVA==
X-Received: by 2002:a05:600c:a06:b0:418:4841:162a with SMTP id z6-20020a05600c0a0600b004184841162amr8456307wmp.15.1715011022907;
        Mon, 06 May 2024 08:57:02 -0700 (PDT)
Received: from [192.168.0.8] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id g19-20020a05600c311300b0041496734318sm20319901wmo.24.2024.05.06.08.57.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 May 2024 08:57:02 -0700 (PDT)
Message-ID: <ddd78134-6f04-4ef6-a3fa-4a2932d81165@linaro.org>
Date: Mon, 6 May 2024 16:57:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] media: venus: add msm8998 support
To: Marc Gonzalez <mgonzalez@freebox.fr>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>, Jeffrey Hugo
 <quic_jhugo@quicinc.com>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Stanimir Varbanov <stanimir.k.varbanov@gmail.com>
Cc: MSM <linux-arm-msm@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, DT <devicetree@vger.kernel.org>,
 Pierre-Hugues Husson <phhusson@freebox.fr>, Arnaud Vrac <avrac@freebox.fr>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <72860c1d-7434-4be6-8c1d-9ea177602802@freebox.fr>
 <14bda891-5035-433c-888e-b3c330eeffaf@freebox.fr>
 <803b267b-9171-8234-aa3a-fba0d738a64d@quicinc.com>
 <4349e7ea-380d-4c91-83be-d74983e2cdb0@freebox.fr>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <4349e7ea-380d-4c91-83be-d74983e2cdb0@freebox.fr>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/05/2024 15:51, Marc Gonzalez wrote:
> On 06/05/2024 16:43, Vikash Garodia wrote:
> 
>> On 5/6/2024 7:17 PM, Marc Gonzalez wrote:
>>
>>> From: Pierre-Hugues Husson <phhusson@freebox.fr>
>>>
>>> Add the missing bits for msm8998 support.
>>>
>>> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
>>> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
>>> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
>>> ---
>>>   drivers/media/platform/qcom/venus/core.c | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
>>>   1 file changed, 48 insertions(+)
>>>
>>> diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
>>> index ce206b7097541..064120127cb86 100644
>>> --- a/drivers/media/platform/qcom/venus/core.c
>>> +++ b/drivers/media/platform/qcom/venus/core.c
>>> @@ -554,6 +554,9 @@ static const struct venus_resources msm8916_res = {
>>>   	.fwname = "qcom/venus-1.8/venus.mbn",
>>>   };
>>>   
>>> +/*
>>> + * https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blame/caf_migration/kernel.lnx.4.4.r38-rel/arch/arm/boot/dts/qcom/msm8996-v3.dtsi#L403-414
>>> + */
>>
>> There is no need to add the link to downstream code in comments. Please remove them.
> 
> They are needed somewhere, to double check the values.
> Otherwise, it's just voodoo programming.
> 
> If not in the code, then maybe in the commit message?
> 
> Since qcom doesn't publish datasheets, downstream code
> is the best we've got.
> 
> Regards
> 

Commit message is a good idea.

Do that.

---
bod

