Return-Path: <devicetree+bounces-72075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 935758FAC79
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:47:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 303481F21E76
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 07:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E7F1411E5;
	Tue,  4 Jun 2024 07:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OoWwmz5m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA0414037C
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 07:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717487217; cv=none; b=nsEIS17z8mt26cFJpnGrRh39AhhHjWnG2M/7FSXWIinOQUuZvI1grXitBWzY8QdvvOgkvpErZw/ACn9/nTbg41CUHhl6WULxZ/h56kRbFR7uVznK0kpktB7BaCPEFY29xlBk51Yyxk+qoGp+TiU5owj6d0o4Obg/ex1GndVB1Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717487217; c=relaxed/simple;
	bh=YVcF5oOm/Aj59C6GyqaXLxFiawVjvVSm5hVjKvyuPts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K2tvhgINXU1D6JeX+IMO6ja71EUy9EPO2Co2WmbGPlsjtmnd/yRgf4BTCcO/nNXs9ukl35/oyFPCKQoQdlCURm7jNP5wvsyzMjLrv08OaGCxvWzdDZQTUogsnwfFM2yTXnZINH7/q3U384SLE/3/+UVX9vXDBs7Yu17pRPO3b90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OoWwmz5m; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-52b98fb5c32so2745326e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 00:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717487214; x=1718092014; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ArnO6Bp/HX6I0nIH5t2d1ahKjgBn1rOK4gnpq4M2PLM=;
        b=OoWwmz5mNGVz+qaRo/LDPyfcHrcsobmB2mg1LT/9CrtlGbTwt2eLAqBqfhzresQbwU
         zeSS88DRNYsp0V6eQ9WPDFB3xuaSt9C/xWJiVVc2gzJ39d/iYNBWYXJXqPmTepeWjOOd
         quMcoyhI6RkuTTNfoDs6o7j2rFpDbXMnq9TOfEYMUaEKZ1+16P+WltmeCdN2AttxupWg
         keDGh5Fl7gvDw8dw4V7SXFD+PPU6pCevLMXyHbCT2Xye573Bt8oqiQiFS2GZExtSb1QJ
         tmpq3j3NKe2zqTnkUqYL5t19cW5Y+0t+EG6NoJPzmmHfMoOz0te0S7xVev6CBqxaK2Oc
         zpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717487214; x=1718092014;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ArnO6Bp/HX6I0nIH5t2d1ahKjgBn1rOK4gnpq4M2PLM=;
        b=SIQTICsTLZNuWG4XSam6ELLqH8lFOWWre4B8XO/qkIK1i3bbrW7syEuHqB7CsDrKDO
         QJSZJd1hceatM3z1pjRIbZ8xRC1NTUpD8WbAlx4fDLZaUbjT4x1mUIgCTooJZpIJ7C4m
         V664qY9o4fGroXR0jos/qKN5uOYrDU/t/3DLZWcosrGR35rkE99djwZ0ATMZCtU5W8QM
         SUc5wLJmX/+sWr1ZA4BWDqwvTLmYS82pMUAWAAklj3KhBMBmW0mwbaZxe0WUB/vKY/hF
         vVIcVYNasi9vjwgZ0tgMvlaWXSD8IL0gCkOoFdcej6B2DX/o5GpN/RnI7DvH4YwRefBm
         16QQ==
X-Forwarded-Encrypted: i=1; AJvYcCUv7MUCW3H1efvMCmRpZ7HsfjDM8+PTNyLv+LJfLctNTx4O43/y1NlwZNaBm0txbCSYFGT1dAjhL7SOZeKtfAYw946o7GxR1boOBw==
X-Gm-Message-State: AOJu0YzcQK6W3MBsN9CCPLuxQqRoLQteSxZ3IkWMz9iPfJuPrNTXbUjI
	eqsBasMmwj8SmQzh+PZag7SD3eOOnhVlA9lmh2/Ee4MMqCgBkjg/sTYtqbd/Izc=
X-Google-Smtp-Source: AGHT+IHt4EbuxRZrDYFrpec8oTySyjp1DrafnJTOx3RdW5qC5jdHWApwUFrCEtRNhy14a3agjZ5xyA==
X-Received: by 2002:a05:6512:444:b0:52a:39aa:7767 with SMTP id 2adb3069b0e04-52b89533ad5mr9251601e87.3.1717487213717;
        Tue, 04 Jun 2024 00:46:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d761f1sm1438590e87.160.2024.06.04.00.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 00:46:53 -0700 (PDT)
Date: Tue, 4 Jun 2024 10:46:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Kurapati <quic_kriskura@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Matthias Kaehlcke <mka@chromium.org>, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_ppratap@quicinc.com, quic_jackp@quicinc.com, Doug Anderson <dianders@google.com>, 
	stable@vger.kernel.org
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: sc7180: Disable SuperSpeed
 instances in park mode
Message-ID: <le5fe7b4wdpkpgxyucobepvxfvetz3ukhiib3ca3zbnm6nz2t7@sczgscf2m3ie>
References: <20240604060659.1449278-1-quic_kriskura@quicinc.com>
 <20240604060659.1449278-2-quic_kriskura@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240604060659.1449278-2-quic_kriskura@quicinc.com>

On Tue, Jun 04, 2024 at 11:36:58AM +0530, Krishna Kurapati wrote:
> On SC7180, in host mode, it is observed that stressing out controller
> results in HC died error:
> 
>  xhci-hcd.12.auto: xHCI host not responding to stop endpoint command
>  xhci-hcd.12.auto: xHCI host controller not responding, assume dead
>  xhci-hcd.12.auto: HC died; cleaning up
> 
> And at this instant only restarting the host mode fixes it. Disable
> SuperSpeed instances in park mode for SC7180 to mitigate this issue.

Let me please repeat the question from v1:

Just out of curiosity, what is the park mode?

> 
> Reported-by: Doug Anderson <dianders@google.com>
> Cc: <stable@vger.kernel.org>
> Fixes: 0b766e7fe5a2 ("arm64: dts: qcom: sc7180: Add USB related nodes")
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
> Removed RB/TB tag from Doug as commit text was updated. 
> 
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> index 2b481e20ae38..cc93b5675d5d 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
> @@ -3063,6 +3063,7 @@ usb_1_dwc3: usb@a600000 {
>  				iommus = <&apps_smmu 0x540 0>;
>  				snps,dis_u2_susphy_quirk;
>  				snps,dis_enblslpm_quirk;
> +				snps,parkmode-disable-ss-quirk;
>  				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
>  				phy-names = "usb2-phy", "usb3-phy";
>  				maximum-speed = "super-speed";
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

