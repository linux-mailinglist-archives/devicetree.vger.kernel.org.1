Return-Path: <devicetree+bounces-82171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB9A91EA49
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 23:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA7E51F23C93
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 21:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D014A172773;
	Mon,  1 Jul 2024 21:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wdaH5i1n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47D8171E58
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 21:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719869106; cv=none; b=iXccRi8nsVUYuaWEIQpIzN3qRnCVOd2Bu0PA1n2AJsXxyoXfYTzAauACp2SkUU7WGdWaiMa94OwyLy4M0cLyOTQRNKDcQ8SBpuBkfRXNbUbKpDhio8oLvfjHBNBEVPcuWbMu5j0gLPWl7qU9WegmMhSF76hnHzVCDe7639JTrrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719869106; c=relaxed/simple;
	bh=E+YOvaKlzqdaFLgIijZX77V+i9HowcxIorc6P65Of4U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EdgDLGTPvIIwIDYUlg24TEZFYtY2vJJ4uiyY+JTfvU9dKNzIlEBvPLOpx3h/kXKHRZOCiUiwJAAXXJejFHEtzDQhsY/n62K7jYYqfgWCVnMEeceN8UdteEujraA3wz7mgc4lEgzeFhNfu/7q/pUh+hn1Q/m9w0d/xFt8x8aowSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wdaH5i1n; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ebe40673e8so40779651fa.3
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2024 14:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719869103; x=1720473903; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1a8uL60fLg0Pow8Jq9FnHXjlODT5DmB/QbQpLLAEWCQ=;
        b=wdaH5i1nZ1LB1A+4TPgXYGtVTACT8bIcAyz0gIISW+pKRqNl2fNHrmv2PufjpODpRn
         wrybCwL0BULCjLYZ4tzZgaDonIyehKERpr9nHjydb5FSWL0LfO0A0CBHF9YD+jDCuIom
         NywS4krV32ity88twVYoC0LKE8OK9JrwIDQWvl8zj+2rFrYKwnLVNxHK6YiJlDqsUL2c
         huWIn3orRAYWOFqZhkbbPgrWxgG8KZSftwlZ5VyAWBBszivQLsLfxABGHbnTHurVfy8w
         976EaZvq/6ETMjhoPkOaYfLWbmt4M/Pvat1FiIKXlGu7sLTHJ4bA09+CCQ907lf13ZOn
         4YOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719869103; x=1720473903;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1a8uL60fLg0Pow8Jq9FnHXjlODT5DmB/QbQpLLAEWCQ=;
        b=Uw2WoMIuaiKtHl2SqJqu6n1kHL/7uHErl2gL8twbP2g4KBeMUFuPNxCp08+jiJo+3X
         Zq6+YipuP2rttQSLS0QZFbhndMn8OVvqDJqxXXNwWN1AzzBJMzjZLt/mjQSe48iZO90J
         41SrDAwL12ksDfXXEITYO+m0G1tJAyjriY8MaClDLxmUSBGtBxnlcNEeOYbxB751X1Do
         28lNDN19tmUrW1HjLBG3SuSap9qypaxLP+Dg6G0Ocs7VzO9Dm8OXfJxBM/yArhNx4SSJ
         5wqjFTTTcKQ0YD1opVmCZjmRkkH2+7zA/cevlD4+zHF2pUIakrvIokvoYJW/pozxBhne
         tqdQ==
X-Forwarded-Encrypted: i=1; AJvYcCVoTSwZHX1Bt3YKp3BupkXZNd11ViKn8xa+EyqRkrtkUvOWMBJBJ6xUTP6UGSJbsLce1xlTMjYNIxp7JgUUXRI1V+oqlPITGg4puw==
X-Gm-Message-State: AOJu0YylGHWS7o1oO0G+Y8+IVOgOikbQqTnqK7/yCVraMjk+W8nI91dq
	5eK4J9xpt9rmbXtGXsgYFWjSfNUM/DA5Dxpyzjs1UzsJLlD9Neup3fN/7fPrgmk=
X-Google-Smtp-Source: AGHT+IFVaSaBaiSYMfUIbk09sMC02hZroX1HE7a+9WIekEEhfFhrDc+eu7Swl1YpMravg/m5HgRh5w==
X-Received: by 2002:a2e:bc84:0:b0:2ee:5b97:ebcb with SMTP id 38308e7fff4ca-2ee5e38005fmr53861971fa.22.1719869103018;
        Mon, 01 Jul 2024 14:25:03 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ee5160e072sm14798011fa.21.2024.07.01.14.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jul 2024 14:25:02 -0700 (PDT)
Date: Tue, 2 Jul 2024 00:25:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dang Huynh <danct12@riseup.net>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: qrb4210-rb2: Correct PMI632 VBUS
 ampere
Message-ID: <ivuhtt6krunnsimh5yqlxk6sn2doqg7oka2dcxbblwpe54vqxb@dgybzzixtf2i>
References: <20240701-qrd4210rb2-vbus-volt-v2-1-b7bcd2a78c8b@riseup.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240701-qrd4210rb2-vbus-volt-v2-1-b7bcd2a78c8b@riseup.net>

On Mon, Jul 01, 2024 at 05:24:39PM GMT, Dang Huynh wrote:
> According to downstream sources, PMI632 maximum VBUS ampere is

s/ampere/current/

Also in the subject, please.

> 1A.
> 
> Taken from msm-4.19 (631561973a034e46ccacd0e53ef65d13a40d87a4)
> Line 685-687 in drivers/power/supply/qcom/qpnp-smb5.c
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> ---
> In previous patch series, there's a suggestion to correct
> PMI632's VBUS ampere.
> 
> Unfortunately it didn't make it and probably forgotten.
> 
> ----
> Changes in v2:
> - Fixed typo (voltage -> ampere)
> - Link to v1: https://lore.kernel.org/r/20240701-qrd4210rb2-vbus-volt-v1-1-5c06f8358436@riseup.net
> ---
>  arch/arm64/boot/dts/qcom/qrb4210-rb2.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> index 1c7de7f2db79..1888d99d398b 100644
> --- a/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb4210-rb2.dts
> @@ -305,7 +305,7 @@ pmi632_ss_in: endpoint {
>  
>  &pmi632_vbus {
>  	regulator-min-microamp = <500000>;
> -	regulator-max-microamp = <3000000>;
> +	regulator-max-microamp = <1000000>;
>  	status = "okay";
>  };
>  
> 
> ---
> base-commit: 642a16ca7994a50d7de85715996a8ce171a5bdfb
> change-id: 20240701-qrd4210rb2-vbus-volt-822764c7cfca
> 
> Best regards,
> -- 
> Dang Huynh <danct12@riseup.net>
> 

-- 
With best wishes
Dmitry

