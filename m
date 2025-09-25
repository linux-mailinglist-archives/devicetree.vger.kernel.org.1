Return-Path: <devicetree+bounces-221240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 69583B9DF84
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:06:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 80234189CDF3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:07:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC2B326CE2E;
	Thu, 25 Sep 2025 08:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="otiaoNTI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B53231DE8A4
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758787598; cv=none; b=LSrpdJeepF7lW2+Xwlq6HCos4YrwQihb8HZkojugE25W+5YyxqOm9EJJgAmG0lgdRUWVe0Hh1HNOFx84jaTYFSahbLA1vdOIF+5oQRLV97Ov8Qj7bILXLHN+wgF5VVt3kTVpfTQepYA9fyvbE1TfGCmmCxRvTnbxcnk3CVRAhq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758787598; c=relaxed/simple;
	bh=wIUpwcxZIeZ1aDFyn/xGONSivq82OQbzEQN8fhdtf44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OsdMUsyI+g0wShO+0Z+Cyusfe1JkgFDndHp/ZU2xLJxfLTd6g4zzzAgd2S+P5EzE7qf3oD/ykfiom5euxDHO5tQYFPWJFqyFkVVXRaop/Kpimnq03AAbTIy4cIJTmUzWnsEpOqKUjfWqozgg5/7gLPuOHZNdfnZSbQqkACPhpYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=otiaoNTI; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3ee12332f3dso565813f8f.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758787594; x=1759392394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1F2KFXx2QCTmJtkVij/dwh3zwds+jV+Sj9PH66pCWDs=;
        b=otiaoNTI1DbqjnG9USXPKmcopfLYnueODjpKwi9abe3qVj6K8leNcTCliLa+S7piTl
         wC7MCCwW8BcVa5VC6ugnCqW8sh61FUdcregZbU0TuBscoq/QvkR9Fzbb/8a+wGGH8h/G
         mW0JAVpNKBW8hbqgnwN0+mJSUDFas2ZPYfCaQZaFKhEjZA5gQvlKPLqKGxNHj2KmkXkU
         HVEo5zPXOBr9bKi+2Q366B7p92yKR4Ka6rN6feIwuLbqqX91jqJhuu3+SL7r+KUxWTtq
         quJGp9flP98MEkYJia6+M4QG115/K27UA1qu4NgPvBEHLk6WjW8iYVki8u0ooIABel5W
         DIBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758787594; x=1759392394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1F2KFXx2QCTmJtkVij/dwh3zwds+jV+Sj9PH66pCWDs=;
        b=GxEJ41p2UF++hD6SSsh56VVbRbBzXJazxJPfD5064828jeHkrub121FxBiaXoSk/LT
         xGyBmWmLcRkhvvQDxOp/vTdjI2z0Y7Tlbb28WyhZKHCr1tEy2WLd8CGkuOMDgt31nFh0
         OywcUdS7JocMZdTtlqvdF1teVpgtr5kZerKbpV/27tciF+PmhCMLiWYlz/n59g2Lae2F
         7khLotM8YE5rJyS8CRG7N91E7JYdWZTwI/dKaBcZx8Q2ZbfKyAOyo7LpdIrzU+f3QgLA
         /nz+CBW0rj2dA27KMXn3lVcDmq7h9YxZrHLR/2SbSaSt/bOhiwgO6D2Fh4VV0aYDEoG3
         GFUA==
X-Forwarded-Encrypted: i=1; AJvYcCVIyPsODG7aPTzoEPtsSA0slH0pCc7XQ8PPCKL55IRKlWn0HwLeIw8oBU1Q2ycKUDZkGbsdsrNauxtA@vger.kernel.org
X-Gm-Message-State: AOJu0YxXy9p4xo2VCC4OmwRrfEQ960NkghO6kTpogAe7boIMrHMuF4ap
	h0xTpU89MCXasxbFXmJsgFWb8L6yKYTCMjy6Q9aPjFJ1SfMpPYMMwkQyfyn0b87YUfk=
X-Gm-Gg: ASbGnctt7FHHGyKEZxjQVCEL6NQA+Gj1mW+jXFH7xKXbuEuIzzwgpkYr/b3y18odhdE
	qMrdjR7rJ8ChQf0yffEcQ+QGF6lJ/pOmbAAD/F78Hy03jR74LA9SXaZdA1XxgZeItG1rvcyNHBw
	UWmtWa7YPy0Ju93MseNLPRMNl1nSY9a4sE0A3oJ8W1N06ou5vf58NMab5n91rZHUEb6/Ff0Io4m
	z3T+7shXrPK8N6/H7Gnza0O35g8lrI3WUoJUCq4kN3RyI4fcwsW2A658lFyoNhPsuzZf4L60G0X
	K7Wng9epGe4F/Cgg60em8okH+44SMat3qfiItgrqwAz5A+ye0+jcKKkHUzlA61d6zFCUg7LG6jE
	7yzJn5LzIFz+B2UeI8F3YNg==
X-Google-Smtp-Source: AGHT+IHICrMoE4g1EPf1gi1U6G1AnaxAKikasIGU7lM5VMp3j9Yet+MUTclXE5ZQ7g2e91yVvhiz6w==
X-Received: by 2002:a05:6000:3105:b0:402:5708:629c with SMTP id ffacd0b85a97d-40e4bb2f6cfmr2156088f8f.41.1758787593926;
        Thu, 25 Sep 2025 01:06:33 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e2ab31bdesm64208525e9.11.2025.09.25.01.06.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 01:06:33 -0700 (PDT)
Date: Thu, 25 Sep 2025 11:06:31 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH v2 23/24] arm64: dts: qcom: glymur: Add USB support
Message-ID: <uqcmm7qjqtvkhncyp76dgu2cm2ovjfxowwtrawqxjuychbjf4w@3rfvptbmsvo2>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>

On 25-09-25 11:58:29, Pankaj Patil wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
> flattened DWC3 QCOM design.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 243 ++++++++++++++
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 569 ++++++++++++++++++++++++++++++++
>  2 files changed, 812 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 03aacdb1dd7e2354fe31e63183519e53fa022829..100519aa5a7cd905285d3aa41ebe5f63ae00aeef 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -99,10 +99,74 @@ ports {
>  
>  				port@0 {
>  					reg = <0>;
> +
> +					pmic_glink_hs_in: endpoint {
> +						remote-endpoint = <&usb_0_dwc3_hs>;

usb_1_ss0_dwc3_hs

have a look at x1e80100.dtsi, please.

> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					pmic_glink_ss_in: endpoint {
> +						remote-endpoint = <&usb_dp_qmpphy_out>;

usb_1_ss0_qmpphy_out

> +					};
> +				};
> +			};
> +		};
> +

[...]

> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 8a563d55bdd4902222039946dd75eaf4d3a4895b..c48d3a70820e551822c5322761528159da127ca6 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi

[...]

> +
> +		usb_1_ss0_qmpphy: phy@fd5000 {
> +			compatible = "qcom,glymur-qmp-usb3-dp-phy";
> +			reg = <0 0x00fd5000 0 0x8000>;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3PHY_PHY_PRIM_BCR>;
> +
> +			reset-names = "phy",
> +				      "common";
> +
> +			power-domains = <&gcc GCC_USB_0_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;
> +
> +			orientation-switch;
> +
> +			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_dp_qmpphy_out: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_1_ss0_qmpphy_usb_ss_in: endpoint {
> +						remote-endpoint = <&usb_1_ss0>;

usb_1_ss0_dwc3_ss

and so on...

Again, have a look at x1e80100.dtsi, as an example

Thanks for your patch!

There are quite a few things to improve though.

