Return-Path: <devicetree+bounces-127883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 673209E696A
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 09:56:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 027D31884412
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 08:56:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B7BD1DFD8C;
	Fri,  6 Dec 2024 08:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uqjBTK2L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740D41B4122
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 08:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733475370; cv=none; b=cjSOtXGNI/91kUnxt+os0vcvoSL3lCEzAc5Izv41EyOj9SnSatGDpINomNa77XejDsVKuIJyx20s39rriDQD2bmQYv2LiU08IoDOXXXq1P60TxWfAx6FrWz98EHMrbnD8MFseuD/BHdYEjVz5VSOsgEimstfr8Vj8M6uTavA3TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733475370; c=relaxed/simple;
	bh=DOJSPP8Ve2tC1hqg6s8VuO/WQMxAmJRjapcFvpY/mN0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P5aojamvURn7ACeAJQIVPTRICfOv08hJEuGW6U+ZKGgqu7ZwGbBY+BqswUdx2NA8FOYcIBkYNmduqXOfn2ExqzzxMhz2tSAan2URZaiQR/o0socXeUpuTFWrZROYui86cKSU3z+S1XCxjco22IjFUdsgpNu8zEAG2UWSgQjphFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uqjBTK2L; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4348f65e373so2262275e9.2
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 00:56:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733475367; x=1734080167; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HSgIBcefpJRbNbP13a1FZf8AfN5Xy4J6ToBZHWVVMys=;
        b=uqjBTK2LnLCT4Puzgv0UDYqSPs8w/0Xfio5MMHCgBh6S75/Epqn7duUI5UJ0OS5Ld+
         f7kQkHZd8XuIbRwyupwVV/N0WZHrAHG3WSOInwclfNoLOnHQHtDLw7DE51zsNbiRtZO5
         7Ac5XnX24wV3vLb7r+uAeYmCXOc1i7wljm+hKOjc4VdXEDoXx6Nqnay0cqjwV+0jun0y
         eHU0TRrr6K+hUB4D4dhrWOb+UMDB1ySIyDv4Jv4S2FjzB1iS/PzHtzs4k9lN6luORSoN
         iwKd7jpJ00EhjXukbGRq9JPSb2RQrSzFxOhRfWNvWwE7C6RBWqJOf4tw43NpVwlQfsPw
         tg4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733475367; x=1734080167;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HSgIBcefpJRbNbP13a1FZf8AfN5Xy4J6ToBZHWVVMys=;
        b=GQYxUDhjz5MXXS2yThKitTalkxLTdY/wPIdvKl7XGktqD6UaG5ZIwKY8d0+CRoSO7r
         pt9o0Uh0ggeWVQLA9OhHx2IkhNkLsXTgdhCIEjpqVd3Xt/1zfj84opoAdKNYA61QLodj
         fyKBKLeGR8JrhJSi2UBPuGnLsxivAfXS/8QKU09EUCjI8wufwOzLOHPf8MGRX3MPa1fJ
         /5YmIyA7PDBlCAuoMOf+uzi6sihzBMQCbQAsRw5g0EQECUe/aG2m8pSI++7PmaBkgmlp
         31TfVT5KalHd9ueB6xp94bOZwXm5PJw6dfTFXuOcfF+W0xlanmnY0QhcMd2fE8ZPw0Xe
         Twrg==
X-Forwarded-Encrypted: i=1; AJvYcCUUIeEKA/3NI+1lMgEILnRFGTwkRQ8tRj8UPnsTmw8nBi8ZaPg7jBFQ2+apglGatlSzBQSr1lpuYQto@vger.kernel.org
X-Gm-Message-State: AOJu0YwnpdkOobXyO+G8I0Xyf5sS0pZqawJNva66MH/yREQ4xJOhGCO1
	yaEF7x4o1nn3n7PzXsisQOAuaCi3H3wp3FqQWYXRQfGFaT6XAmxGBQ1ae5jGx8k=
X-Gm-Gg: ASbGncu9dvCDPs58/BrLMaMikBOxJka4hLy2N5EHxz1bwxulCSDkOYS1ZTIKtQjFHDH
	XXoQ16KGKfnXZ8f3OwNig+CE1rhl3ep0l44xcF0df3Uo4iaZbDGvPtywoD7mhKkUy5rMGYiYZ4x
	p9BNtcbeOJ0SyU63at0z0gJW0uEfd7g4Iws0W7HqfgNum4o281scNGWsy8QHflGhrpzyBfTECxX
	RPvxdGaKxChabuI8YwIjqyiR7/SQSd7Ui0jaefnjGP/EEH+3MOorovpvgiKtorYIaoYRg==
X-Google-Smtp-Source: AGHT+IEJvS0U1Yqa4mhRHpeQALlox2SfL5+RyU5QXY7e06ype6AbxxfKlQptSFPvutZ5Alxw9Zn8ig==
X-Received: by 2002:a05:600c:4f82:b0:432:dc5a:b301 with SMTP id 5b1f17b1804b1-434ddeda72amr7187515e9.8.1733475365566;
        Fri, 06 Dec 2024 00:56:05 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434d52cbd5asm86345175e9.40.2024.12.06.00.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 00:56:04 -0800 (PST)
Message-ID: <28afe0ac-5d16-4786-9259-6de5d090b491@linaro.org>
Date: Fri, 6 Dec 2024 09:56:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sm8750-mtp: Enable CDSP and mention
 MPSS
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241122-b4-sm8750-cdsp-v1-0-9a69a889d1b7@linaro.org>
 <20241122-b4-sm8750-cdsp-v1-3-9a69a889d1b7@linaro.org>
 <d43a2a74-9867-42b7-8810-df081f037831@oss.qualcomm.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <d43a2a74-9867-42b7-8810-df081f037831@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/12/2024 18:34, Konrad Dybcio wrote:
> On 22.11.2024 4:26 PM, Krzysztof Kozlowski wrote:
>> Enable the CDSP on MPT8750 board and add firmware for the modem, however
>> keep it as failed because modem crashes after booting for unknown
>> reasons.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 15 +++++++++++++++
>>  1 file changed, 15 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> index 8eeed7f2f7766326cfc7830002768087e9783b9b..e2562ea5996ddfb1bee03b367082f4e1890131f3 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
>> @@ -791,6 +791,21 @@ &remoteproc_adsp {
>>  	status = "okay";
>>  };
>>  
>> +&remoteproc_cdsp {
>> +	firmware-name = "qcom/sm8750/cdsp.mbn",
>> +			"qcom/sm8750/cdsp_dtb.mbn";
>> +
>> +	status = "okay";
>> +};
>> +
>> +&remoteproc_mpss {
>> +	firmware-name = "qcom/sm8750/modem.mbn",
>> +			"qcom/sm8750/modem_dtb.mbn";
>> +
>> +	/* Modem crashes with "DOG detects stalled initialization" */
>> +	status = "fail";
> 
> That is a bad sign, let's hold off merging this as we may be
> missing some resource..

Luckily there are reports that all modems on recent boards crash (sm8550
and newer), so probably nothing wrong was in this DTS. :)

Best regards,
Krzysztof

