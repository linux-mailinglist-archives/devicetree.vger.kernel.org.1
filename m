Return-Path: <devicetree+bounces-252975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FF2D0580F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:26:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 327CA30C47D1
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 18:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C7F2F8BD0;
	Thu,  8 Jan 2026 18:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KmC+qQSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B402ED161
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 18:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767895239; cv=none; b=NYYs7KIDFsq93AE7coVwIB9UZbEeNLMvGrLV6NR4OGpto8af8GAQpG8pewZXClF9ddceucfissbGtGRKlzlA9IRuFsqR48j8BkXuC3R6A9/EovKGDKbQdfHHENN6TfzaHcYFuuKvjBW4ibl1LTtxg5qbCRqx0e+6dPgaTqtWtTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767895239; c=relaxed/simple;
	bh=4q2hThg3werotHLfpC+sN5348fUBtSIP6idFDs0Fz7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q+3lxCRg1MJMz0HqjrSld6eKewQDFSu2CCtXfAaIT8nDn36yuGmKGull0YuDPOqPjrlS/Vf0sGcapCncQEajO2lOOZqkUIhPWAyVbwTGXRovC3G3MAxHP/IaZ7XUGixgLvPffkI7WW+AjqCXw/hxk6Lio03BPpo7Jc951vOcPOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KmC+qQSK; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-382fa1044f1so2549971fa.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 10:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767895230; x=1768500030; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mhlnaInJi2Ti1nW4JiAtuSVV6JnSluHX6A1lu+ska9g=;
        b=KmC+qQSK3t9FNovOcC4kQXWiU5VX0+FwY1tF7Wxi0JAvPG1mKj/xoDrW88K39yRFB+
         kfes+YrD+4CXUd7DBsJEAe3WVJ/ei8LgxwonKbZvi5HDiiZKYhP2yLDxEBuQhZgYZuiR
         bxe/zJka9+4E+9pNoMLtZoW2X/+MGVwbc2/smvHyF2+Gu/nxxnUql9Bh6faaF+sVaSdT
         i78urWI8405e/IrLCrjz3idxuXsGZy1nZ0pmTZYtn/gYKrAJtqPT/hNi8JVrqya5Iw/z
         jp+cY3arGMSSfr/SIv4rUHnjr1H71yF9tySiBP6/sIoOW1in/qcoC+iEgXMj2Q0xxfI5
         xcEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767895230; x=1768500030;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mhlnaInJi2Ti1nW4JiAtuSVV6JnSluHX6A1lu+ska9g=;
        b=C2g2/yJ9Way8xPi1jdtESvXOa1Ty9quVyQ6bXCLE1rtHmns/s8CAwol3wCWpLkgrHr
         /e58NDGZ8wireaoAfwkhA+LB/I5JHNBCDCpMPCXpRVgVbBSeBdUxWT27nselMTetmmYf
         4wS+pO1HDcn+jekPi9KRBZGgCdtPKK56lm37flB/FR3giU+nKEdwKS8lwiocN9FAEoga
         jabr6/fR7VLRLYBNL+O9dhCBmg0CAC9toEKZVOn4b+6DKkJ7/5oUHYizAZcgc2jo5DyS
         I1c8RaliIa6uw0cd3FMgP2vg5w6VvBUXIs525aulTv/ZH/dJhKuQEiqPRJuxnmLSyfvU
         rRFw==
X-Forwarded-Encrypted: i=1; AJvYcCUSPA6uq8luF6XJ3TiV5GYbn07uJVmzj49eT/S5QohB7BM1V2jF03yYBLwhmQho78iDCUD3n5L0lESW@vger.kernel.org
X-Gm-Message-State: AOJu0YzSleMiV6fjsT4VM0lGvl2+wem28U1g5mtB7NqKVif7MFPnRhm8
	UEttHPPlgjqTXt8PpddnDKwhMbC5YI4TEx/4GvPNHzeg14OqIQQxHL1OQvLR73nrWAyGqvahlLu
	5Zt3Z
X-Gm-Gg: AY/fxX7LJSmvb2vmHOtAyJQF2dot9SCqUF0oZUlDRHdNC9q5j5hWfi78wScOpp/tC7t
	0XGXzlcN7DLaNY0enkf/zQXnUhG9YEQ7N2qI2jeJtNqpXFO6SVh7/S1ApyDZxJJMcOcv60whfvm
	X7pvBAZxt2o5FmR6weBrX1VXEn6/A7PCLMv9jymSPlOpk4UaDalHZ3020fK9b99JMR62/buhB1v
	kM9RBbHtCwBB6vlStalroV/wKFk79xSQpG+dDCx3ZdW+M8aKC2fBfHP8ATB1GZaaffwqW3MGL6s
	lgXHNsUKJ4DhzXLZmX4ZxTCPQZRpkufCDpvossxQdYowHJS6qkLcrdYgk/Vtnxm4JZzBB2x18M3
	kN9b5fs1YrtMe4mtHNgv4E4Gv5NKO31A81piLh2u1ZNjAJUOVuG0ZzziW2h9bXmJD9jYznBkTbe
	NG1+BGYoZ9n63A6D4ULn1wK1x7HFxw/I8pzthKtppwiiuLTCv9zFBXjcI+t1jww+Ejaw==
X-Google-Smtp-Source: AGHT+IHHX3wRzfUoaUEmzNOgRLptj1H7TP64m5XcjU9ZX7xNCiPigAevIKuejkX3sv+AYgSzIo5gIA==
X-Received: by 2002:a05:651c:2228:b0:37f:c5e6:7ab2 with SMTP id 38308e7fff4ca-382ff87a949mr10487561fa.7.1767895229544;
        Thu, 08 Jan 2026 10:00:29 -0800 (PST)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-382eb39fc5bsm17905471fa.1.2026.01.08.10.00.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 10:00:29 -0800 (PST)
Message-ID: <a69b577c-dc3c-4fa2-94cd-4aaafeeb8240@linaro.org>
Date: Thu, 8 Jan 2026 20:00:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: qcom: qcm2290: Add pin configuration
 for mclks
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mchehab@kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260108170550.359968-1-loic.poulain@oss.qualcomm.com>
 <20260108170550.359968-2-loic.poulain@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20260108170550.359968-2-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/8/26 19:05, Loic Poulain wrote:
> Add pinctrl configuration for the four available camera master clocks.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/agatti.dtsi | 28 ++++++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
> index 992a157c571f..7815ece261ea 100644
> --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> @@ -604,6 +604,34 @@ cci1_default: cci1-default-state {
>   				bias-disable;
>   			};
>   
> +			mclk0_default: mclk0-default-state {
> +				pins = "gpio20";
> +				function = "cam_mclk";
> +				drive-strength = <16>;
> +				bias-disable;
> +			};
> +
> +			mclk1_default: mclk1-default-state {
> +				pins = "gpio21";
> +				function = "cam_mclk";
> +				drive-strength = <16>;
> +				bias-disable;
> +			};
> +
> +			mclk2_default: mclk2-default-state {
> +				pins = "gpio27";
> +				function = "cam_mclk";
> +				drive-strength = <16>;
> +				bias-disable;
> +			};
> +
> +			mclk3_default: mclk3-default-state {
> +				pins = "gpio28";
> +				function = "cam_mclk";
> +				drive-strength = <16>;
> +				bias-disable;
> +			};
> +
>   			sdc1_state_on: sdc1-on-state {
>   				clk-pins {
>   					pins = "sdc1_clk";

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

