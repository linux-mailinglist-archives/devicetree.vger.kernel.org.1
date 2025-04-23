Return-Path: <devicetree+bounces-170089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70125A99B79
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 00:22:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 169255A7FA8
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 22:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB5D1FF5F7;
	Wed, 23 Apr 2025 22:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mX4dTlbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7375D1EFF89
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 22:22:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745446968; cv=none; b=mlnYuyj694EPkokdVdWIHXECyN78igBIJp4fUX9wCmLaAIaFDYDE03Sz0VXgtBREug2U4xIygsg600FQJ0xOQAc0HF+2R8psOwo36fK8tM+m06Kj5GrEyVTTBgGBM2oDiOyo6DFRBpFliW5kJvt+7gs7jT+OBHj5aDjxXjFnr30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745446968; c=relaxed/simple;
	bh=f8rmn8x0+XiyVCnOHeO4qzpNjcf63Wjvbg0U+J0oM0I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S24oQKX+NQtu+uzcdS0Ow+ILsXahksT9q+BbeS2S06swkSs4KjiWecIUsbbewzNzEr2nYQq5h4Yb+yNHMAb6bfwy/49/L5F7XN1N7j3T+VQNixp6jPJa6f1kU8//nBekfbstHziUk6ISKZybYELNodfG86zrWUhgWhcSJaPjQvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mX4dTlbp; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3912fdddf8fso1077881f8f.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 15:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745446964; x=1746051764; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xTp47s3WR8jXpXuKbLchqgYAkI9mdRH62NADe5YGQAI=;
        b=mX4dTlbpno5hMdD2MJ5pkbt5R8HTUKicQeyoi9RZbRJw4G06mT81sLD2qcYJoxPpqS
         Mdz74RcAw0DYB/DGnHXEgt6kR3Wc6BmBNMQrRBAYhmKTlSvZZDfDzzPjvzzFPH+0liJ+
         KbZs6Gk+/mVGtXVkBx3nppBkfsH7yE7S++Kc3AwaGe+Uvm9xJt/lL9K6RO59NF1F/963
         id4Pr/EKyX6pO92/Rm9SQnmjNTJ+FImV9FalG+RhIOg3pEbtWFewUVkCqXFIyXRUY3Oz
         y8qVOje9173NI6uCOaR8k1uqyD5q1RHp7YmkTpn35yuYxGDPSHpC0dwK+NKFPcNvw4oi
         xA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745446964; x=1746051764;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xTp47s3WR8jXpXuKbLchqgYAkI9mdRH62NADe5YGQAI=;
        b=YFP8GvXDYLra4SeT6Y6buaAaK5F8fDdJzepkP49bI0DzW+kUSE2PYGnYqXHdqNkXIS
         r4ak2by3f+Gw3yygQTwfsUeFSXri8bKKljvwYXJgKuE+1ACKmvpjCw+zHu8xGHkRR0Xh
         52c7fu07zZFD2mvVHIlrbtKFiOLHrnZJMGp1GGVyK33JvU8V03zPjTJoAiAIc5sQP1mP
         OjGpx1GGPcXC6jLN/x5Mazy2T4Y2KFd+dtHpORCRtvv/4C24iFwH8EAU0jdY1kKA7U80
         4k3kKG9eoSSJmWOxEmTYZyxw2rfTpBqBw9EvymIFqUa/wNs0xtnckqhOnYb7q8iRaB9D
         cFEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfPTkaGsrbKLcdAiyDkolM8aU+xhPZJyAxLKt73Of3tJvyBeU4IGUx5Dj+JuewXmcrvxQICvS24wOB@vger.kernel.org
X-Gm-Message-State: AOJu0YzUlEHAuU91g2a+aUN/BfJaA252iHddzmuug7KiykESpl3fD49A
	WtNidQPEL7GvELKuG5JE/gyr9Htv5G9AGKLpwpFijLQN5L4IlgGnvxuRFMTzgm9jQVuCk/VZcNb
	pcYc=
X-Gm-Gg: ASbGnctxM+PqKlpa2dqrXXjFwmnkhSEcDjOsm+ylfHqzrehI98W8K9WugCo/3buYhez
	kXYK1aDWetg2QNb7gHOCdPkJ2I0Ht70lOYUIrReUI0JhtLy+zscfGqHuHAREr6cucxJi8RWQqaf
	pP3EiYIV5L5rDUu0jYCEFYJF0NpDVZlEp34pdon+936bahR7H/9yHVJ++iGl6MbdajogY+REEVa
	5v8LeR09uy97D0EkikCtqyXmC219WyvibLNE2VAw4gotLnXewkRviMFoiKAYYUkbQAA8TkLHKSN
	2lGe/j7enooactAsg8nRKAkAzLd324+ySWaFxZPVSoRtYFXFg7xnFhDkQdrqoqVWSZMuQAdUC77
	khFwAphBH+S4cgUPL
X-Google-Smtp-Source: AGHT+IFnXuOk9MgklNNThUU3rPWX1hvW7UN1+EWzXnzv4MbCmpVehJitPAXKPYi2MAqK0eYnKXo7Cw==
X-Received: by 2002:a5d:47cc:0:b0:39f:bf3:6f21 with SMTP id ffacd0b85a97d-3a06d64cab2mr29229f8f.11.1745446963654;
        Wed, 23 Apr 2025 15:22:43 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409c29b55bsm1325515e9.6.2025.04.23.15.22.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 15:22:42 -0700 (PDT)
Message-ID: <54824271-7b67-49e7-a27e-61b8a993e901@linaro.org>
Date: Wed, 23 Apr 2025 23:22:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: sm8650: Add CAMSS block
 definition
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250423221954.1926453-1-vladimir.zapolskiy@linaro.org>
 <20250423221954.1926453-3-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250423221954.1926453-3-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/04/2025 23:19, Vladimir Zapolskiy wrote:
> Add SM8650 CAMSS device tree node to the platform dtsi file,
> it contains of
> * 6 x CSIPHY
> * 3 x CSID
> * 2 x CSID Lite
> * 3 x IFE
> * 2 x IFE Lite
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 189 +++++++++++++++++++++++++++
>   1 file changed, 189 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> index c2937f721794..b24ab52413f6 100644
> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
> @@ -5065,6 +5065,195 @@ cci2_i2c1: i2c-bus@1 {
>   			};
>   		};
>   
> +		camss: isp@acb8000 {
> +			compatible = "qcom,sm8650-camss";
> +			reg = <0 0x0acb8000 0 0x1000>,
> +			      <0 0x0acba000 0 0x1000>,
> +			      <0 0x0acbc000 0 0x1000>,
> +			      <0 0x0accb000 0 0x1000>,
> +			      <0 0x0acd0000 0 0x1000>,
> +			      <0 0x0acb6000 0 0x1000>,
> +			      <0 0x0ace4000 0 0x2000>,
> +			      <0 0x0ace6000 0 0x2000>,
> +			      <0 0x0ace8000 0 0x2000>,
> +			      <0 0x0acea000 0 0x2000>,
> +			      <0 0x0acec000 0 0x2000>,
> +			      <0 0x0acee000 0 0x2000>,
> +			      <0 0x0ac62000 0 0xf000>,
> +			      <0 0x0ac71000 0 0xf000>,
> +			      <0 0x0ac80000 0 0xf000>,
> +			      <0 0x0accc000 0 0x2000>,
> +			      <0 0x0acd1000 0 0x2000>;
> +			reg-names = "csid0",
> +				    "csid1",
> +				    "csid2",
> +				    "csid_lite0",
> +				    "csid_lite1",
> +				    "csid_wrapper",
> +				    "csiphy0",
> +				    "csiphy1",
> +				    "csiphy2",
> +				    "csiphy3",
> +				    "csiphy4",
> +				    "csiphy5",
> +				    "vfe0",
> +				    "vfe1",
> +				    "vfe2",
> +				    "vfe_lite0",
> +				    "vfe_lite1";

Could you please include csiphytpgX for whatever number of TPGs 8650 has.

Otherwise looks good.

---
bod

