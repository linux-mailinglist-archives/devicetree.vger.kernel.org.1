Return-Path: <devicetree+bounces-119499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D25749BEA48
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 894B81F246E8
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 12:43:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7535F1F81A7;
	Wed,  6 Nov 2024 12:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hzxem+gA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D5A1E104A
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 12:37:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730896671; cv=none; b=sRo5MXnIR6ocYAu0jTe5cwf7PgcLRquQc8eeIQ9BQRz75lLlGkURo8g9ujcqTfyKwcajcqaeiM8666Weht9W3G4kaX1zVcb6+nnkPdL1USActfJpTLgROG2lmVPeMW1ne8LqcetUD7BNhIN+k1uoYKUigtOOAb4+DAk/mNjsmAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730896671; c=relaxed/simple;
	bh=kwmHjPAVawyLF5ecNZoCszuUgpIE4aMH6tKO8F/bZGQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IolBRlHK2N3BkqB7YCcGFoNDLqXluJulg74G1KOojp3Rzat9LXEJa2D+pEcn/i3wzbPVlhLFuPRNBSqyRhtQDdEfllJk8qzbCCAFNKKmVDPIg+15y6Ywwssl5iaygdN2jbAFeFfaoFeCsrKPNs1WiQpQtbwFSBqOc449to4fGKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hzxem+gA; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb59652cb9so59764331fa.3
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 04:37:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730896666; x=1731501466; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ae1koq8dMp04bbFTqClDde3Vovpb14m9bsDzfQ/pDI4=;
        b=Hzxem+gAoURgOYJh0T1xX1cAXu1H4qy7in0buGgCL5M8/TLtaL3X+KoqqXapoxNrrq
         3GprIi/qxoM+JoR7hzMbfbzOLfSt72vBdRjiVeViESaMkdw6h1hFqga0pmsh7er9j57n
         XFyhhaI/73defe67u4vPqBoE80gdPOViGY7TnLox1Z/yXS6Bl7UFAM3URNflb6JE7aNH
         0ktnhNjFnNet/1TScRuMgdamRZUYR1eMvpsn4JJR+3M9qr9rKmxp2sVNwquH+U44xG9/
         QS1RYJYwp17IBMbLHUBpTJMaFKUa47/WHQdcpIWuCr7m0b3jXNu0dN6ttiaOzr76C0wo
         zUjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730896666; x=1731501466;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ae1koq8dMp04bbFTqClDde3Vovpb14m9bsDzfQ/pDI4=;
        b=xH0dp2N0aNls53/0zAbk0AS5IjVq+zM1fM4ih0yeWw/UU8VyOPkgNcnzrbTY/gLRXB
         sAvgdsUXMllKcvMZ8Z7J7KuqOGRsd9HwuwVgGQzsFLY7KG0rTKoL2YC9mWFK3FPKl60f
         Q3qx9PjfL1nHJAYuZjUszBPO91ViTwdCbb/lmMeR/Cfbd/eRHQ4g4rV5BXliK9j5ahCP
         1vtZxqlNLUpKm0FvCE3IxNw9s1NcqhTkON/0+TnoVjLBOxQqhEVhzDdpntsTOMOqOdiQ
         fI+Peki6hXVob4DTbnZP1eJI7j9qgJBrXJ33CPQEfhWXMNBPr6G1UFlbPwsED5TK/9c+
         Itjg==
X-Forwarded-Encrypted: i=1; AJvYcCV9Nzl9V/HqVrqFMlojYHhCYfMsskkFPRincf3qPvYtDgH57WW/pqDPh4kjpkQngMbppeCRNqaZayjZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx25aGU3DYbi97uM3AOQwK69LL+D+AEbnC+5dA5emC9XCMDjisp
	+WsSHFSD4EXZAXCjCVfdfmdNecW0qPGZXcCCrp2to0BrNQyNan1SO7bMvdgbM38=
X-Google-Smtp-Source: AGHT+IG18B8XOx5468uBh2oYr28fOGs05I2R99SXd0y1/W0ItCrjogqsU3jSoo/FQC1khD4aOuBaMQ==
X-Received: by 2002:a2e:bc18:0:b0:2ef:2490:46fb with SMTP id 38308e7fff4ca-2fdecc2f714mr118699741fa.37.1730896666319;
        Wed, 06 Nov 2024 04:37:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef8c345asm24833201fa.105.2024.11.06.04.37.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 04:37:45 -0800 (PST)
Date: Wed, 6 Nov 2024 14:37:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jonathan Marek <jonathan@marek.ca>
Cc: linux-arm-msm@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: x1e80100: enable OTG on USB-C
 controllers
Message-ID: <hw2pdof4ajadjsjrb44f2q4cz4yh5qcqz5d3l7gjt2koycqs3k@xx5xvd26uyef>
References: <20241011231624.30628-1-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241011231624.30628-1-jonathan@marek.ca>

On Fri, Oct 11, 2024 at 07:16:21PM -0400, Jonathan Marek wrote:
> These 3 controllers support OTG and the driver requires the usb-role-switch
> property to enable OTG. Add the property to enable OTG by default.
> 
> Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)

For some reason commit f042bc234c2e ("arm64: dts: qcom: x1e80100: enable
OTG on USB-C controllers") seems to break UCSI on X1E80100 CRD:

[   34.479352] ucsi_glink.pmic_glink_ucsi pmic_glink.ucsi.0: PPM init failed, stop trying

> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 7778e17fb2610..fb16047d803c9 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -4199,6 +4199,8 @@ usb_1_ss2_dwc3: usb@a000000 {
>  
>  				dma-coherent;
>  
> +				usb-role-switch;
> +
>  				ports {
>  					#address-cells = <1>;
>  					#size-cells = <0>;
> @@ -4452,6 +4454,8 @@ usb_1_ss0_dwc3: usb@a600000 {
>  
>  				dma-coherent;
>  
> +				usb-role-switch;
> +
>  				ports {
>  					#address-cells = <1>;
>  					#size-cells = <0>;
> @@ -4550,6 +4554,8 @@ usb_1_ss1_dwc3: usb@a800000 {
>  
>  				dma-coherent;
>  
> +				usb-role-switch;
> +
>  				ports {
>  					#address-cells = <1>;
>  					#size-cells = <0>;
> -- 
> 2.45.1
> 

-- 
With best wishes
Dmitry

