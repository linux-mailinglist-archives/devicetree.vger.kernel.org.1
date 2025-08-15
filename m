Return-Path: <devicetree+bounces-205106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B37B27EAC
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 12:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B25DEAC4F2C
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 10:45:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF592FFDCB;
	Fri, 15 Aug 2025 10:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nyECjAGZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7FE2F99A8
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 10:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755254683; cv=none; b=GVqvc8YlNvh56G71+pyzXHdbm9gzCgw2cWxGZbVuj6BYis9KMaABpQ2gqM57J3giT27WLiAmOKi4rwwBJBd4Tvg8SIRiZjV1G2jNogCFRKfi/sll4TIo/+PirPUzbD4lltT+YJxBq9vUWOggFsW/JxytiP6vpYhnPFFeyUCajII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755254683; c=relaxed/simple;
	bh=8LA+2kJNuPIw2fJF/HLy1WPGQ4k/QzgOM/5kdp6JFgo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GFcXjResFI54Lm10Yb9KRDP6KlKZgFGRHZBA55N3y4PIsNqdj5gdL6lWAkjnbZlG5SSMAzWabTuHNf6mwmnAjEY1ioeBzk6eabEsBBzUL5V2GkJ/XLf9cH89qtvXORRTMGvmviGXN4gh3yfccFue3VrBQgHEofFKRgcVvJH6cmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nyECjAGZ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45a15fd04d9so18700075e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 03:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755254678; x=1755859478; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9VXN7dyuqMDF593piqzOKDuFJ2+OEcBzrRSpDmpGS7k=;
        b=nyECjAGZCoVzy/0AtH4YgMEvaxuJO8Zc4U/+dRSM6fRvVrTO5mByLq3BECjG1/3jmD
         P8I/OtI5JjlQlvjz/gk6OzXP1wavt74YzBA+/gVlUrl+QnenkZpyWOB2Hj+yGckb0IJV
         MV8HpfbN3gRpIRUU4SnSxinVNq3kdnyJTrYOjlOZXHjPa5x/IL26oRKnAv7hRi6OSbg4
         DHRHftdfVRZIeg69irsGzY7x2E0LqS1aUQzVEa28o8WF34XgtdGSKp7SOs1QQ+EIyz42
         rzACdYyhOfM+G8XjvWd7eU/Vpl95SDoG9QnMhGPW/irzSg6vnYj/rpa4cucCPnePxwGi
         09uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755254678; x=1755859478;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9VXN7dyuqMDF593piqzOKDuFJ2+OEcBzrRSpDmpGS7k=;
        b=ozOS/sOOHq3g318CTz5X/TxuzCP+M0KKlDJfDPx1lpe/3V0w/B/Fl2u/Dx04Il0OAS
         zy/sNLUQRjCI6C2EpJHPYdw7DE/mnY6JCmOAbz0B/u3wZ8+rt+ixgRQ/SQhRaM/KSjkz
         GWwUEk1nv00Gnf2MlHlrnvVrfyWVo8zuINdgQ/8Qj5pDs3damnYxINYH6GoYwA5XpmN6
         kxxkzu6inFlBHAsrPPw5Kq7RNwq98Q6teZ5dZlEzZadJc7nOxDezjiltwoL9eEvhxcB3
         s3W2U6U8f2VQuckH/75T6amLfFydjEGPDoalctcOnckaf85SwTJI4FlFWHljijp48Z2q
         Bqkg==
X-Forwarded-Encrypted: i=1; AJvYcCWEZa9hELdMz0ZXP8DJbSl9G9mmMXPmmCvKVqm4fEY1vXUi52Qv0mB4CBT/JASxCLry9U07vxj6Op11@vger.kernel.org
X-Gm-Message-State: AOJu0YzhtlwYYgHAjZvJbArTfCQe6MITwuZGp+36KU29pxm0p2OGM/3z
	KoiuhlZJOo7mtQYzJls20GtqRkXo7TVDXUpcMsFu5ap1BoKRHELmIWVddmFXqNuOHN4=
X-Gm-Gg: ASbGncs1wAEjYp8/Q/0NLKffgt/OIylqkCIdQSRy/CWut+cuRQIpi1ipraMfx6r1tf5
	ZzXDe2OdTMhC9xSlM2zhwUjZ4ty9nO4IE5CtGz1v1o1vuePKKOIDgZF1lt35LWZDNZqSarUhc9c
	Z2wIutFq2mMMbbiqYUtX+dvDrtLNkacY9IduovDC+p5tu3mq76jRp5n7dtFn6jxs9V8wTiC++vU
	QKEIPwf3zXuK698V2Vbt7MjDbpBG0q+NB71LzhMHhQNuVONKmYzMmd6sXsHl3JJw0Hly7QLLH5r
	Xt+EMoe6rslS1yIscyNCWyR0YolZlNXUL0/tPVzTknQFmJfIcJs7a5wkuPpqke7UKTuq+Np1VSU
	IWSkDE0RLy2ZE+RmDl5lBFbmslMimICc41j/DN3ig/AH36jMNZersPGifCl7Rd/o=
X-Google-Smtp-Source: AGHT+IG800cLWLqatWasBLVAd1JmHq64uktJOwC1nVkGq12rIf4uwmr3k1nR0sv0K30TYAXp61UV2Q==
X-Received: by 2002:a5d:5f8e:0:b0:3ba:cfe3:ad98 with SMTP id ffacd0b85a97d-3bb4a1f88ccmr1707195f8f.4.1755254678411;
        Fri, 15 Aug 2025 03:44:38 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3bb676c9b27sm1443907f8f.44.2025.08.15.03.44.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Aug 2025 03:44:37 -0700 (PDT)
Message-ID: <75df9709-5778-4a71-bb55-1151c6c657dd@linaro.org>
Date: Fri, 15 Aug 2025 11:44:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: i2c: qcom-cci: Document sa8775p
 compatible
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, vladimir.zapolskiy@linaro.org,
 todor.too@gmail.com
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20250815-rb8_camera-v2-0-6806242913ed@quicinc.com>
 <20250815-rb8_camera-v2-1-6806242913ed@quicinc.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250815-rb8_camera-v2-1-6806242913ed@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 15/08/2025 08:07, Wenmeng Liu wrote:
> Add the sa8775p CCI device string compatible.
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---
>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index 73144473b9b24e574bfc6bd7d8908f2f3895e087..54441a638da2b7feb44741264810d7a0de319858 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -25,6 +25,7 @@ properties:
>   
>         - items:
>             - enum:
> +              - qcom,sa8775p-cci
>                 - qcom,sc7280-cci
>                 - qcom,sc8280xp-cci
>                 - qcom,sdm670-cci
> @@ -223,6 +224,7 @@ allOf:
>           compatible:
>             contains:
>               enum:
> +              - qcom,sa8775p-cci
>                 - qcom,sm8550-cci
>                 - qcom,sm8650-cci
>                 - qcom,x1e80100-cci
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

