Return-Path: <devicetree+bounces-71228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7565A8D61D6
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 14:35:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ACAAE1F264CD
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2024 12:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E9CC158869;
	Fri, 31 May 2024 12:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zagwOBGT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D544156243
	for <devicetree@vger.kernel.org>; Fri, 31 May 2024 12:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717158914; cv=none; b=pxZnrM6N+a1F3vju+9YXD7kSBxHIe1vi8Pf5o0HPF0kDg3hBgR2uUjBRYmk2aE04wOU6BrO1jdbPpbN37bYhbTzZ50ly2A10CHGGIG/tmByU/PtXUT2nfFxpkDv/E+esymGmQjkp5dvTkdbVaflML3Gv17Po97BMNDlZwbaFvK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717158914; c=relaxed/simple;
	bh=uMPKaUChONTVDQ+J8oy2ma1uhzAjGl9q8kkU1kTPr9A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EhpBcHoIoAgmRHXDM9ixDqQjzjBxr3ks0uQCf2oP+FznyVm7JuQQEcev+2M4wWv25IwYaFXYB3imzJrWYfDmunrztpvHzV/lZi/5YSl+EEH+DO6joupucpG0paxxV38p6FhMFYPfQVw0FmX+ROQ+KZqvx3WO7JbX+4wJEABoDOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zagwOBGT; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a635a74e031so256973866b.0
        for <devicetree@vger.kernel.org>; Fri, 31 May 2024 05:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717158910; x=1717763710; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=GDYzjcGN0PLy/8re/6+aReTxBk4s8Dq0U4QA3lFu9Bo=;
        b=zagwOBGTLbqZl9vNnFZiswV9m+GwtJrJjOKzwo8bIVzHmBN7jsaHsTp/lPiDOWIpYb
         biP7Qhbxae5r8duWWnTb8UAno1ok/hH0YbTSttHveB0zDR/UE/KdlJT2GOc/RcoX2Jso
         dKHzLo7mS1GQN6MVf7FviE7AUzPoHxqikgHzRM00gtOEpOIaQQNN85nq5AA1t4iHOmLs
         IjLw+KNvUVT5vH5TK2IIAJxijEJa8hkHVrZ/cNMIfJ28ZE3za3hCy7kn1AYMi8l6Yfxp
         SyAw2ccherZmiyJ0IZuuvipp1x07r20OaA7jSzZyS7NPbeaenWKGFrd7/2XFAES7W9aw
         7VqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717158910; x=1717763710;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDYzjcGN0PLy/8re/6+aReTxBk4s8Dq0U4QA3lFu9Bo=;
        b=LQdrOWCaGIiw2Suj6iIoALkaxs5EHjIglfLFN5hzVwuOyFR2eQ2OrZA5Z5BJBfCo/b
         ZZysNq5WKFTpgGPjrK6IowGDwaEf/xpzSIqbxiYOcq8CHJsTseRL+j5qYHptxlO60gGJ
         tGIUTG2EzptuKCLBVTgRYxH+PnABCNQojiQ92JPZrp09CAzmnpqVS1VvGPNOAh8foDsd
         AW2lnMW4cqV2s9oeRy8ezZ4P66WnBHOF1WlYsJuHuiqNKiCC+BvzvlOHxiHO43hkWEve
         id9VQqhgRpIxnA/Q9au+uILI2poNxA+QIDrOfSzCBEU4DgOAy5wA+mK2DP1DgLhAFvhp
         x31w==
X-Forwarded-Encrypted: i=1; AJvYcCXwu9HF/QLCzyvmfBn//BNre93OAEf38p3yVG62te8uxDE0LmLEVEH1Ke6t3W1ezXRq2UGuLFtS50ToLFEjlbq5g0b+zhorO9X0jA==
X-Gm-Message-State: AOJu0YxU71DZ5rAegc/NWhiN4Y6gjWmQPa20mlj/GGB9HrtMjaoJ7fCo
	bviF4poLSL9vgNi3ESP0Aty/7btIIgpwXhJNfli9jk/wsw1nVhTTEd6bgxjISu0=
X-Google-Smtp-Source: AGHT+IF3yUdOvfuosYZv1R18pJI2eG0r6YCkfIqE3vD56y5kmJdDMOJZwr8kveR5ehQ/Slm7H0sutw==
X-Received: by 2002:a17:907:b010:b0:a59:bae0:b12c with SMTP id a640c23a62f3a-a6821c6e6c6mr138685666b.48.1717158910430;
        Fri, 31 May 2024 05:35:10 -0700 (PDT)
Received: from [192.168.128.139] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a67eb34432fsm82557066b.193.2024.05.31.05.35.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 May 2024 05:35:10 -0700 (PDT)
Message-ID: <a7390da4-d830-438f-97ab-cb1b30d86385@linaro.org>
Date: Fri, 31 May 2024 14:35:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: x1e80100: Describe the PCIe 6a
 resources
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>,
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240530-x1e80100-dts-pcie6a-v1-0-ee17a9939ba5@linaro.org>
 <20240530-x1e80100-dts-pcie6a-v1-3-ee17a9939ba5@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240530-x1e80100-dts-pcie6a-v1-3-ee17a9939ba5@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30.05.2024 5:43 PM, Abel Vesa wrote:
> On both the CRD and QCP, on PCIe 6a sits the NVMe. Add the 3.3V
> gpio-controlled regulator and the clkreq, perst and wake gpios as
> resources for the PCIe 6a.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 52 +++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 52 +++++++++++++++++++++++++++++++
>  2 files changed, 104 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index 3ce2c8a841ec..10ec40a193fb 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -173,6 +173,20 @@ vreg_edp_3p3: regulator-edp-3p3 {
>  		regulator-always-on;
>  		regulator-boot-on;
>  	};
> +
> +	vreg_nvme: regulator-nvme {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_NVME_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 18 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&nvme_reg_en>;

property-n
property-names

Konrad

