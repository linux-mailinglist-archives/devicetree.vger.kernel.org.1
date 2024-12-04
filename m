Return-Path: <devicetree+bounces-127121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0CE9E47BA
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 971C61880679
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5DB81F03DB;
	Wed,  4 Dec 2024 22:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dmxe6/43"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4C61C3BFF
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:21:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733350871; cv=none; b=Ywbcxej//nXyx0saaKGrfhqLorkG4UnAMqpGqXN/CuWOCtk+5ru2f5+ZGdYpcNaN3ziS6nzy3o55QX+l63S44sf/zPkEowoBMj7jRTb3yRhQCfzO3mR2BFIXUihLguMlwb1lVK+wyevHSC8T6/vuNrToBZqMT6RFH1KLjjBuvEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733350871; c=relaxed/simple;
	bh=1XfksjHiUmLDBwfWEVhZRw6suaxhtKcDRmMSFnlRbIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SL29CWStRDyT25mJ5Q1uGQaDmINdChwdyVBjatJf3vcwci+2fhJP8tKyYbH/07g8U6NHgdDMJMMedCY/59jIqWKVn+TBivNfvNKP0OfIJaDbR95tEUPoJp+T4CsM9iejktIGIWtdK8OE0TEOJ+32yX+IK0pTYXrJhMXWmqKH4+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dmxe6/43; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2ffc81cee68so1563931fa.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733350868; x=1733955668; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OH4y0lMP3bH1lveKpeX+aBwZ95mtO7UpbBtdFwlO2l8=;
        b=dmxe6/43c5nCrEDsG3SuGqFFn2sZ5xxLPNi64hW6yfrIbDLs7Mmwrz+Qocjc1aNx+e
         zKfk5JCTscvALQor1UUfbV71YrNF0Dm3KTlpQrjtV2iAMX7KwuodapleVx0PDMbiSAmh
         WEw72zL+NiJ1AXsd5PSCyElTaN2JLQbhEv8TcmwE8GuixEK8c4b+bsYpCI2YB2A0snOx
         6u7ouy14GrUisYNRT5QGnVMFGdtL2DKWS3G+AFJTWlDDwRXFZcTVb+2PxIq/ID5pxsDx
         zPSmFXeG0E4XZa4bBZvkSiNRr+bJ/IOhBEPl8c2z/SFxAiDTmiIbBjt1MBq6XbNumeAe
         fBUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733350868; x=1733955668;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OH4y0lMP3bH1lveKpeX+aBwZ95mtO7UpbBtdFwlO2l8=;
        b=uFYRxb70ClODRMkExnWMxPjGP9Z5CyP+e94WkbDoPmdm/fxjbnUOsuwEVBAsedAl0T
         9imWCbNc+7/beHNinOLSaz5NfxVfT83kYuC/n8rGx/zOAZ9QGaKr3KpHwCqaTvp1575Q
         ldl4RTlohaOimqauprmpMyyXACfGuk91crwDwiGPgHSReGSAPVfmIyG+dTexxR2qnM66
         fBJAvXR7GKsTaM4CZSwOpLM84lBfq56JH/LYqOnNdq7d7AF7WIkwuwLenhF93H1av8Nh
         NDKBIloeieYBpCPhcJgTYJb+WJcuws4pmLccDU6tTYMhwaWr4kgqk+Iuwq1tBi+5xHzw
         878w==
X-Forwarded-Encrypted: i=1; AJvYcCVaPFw+lFmBUgXgSSMhq9lsJQH2Tly+9xsN/D3ts0uFj8cYCyRucYIfy05cbTYUNHdPlmUEZ2GC8+kB@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzn6izx+zpx6zdKtYU0DGo2XV5SvwKO4mjj7OFBS9bYqf4xryt
	rhCDLL1Hq1cvGm33pjawR041CEoeasF6Spj4F5xNfc8jCtrShd/Y0rf5X4umU9U=
X-Gm-Gg: ASbGncvo1AfFuaQgrbbuQNIdeJ2q/3eCjPhR2L8Jzm2teHxsfJeC34r4gSy6VitdCLp
	fX3uoiT0GkAKLCNSUT5i3q+W8zaUTdC8gzuM/2c9LoP7VdE9SVyUOpU9jBmn8/3Y1vivbaeh3s4
	3HN2J6IgB/FxbFB5kIE0UBHwbn/5RekIE/+xAR7VykyGoUvCv0gCjF4Ks+dwSnkg6/G1t44sNcQ
	1n/ViPeL673XfUX+sbv6wdcfVy80raUt6lhtG9hM3IosFKn6tBQRp+sXm2pgCvMD/JIbdiCQkWP
	kiZRof8yZ/CElF279ufPfEw2JjMjvg==
X-Google-Smtp-Source: AGHT+IFQNKupoOz5B2N+8vVrOXLHYn4xv4Wtyf/8DA/aT70hkUWOnF+im9j6wqbTorBqmEkgbKr9BA==
X-Received: by 2002:a2e:a904:0:b0:2fa:cac0:2a14 with SMTP id 38308e7fff4ca-30009c30156mr45544571fa.11.1733350868075;
        Wed, 04 Dec 2024 14:21:08 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020e20aa9sm23431fa.80.2024.12.04.14.21.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 14:21:06 -0800 (PST)
Date: Thu, 5 Dec 2024 00:21:04 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abel.vesa@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
Subject: Re: [PATCH v3 2/2] interconnect: qcom: Add interconnect provider
 driver for SM8750
Message-ID: <snccv4rebzwolmqknc2jm6nkfxchi3hm2vauxnneefsisc3xwe@slfyaiss2vat>
References: <20241204-sm8750_master_interconnects-v3-0-3d9aad4200e9@quicinc.com>
 <20241204-sm8750_master_interconnects-v3-2-3d9aad4200e9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204-sm8750_master_interconnects-v3-2-3d9aad4200e9@quicinc.com>

On Wed, Dec 04, 2024 at 01:26:06PM -0800, Melody Olvera wrote:
> From: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> 
> Introduce SM8750 interconnect provider driver using the interconnect
> framework.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  drivers/interconnect/qcom/Kconfig  |    9 +
>  drivers/interconnect/qcom/Makefile |    2 +
>  drivers/interconnect/qcom/sm8750.c | 1705 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 1716 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

