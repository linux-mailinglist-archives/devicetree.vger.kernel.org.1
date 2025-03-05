Return-Path: <devicetree+bounces-154209-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 184FAA4F506
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 04:00:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC54A7A1CD9
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 02:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C510A15ADB4;
	Wed,  5 Mar 2025 02:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hhfcpH3D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D57B015CD74
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 02:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741143596; cv=none; b=tkRXT6BPIwAGl9rd91PXwKTg/iaY5azMxRY/G0w8ionZUw3OVNZjREi7xfKGMZfWwdjSXXYHLcBmgzQl309P6Ky+1iGCaMAcYcCUQfRzfeMxImLMlWAdJRkKFwDkh1Djl9K7yEBi3DEULbFJpehj45XmUjOaQWAsmsIEbTjSaSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741143596; c=relaxed/simple;
	bh=mPfqHmUHSKSQaPUHjpb/9HaN5cORCw2qlntCpea6OSQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I/3mH0Dh/x/i6taqO/mD8GqnXV15nvHH7qXZ6+mqQFSfx9rMe+05u4XIasVPkb5TQq/rGcpFz8epvhR3yEuXw5+BhblKh1W4FbYdcSnjGn3taamL00qyKwDlYvFqxOc9zzlLVEayN1R15duud9uWxYjI0bwU2b9fRhJg1fkPKmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hhfcpH3D; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-54954fa61c8so5116400e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 18:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741143593; x=1741748393; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=WJvKJ68rlC+sLGTBZdabg/gqDqFQctmrcG+n8a+ztWA=;
        b=hhfcpH3DgQDHlNmLDjqVdm7pv7/hbZyVaAikr+HqQjlP2ZoLaXUf18cpGQerOi0QN9
         rore8oT+1oDsxSwkjZAaKEMyrjAUQrQYvYphBj8GR56FIo/i9hR847DWKW4K31QWh679
         n7bcbLXWNakusR1jNmx4tMDsQuJn4UIraeraHt2wJ/JGvstLOPs7ra6F9L4HwWL4Ve1c
         ncoI+AWZSxl0xYw6emH1iqCPWax4Q6iDaCYLyuMi82i+8a8Z/cgvKuj9eniLF2YygUmU
         ee21AaQnfD9H88fkOA413xZg0K66ZuADh/4YjfLt6hRHOaa9ULx1qlh0LCSSPhRKquI2
         jNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741143593; x=1741748393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WJvKJ68rlC+sLGTBZdabg/gqDqFQctmrcG+n8a+ztWA=;
        b=ANKLzVYFDBP6y0OrIoxTWEpa6zv5AK/7miJgvfD3me7Wv4L6/NTFFY+a9N1HTFVfxo
         5m/E+Af33PBu7jdx9bl3F9t1czlD7OB2Jfe/cDCI1Q95QB2tsA4j5DXUp12TC3mYgnZx
         dUyplxSTtsLLu4exm7Ojqj4KVnPT0+iHZ2mrG4KVkkhc0zxqXYu5WCBjmikI2TLTs2nc
         HLxG9EV1PLVVkD/l9VrxPXRRlJVD/1jLIQp+Rzz/Oh6sQ+CHkFNJz7iiFJuF2ve/rWKl
         9RYxJeQXyj/oS6A1H2fz/xzJ0U80XL752+OEAqApRmMIff1Qacd18xOzjFyLYbwmKMqu
         BaVA==
X-Forwarded-Encrypted: i=1; AJvYcCXFEKuyJt4uSHC5306sHJOgpB2jVFeRYG284KNFnEYFWChkKraN8GO5yPXKN7WbkZkHJS4wJH1unEu9@vger.kernel.org
X-Gm-Message-State: AOJu0YwiuU92k9smaWadky13tbx7BW2rpF2WGvQcHggvaRk/W/QxBVWo
	xgEWpVglwDebTtKdfnAdSQuX8oXVrdfv4kxEIDlZcGfxQnkkgcVH/Rxgr3zPjOo=
X-Gm-Gg: ASbGncv/y+ZSiQEm6ytCDGfaVnVkafS7TM/yeI1LrBmfENKToyk2J8QLUuNTJLiSZ/k
	bigiCxDccP+H5VENtWJEgAZ836QW8AEkKoq3tDBxEU67wF796uVLg8f04X4Om1A6QHcfr4h8C8i
	ScBFMSKceVLTKxVjUyJSHHvb9YEBxHpV/tiyxbc4GZ2YAbnkdG+EdxRDCrhgbWktDgSeifnp9Dy
	aXcJnuWacheN3ioyusbL94FwNZsaP/fR5KYaUFzQ5eqFSYGA9Nl3UygEWg2n4IoUMfu3vDs6gau
	FdZj1RJvbkNCqSDfYL6EbcgVq+bL8f13qckI5yMu13gPEko1VNDgzt3LIltHdHGkXB/OqGRTDtr
	PXqFHHQL9o6aj2yOF8QXdsX0k
X-Google-Smtp-Source: AGHT+IGkLyEj88NKFgMk5Dc/qcrMMu5c5mz/edvqKr7cxRFirThc+Fkx33VXvY/6F71lJ9O4B98xLQ==
X-Received: by 2002:a05:6512:ac7:b0:549:39ca:13fc with SMTP id 2adb3069b0e04-5497d382f6bmr469921e87.49.1741143592852;
        Tue, 04 Mar 2025 18:59:52 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54962415d13sm925305e87.257.2025.03.04.18.59.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 18:59:51 -0800 (PST)
Date: Wed, 5 Mar 2025 04:59:49 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 9/9] arm64: defconfig: Add M31 eUSB2 PHY config
Message-ID: <xgryihmtcbvhimm4fr2pcrhjcwdp6djfrgtwj4a5kl4tukeavb@de5irgx54w5p>
References: <20250304-sm8750_usb_master-v2-0-a698a2e68e06@quicinc.com>
 <20250304-sm8750_usb_master-v2-9-a698a2e68e06@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304-sm8750_usb_master-v2-9-a698a2e68e06@quicinc.com>

On Tue, Mar 04, 2025 at 01:56:42PM -0800, Melody Olvera wrote:
> Add configs for the M31 eUSB2 PHY for SM8750 USB.

Please use git log on the defconfig to check what is usually required
from the commit messages. The defconfig is not Qcom-specific so you can
not expect somebody to know what is SM8750 or why does it require a PHY.

> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 3a3706db29822036d25a7228f8936e2ad613b208..7a7187475a11206e708a5a2c6dd51736e16932e9 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -1587,6 +1587,7 @@ CONFIG_PHY_QCOM_QUSB2=m
>  CONFIG_PHY_QCOM_SNPS_EUSB2=m
>  CONFIG_PHY_QCOM_EUSB2_REPEATER=m
>  CONFIG_PHY_QCOM_M31_USB=m
> +CONFIG_PHY_QCOM_M31_EUSB=m
>  CONFIG_PHY_QCOM_USB_HS=m
>  CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
>  CONFIG_PHY_QCOM_USB_HS_28NM=m
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

