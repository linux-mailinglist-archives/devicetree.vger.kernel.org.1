Return-Path: <devicetree+bounces-11175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB7C7D4A50
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:34:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4F761B20EE9
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977642F5B;
	Tue, 24 Oct 2023 08:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ANLbrsjM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E59E21378
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 08:34:34 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D7A10F7
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:34:28 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b95d5ee18dso66588261fa.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 01:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698136466; x=1698741266; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P4+Uwe00Vj2uJxQCVZngDERfeMYn2777PTVakZc20IQ=;
        b=ANLbrsjM+k8d80IyeyK0gl3Vf+NzE56sCbXg0kzsAKfVeNWeqfQj93ZxD/7aPNza1q
         GsxM0FzeuOf5Z3G7oG3X9jnuiBJoT80Phmq2AjVXf3+4/re/28klXBsIrORNiVWP7IYD
         ICCceuDUTqb/X+TK4pW4kgFH7j0zelzg313E/lN5/i6e7u56Dmc8psaifyiy+xj5SDC3
         x+hZZYL6vDo6lXd9Ui886DfV59tLpwUqDr7F3CFkCKKWFes8v57ntnRlokyTFzc6xNeC
         u7ww7bItS/YLHtZvie8Ewr8olR3X9FUFwQtHVEvZtT3WGdUTifFQDT5rbkv1SS5hsnFw
         TkmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698136466; x=1698741266;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P4+Uwe00Vj2uJxQCVZngDERfeMYn2777PTVakZc20IQ=;
        b=TQJsSwXGMgGMoGuSHXGYsxqggKqK0wm7Z8SeIzULILZEyyiT8pBoQcHzaui+1Zflox
         gKHKB1o++Jc0Di+3a33wqrRRHNJfOYBXQpUKJ318e5jwnAs19t9ZAFTpyutv/O7pvpYO
         Y8wa6vKXzz/zm16VslpW3Obf5/fzXyTtZJsUhkay4PpQGflm82vag9h8y9Z/wKGbtE3A
         7hbX4QvXaCILBgMPbpqw89Sh2L1EY5nhWm+51Z9BeH+Z0Ns7sLpvVaEebrrpIY600nCe
         8R5fqYmbcCjncRlg8XokTZZXK7tvdUDRjpX16JFwYZkO0wC/dK2gUqof+WsgFoMNNQzi
         tjqg==
X-Gm-Message-State: AOJu0YxYxZrffZhF0yklt7ArQ/QsZtuI+mWOxH2/ASMeRblH8e++t3iX
	7vBZqtNCjON0wagSMHgYoKs3CGJULdA6pEEBY7c=
X-Google-Smtp-Source: AGHT+IFt8Y9TExLjkYxcgInX0TgeANWlzRHwrnZOa+czvMtz9RrjAv/+SjgtnanyCGs9JuJbjqxBSw==
X-Received: by 2002:a2e:99c8:0:b0:2c1:522a:8e25 with SMTP id l8-20020a2e99c8000000b002c1522a8e25mr7492311ljj.32.1698136466364;
        Tue, 24 Oct 2023 01:34:26 -0700 (PDT)
Received: from [172.30.205.198] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q19-20020a05600c46d300b0040836519dd9sm11408994wmo.25.2023.10.24.01.34.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 01:34:25 -0700 (PDT)
Message-ID: <3dff444b-c439-4c40-9d21-1e390f449840@linaro.org>
Date: Tue, 24 Oct 2023 10:34:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: pm8916: Add BMS and charger
Content-Language: en-US
To: Nikita Travkin <nikita@trvn.ru>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20231023-pm8916-dtsi-bms-lbc-v2-0-343e3dbf423e@trvn.ru>
 <20231023-pm8916-dtsi-bms-lbc-v2-2-343e3dbf423e@trvn.ru>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231023-pm8916-dtsi-bms-lbc-v2-2-343e3dbf423e@trvn.ru>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/23/23 08:20, Nikita Travkin wrote:
> pm8916 contains some hardware blocks for battery powered devices:
> 
> - VM-BMS: Battery voltage monitoring block.
> - LBC: Linear battery charger.
> 
> Add them to the pmic dtsi so the devices that make use of those blocks
> can enable them.
> 
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>
> ---
>   arch/arm64/boot/dts/qcom/pm8916.dtsi | 48 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm8916.dtsi b/arch/arm64/boot/dts/qcom/pm8916.dtsi
> index f4de86787743..4b2e8fb47d2d 100644
> --- a/arch/arm64/boot/dts/qcom/pm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm8916.dtsi
> @@ -41,6 +41,35 @@ watchdog {
>   			};
>   		};
>   
> +		pm8916_charger: charger@1000 {
> +			compatible = "qcom,pm8916-lbc";
> +			reg = <0x1000>, <0x1200>, <0x1300>, <0x1600>;
> +			reg-names = "chgr", "bat_if", "usb", "misc";
> +
> +			interrupts = <0x0 0x10 0 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x10 5 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x10 6 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x10 7 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x12 0 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x12 1 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x13 0 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x13 1 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x13 2 IRQ_TYPE_EDGE_BOTH>,
> +				     <0x0 0x13 4 IRQ_TYPE_EDGE_BOTH>;
> +			interrupt-names = "vbat_det",
> +					  "fast_chg",
> +					  "chg_fail",
> +					  "chg_done",
> +					  "bat_pres",
> +					  "temp_ok",
> +					  "coarse_det",
> +					  "usb_vbus",
So, both the charger and the USBIN driver use the same irq? :/

Konrad

