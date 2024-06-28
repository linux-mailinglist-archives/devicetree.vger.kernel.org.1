Return-Path: <devicetree+bounces-81177-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D0A491B8B3
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:44:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 523EF1F22D85
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 07:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 055C8143740;
	Fri, 28 Jun 2024 07:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gT8dGfuy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146EC1420D0
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719560635; cv=none; b=iI4kJS5h1oFQjMCitOJdB0zYY0LELX1ah35nDNvs0WOHzryiakG46u/OZoSMQPWnb+O3qPnA/Kmw1RIIsgOU0HwrvGney5QIA9nTh/iR4etUDicw9ljcFs519yi5ubtGkAuL41250ydK4FT8+nwEdS++0kjtYtuyrjvOXD1eQQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719560635; c=relaxed/simple;
	bh=OBZJ6up/5UrmGgqTrk/JjQcPbrTRKR/bsWTSe04PzAc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qmsQO2mP+/BtD7NX5PD6JSSZ0H8JuZ/VUcbyKSDxTDHw0wcAdPkOaZvada/xYmFiK/L02ducleHTlVtZ1Mj0w0hhNkFMahk6gMm0V2f5mKdU75wkOqnXFrZjqopQiIqkQ8fwNGNds3s9Fm/6kxaALqh63TIuWjdnqEoDp/tnRJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gT8dGfuy; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52cdebf9f53so285279e87.2
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 00:43:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719560631; x=1720165431; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Rhe0rB7DF1acvlU18g3LpAyirHMKvmNtptxT67xMN9g=;
        b=gT8dGfuyqhq7vL8m2tdXedG83NNxByrMFl3rEprsTZuTtBFzOj/6mM6vDeccmBZd1X
         ofvx5i6XwYDp9hAw5yJO+pnl50y/ped8rY5cJfo1gkPYwfAQ2SRSnXCbeOQSpYd2xFOQ
         KRynXHm2HZkJR0qs5epvnvt5qiYO8LHLOFOSgQNg8vjzhjrNhFKj9ucpgad2w/httNIQ
         9lmVh55d7jb63G+BRUy56e8el5DamRh5lFeOkQMhtsK5+X2+nyZG0Luq8nNG+j+va+Cw
         70ThRu25xkJSQ0cG4rZs2JGkc8qcQzmyNIitcrOShnI/UJc/i8w9Qku7sBGCUqqdfCAX
         NN0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719560631; x=1720165431;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rhe0rB7DF1acvlU18g3LpAyirHMKvmNtptxT67xMN9g=;
        b=vetsLaw5bEy3NNmE3eeZSdt0cLjnibfBM2cwZzokDFH6BWjArplGo8jx+G/CwUR0sF
         GYf0naHNiK1N2yaWqymvU3GXZIKObZBsq9LSqFJCAt1TFUp9+Jcqp37GSBqARB5knA0n
         pu3puGzs5o0F5QcoUS0LrUQq1Uw4kKlrOiUJhX76lmR/8gwCkQrz5qqCD3xPokawjV6S
         rXlPWq8j+QYGcjNumqMZSkH3X5KJL/wIWZPjYSGEA8wqyqSofWNQzZZYNRggJI8kR8Oz
         m4gTS7sqJ6afhnZbiVXPbYgBTUudukKoA+4MAn3Buxa4M6aayQkSEy9uBa1DCy5oWAiV
         cjFQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2wkLjR3ch5di0qdLUg+FKD+C4dsVUP72Wg+fcCOrsJfMjKqCyfZzxIrbLcQIcOj4+tx3agU8qUfHRiTJli2XCTwbBseeSBash2A==
X-Gm-Message-State: AOJu0YxxbmMVQmwKfZ7S1KejOTrG2/7ZUeeqO++W6LHYBGHZoyxLC8tO
	FkwoWvO3qDw7po79FwzX4RnpUyM4j6a1vkbetm2bzdVjkqekSf7NlN+IVrMwWJM=
X-Google-Smtp-Source: AGHT+IGwqQ+G0h94gLaKfw7sf2Mdz7eYA/MoYsZAgQXx1KUjBDLepYtp64shbi0qnmb/a6DdWqkCkQ==
X-Received: by 2002:ac2:4105:0:b0:52c:dfa2:5ac1 with SMTP id 2adb3069b0e04-52ce06442a2mr10134496e87.24.1719560631358;
        Fri, 28 Jun 2024 00:43:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab2ea60sm194159e87.218.2024.06.28.00.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 00:43:50 -0700 (PDT)
Date: Fri, 28 Jun 2024 10:43:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: linux-sound@vger.kernel.org, srinivas.kandagatla@linaro.org, 
	bgoswami@quicinc.com, lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org, 
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org, elder@linaro.org, 
	krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/7] arm64: dts: qcom: sm6115: add LPASS LPI pin
 controller
Message-ID: <yozlwsmrvolhaxobal4reootcfmgjyre7sv74pztbtqr6lcfhr@vuixh6qyalaz>
References: <20240628010715.438471-1-alexey.klimov@linaro.org>
 <20240628010715.438471-6-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240628010715.438471-6-alexey.klimov@linaro.org>

On Fri, Jun 28, 2024 at 02:07:13AM GMT, Alexey Klimov wrote:
> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI)
> pin controller device node required for audio subsystem on
> Qualcomm QRB4210 RB2.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index c49aca3d0772..3a9fb1780c90 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -15,6 +15,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,apr.h>
> +#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
>  #include <dt-bindings/thermal/thermal.h>
>  
>  / {
> @@ -809,6 +810,21 @@ data-pins {
>  			};
>  		};
>  
> +		lpass_tlmm: pinctrl@a7c0000 {
> +			compatible = "qcom,sm4250-lpass-lpi-pinctrl";

Is it so? Or should it be qcom,sm6115-lpass-lpi-pinctrl instead?

> +			reg = <0x0 0xa7c0000 0x0 0x20000>,
> +			      <0x0 0xa950000 0x0 0x10000>;
> +
> +			clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
> +			clock-names = "audio";
> +
> +			gpio-controller;
> +			#gpio-cells = <2>;
> +			gpio-ranges = <&lpass_tlmm 0 0 26>;
> +
> +			status = "disabled";
> +		};
> +
>  		gcc: clock-controller@1400000 {
>  			compatible = "qcom,gcc-sm6115";
>  			reg = <0x0 0x01400000 0x0 0x1f0000>;

-- 
With best wishes
Dmitry

