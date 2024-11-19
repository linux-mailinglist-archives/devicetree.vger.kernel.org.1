Return-Path: <devicetree+bounces-122843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A96909D2895
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 15:48:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF722B2AF73
	for <lists+devicetree@lfdr.de>; Tue, 19 Nov 2024 14:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E09A1CF7D0;
	Tue, 19 Nov 2024 14:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OAKvNKi6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 954751CF7AE
	for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732027631; cv=none; b=PAAyfskYKRcw0lIu3n6VX4SQt1j68RIitYUWZ8MJ7TDzIXJRp/vwjhvucktyxp9VUSyGxxxbU/XZwVfWSvHF9JS/bbiQVsNfKALgRxrLhXcoVnNbCY/BEwrU0Z0BbnVqifnqwFo5pbCuR9EP7sJkRmrfgwG3MWt82460s9hx/5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732027631; c=relaxed/simple;
	bh=M5reqClpnXEGKbJivmb0c2B4xyLqe0tl8QAcSVBP7f4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SyMW3Iw8ifM70rhOFkRn3gcxelk51A2edIgiZvf1InMgpfM5ms78gVVVLDV++IQe25BZXkqi4jvEmrOSRn5+hsnrKL3Uo3TiTqxi/Hg8OjVNNJqIiJuNPOIAp0zBLqp6k7MacFXDGGrrYsKj0rKdSIQsnUtFb1aue70IAROvQ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OAKvNKi6; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539f4fb6312so834841e87.0
        for <devicetree@vger.kernel.org>; Tue, 19 Nov 2024 06:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732027628; x=1732632428; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9WsSEbYpv+M5MDKP2KDsbFIUiIJoavGmKLXjj3Hzv88=;
        b=OAKvNKi6V98YfQK5ZOUHe2O7dvLUjFQcM0Afw3qgZ0xk71OuokcyNTeIXqELHay2rG
         Evrsm/b3Z5A5x5li42+M7qT6QKPYsmQR349o9SisTM9zhVXXXa6gImVSegVHTZusKWYd
         qVx/n7gDbUiyTpYvYoNVcZgopba4ag5kHUiPAC9NFcuiJLxqCuJjtEHMdCbO6nFn/P2x
         BvX42Pb35a/CXvJ2DXtoYy24zJVEeByalt7rJWMlELifxraF5KJ9+jshuuR9nM3rVefr
         EdL/oj0y2g8a3lnD2J9tk7SEXInyQMbyo/go+I+6DxMXKv9RSFJN/mVlylT/jGkD2+Lt
         8/cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732027628; x=1732632428;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9WsSEbYpv+M5MDKP2KDsbFIUiIJoavGmKLXjj3Hzv88=;
        b=vkHJow+nD9wO6EWDpy6Tq982rBtjdnUFiAWPkB07VGiqeVAFYgjCzpMHwbpd2289wS
         XLf58V2UZ4but5N3QCaiHtg0xuCP19dUov3xruUsE66Gd22M6J8CepfdAu+DQHO0RdCD
         VsyClowH3mGbmtPK1opTHEcg8b5ezv4QvEqMiQYt2kcUjHJ+St02SigQdlB4z9ck3WZZ
         8GvgXfntHtaStTWNXs2zSYst0gCq3pAC9Yw+phOTaEgMxtgO69/yWtKfM5OJ7T84hdXC
         mP/yRiNgx3E0XdW1n5ik43l/deivypcG+IEEMr/TD1PyTnG1iPikgjRQMoxfM5k+7XB9
         +vcg==
X-Forwarded-Encrypted: i=1; AJvYcCVQ3ZmxdL699ZogC5PJ8lA0O0AYlHxYeKfvfZthMUTjp8ntgfi2XxZgMPaD3Ze+m9xBuuE+ItMxJGVi@vger.kernel.org
X-Gm-Message-State: AOJu0YwkT2j8tooYnF4vmx8Z5ILBiHWiBlE4s8LhcZ2iWVFQdXr4KaTg
	szTNZsQW03A9KzuSz9Njnx1fSAU1Yxw1Th93Ps9i/yjNMYPi3zs2yhrokTOYq+0=
X-Google-Smtp-Source: AGHT+IHTLBdeJgPwTUn6DWi4SfvXwiEP9X/JyRKWvJUtlHfWhYL/v31RZs+xGhMbhND3Eg5LCFOX1g==
X-Received: by 2002:a2e:b8c1:0:b0:2fb:62d1:12f with SMTP id 38308e7fff4ca-2ff6075a696mr17145621fa.11.1732027627807;
        Tue, 19 Nov 2024 06:47:07 -0800 (PST)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff69ae8823sm12433091fa.73.2024.11.19.06.47.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 06:47:06 -0800 (PST)
Message-ID: <91592bff-4042-49c4-b884-8113d0759a3c@linaro.org>
Date: Tue, 19 Nov 2024 16:47:04 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] dt-bindings: clock: qcom: Add second power-domain to
 CAMCC
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-0-54075d75f654@linaro.org>
 <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-3-54075d75f654@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20241119-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v1-3-54075d75f654@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/19/24 15:10, Bryan O'Donoghue wrote:
> The x1e80100 has two power-domains for the CAMCC not one.
> 
> Capture this as:
> minItems:1
> maxItems:2
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>   Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> index 0766f66c7dc4f6b81afa01f156c490f4f742fcee..afb7e37118b691658fc5cc71e97b110dcee7f22a 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
> @@ -39,9 +39,10 @@ properties:
>         - description: Sleep clock source
>   
>     power-domains:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>       description:
> -      A phandle and PM domain specifier for the MMCX power domain.
> +      A phandle and PM domain specifier for the MMCX or MCX power domains.

It's a list of two phandles, not a one or another one. Can you please


>   
>     required-opps:
>       maxItems: 1
> 

Apart of the review comment above to be resolved,

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

