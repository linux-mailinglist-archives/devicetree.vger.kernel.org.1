Return-Path: <devicetree+bounces-52451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8818F886A70
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 11:33:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC1E51C20E67
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 10:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7FE405EC;
	Fri, 22 Mar 2024 10:32:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zNxkBRAk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B07F63FBBD
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 10:32:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711103569; cv=none; b=dfQK1twQpkGcBgYjgEMLUTY234oI6p3gO43pT5Jj4dYNcFTcOlz/IA+qlY/dBQSHMmU0pFktOza+jflLbxgoceq4QZM7vy6YlddAsmYJmmlHztQEaOV1yBLi3MkY1duEwklNade18QlFxUE4/DKARenTgkdAbqH4aNQUDIIX/hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711103569; c=relaxed/simple;
	bh=IeeeFvZPihvjkO9rkI+cnfWH8mStNkDQXAroPXkgklQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NgeUMG1hGht0BhxfjwlcW/zmQJ4m/yHi6KAmMqVBiOpcllVcH+GuY1T2RB26tfJEuW3cHSIUEyTtqTjk8e52BAwmZvT1bQ1zOq6/4nSCEQOTauXIpdh2BXYgoAe93LQ2c9W3QQiRQIZwhO8tb6aqAT+egZ5zh87VqEIovVCwEfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zNxkBRAk; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-414700cffd6so15430995e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 03:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711103566; x=1711708366; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4cLlbtwhTjL1jxvTL4CgsNlJM2USa8MoHtGm1QbNL5M=;
        b=zNxkBRAkF6ZaYFjq9jedqze7FNApSHYuISz3kR1vMgmawlNaBZMvEEE2YfaTY5rYM6
         j+U5mZPWFouQqgS7cHAPyDH7zi34LeOoepuIKXBe5GkW+cgOofyPoRCjFTDBdC1iISuy
         bwjx/Pid3sNlFd/D1Vg7K4y/Yz2QMPAVQIOPQMVxEDH9+xgrkFZ3ex+HWZtEIAfbZ5NQ
         +a7xcb6fyITm1xfvoBhtRZqLMnDdOwkCI+0exqz0xd3uQ1TMF6sEGfpUvdBqOpRIvwT+
         gnuqRy4HFQLsfzFthNncY5fWI94satFJ34wyohvAL/SuI+7DdVT3e7Qr/rUkH3ZysXvQ
         DXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711103566; x=1711708366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4cLlbtwhTjL1jxvTL4CgsNlJM2USa8MoHtGm1QbNL5M=;
        b=MkAj3cPA1regVdeO5GvYUQ9dj9f9GD+lPjCNl10C0cCmdU6M9CsFskO0IvsSTELk2x
         twC8iRpf9l2SRCL8sp8WBL9fkKBWmWrBN/1gPkIeTQLFVEjDY2rMA2sJQgepUjzlJYMQ
         96pR3vaJJ/1wN1S+tdm3xe6oXW0N+lrocllu30mz5OJm8+bYuYyMWduC01163y6wCtW8
         2uNiQQMLyGZr2yObBg4X3i1Y0zLgNyW8Ggpk43CgGMPrP+s2BKRKOYVJICLsLSbD55x9
         QjlUB52MAWXnRKXarkIr3oO1McSka8Msx5ckJiALuQFY3eVxGoZwDaM30FjN0Yxsjhup
         9iOw==
X-Forwarded-Encrypted: i=1; AJvYcCWvtbH9Oh5vXx0xHsCWubeWUFEZSHRM7G0m4sog7uKJGwrbUNtIdwRm07yuOu9qB4/B0WbdZDPV+/reD9KcSqHu2En3ew6cTgZeKQ==
X-Gm-Message-State: AOJu0Yy7m4nbNPSmjbYTVi7r/nwxkRyket4V3FAi0RzShFB98+Ifvgjv
	RVNNi1F1So7IGlWz6fKFbkCUE46AXYBw/tHZdx9V2ebaezG0a14jB7aOrfZKKnvAVfwKLAD9xBG
	T
X-Google-Smtp-Source: AGHT+IG2NsJwJn4mQZLhTfufZL9LbdScYyZRHQheGp2Pdz05wMVc2kyw7Og64VHUf6sgmyIEwndVRQ==
X-Received: by 2002:a05:6000:1243:b0:33e:4d34:f40f with SMTP id j3-20020a056000124300b0033e4d34f40fmr1103056wrx.46.1711103566118;
        Fri, 22 Mar 2024 03:32:46 -0700 (PDT)
Received: from [192.168.0.102] ([176.61.106.68])
        by smtp.gmail.com with ESMTPSA id x15-20020a5d60cf000000b0033cf4e47496sm1759496wrt.51.2024.03.22.03.32.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Mar 2024 03:32:45 -0700 (PDT)
Message-ID: <a4ff04e9-794b-4afd-920e-a2b2d5bf687e@linaro.org>
Date: Fri, 22 Mar 2024 10:32:45 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: pm7250b: Add a TCPM description
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20240322-fp4-tcpm-v1-0-c5644099d57b@fairphone.com>
 <20240322-fp4-tcpm-v1-4-c5644099d57b@fairphone.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240322-fp4-tcpm-v1-4-c5644099d57b@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 22/03/2024 08:01, Luca Weiss wrote:
> Type-C port management functionality lives inside of the PMIC block on
> pm7250b.
> 
> The Type-C port management logic controls orientation detection,
> vbus/vconn sense and to send/receive Type-C Power Domain messages.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>   arch/arm64/boot/dts/qcom/pm7250b.dtsi | 39 +++++++++++++++++++++++++++++++++++
>   1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/pm7250b.dtsi b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> index 91a046b3529c..d9abac052afe 100644
> --- a/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> +++ b/arch/arm64/boot/dts/qcom/pm7250b.dtsi
> @@ -51,6 +51,45 @@ pm7250b_vbus: usb-vbus-regulator@1100 {
>   			reg = <0x1100>;
>   		};
>   
> +		pm7250b_typec: typec@1500 {
> +			compatible = "qcom,pm7250b-typec", "qcom,pm8150b-typec";
> +			reg = <0x1500>,
> +			      <0x1700>;
> +			interrupts = <PM7250B_SID 0x15 0x00 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x15 0x01 IRQ_TYPE_EDGE_BOTH>,
> +				     <PM7250B_SID 0x15 0x02 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x15 0x03 IRQ_TYPE_EDGE_BOTH>,
> +				     <PM7250B_SID 0x15 0x04 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x15 0x05 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x15 0x06 IRQ_TYPE_EDGE_BOTH>,
> +				     <PM7250B_SID 0x15 0x07 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x00 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x01 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x02 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x03 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x04 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x05 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x06 IRQ_TYPE_EDGE_RISING>,
> +				     <PM7250B_SID 0x17 0x07 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "or-rid-detect-change",
> +					  "vpd-detect",
> +					  "cc-state-change",
> +					  "vconn-oc",
> +					  "vbus-change",
> +					  "attach-detach",
> +					  "legacy-cable-detect",
> +					  "try-snk-src-detect",
> +					  "sig-tx",
> +					  "sig-rx",
> +					  "msg-tx",
> +					  "msg-rx",
> +					  "msg-tx-failed",
> +					  "msg-tx-discarded",
> +					  "msg-rx-discarded",
> +					  "fr-swap";
> +			vdd-vbus-supply = <&pm7250b_vbus>;
> +		};
> +
>   		pm7250b_temp: temp-alarm@2400 {
>   			compatible = "qcom,spmi-temp-alarm";
>   			reg = <0x2400>;
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

