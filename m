Return-Path: <devicetree+bounces-151842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B0F8A47476
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66F403A3192
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E9461E8343;
	Thu, 27 Feb 2025 04:30:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m0rimY+x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B4928F3
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740630626; cv=none; b=rjj77BMwvFhCRYU2NBAIQqklHz9Lye35GE4k7q81yup8SO0g3legR9BlAmBHCX5yD+jNwC6rXWQzDqWv9GMimtckjED9f0/f9EmH11iMw98B0/XFG9r9dyhu6vTp18+SuT03RcpgIZEixam689MBsaBe9cvGwyURx4KltaV4zGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740630626; c=relaxed/simple;
	bh=K5Ig3YWAa+ZrYmIukjgNYwh4zK1sumsgYolE4PtduI4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CbABsDgXz3lib2FGcejShwY6EPCPNmKqkrlxyljD7Z84reySXCTJw7jNF2bLmL7g2PQTtihmCnUdmfWx0D8to3RB9XsReuvQXETTkvN9tWhQRmpgBCI5ervWxoUCtrYIbVKzxTlHFqAuKdH6wFTRyu1CeHYUIw9TpCqAvMnk6+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m0rimY+x; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5461cb12e39so454399e87.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740630621; x=1741235421; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6xImYWDi5dHhhhMYMyVIYxjxB6DJ6bmImK4QBDVtyf4=;
        b=m0rimY+xPxa6Rt9eD08HgZpGg8Ufd978jWDP7E4h4nx7POfHYrERe9sZxNsD5bgi13
         dNOFSqkegTp7FG3APXGDW2G9HHtfP0kENY4g16xAEPeATEwh8YO+a4dVt3oLmlAsUNSe
         XNUdcnlwvGOy54bDCdhB0t66SgmDVGI4whLN0gmset1MmCqOj1m2iDaqlKQp6Yw3XWp3
         NfpWrjqL7/iZhZfoqb1r3giKn7iZaO0Poj5BDDCrOOGIe985ink4dZzQVziwA4rv4I2g
         OnijiDfD7bcurP/pl47Yp35iQi4J83i7HPSOqxeLhfX6/sNPNW+CJ97MFS1lKhc9kwBF
         1tiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740630621; x=1741235421;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6xImYWDi5dHhhhMYMyVIYxjxB6DJ6bmImK4QBDVtyf4=;
        b=FM2Ba2Ap9AC+sOu5yBr4J8omTkSmNeFk+jA2K/7qvgivudRK9pPb0a1eSkUGPZ6XbQ
         br+8K1mZNVFTzY6yNQSjsXhKbVsKDzIpNBI5bB9oHHqapEQikJWQPJ+8k41gSYO1hGm6
         EuO2AqZkwQpIY2fV+3htNhgoZQ8e1rLYITWInR9Z4x/HsvHiTBYGJ/z6DdFRZIrBsBaJ
         QZUQgCKycKP5x4ac6m21uDtnLsI5NSJ5SI5NRtwxNHbrr1qmsa+BK1A3N0GgYG3act/X
         mNsEpUNECvsxX2JoZoJGS5dR+7SXGWDF+ASJvvO1NBt2DlHUfKMKFgP4XsbwbKlnTIo8
         z3jQ==
X-Forwarded-Encrypted: i=1; AJvYcCXIMIosGx1NrjdplF0dBYvy3/Vn0jlUs3tgEv2oHJacc+qrU3W+GOGz3F9gJwa2O9sM5krsO5/+Vk+l@vger.kernel.org
X-Gm-Message-State: AOJu0YxVU441D9A5uFrgxcc2LA8FkvYvUtqIHD2iAGwT4n5awqFNPwOn
	wXab0hZZz/nXFLTUC50X5Qm8RriPXTCStUJqIR1KH0dwMx49/Ch8Lu8tvTByrOE=
X-Gm-Gg: ASbGnctS6rr0WIE5Y9MKG2ULw6S1EXJQaagv5BwfO/rRbIKuz8dA9YsedgdFrd22iy7
	BfsLisOzLcu+E/qkSx1W3w13zfQT/b3Gy545MZ1s0xVaVjYLFyVlMN+bO2inBHXdfMeVBKLwqeX
	OJVAochw+ARA1DVtMi8XouiJYJyb7+v+Kh8h2DQr1XblaAFd5Fr+ARIZeD5coOpcHtAmet9WVQu
	ip4wH72fm5YzZhlPl0BCmcEJhue4gHxR7ielFRgHmw3/KHdxW4bPlkSUNBAtYP2UbkiEMHbtV04
	aZRWs63FgRlMlQZqlFrVvTf3C8lsAZTKgOJ6u4UUf51O1RPUfchgarkxcFXfJpz+ZVFp6kdT9pR
	Z15Fhfg==
X-Google-Smtp-Source: AGHT+IGL7HDk5Dk+8hhQWHKYR6eLK127rmTECoFhOD2p60rLksOSOUqbp9cBZQmHY4NpEr7VKXUNsg==
X-Received: by 2002:a05:6512:ea1:b0:545:2c25:44e6 with SMTP id 2adb3069b0e04-54838ef5865mr10147861e87.25.1740630621185;
        Wed, 26 Feb 2025 20:30:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443cd06fsm60825e87.228.2025.02.26.20.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:30:19 -0800 (PST)
Date: Thu, 27 Feb 2025 06:30:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	cros-qcom-dts-watchers@chromium.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Hook up
 DisplayPort over USB-C
Message-ID: <it5pyziyolnzjlfzfcvugiupauf6vqrbes4kdjpae2edgoc2pc@zr3d4iqczuvc>
References: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
 <20250226-fp5-pmic-glink-dp-v1-3-e6661d38652c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226-fp5-pmic-glink-dp-v1-3-e6661d38652c@fairphone.com>

On Wed, Feb 26, 2025 at 03:10:20PM +0100, Luca Weiss wrote:
> Extend the USB graph to connect the OCP96011 switch, the PTN36502
> redriver, the USB controllers and the MDSS, so that DisplayPort over
> USB-C is working.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 67 +++++++++++++++++++++-
>  arch/arm64/boot/dts/qcom/sc7280.dtsi               |  2 +
>  2 files changed, 67 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> index b3fc37dba51523ce5678ae6d73f7d835f8b26d9e..1e04c7ec7163538d93543f36094203e58212f600 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts
> @@ -101,7 +101,15 @@ port@1 {
>  					reg = <1>;
>  
>  					pmic_glink_ss_in: endpoint {
> -						remote-endpoint = <&usb_1_dwc3_ss>;
> +						remote-endpoint = <&redriver_ss_out>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					pmic_glink_sbu: endpoint {
> +						remote-endpoint = <&ocp96011_sbu_mux>;
>  					};
>  				};
>  			};
> @@ -758,6 +766,16 @@ typec-mux@42 {
>  		interrupts-extended = <&tlmm 7 IRQ_TYPE_LEVEL_LOW>;
>  
>  		vcc-supply = <&vreg_bob>;
> +
> +		mode-switch;
> +		orientation-switch;

Should be a part of the previous patch.

> +
> +		port {
> +			ocp96011_sbu_mux: endpoint {
> +				remote-endpoint = <&pmic_glink_sbu>;
> +				data-lanes = <1 0>;
> +			};
> +		};
>  	};
>  
>  	/* AW86927FCR haptics @ 5a */
> @@ -778,6 +796,30 @@ typec-mux@1a {
>  		reg = <0x1a>;
>  
>  		vdd18-supply = <&vreg_usb_redrive_1v8>;
> +
> +		retimer-switch;
> +		orientation-switch;

Should be a part of the previous patch.

> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				redriver_ss_out: endpoint {
> +					remote-endpoint = <&pmic_glink_ss_in>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				redriver_ss_in: endpoint {
> +					remote-endpoint = <&usb_dp_qmpphy_out>;
> +				};
> +			};
> +		};
>  	};
>  };
>  
> @@ -799,6 +841,15 @@ &mdss {
>  	status = "okay";
>  };
>  
> +&mdss_dp {
> +	status = "okay";
> +};
> +
> +&mdss_dp_out {
> +	data-lanes = <0 1>;
> +	remote-endpoint = <&usb_dp_qmpphy_dp_in>;
> +};
> +
>  &mdss_dsi {
>  	vdda-supply = <&vreg_l6b>;
>  	status = "okay";
> @@ -1297,7 +1348,7 @@ &usb_1_dwc3_hs {
>  };
>  
>  &usb_1_dwc3_ss {
> -	remote-endpoint = <&pmic_glink_ss_in>;
> +	remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;
>  };
>  
>  &usb_1_hsphy {
> @@ -1326,6 +1377,18 @@ &usb_1_qmpphy {
>  	status = "okay";
>  };
>  
> +&usb_dp_qmpphy_dp_in {
> +	remote-endpoint = <&mdss_dp_out>;
> +};

I think this one is static, plese push it to the SoC dtsi.

> +
> +&usb_dp_qmpphy_out {
> +	remote-endpoint = <&redriver_ss_in>;
> +};
> +
> +&usb_dp_qmpphy_usb_ss_in {
> +	remote-endpoint = <&usb_1_dwc3_ss>;
> +};

And this one too.

> +
>  &venus {
>  	firmware-name = "qcom/qcm6490/fairphone5/venus.mbn";
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..4880d26e745566fa7ef906a0489e3772f2426ab6 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3639,6 +3639,8 @@ usb_1_qmpphy: phy@88e8000 {
>  			#clock-cells = <1>;
>  			#phy-cells = <1>;
>  
> +			orientation-switch;
> +
>  			ports {
>  				#address-cells = <1>;
>  				#size-cells = <0>;
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

