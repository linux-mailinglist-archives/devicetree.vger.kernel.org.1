Return-Path: <devicetree+bounces-100846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D40496F27D
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 13:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF375B22325
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 11:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496E51CB15D;
	Fri,  6 Sep 2024 11:12:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l+gBbnbh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF248158866
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 11:12:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725621161; cv=none; b=jTZX8Ltn2fGR6NkMhClHvXeQ+Zw19i4HGbe4O+5olvtsMBEli3W7+i+Bxt6QbykVFMfx7GyszkpKc+Y/9ZtV0NA8QvdCzzsY37FN6nHUUwiwHKbcknFKb/tC+e2E3RFZy3K5hf0MJDqxGlToiZsa9nXWeSdhCs9+SAHJJnY3XFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725621161; c=relaxed/simple;
	bh=oQtAD1FetiqHtxs9aWVxryJkneu4fHYavW3GHL9Qcss=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=V4xdBTreZJnxkNLUFI7VQFkowz1TuCaP8Vn9FRJWUgSoUi+XWfGnleZ4x76vkZZ5C3YIgh62wXixHHW2eL5xx7IxChNO2rbaSS53eiCBfnCCHkPpjQ2LU0URCGzI4+N48+nOze8UnewU5S7SK0X4BeqJayPkR6NRhaM2GEIsj8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l+gBbnbh; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a8a7596b7dfso281589866b.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 04:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725621157; x=1726225957; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QgXvLGCep82LPzEwbe2yqCAiaQWBoloxQdBQG+ow3so=;
        b=l+gBbnbhrwT7Y57e3mA4L7YrYMZef8b3XOnbpJFinKnEiJ3XwIQTi2JN2UuP3N11vl
         eDAPkKA6KW8KY2RvqFiQ/KRprj1EYudviurj8mhvAp/1XnfUXPcPO6Diw7kTqosS9W+a
         DnICZOCbhmPjrmuc4TF4JuV5EV3gv3uzQhVG/vjVR/w/9AQ8RzGOTn+JFma0Q8lGxho2
         NYFStLyhmOLIOEqPTygRUfXjsMpCaPvowi1f7mlFxuN2Hyh6pLJfBpLpVISs5HCwPeNO
         r7l9UVd/3eRCUeSLFaRI5kVigQaaKZZfkSrizirFARLPnqHGwPNLR+a3ynb64kNgGuPi
         69AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725621157; x=1726225957;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QgXvLGCep82LPzEwbe2yqCAiaQWBoloxQdBQG+ow3so=;
        b=iSDwWGhoIDw7lt82QzpMPoVhb3YU/XxlsFr/rPOjXH9Jd1H8WYGmuZZsnmLIJOpq8J
         a99iGS8oGIgnY+CqMcf/L3Nlbdldtna1uf/lurmPtxrHYFHGbUVsgXz1vsEeseQME124
         dy29ZuqmEz7XdyT+2yZ4Wz6kXlj+G/HHU03z7w7Clfb7LercJFD5hVnS9GreUYAhP/Ir
         a02rY6Go9/zJQW6xQyTEYlao9EK5h1GBfj/TYAE1EMoXMO7o3kC3l24kb5xGRD90GjAO
         h1XgbND1Fxau/38Hql4DJjHcwuhlVzGZPHty8CCj4IIhVSRp8qOt/19y8CjcSFCQVeHo
         AcJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuc8r75aOU/xV1LlDe1opBq8K3Vg30su/j/w70VmQ8o/Lk+TO7VuXLyY7xU8UK00FTfWzQ/8Fg1RDl@vger.kernel.org
X-Gm-Message-State: AOJu0YxWAK+Luhovp6HD9W495p6Y9oKRPxww6iTctDZf0kSRA8lPLMH3
	6L1ek1UN3pWplO7VeAA3w79K5TCvNJ2EeoN8luAqf9YUaNmHNY88VPO7530cUNM=
X-Google-Smtp-Source: AGHT+IHL6Z5DDnWZRhwexBDXPmEMZCS6zREQYMuwGn65I6pc7O6ayAKo1Ily9LOBCoWPQosr5esQqw==
X-Received: by 2002:a17:907:868f:b0:a7d:8912:6697 with SMTP id a640c23a62f3a-a8a42f8afeemr956888366b.3.1725621157136;
        Fri, 06 Sep 2024 04:12:37 -0700 (PDT)
Received: from [192.168.0.25] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a8fd41256sm65773266b.172.2024.09.06.04.12.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Sep 2024 04:12:36 -0700 (PDT)
Message-ID: <92c6ffdc-2449-4c92-b177-87bac0f39ab0@linaro.org>
Date: Fri, 6 Sep 2024 12:12:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: sdm845: Fix interrupt types of
 camss interrupts
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20240905164142.3475873-1-vladimir.zapolskiy@linaro.org>
 <20240905164142.3475873-6-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240905164142.3475873-6-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2024 17:41, Vladimir Zapolskiy wrote:
> The expected type of all CAMSS interrupts is edge rising, fix it in
> the CAMSS device tree node for sdm845 platform.
> 
> Fixes: d48a6698a6b7 ("arm64: dts: qcom: sdm845: Add CAMSS ISP node")
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 20 ++++++++++----------
>   1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 54077549b9da..0a0cef9dfcc4 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4326,16 +4326,16 @@ camss: camss@acb3000 {
>   				"vfe1",
>   				"vfe_lite";
>   
> -			interrupts = <GIC_SPI 464 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 466 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 468 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 478 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 479 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 448 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 465 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 467 IRQ_TYPE_LEVEL_HIGH>,
> -				<GIC_SPI 469 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 448 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
> +				<GIC_SPI 469 IRQ_TYPE_EDGE_RISING>;
>   			interrupt-names = "csid0",
>   				"csid1",
>   				"csid2",

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

