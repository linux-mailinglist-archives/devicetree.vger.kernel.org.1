Return-Path: <devicetree+bounces-69412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 271118CFCCD
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:26:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D22EC283C7D
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:26:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E48413A404;
	Mon, 27 May 2024 09:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dasqq9O/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87AFD13A3F1
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 09:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716801948; cv=none; b=tBhY98ZzgTN1bZjDF90YckWadpGpR0dtbTQK90Yx41WoDFnBhnQ8bmmiQImru5DHGGI3Q4L6VQc4hzp2duAaxdzeGL8TPlbBNn/GJRhBetYERmi6ldHznO9d1Melp584JRIUbq0W4QpTuLCMCVeMzGoEzfGxUcvpsA+TigEq7b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716801948; c=relaxed/simple;
	bh=cQko5yHzoPs2yV/CH4+PZ1Xt8ozLjrQwA0DjyeGLoGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y4p8p8bezZc6tNH93c86AY/7OcfRPQsCQtOTehmaxtp/YKy7B5+RVILWU+9e33on1X24YGHLg3UZBkoHvsMcCK3eLcEeZN6ACE4PT3xpZHJT8hmT+MIonxIkZ+xKc6z8VCib+Ftvk+D/Zh7IrpYQsl0cwvySWZG9vpb9jYwJ+1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dasqq9O/; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5295a66e775so3318917e87.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 02:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716801945; x=1717406745; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wKVcWHGtXv4+Y/GGLknnmWszynoHdWdRaEwxbwxRfgQ=;
        b=dasqq9O/OS3PsrbM69mu5IcP44/75IuT7JH0uPDiaobNuIGuqAir0MImtxvv5NvD+5
         /ApxmRfeIF2FAJp77PnUMmg/3+Wn2mEcs4TJE69gev3IlYZznbFYCCwyB3IYDikgySUp
         HioI0W3Ep8iXPy3Hgf6139nalcD9P4qKpUOjQGAMJ2Wuqhm4u+W/EYQ9vtTbPNfLxPDi
         K9TaQNpbqnRMSaFONLu0JeMK44ym6ux+fE5Del9lAEC0vFwQ9N560Mj7o1tsTQfVLi+i
         sUg6bBHntj04ta/HdtxPYfwfRQLOWCNCBio9RUMf+ZT6JamwgO37ZYnLqoR6k5o/rXll
         Ll9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716801945; x=1717406745;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKVcWHGtXv4+Y/GGLknnmWszynoHdWdRaEwxbwxRfgQ=;
        b=Ic6GsR+WTNEqQsplqEYCUMDUS0ViNWFSYAYBpwQfJg0U7ZR8gJ455RbJSQG2+nCtYO
         1D79yRudzZvrseLvZEwMD5nQ6mw83U9tgIqzitIjQTnSdISyXoVRNv9ues/7IPWJC9I0
         JsW5kIuIWF4XRrlSzLm15bY3EC7oy1Kr77Fm82n7z6xefgd7hp71MgT8Kxm8t0CG7f8x
         ZgO0w6uHtCN5bm/1iUdVzEMbT+pTjU27LPmJVLMF0VDEzoa6+Vec961P7nYFvF46N9GJ
         btwzLfKoADrc1QZ/hy7QSBSY3DE8GXZ5X/B4vQ7n+NyRxLQHOAqdD+I/SDkq7pGbAy9R
         qmTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpS9Ig/okBqFz2NcQQ8MMYtoeaZ9fQtjxg5C2tShMlv972yQY1UegCK9n5IV3T0bG66BBbwoT2xwa4HcIZ8/u4cqNqOiZsKAMh3w==
X-Gm-Message-State: AOJu0YzW5SHFKKfrGSwYpOvmBkCQSXM9ClihjkhnKvh+R9ux3sGgJDIo
	5KZBZhqXCKdT6LlbeuuUO9dXFVHTqPexvqb/RpYveLZ3wqbO0mfXJvld99TSKNY=
X-Google-Smtp-Source: AGHT+IFRYnTuxuIaVnx862PVinhHJOao3oJwf/SJegXqqHDpG9Zyp3u9wU+0bAUOsIFxJDQqynxSIA==
X-Received: by 2002:a05:6512:328e:b0:521:742a:baf4 with SMTP id 2adb3069b0e04-52964ea96eemr7616266e87.9.1716801944756;
        Mon, 27 May 2024 02:25:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5296e887a6csm498529e87.24.2024.05.27.02.25.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:25:44 -0700 (PDT)
Date: Mon, 27 May 2024 12:25:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-crd: Add pmic-glink node
 with all 3 connectors
Message-ID: <t2gozu6atrv34abnuwafjje4aiy6j536bd3og53c2sdoxdkyew@vw3m367hzdxq>
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527-x1e80100-dts-pmic-glink-v1-2-7ea5c8eb4d2b@linaro.org>

On Mon, May 27, 2024 at 11:07:28AM +0300, Abel Vesa wrote:
> Add the pmic-glink node and describe all 3 USB Type-C connectors. Do this
> for USB only, for now. The DP port will come at a later stage since it
> uses a retimer.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 143 ++++++++++++++++++++++++++++++
>  1 file changed, 143 insertions(+)

Please rebase on top of https://lore.kernel.org/linux-arm-msm/20240429-usb-link-dtsi-v1-12-87c341b55cdf@linaro.org/, sorry about it.

> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index c5c2895b37c7..2fcc994cbb89 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> @@ -49,6 +49,101 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	pmic-glink {
> +		compatible = "qcom,x1e80100-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 121 GPIO_ACTIVE_HIGH>,
> +				    <&tlmm 123 GPIO_ACTIVE_HIGH>,
> +				    <&tlmm 125 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +			power-role = "dual";
> +			data-role = "dual";

Does this match the information reported by UCSI?

> +


-- 
With best wishes
Dmitry

