Return-Path: <devicetree+bounces-136651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE52A05C4B
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 14:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A01D161F6F
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADA561FA8C0;
	Wed,  8 Jan 2025 13:02:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OhIuPgv1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75931FA8D9
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 13:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736341339; cv=none; b=jqZHfJYalEoLXiEya2hBLaaCqivu4yMtkSCIV/WJ41pDV9GvSN8K14y6VDlmFgP1XcqptH3pqEZtoy/fL2aE3PuLXBSk6ni629UqPK8xxg9KcewFXymC/xa4gtx/2d4lu/V3YOwCU99wGjXpwvD1UMI2qQ3IWEA6P6A0RHFqCXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736341339; c=relaxed/simple;
	bh=pfXKttkEL2SWWU2rinTk0BU61tt2kEqGuqQajYKioxY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CQqBOKNnP58ueJ/2EvglSNo6Fxjdm+p4Ldik1ptG4xIWTR5jiA6NeohVD4nxpT1swUIEAZGZNk7t7pjeOW4sR8icxzHJqiZ/I5kcXnZLV/fCPMOcHPEVmJxqHgWq938SY8ZR+vXrifMGmliGJ6tOCh+sHw5Lbu3XUJ2Zkyvj/7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OhIuPgv1; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-53ff1f7caaeso17670985e87.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 05:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736341336; x=1736946136; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LtdjdENjpDlREgBVNAk/GURw9RLq4teFMIc2Gk3yyCc=;
        b=OhIuPgv1Qu6NoixcFS6zJJFc+GeYERk45gQGBMqJ1YO6ppsxXaVjPp2YitVY/ynS0j
         O195VUw6K/gfx0vzlmqjZbWEdL8FAwBs23WWcmA8O4pT21evMIrOoya5XHBUd5L84plQ
         1hWcx8151ZsaZsMwIot5Brj+Ek4rF1Nbe1Xfn2xwmDCAFSrHoFTHcBIuNT7w6DCzEtEd
         1oWDNqXWITabYAqkgCyuCISarSDsJVqEF5luMDwdqbddUk2vagQgIgKA8tV2qbFrviop
         3IvTnp/ZF67zf76wwBsCjw0WTAV1VgQwBOZJPgu5ahPgRjpprFbtvpp12J34S0MFkQ7b
         jxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736341336; x=1736946136;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LtdjdENjpDlREgBVNAk/GURw9RLq4teFMIc2Gk3yyCc=;
        b=YTZ/sqNMQncORtiZooYkSlL+YKfgV4tmmo8TQ60Zf7fpywIzmsDh5Bnavr8QwtgKqK
         i0J1f16msHw90CzBPsdQ3eMBIrHCLkxlRcpsBM4/0fupMjnKUUI5E2n91LgCvL7JvC86
         tgX3zn/+9NV3T9V3d0I6Iemb8M+jqJDt/LqbPKVhDgCpK58TGD8yZ3ZtRoK/LKXXKgFt
         4D/J4Vod20U0HFtlkOHvHLq3uT9GCRXCwo4XAJz2Heq0V7aJShsKcNTfqN0SxxHtQ+Jo
         3GMeybzt5Uy5SJTUwtgOCSKgYXumxzE6Cc/lgwSTkJ4+pseYcxlqdvruD+QdT4/WFtN3
         jxMg==
X-Forwarded-Encrypted: i=1; AJvYcCUxYqrMUCl9eg1KX73DxmdRlw0QuwfhAOhYnMPOXFQ5JKyRLoOHfREr+pQ8QNQ4YFAOklfZMU0MS5v9@vger.kernel.org
X-Gm-Message-State: AOJu0YxLU1uZRXILajcgPtWkt9Qhl2AdBUf5+5miMivHRx8MaKJEenbE
	AS1jUYWRgn6GfK3c7nwpN/F9O3dMnAX5Xraui0obN3vpNI8uO34dGQgNw+IyQyg=
X-Gm-Gg: ASbGncsmQEf8loAeIdff8waI5+XVT6E2oEV3KXhffRZ9/jwViD3XySMFNK7MuRCbQPx
	xcv0dj8b30BQWkBy3MGNLeqakulTTwJtVd5tLqjjyjCi8obL7fMONhJYma3GVgr5LdbKEMItvTK
	lL1yJxVubdmYjQG+rRz1LGUaYIXZ8gV19N+fjNyaefBH86Uuai0IeTdisSbWOGUoM395cCsX3cg
	i8tNdcUgVbmUOG29cmnoDMROphfvu9qm7YL9Tq/NEu7kapvJNvnK79My8u37A0BOAuNaFhrr/Df
	ZUtHPwQKEBGD6mVVWXLbgapa3NsYcwSryQ9c
X-Google-Smtp-Source: AGHT+IF11Wgw4NNBGE9Alqz5c2ikDMgSytLQymr22qioeMYiszQ6HPLJGryvXEb7CVA6I7N4H4lGkQ==
X-Received: by 2002:ac2:4e08:0:b0:542:23b3:d81b with SMTP id 2adb3069b0e04-5428450707amr631936e87.5.1736341335696;
        Wed, 08 Jan 2025 05:02:15 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542236000ddsm5590003e87.82.2025.01.08.05.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 05:02:15 -0800 (PST)
Date: Wed, 8 Jan 2025 15:02:12 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stephen Boyd <swboyd@chromium.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Subject: Re: [RFC PATCH 6/6] arm64: dts: qcom: sc7180: Add SoC specific
 compatible to soc node
Message-ID: <n3fn5mnrrinrgrvadqgymv3cx355qpx5kk27nlrz2emoxfmjyt@ymwpfxf7lv4r>
References: <20250108012846.3275443-1-swboyd@chromium.org>
 <20250108012846.3275443-7-swboyd@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250108012846.3275443-7-swboyd@chromium.org>

On Tue, Jan 07, 2025 at 05:28:43PM -0800, Stephen Boyd wrote:
> Allow an SoC driver to probe for these devices. Add the SoC specific
> compatible to the soc node. Leave the original simple-bus compatible in
> place so that everything keeps working.
> 
> Cc: Rob Herring <robh@kernel.org>
> Cc: Bjorn Andersson <andersson@kernel.org>
> Cc: Konrad Dybcio <konradybcio@kernel.org>
> Cc: <linux-arm-msm@vger.kernel.org>
> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> ---
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 76fe314d2ad5..257890a193e6 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -782,7 +782,7 @@ soc: soc@0 {
>  		#size-cells = <2>;
>  		ranges = <0 0 0 0 0x10 0>;
>  		dma-ranges = <0 0 0 0 0x10 0>;
> -		compatible = "simple-bus";
> +		compatible = "qcom,soc-sc7180", "simple-bus";

If the new driver requires this compatible, it will break compatibility
with older DT files (and it should be avoided).

>  
>  		gcc: clock-controller@100000 {
>  			compatible = "qcom,gcc-sc7180";
> -- 
> https://chromeos.dev
> 

-- 
With best wishes
Dmitry

