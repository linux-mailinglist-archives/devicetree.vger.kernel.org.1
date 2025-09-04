Return-Path: <devicetree+bounces-212908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE9EB43FA5
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8CA7618876A6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAAA3054CF;
	Thu,  4 Sep 2025 14:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ad3dPfKy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB88C1DF97C
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997467; cv=none; b=JYAG3uyi4YtcYGEX6aIG/YTc7Om2M75YCkZJkpM007V+j6IMsWukG4PM1PNV+ZIKmVYiH/OTpA/gBYcEst+FhGEq438tsbWp8WupXqmnnugdq8go6tfk+t/4xFE6Fo6PppsCaGsgVQhmFOsv/WaF6M8zTgRv1v0DlFDKASo8iXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997467; c=relaxed/simple;
	bh=mFi8f12a1bnt/zRkKSTt0ZafY90Bf2dQ+K7+kVMIlZU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ekd32JmyrlnZrf2V1KMxdSQiWHdCf4c8iUQ+5M5oiiPKJf0BL7vJUl1PUIdEiiqrSx/nL+sRKQfowt7CNPitq+isvY4ZXv15B2nt6m5Xh7tCnL0bD3He1oy+l8pNt4j7n/OqfFsUsh7fK6/4SDvTWjzk+jxPZrbZMkjbUTg/fPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ad3dPfKy; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45cb659e858so9686195e9.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756997463; x=1757602263; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Mm3xj885WkKRhuZyxbu5LG7P0HRA9OEYlHlAJLxX4fs=;
        b=Ad3dPfKyqQ41DNzpxCzTtiMqbCSl25zh8K3r9RAroQg2QQrjzCjBN4N9qJx3v/wYai
         /ruy2l9highlRFVPcgahoFE5JESgCnn8zuycfQLoOeJs351O+TOF5b51MK5Dxto0S5Am
         4zV6h0dxkqnYcKVl9S2u0eoT76fkV1OYkmSeLJVDeUR8PaYApYbfh4hmS3sNHbS+x7EL
         6yFjJHsw+Rm7q3awBX3LjAFWhk2OXlDWRDKpha4K51QzO8x1Bi0VN1TG0/VQV4WbeRCm
         zZuxWnhcY2f1J4rPnK1eJis6Su1WNG7vO8Rf4uUrX/d5xNDBvsNW20anGC9kXtdsn5xx
         NYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756997463; x=1757602263;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mm3xj885WkKRhuZyxbu5LG7P0HRA9OEYlHlAJLxX4fs=;
        b=OFdA56d0T/9/YkCycUL1PjVytNz/VMF1FoV+e3ZAdc3oKMyt66twzRKMhrtAEJR3nm
         v4HjXoJEaKA9cApEbWa+HwHGz01BYUlPDomghRqjFvI+3SWEYodXjozdQhaJgTdBrfBR
         gcnS0Tl9zKprKar1WkkpEQLxicFqV2FtXj6DU8mhV+J0LEzl87SmZSlbLzBaZsnblyXq
         nIyTX9ATErEvYoYxkv4/K9sXrv0H3P5t//u85LQhYKJBj5+FnbXpxrNmBwD1oYFbQNn5
         QZSys8OF4yVBoEiOWuR7opC9nxV6wiwk4MAgGLYoXkhrBzPWSGmH2Hx1X7Le2+hLxFzN
         O48Q==
X-Forwarded-Encrypted: i=1; AJvYcCW/r2vjoJi+X7WADdmIZzasD1FQvBQRNhIcX/h7/WxKeOcF4ONSBQIThB+5NIWZ0uQkdcvu0s3XMI2e@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1rap1JxmZa7aYA0CPNCj85TH5pp9EPsip4pgcziQDPOnfnrH1
	rv76fGmvVnAafydlJh6y5vWbN6UI9XZ64YJ16hGWCzmgyW4/PUm+yUIK+1wwPkzYSdk=
X-Gm-Gg: ASbGncs/3o12sZuaxWo5bDGQWGd1T/LEyGy1IWpTMb95HR4PNQY+T5zmcXFpxVn7UiH
	TFrDhCPyda7GLD8fu+6fGGnIu79oqkZjPdgM7Ao6aPIUN3vrNA83DPq2e7xa9FW3eElROfASMMP
	5KEtqdR3DM/j1p21ZIlls0PkQG74Hie0V2Yj6p0kZ8ytqDLjCeNAt6Lob9nOa6UWCUdjxfA+JuW
	xxOWjFlx1A7QjjfEg/3QgKcekxD2xT0Ethcg32uD5roDFYCkpn79IUjCmc58DlsDE9MXr/+iaWG
	IrK6yJ5wjLNQUtfz5OWx8KfMlCda2k81g32wVGQnjqTQTuQRoDQxN42LNZFuGB+wRAg7F4+vBvk
	8dYIy6Nh8tkUaQffqeyZh5PlqY28iEbWMQi+f6m/L1csO2Nc2fuWj2HulJaUzAfxHKMTKUPpZfa
	4tqqlo1szT08TE11fyV9gKBFq6H7IpWw==
X-Google-Smtp-Source: AGHT+IGkh7sZxoYPIJSgoKIuQWnB6gAGim5zG62ByEZJnBJdkEVQMXHIGjBKP7FG3mVW3hDjXTcWGg==
X-Received: by 2002:a05:600c:a04:b0:45b:8504:3002 with SMTP id 5b1f17b1804b1-45b8554eb18mr173687245e9.10.1756997462953;
        Thu, 04 Sep 2025 07:51:02 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45dcfc414f4sm22307435e9.0.2025.09.04.07.51.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:51:02 -0700 (PDT)
Message-ID: <6607f82a-e0d0-421c-a87a-fe67442c1c80@linaro.org>
Date: Thu, 4 Sep 2025 15:50:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: i2c: qcom-cci: Allow operating-points-v2
To: Konrad Dybcio <konradybcio@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-2-d38559692703@oss.qualcomm.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250904-topic-cci_updates-v1-2-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/2025 15:31, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> An OPP table is necessary to express combined voltage and frequency
> requirements for the CCI hw block.
> 
> Allow passing one, without requiring its presence.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index 73144473b9b24e574bfc6bd7d8908f2f3895e087..1bb9a70661a944c1bdc01d336475952221450dba 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -54,6 +54,8 @@ properties:
>     interrupts:
>       maxItems: 1
>   
> +  operating-points-v2: true
> +
>     power-domains:
>       maxItems: 1
>   
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

