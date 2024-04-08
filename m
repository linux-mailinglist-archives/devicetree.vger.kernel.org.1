Return-Path: <devicetree+bounces-57238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE6989CAC3
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 19:27:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC0391C24D09
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 17:27:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38EF5144315;
	Mon,  8 Apr 2024 17:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="V0Owr5Gd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE551442F7
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 17:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712597215; cv=none; b=kotDb2WhRXoeHXSI04I+vLJeVrfLjcshTEKFwL7yOo/6z+0wqIf4ARyWEF8+S6s1V4BUzM3nGsZUtokSTr2zB7Rp68BhgR0XtubmA2wWWkeIiI+RJzQ4YaQ0CcNB+NhrouuYj3Kn6lHum29NgVAWv5wQrfLQBBwDLmoeDWh4j+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712597215; c=relaxed/simple;
	bh=di1fZE/NdPgQEly4hs4vKPLsKw0xKFpHQOpERMLkIqc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aNqYGNA2aulH1fZ//NAuYDoNBJn2bmrXhKmm4ZKMuElvjQcvEh6h19ck1P86Zrh+WpZtgIbvoFl8/4R7apDhni1durZmJXkzFoJjiORjBDeGB8s1CpGblLZ5lIbm1akbc3YL2p9ax18n1LWb3auNLGCp55fiBOXQLqss8zZd//o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=V0Owr5Gd; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-516db2214e6so2903653e87.1
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 10:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712597211; x=1713202011; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YnWxjGpHsquU6yu3iiYYdxaEux1iqzEpGys5Zu0Xiy4=;
        b=V0Owr5GdYDgKciyt+03vDpMucyvb9nGRXNJGDeKX99C4Mr2pajPzGWvh+1aH1huDFc
         Sehj8/3rgW66T9hIruGPDaKZtVXLJiFYDCEtSdKCEW+7JGDK1WN1VeCYB634SQ8tpgAi
         EBRxL4/RFA0CTgK4+wfDGQqx9E+Sw7XGDf0mdTT2FEvOE6+GBAzC9T48tZknpymfmXin
         eTNPS9/eJAHBfKEH2Ocq4jfPMYXT7KVT+4q8l6Ex4vy10I2paChTTP14KN1Vw0Fg34HT
         sXIlBnsT30SEGV1SttOga/kSVRexBVUi7oSWNP7N56CoCtQcvn6uRg3hPXgDFjisKXdf
         eX6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712597211; x=1713202011;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YnWxjGpHsquU6yu3iiYYdxaEux1iqzEpGys5Zu0Xiy4=;
        b=ZVSTgn3yCZDYHhK+6PAjKB59sQw5MYxvWrWbnQpY+kpZh0gVRZxEX407DWGXvNehz2
         iP8ANlDeNaGyJBJ2B39KvTNO+yQ2uTAxO4jNhB/X98+FVYV8Zm6YeB+LdAJ0+kXpl/X/
         wzLJNxw+MLHVsZwiTAbfgfyvKk6Va3qhljo6gFkfQVlJGflOEaSnpxq79eVB/ZaUI+/w
         UW1Mtf/wSuIlCKxnXII9Iwz5m5vs4oeFn4wgEOPSoeiaD8eTLEEcsoMiA+CtGXlVvlRp
         aYVUxUY/EBRhBwaHM+zEzZUdaAtkFkc/7nvPxI779iwDjGsGXHX5k7Sg8M1vyQwtn7Cp
         SfWw==
X-Forwarded-Encrypted: i=1; AJvYcCUBD0vfonas77TYyNzYq6g353aomkoRVMxO7Y2QXfuXFLYow/clSn4MQ+oyZ1QHCNnrlUsrqS2wlcsBzhHgWvy1bi8C7hrTJlDGGQ==
X-Gm-Message-State: AOJu0YwNg2tMOWhnV1GTRFG2WYJ0Bwmz+Jrly6+MUoVqqG80ThjSMNVW
	lvNZwijWZDE9kwKtLwLnKDdiG4Jv5iqglO3DnIgHyGDY5+dIUcGWZUqjtRigz0Q=
X-Google-Smtp-Source: AGHT+IEnJUAo3DBmpf41CIoTlZWQyHmNHUulRSi6MOsB78hKpauHf1ARPbItv9kKkKMQ0/XCs5RmLA==
X-Received: by 2002:ac2:545b:0:b0:516:c3e1:15c5 with SMTP id d27-20020ac2545b000000b00516c3e115c5mr5703479lfn.69.1712597211312;
        Mon, 08 Apr 2024 10:26:51 -0700 (PDT)
Received: from [172.30.204.25] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id v22-20020a056512349600b00515cbf19fe2sm1247477lfr.142.2024.04.08.10.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Apr 2024 10:26:50 -0700 (PDT)
Message-ID: <794f7e3c-6467-4da1-bc9f-3853459bbd78@linaro.org>
Date: Mon, 8 Apr 2024 19:26:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: qcom,pmic-gpio: Allow gpio-hog
 nodes
To: Luca Weiss <luca@z3ntu.xyz>, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240408-qcom-pmic-gpio-hog-v1-0-f61fc5323110@z3ntu.xyz>
 <20240408-qcom-pmic-gpio-hog-v1-1-f61fc5323110@z3ntu.xyz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240408-qcom-pmic-gpio-hog-v1-1-f61fc5323110@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/8/24 18:39, Luca Weiss wrote:
> Allow specifying a GPIO hog, as already used on
> qcom-msm8974-lge-nexus5-hammerhead.dts.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---
>   .../devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml          | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> index a786357ed1af..510a05369dbb 100644
> --- a/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> @@ -424,6 +424,10 @@ patternProperties:
>               $ref: "#/$defs/qcom-pmic-gpio-state"
>           additionalProperties: false
>   
> +  "^(hog-[0-9]+|.+-hog(-[0-9]+)?)$":

I see a couple bindings do this, but I'm not sure if we want two
allow two styles for no reason.. Rob?

Konrad

