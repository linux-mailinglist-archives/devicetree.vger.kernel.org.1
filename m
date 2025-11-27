Return-Path: <devicetree+bounces-242844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3A3C8FCFB
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 18:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B7573A9A15
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327362F549E;
	Thu, 27 Nov 2025 17:53:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cXTvrBSL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8C72E7F06
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 17:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764266025; cv=none; b=aNOOIuBWQvFM5XPGyfwmqJbZbtDh6IF4WxuaC+rym1vf8b2hx/qlKn+RvXd1tbISv1VegbPxzKjszLb7FBJMiL6mF45RoA2rQ2+zB/51Do1DiXujlUEadLuta1GzRJoD5+U73qZZgTPXF/kih8+OYEv3BNxI+btX6sB6HTrLIzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764266025; c=relaxed/simple;
	bh=nEj2rUx8G9gla85oszVk7WefBks8vjxYZLcGA4NKCZc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iYbHxUGIlplLG44d4sG3Wo7cOsqyxJHmwk4R3R8A3X8e5MS/SZM+1EyumjeoiW+8UrXaSv8CJJ3+wG8ipeaZAvH0wBs2vZa49Cu9PbocG9azmSUiEAGAEka8l8mCcak0nId0S3gMUoTleMhVtuXtcFStRARE2Y5S2+qdJyLkKSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cXTvrBSL; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4779d47be12so9179755e9.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 09:53:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764266021; x=1764870821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ETweoxGWZm2ziwTrSjwftUK80iZE4y2BuRacSXs/oVk=;
        b=cXTvrBSLRu//G1uEOfJgmZMZuu1swGKTUfHUrYQIH5KALFTMeO1dJ6OlO+mxtcutZA
         Xw0J9FxnkFtJbbEwzXurObhNlfrGQFPmTGqiwcU3DbLp6wYSakVij065Iv1upwP606Ry
         Z00jNN0GebI8uu8WEhvn69S1x0VFxgEtEvODkii/dIK5zn1L9QmNForyLi40tRO8uriN
         zhFmjuu0V/cMkX507V/O+Mc8wxqCeFb1ds6XHnB4kpvflP7F/jgUDMXR/Mmx54Da74Ll
         mM21Svm8U3YWoVyFZQSaurmG6rXLL9RRWolCWpXcpNooFIC53JBpiCBLPCXb6NJVG9Im
         cAxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764266021; x=1764870821;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ETweoxGWZm2ziwTrSjwftUK80iZE4y2BuRacSXs/oVk=;
        b=mqacXwSk5cXKwwqnXaMZdy6jtDfaIQMUstIjusyqZEuyuT6TH4/2ouS3fgmfNyrzvi
         FZ/53czOd66+mdQ0Js1yFK9xoT0zWO2cAXjK614Ilg9ui32bZzrVLuaAh934K7Q6wT7Q
         jczcVjLewNGaMfHOSDRDfxEPV/L+7DPMzViwZu60YRgi58ABXSgurwQn1mO3XSTF6LSi
         qZ7pnLXYLEaSYfCyfYTmI9AYyUsitug1P0sQxfiPol+9m4MEAnD5jRjyn7QN2KlDdoUr
         0EsXH13LEfyyFz0gHE8mO84qliWmdycsk5+SufM1zS9esuMsRZy6FgHnpMHsSZLRsVfM
         AA/A==
X-Forwarded-Encrypted: i=1; AJvYcCWtfIHe1//y6406Rose2QVBhwl9vhLWLgi513GbTF9n/xTNNfMyJEyxapvT7t5j/H5riKMK9PJziuuu@vger.kernel.org
X-Gm-Message-State: AOJu0YwdyUqn3vjnC3195AdM99ajHocCRUbrcG6DqJPTD7DADV7DdmqM
	VuE8ANSB7UJ0PWwr9+SYBld99em7Vyx6Jz1jqs2I+gE42JAmIyOHhJUIEpyUAC3vvBc=
X-Gm-Gg: ASbGncuOMJLwI76tggWRdsv0+qacdMWh/R4fzaW9XvbAo0siCQLD8XVU2fpTh5xc9vp
	qt+gn3PMxnyxf2XNx+RxjaeFn5dUoj+Msufbr/vMcH3jbxUBfbN+m0Qa7uIZ15eYiYMlLV+oe26
	dEcUNPydQNgpCP2eoaixJLyCKOze+kdK330BQzCjEg+y7u069I8/sZkI+X0St8jZejHUit1osOG
	+PbQOOUXIniOPXyozdLMr9CtBffGrp01sgoKw2ZJ0HIWndjXsTz4S7t65qzb7AAwuoG6EeeOzCa
	GRtW8aQdLV8+AIqjhHClonoiaTmPVzUQiR44eN0ilt5ce4mVvdsqNnRDkUDJYelYrq2xXYk69zJ
	b3L0nCIRH6pkTZ8HcVy4VbvlV8NOAn8GQLFqdQuMjU4JYa8q8AffCeR/b0CDV5giAF1aD+6ts/t
	xDlPfi2skVI9uKGLcJ651+vLDRabcUKkrj/XV5wLtMhke7ipWYX9Lv
X-Google-Smtp-Source: AGHT+IGfQcg2rnX4fdDDkIwWfOlTxEg1XWFtGmpFpSHYpBftRve1U7d6ObiP5sKkjk0IWCH4pIYGKg==
X-Received: by 2002:a05:600c:3595:b0:477:755b:5587 with SMTP id 5b1f17b1804b1-477c0184b34mr251138045e9.8.1764266020721;
        Thu, 27 Nov 2025 09:53:40 -0800 (PST)
Received: from [192.168.1.36] (p549d4195.dip0.t-ipconnect.de. [84.157.65.149])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-479052b3f5fsm72574625e9.4.2025.11.27.09.53.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 09:53:40 -0800 (PST)
Message-ID: <a9ba3370-ddff-4b69-b2b9-9244f759b6f0@linaro.org>
Date: Thu, 27 Nov 2025 18:53:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/8] arm64: dts: qcom: pmi8998: Add fuel gauge
Content-Language: en-US
To: david@ixit.cz, Sebastian Reichel <sre@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Casey Connolly <casey@connolly.tech>,
 Joel Selvaraj <foss@joelselvaraj.com>,
 Yassine Oudjana <y.oudjana@protonmail.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Alexander Martinz <amartinz@shiftphones.com>,
 =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
 Richard Acayan <mailingradian@gmail.com>,
 Alexey Minnekhanov <alexeymin@postmarketos.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <20251124-pmi8998_fuel_gauge-v1-0-dd3791f61478@ixit.cz>
 <20251124-pmi8998_fuel_gauge-v1-3-dd3791f61478@ixit.cz>
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <20251124-pmi8998_fuel_gauge-v1-3-dd3791f61478@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 24/11/2025 22:53, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> Introduce the fuel gauge node for pmi8998.
> 

Signed-off-by: Casey Connolly <casey.connolly@linaro.org>>
Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/pmi8998.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> index cd3f0790fd420..ab3bc66502657 100644
> --- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
> @@ -44,6 +44,17 @@ pmi8998_rradc: adc@4500 {
>  			reg = <0x4500>;
>  			#io-channel-cells = <1>;
>  		};
> +
> +		pmi8998_fg: fuel-gauge@4000 {
> +			compatible = "qcom,pmi8998-fg";
> +			reg = <0x4000>;
> +
> +			interrupts = <0x2 0x40 0x3 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "soc-delta";

I think it makes sense to add all the interrupts here, even if thr
driver only uses one of them currently.

			interrupts = <0x2 0x40 0x0 IRQ_TYPE_EDGE_BOTH>,
				     <0x2 0x40 0x1 IRQ_TYPE_EDGE_BOTH>,
				     <0x2 0x40 0x2 IRQ_TYPE_EDGE_RISING>,
				     <0x2 0x40 0x3 IRQ_TYPE_EDGE_RISING>,
				     <0x2 0x40 0x4 IRQ_TYPE_EDGE_BOTH>,
				     <0x2 0x40 0x5 IRQ_TYPE_EDGE_RISING>,
				     <0x2 0x40 0x6 IRQ_TYPE_EDGE_BOTH>,
				     <0x2 0x40 0x7 IRQ_TYPE_EDGE_BOTH>;
			interrupt-names = "soc-update",
					  "soc-ready",
					  "bsoc-delta",
					  "msoc-delta",
					  "msoc-low",
					  "msoc-empty",
					  "msoc-high",
					  "msoc-full";

https://github.com/LineageOS/android_kernel_oneplus_sdm845/blob/lineage-22.2/arch/arm64/boot/dts/qcom/pmi8998.dtsi#L292

Not sure what the difference is between bsoc-delta and msoc-delta, maybe
Richard or Yassine can recall? DT bindings would need updating too.

> +
> +			status = "disabled";
> +		};
> +
>  	};
>  
>  	pmi8998_lsid1: pmic@3 {
> 

-- 
// Casey (she/her)


