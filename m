Return-Path: <devicetree+bounces-18092-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B04157F511D
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 21:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1ADE1B20C0C
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 20:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 361865C8E0;
	Wed, 22 Nov 2023 20:06:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pxi6O8hO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EE4918E
	for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:06:08 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50abbb23122so110516e87.3
        for <devicetree@vger.kernel.org>; Wed, 22 Nov 2023 12:06:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700683566; x=1701288366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p6ugU+Nev/JqzL/vcVugO/dwomn06Pl4VoY9cM5bR9s=;
        b=pxi6O8hOyVXtoNlp3q0rSdjy7beZAtTHlj4JvMYDaxLG0X5kr9rDseYr2rUsI3ttV/
         EQbymHY3dHSFB0eO15+91lvpBFmoXxyCpLCd37bcKWRmfUY3YR5jjDY9IfFpzxAE8xcZ
         zfdWTR+qQnIa+CMxLK4sNkBmy1BLaGFXK6VnZusQBG6z5vuztNLHgyPaSJU3fvN9VBe3
         csQbIX50ENzqKhGDjfnJv+SvXIkuxCu20ySxQ7gtAOajFSNydp6a1Jlf0b3V+9D8AMf+
         ueeu5j8CPoxiAzRupBRmBRaqXIhbt9l7A8Qs2Efcc/46ii5QmIxa/cxVrzp8YcuFh+GH
         mO/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700683566; x=1701288366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p6ugU+Nev/JqzL/vcVugO/dwomn06Pl4VoY9cM5bR9s=;
        b=IRx9jrYIt+7nMagPra4Z3P4h7iYT4PzkyAMzoAbLQITjYs5HcWIu1RlUmVsOrdp6XP
         EOsNxQ2nhiYbd3Hnfqw9QRu5o8pUVyGGKcVMjbYpa7cSC9pxFPdCB9HdqLI9/qXJ+HlK
         SKY6iZLuslBHn03yJu4g3JfsiSMmF8ti5eSAkJhOkMuYJfLznR/CfLlJij5pLE2MVwq3
         j8tGx65j+1C5z5MIW3TObT/cWMj4Qby1se5HAKLWuCYsnaSjSqbIxgV1qBXLOVZzHAnM
         GIy9TNhqJaXp5gaUwmc0OxkbCPpmY0AT+G0329XY1zGeTZaWa1fwnV57I5dOU/WrS+EZ
         puzw==
X-Gm-Message-State: AOJu0YyOGFefPzmiVsIpIQ+aHyGjfDTENh4m38JqWQ0kWFJtPvGpWSzi
	9R4KbLCB7MRm2UUD0E6ht0YOSg==
X-Google-Smtp-Source: AGHT+IEGcqysnGpkEQB27ESk8xR7FqeNzqxGJFqT1B45/tfrPc+TMWSEniSs+xmGmoGB6siKxOEO8A==
X-Received: by 2002:ac2:4c8c:0:b0:509:44bc:8596 with SMTP id d12-20020ac24c8c000000b0050944bc8596mr2538729lfl.58.1700683565986;
        Wed, 22 Nov 2023 12:06:05 -0800 (PST)
Received: from [172.30.204.74] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z15-20020ac2418f000000b005079ff02b36sm1932808lfh.131.2023.11.22.12.06.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Nov 2023 12:06:05 -0800 (PST)
Message-ID: <86656263-689d-4979-a3e2-6026bba69d08@linaro.org>
Date: Wed, 22 Nov 2023 21:06:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 7/8] arm64: dts: qcom: sm7125-xiaomi-common: Add UFS
 nodes
Content-Language: en-US
To: David Wronek <davidwronek@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Herbert Xu
 <herbert@gondor.apana.org.au>, "David S . Miller" <davem@davemloft.net>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
 Bart Van Assche <bvanassche@acm.org>, Joe Mason <buddyjojo06@outlook.com>,
 hexdump0815@googlemail.com
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
 phone-devel@vger.kernel.org
References: <20231117201720.298422-1-davidwronek@gmail.com>
 <20231117201720.298422-8-davidwronek@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231117201720.298422-8-davidwronek@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Level: *



On 11/17/23 21:08, David Wronek wrote:
> Enable the UFS found on the SM7125 Xiaomi smartphones.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>   .../boot/dts/qcom/sm7125-xiaomi-common.dtsi      | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
> index e55cd83c19b8..22ad8a25217e 100644
> --- a/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm7125-xiaomi-common.dtsi
> @@ -398,6 +398,22 @@ sd-cd-pins {
>   	};
>   };
>   
> +&ufs_mem_hc {
> +	vcc-supply = <&vreg_l19a_3p0>;
> +	vcc-max-microamp = <600000>;
> +	vccq2-supply = <&vreg_l12a_1p8>;
> +	vccq2-max-microamp = <600000>;
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l4a_0p88>;
> +	vdda-pll-supply = <&vreg_l3c_1p23>;
> +	vdda-phy-max-microamp = <62900>;
> +	vdda-pll-max-microamp = <18300>;
These regulators need regulator-allow-set-load and allowed-modes

Konrad

