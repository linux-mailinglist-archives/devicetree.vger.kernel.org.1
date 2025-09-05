Return-Path: <devicetree+bounces-213355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F5CB45321
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 11:26:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 639B6188A120
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 09:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0666286412;
	Fri,  5 Sep 2025 09:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gzn44bLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A82283C9D
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 09:26:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757064368; cv=none; b=n+Qe5Qx+3VoXhJtP2ahBi3Zx3MEo6dnhVsC5YPsQ0G/A3hV7SYMDmtEb87XqJIw4/2KW44HPdwnqNSE3XA7N041TEQcHJN8ACsJliY4v8VafBgV03oFCV3JfICqJ5W3fglPq+C+wZIVS3I9Ss2bkkx8sQH2XwRc+y6eEtJWGk10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757064368; c=relaxed/simple;
	bh=MEed7gqF7d7fWHQmdGpJUnqCT33bvVFLPAKdB2LPFeQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PyhmAGmQ/UMCvB0d1AyyIhDZPSDVdPn5SUHyd2PEfl5UcTOeyOEQnQd+CuBXveW2Re5Gw9e7Gpq7fI7NqBXgeW6RYkTBtOWee3Z4hjtMbFJ95B1rgXDm33pdeRlIhsdBDabJEPVxblYKhr6ZWoBoS6UGr9pZlgn1j/bQPaXcNaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gzn44bLQ; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3d1bf79d75aso1060420f8f.0
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 02:26:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757064365; x=1757669165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Y1b4J3UsQ3netqUZNC1BP1Y1aZDxDf+RWzn/Hk/C+pw=;
        b=gzn44bLQ32e7vf/erJdOQL/HLt+H0ABMbNBR0cQCSoh2+fCHO7dLmR18g63WBd4/Kv
         Cd3NOlBrGTir3N84gGgjgivjqYmQIB9JUs+PzVYQfqABxlMIhl829WPgosviGZ1tnrwG
         X8u8P+f7fsmjDqcB6Bs2MxyftD/9GrOTGk1LH2ZHcr8m8pmnhpIeEK6ORlWEP+G4nJ25
         T2N2reD+fpEDXJhZiV+b9zj8IBo24bpwAvCh/X2iMCMJltDr2XQtOAAk4LzSLbKpNDkc
         8Xjx2dE7FQDp6OKwALpdsG509oXgl1cWVzHzENuhCcyfZ8BHHSyh58E6KTrBV/jSNOGP
         ABeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757064365; x=1757669165;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Y1b4J3UsQ3netqUZNC1BP1Y1aZDxDf+RWzn/Hk/C+pw=;
        b=QawFShmEMnn+Gfhn/TdenpJm9t/lQJzfsfdxhWDKK2TehVJtmYherL/6xCr3Mar1RL
         2do3YYEI8xWa/ftsnv2ZSv6s2ul95jJuIObIypdzvaMeOOE7/9cXPUSuwtQ2+TyejnWH
         QCtVg40UuOgChplbNB8itx3aFOtaZdtFAWWS5w1TGoUfz5zVsvrAEHIF+xJ05y2jW1S/
         jE1HI6GkvCdHDrQdlXdUnOLOJnKuHtkKN9oaB6E0YzMWiUOyfEqwHm1BNs6rZaYX/3qa
         W2u/6283aOE6tSeLCWj6WEtGw1RxiOm3YaD5VBwdcUy3uRVX/alTb8PhPtFjS+HvHdGw
         XB7w==
X-Forwarded-Encrypted: i=1; AJvYcCUivOcb2oKq44By82UFd+665LWBNUtYRkckgmoEuXkrKuK2QROkkBGA/sxmppqgOm+p5wc1D0YLESj2@vger.kernel.org
X-Gm-Message-State: AOJu0YykTbZp9ASEunx16mXEedZHQfXzkNTLML7vGL8LPpAFAoyOatN1
	RfPQrhmrn6e6NcSZGU1tl7ryjwBbTMtr8t1QTNNyUdGff9C7z4QpQZz3OYWcrQR8rLY=
X-Gm-Gg: ASbGncsT7I8rOmwgKaOPuYHPpBa4iO4w3hmqvJFeH+31ZVXS32w1yW/htfbFOWQQ5hN
	wHKiSRLw8TigCEuicUpli69SEkM010Kg6hNFszVpM1zW27yN33DJR7lsF3thsYzCO0lxWknXT6U
	x7cF7cO76KNtLZWauFA6t+5PnKgqL+uLgja0kfAuw3XE9d4ARrgehLTGVuzaentgjEQUSV2dGnR
	pCUS92Xq3Gc2OEx/SezpY08dmGNkcxbwYOxzGCaFTrY5E9AzC4jJjDU0xuP3Hdts3TGXaJX24Z6
	JnE1rDuqP6jWKAEIBvXbSe4o3D5b2kBlhQYoDYS5/KWhNF0kMNsqp42DmVfOk4t0/5k25Pw2VQZ
	x4cz32O9BsmErL+HinFafusfgrWjE7pxfPEtqhJ+g5i/jJKr/JwEL5qrYDaicG3YDIw8VfgaLS8
	MX13Y+LXcxFnR8DTdKbChcSAULnAqx1g==
X-Google-Smtp-Source: AGHT+IHf2bP4rvj7gdEbkjOaPluyqyvNYQTBLFp/W2bKEoetxcByY2bWU0nZ7KXQEoy+tTKeNkxMLQ==
X-Received: by 2002:a05:6000:22c4:b0:3ce:7673:bb30 with SMTP id ffacd0b85a97d-3e3048266c8mr2128415f8f.14.1757064364653;
        Fri, 05 Sep 2025 02:26:04 -0700 (PDT)
Received: from [192.168.0.19] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b940bbc0dsm167696195e9.2.2025.09.05.02.26.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Sep 2025 02:26:03 -0700 (PDT)
Message-ID: <df705089-0554-4044-87c8-d2bd16da3ee8@linaro.org>
Date: Fri, 5 Sep 2025 10:26:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: x1e80100-t14s: add EC
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Hans de Goede <hansg@kernel.org>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Mark Pearson <mpearson-lenovo@squebb.ca>
Cc: "Derek J. Clark" <derekjohn.clark@gmail.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Neil Armstrong <neil.armstrong@linaro.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20250905-thinkpad-t14s-ec-v2-0-7da5d70aa423@collabora.com>
 <20250905-thinkpad-t14s-ec-v2-3-7da5d70aa423@collabora.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-US
In-Reply-To: <20250905-thinkpad-t14s-ec-v2-3-7da5d70aa423@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2025 02:09, Sebastian Reichel wrote:
> Describe ThinkPad Embedded Controller in the T14s device tree,
> which adds LED and special key support.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
> Signed-off-by: Sebastian Reichel <sre@kernel.org>
> ---
>   .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 24 ++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index ac1dddf27da30e6a9f7e1d1ecbd5192bf2d0671e..f70489aba870289edbcf84ec22fdb004e010868b 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -887,6 +887,24 @@ eusb6_repeater: redriver@4f {
>   	};
>   };
>   
> +&i2c6 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	embedded-controller@28 {
> +		compatible = "lenovo,thinkpad-t14s-ec";
> +		reg = <0x28>;
> +
> +		interrupts-extended = <&tlmm 66 IRQ_TYPE_LEVEL_LOW>;
> +
> +		pinctrl-0 = <&ec_int_n_default>;
> +		pinctrl-names = "default";
> +
> +		wakeup-source;
> +	};
> +};
> +
>   &i2c7 {
>   	clock-frequency = <400000>;
>   
> @@ -1267,6 +1285,12 @@ &tlmm {
>   			       <72 2>, /* Secure EC I2C connection (?) */
>   			       <238 1>; /* UFS Reset */
>   
> +	ec_int_n_default: ec-int-n-state {
> +		pins = "gpio66";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +
>   	eusb3_reset_n: eusb3-reset-n-state {
>   		pins = "gpio6";
>   		function = "gpio";
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

