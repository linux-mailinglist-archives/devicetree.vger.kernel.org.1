Return-Path: <devicetree+bounces-81180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7393891B8CB
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 09:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96B091C22497
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 07:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4EFC14262C;
	Fri, 28 Jun 2024 07:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D1vi+bni"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F62C12F397
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 07:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719560833; cv=none; b=pMiSTRFhynXRYKA+rZXKbXrkXI1cc1QRm5iUASsiQwnxVoJPTcBmoIlsfJTd3Qik4ithEkS0ONtWzGzzbmzh1K4f+flmTXclpmRf5PgJ3QLPOiVeMBa0H09L6OSLVyMb2YrIXW59Mev5OVRmVUeKBml52+2pUjq7pgeUBmdhiV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719560833; c=relaxed/simple;
	bh=X1XDg4CWqLekR5BIvTtoObyb6G/m6s5Hzu4qSPrR74o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qjXqNc0ReJbxuj2Jzl2M3qZiozvMeV69gIq4mQl4jfxartSB641KEeSzg1v98E63uLLKiRoNGnMEe3HGMd1eQZpKklPihgAz8dUhwznHEn0G2w2fjAt7Dcfxhhqekeij9jl12AP9WekmQvX0ap2nSIYOsaLqVq+1izxvFOW2ztI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D1vi+bni; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ebe6495aedso2784151fa.0
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 00:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719560830; x=1720165630; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Nc4Qf7GLtkVCveBTGX7EpUl9LATF5aggezB8l/JLORQ=;
        b=D1vi+bniCua+mbHIjXYINUB/IsSvMoAof0vyXF95cZLQgPuCD9lKewEs5JyP39YNiL
         qRaoUPXFsnH6F21OmWSqbLXNlnfu1qj7QiyMJKEuN56U5XZN2TV8ss7Q0z0Qes85FC5X
         yGtVVwN4QerUNqzU02zuMC0zmjEa+rR7NbXvGjizGKfe1H6IN3L+QMNgSmWmLLPhFKJn
         QSrDvN1kZ0iiApkSHGp84qe2ka584xJzXqKYbeUkaJoauqhQP0rVihkDp5Dq6L0fACGa
         Ua0WbnfFxqCeLroQcPw/ZKykcHqtRUrgOX+22+wlXd8fMTKP/ssDFpBt+aZR98k+TYo9
         xPpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719560830; x=1720165630;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nc4Qf7GLtkVCveBTGX7EpUl9LATF5aggezB8l/JLORQ=;
        b=bD0goJ8T7QlrFAgDLuWn9elSTUq1Wk+XWWfXpvgjvKoHSFofroeog4k/ijV9iPZeIZ
         wH76Kn1d8F4frQ8/I9LQWK8wVqHsqZQewLYeS1WEa0/lyaHbTjHTYxPJdc0X4hxXoR3w
         UQpDqDeTDiXK5nBJ+0Ndt0pANalws6uDDcsp+6k91p+tuV5NU+HPpymV1BvWVPQhZf+u
         AumlKxzjF+y4OWfFIB27bjnpAumzuQhHV1y4XM7qFSETIjZ0mCEocDdKNo5ntVAre5BD
         bT7MyaCbwkidi2SpljBHMdbShcOCshSqv/2jruCBcHF5+TXV5hUOc566Y/8WXW+mM7vn
         uKbA==
X-Forwarded-Encrypted: i=1; AJvYcCXySB+DfNZ9eoTvVwNzHtU9/GXRq5It9j0wskl+Cyab3edqCuNQG507FGdSA05nCFMP1eX0jp089l/eAt8NNJAReiHMA3VB1G/0Xg==
X-Gm-Message-State: AOJu0YzoEqWM83LTfCT3RJ8TgunGIYCWUYOdRz2x00ybehRpouYEX7YC
	0ItIQ/0FE4+dXt5mfrVT0oQDxvwMgLrr/mapp320EszSzSrJaB7B5uopIbLOxmQ=
X-Google-Smtp-Source: AGHT+IEDr3s7URgwk4byM1UEJod82amd+japUT2kSdheEtNmdtI5YyE+4VmV/k4KdQ5AmSQUb0CC7w==
X-Received: by 2002:a05:6512:6c7:b0:52e:6d6e:577e with SMTP id 2adb3069b0e04-52e6d6e5833mr4844105e87.2.1719560830271;
        Fri, 28 Jun 2024 00:47:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e7ab278edsm193556e87.173.2024.06.28.00.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 00:47:09 -0700 (PDT)
Date: Fri, 28 Jun 2024 10:47:08 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: linux-sound@vger.kernel.org, srinivas.kandagatla@linaro.org, 
	bgoswami@quicinc.com, lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	konrad.dybcio@linaro.org, perex@perex.cz, tiwai@suse.com, linux-arm-msm@vger.kernel.org, 
	alsa-devel@alsa-project.org, devicetree@vger.kernel.org, elder@linaro.org, 
	krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: qrb4210-rb2: add HDMI audio
 playback support
Message-ID: <tqjjrkpdrqjobg5fp5jml5pj23ollc4yolln46lb533kwsgncf@tfzaxwydqhht>
References: <20240628010715.438471-1-alexey.klimov@linaro.org>
 <20240628010715.438471-8-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240628010715.438471-8-alexey.klimov@linaro.org>

On Fri, Jun 28, 2024 at 02:07:15AM GMT, Alexey Klimov wrote:
> Add sound node, dsp-related pieces and LPASS pinctrl to enable
> HDMI audio support on Qualcomm QRB4210 RB2 board. That is the
> only sound output supported for now.

I see that you have also added the MultiMedia DAIs, which don't seem to
be used with this patch.

> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 73 ++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> +&sound {
> +	compatible = "qcom,qrb4210-rb2-sndcard";
> +	pinctrl-0 = <&lpi_i2s2_active>;
> +	pinctrl-names = "default";
> +	model = "Qualcomm-RB2-WSA8815-Speakers-DMIC0";
> +	audio-routing = "MM_DL1",  "MultiMedia1 Playback",
> +			"MM_DL2",  "MultiMedia2 Playback";
> +
> +	mm1-dai-link {
> +		link-name = "MultiMedia1";
> +		cpu {
> +			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA1>;
> +		};
> +	};
> +
> +	mm2-dai-link {
> +		link-name = "MultiMedia2";
> +		cpu {
> +			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA2>;
> +		};
> +	};
> +
> +	mm3-dai-link {
> +		link-name = "MultiMedia3";
> +		cpu {
> +			sound-dai = <&q6asmdai  MSM_FRONTEND_DAI_MULTIMEDIA3>;
> +		};
> +	};
> +
> +	hdmi-dai-link {
> +		link-name = "HDMI Playback";
> +		cpu {
> +			sound-dai = <&q6afedai SECONDARY_MI2S_RX>;
> +		};
> +
> +		platform {
> +			sound-dai = <&q6routing>;
> +		};
> +
> +		codec {
> +			sound-dai = <&lt9611_codec 0>;
> +		};
> +	};
> +};
> +
>  &tlmm {
>  	gpio-reserved-ranges = <43 2>, <49 1>, <54 1>,
>  			       <56 3>, <61 2>, <64 1>,
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

