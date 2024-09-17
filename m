Return-Path: <devicetree+bounces-103504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E379E97B0D5
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 15:39:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 584431F25B3F
	for <lists+devicetree@lfdr.de>; Tue, 17 Sep 2024 13:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B692188939;
	Tue, 17 Sep 2024 13:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iMhRPGKG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F3D183CCF
	for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 13:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726580330; cv=none; b=mqIlo2S1hAElRWGf+63tOoBcrtk20qnr2dfowQg1CuH0rn7rgMJBRgKHCv2XRXqUVjVjYAqRKOkjn+rd8hLAEqELlVULFUSdZOcbfaYxf40P5hG/VBtIvdmKM3PVbNvBN5WOUSsZkO9bOK0L2w0njFbwDfGyKIqoT/M/wkl4dZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726580330; c=relaxed/simple;
	bh=ZG1vxeD3EgoOOwm9exxEQewT3p4f8/J4YXV48auODqo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zh1vSTLkieGCi6EXszkNDjKJAAaNUXfchwYBinsbeWraOYd25zoQ0v43nKAw9yKiFthcy/jonrDCt+0tTQ07IqCu6KZLsTmI0TbHqV4zqzj04OCE5N1lnsNSQtJMMg2m8++O2KR/TiRxrlpL2O7eOaJCMZ3jTiCKo5/xz4opmvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iMhRPGKG; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f762de00fbso59943591fa.2
        for <devicetree@vger.kernel.org>; Tue, 17 Sep 2024 06:38:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726580303; x=1727185103; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7oEZwCbDIQ8F+t4Rs5Bvaf5j4IlFxDz2ZFbzuElzFFQ=;
        b=iMhRPGKGN1Rod39srcMpq7d9KknSbl06Wa8LgN01LnEX8o21jlNpURD/MmHqadr5ce
         8WOJe2CRnV7nYhajsphNI+6Fkhh+jwYjP+2gTHzabrqcXZyLzBHQ53gHGDjwOtx3v0y+
         1pWXT1BJd2LM0uoDoLhU6AUGaRaGMYF0mgszFvC6jxkBa5ygrjbauPHl8b+HBsrtDlm8
         ClJynL7ANSIlpjxCfhql+RJZRhEG2MAoEf5LxDf9FAqiTP5/MSW5sWOK1TBNYa0tsbNk
         7z931rNADc+rNOYwYtAxnhxiC6/UBoQdEekOcTA8/huLFHkOctGW64I3aAgPMLZpoWLN
         O8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726580303; x=1727185103;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7oEZwCbDIQ8F+t4Rs5Bvaf5j4IlFxDz2ZFbzuElzFFQ=;
        b=hQT+o4V26a2+M67AfCv2za+uM/cZbwHqgnIwfAZmxghZaRPekAyuSMGFdkZIsP9mHF
         e/ZkKiukRGFVr4GYma+5xtoMNqqBf7zKlejw/MAh7yX02jZXvKzF7SzAD5C2royG5hcV
         RUhj3la32MZqjswwjPi6ESaLv8QQr3kE861As/zFENw+T6PS2Tr/2/XuzbXXuHXwfcJe
         weoiszVs2+gflZNH3wiOJxDgMaBpzX3o7iKWrWmPM6E3zg7f4GDr0MoD490q2YPE5NFj
         ZM9snRCUdQgvzJeFWllmfGqLFpceMilyA7LB9wHLrS1Rz5rS23DJOn1I0lD6cSxdRI5X
         JQNw==
X-Forwarded-Encrypted: i=1; AJvYcCVNZhYMK+QuuCd2o0b/GjNJwB8+HeoBGq8S9MxK226OtuVel2AtuYHHgaDNhs9J/4IbPAR1Tn7JwRrk@vger.kernel.org
X-Gm-Message-State: AOJu0YzfhK407JQpfIYXo/4ntx4rGl+ghpcKPewyWnDYINwWgzioqzii
	gCVlD/tY0zW7EiUxkPcuslV5gMA5uxwzrkDD4Bt6v9++xtRdqzDu+l7p9pG+ykY=
X-Google-Smtp-Source: AGHT+IGjeiZlF4mZL1r/PNyz6+OKRKX0/62xZ9kMPvlixKz4htlJC6nn+3BuxQ2/JVRsRDBmL4KaIA==
X-Received: by 2002:a2e:b8c2:0:b0:2f4:5d9:e8e3 with SMTP id 38308e7fff4ca-2f787dad4c0mr109899051fa.7.1726580302686;
        Tue, 17 Sep 2024 06:38:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f79d30175fsm10821131fa.53.2024.09.17.06.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Sep 2024 06:38:21 -0700 (PDT)
Date: Tue, 17 Sep 2024 16:38:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_cang@quicinc.com, quic_nguyenb@quicinc.com, quic_bhaskarv@quicinc.com, 
	quic_mapa@quicinc.com, quic_narepall@quicinc.com, quic_nitirawa@quicinc.com, 
	quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH 1/1] arm64: dts: qcom: qcs6490-rb3gen2: Add SD Card node
Message-ID: <gyasvmb5q3e4pgmfpj7njovclydwhsvsxt4ayfxzbh5njwgwsq@zfhlm6lqfirl>
References: <20240917090630.1025-1-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240917090630.1025-1-quic_sachgupt@quicinc.com>

On Tue, Sep 17, 2024 at 02:36:30PM GMT, Sachin Gupta wrote:
> Add SD Card node for Qualcomm qcs6490-rb3gen2 Board.

Consider adding mmc0 or mmc2 alias for the sdhc_2 node.

> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 33 ++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 0d45662b8028..5df3167651ca 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -716,9 +716,42 @@
>  	status = "okay";
>  };
>  
> +&sdc2_clk {
> +	bias-disable;
> +	drive-strength = <16>;
> +};

Please move all pinctrl-related nodes below the PINCTRL comment.

> +
> +&sdc2_cmd {
> +	bias-pull-up;
> +	drive-strength = <10>;
> +};
> +
> +&sdc2_data {
> +	bias-pull-up;
> +	drive-strength = <10>;
> +};
> +
> +&sdhc_2 {
> +	status = "okay";
> +
> +	pinctrl-0 = <&sdc2_clk>, <&sdc2_cmd>, <&sdc2_data>, <&sd_cd>;
> +	pinctrl-1 = <&sdc2_clk_sleep>, <&sdc2_cmd_sleep>, <&sdc2_data_sleep>, <&sd_cd>;
> +
> +	vmmc-supply = <&vreg_l9c_2p96>;
> +	vqmmc-supply = <&vreg_l6c_2p96>;
> +
> +	cd-gpios = <&tlmm 91 GPIO_ACTIVE_LOW>;
> +};
> +
>  &tlmm {
>  	gpio-reserved-ranges = <32 2>, /* ADSP */
>  			       <48 4>; /* NFC */
> +
> +	sd_cd: sd-cd-state {
> +		pins = "gpio91";
> +		function = "gpio";
> +		bias-pull-up;
> +	};

There is also a special PINCRTL_related TLMM imstance down the file,
move it to that node.

>  };
>  
>  &uart5 {
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

