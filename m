Return-Path: <devicetree+bounces-99132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E05968DEF
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 20:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4363283C0A
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 18:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E689A19CC1F;
	Mon,  2 Sep 2024 18:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HB4hsvRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166A31A3AAA
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 18:55:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725303305; cv=none; b=iUmHsNg0hM5f3lZT/xF/j1aK120up0bn5j8zjkXA8aG1S3Ew38KbbKhM6T4JOt1FOA/lXHmGU/P/Dozzthm652pzpg6u0GH/zwwNOzmpQ+my/UzJRvaOsp4QmI2H8rDyz4pM+MctV6NEkix4BlpVZ2pFfVlYnQOuS0vHMDbCXag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725303305; c=relaxed/simple;
	bh=fr/iu0mLCq+O70UcJQHr3AWsTIJ0jtU3cd9RwSHx6ho=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ddx6LDRDtthA1wVAU3VDq1HAgozzyou1ZlWTbMQk7tFAcg6xPHbq1feo1bv4rkWSlxJIdynfkkk94Di+bKsj6hh479ucM/cqcuz71aWI6iTet3lH0XhMLmfe1p+wXBd3JCqRKbb3YWcea+sEMt/f8dCW/AhFQG6NlGh68J652NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HB4hsvRa; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2f43de7ad5eso58330751fa.1
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 11:55:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725303301; x=1725908101; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9uDUp3ZlsUzFkqKRUvKUTtQKu6bafgL8eT3jwQg3ktw=;
        b=HB4hsvRaI410A8OLGUfmtxy/gx7mpEjFq9lC5itY+zZkKYvclfbQq2PPqjKdPyqywm
         ezFQ5qLA9NOYsnWCafCeWcWS7I63Iu7EBAsOpMAQCFLyeqO7R+8u14cwTMaqtyCeIMJw
         u+AVhN5Jwkcsfep+s313dcEi6s1HwYbYdEoCRtp94QQjO4iFj28rkBtOQX+/2S5u4Kgm
         devRIcuMI0Ksk0NRE0U5Vz8rVgm9BWuXSsJR7fCVw2PZD8VMePmEYoP8C1bKGJ+1t0x1
         oIPIWvNFbluq2/WDHbhKoRx15xToKw4HD2FGjZ3A6cdTqsxuFdfjJP5b1iMqiA3lxdt5
         3zRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725303301; x=1725908101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9uDUp3ZlsUzFkqKRUvKUTtQKu6bafgL8eT3jwQg3ktw=;
        b=RaSKN8xpbP2XfYLUh/djIdKl9KjRU9OYo37tk7vhnnS9FMRuY2XpwWTTpDZ8ryc5xD
         wsd98d4M0RS416prongf1muvKIWu/ZrkrRJw4cW3AC37i1PzO0oyZE2ENlOUG+KWg/kz
         qSrQ27bQ5E8iwOOb0tDad0nYI9Zz9QoLlUEqkFjEto0DmXI5HD8MAguDOcTK70YtpF4b
         vWtwNLBiVGasYUJZhOqVJDNt3FW/n4as9o/cfoO5KP1Ki6G3GBqvzN7yLly21kl2H997
         qjlYC+Ek+03tOyPOdESNYvWhQpliS525IZJZVRIeK6W24eitjVndwAVui4c2+vpHGrlf
         M6SQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJpcfBk6zTPSta1oqH4I1qaIRJZ8LF13v57Rn0CuSPiN2z06zI7FXf3/nm5VRySaNPF5D2uA/WMES1@vger.kernel.org
X-Gm-Message-State: AOJu0Yz03FErzVDcgmwlBgsh8KqsurwcekhgvJlXCxMU6cBoHZACNVav
	bjQNCrvQYCqPyWOHpxuRpIfzUP98bAV1xlM/MTbgdUuXF/TJVj1C/+tO0F9k5UU=
X-Google-Smtp-Source: AGHT+IF2sTZvS6iITDJEthrRfl5O9HdxqjU4pklva4i6Z66jERfbfm8V/+E/R+Ofx4XO1cMah5ZYeQ==
X-Received: by 2002:a2e:5159:0:b0:2f1:9248:c325 with SMTP id 38308e7fff4ca-2f6265d7883mr45674861fa.31.1725303300442;
        Mon, 02 Sep 2024 11:55:00 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f4ac91sm19169831fa.72.2024.09.02.11.54.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 11:55:00 -0700 (PDT)
Date: Mon, 2 Sep 2024 21:54:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-crd: Enable external DP
 support
Message-ID: <th2x3gtx56fr7zuhhleuj77eghfe7kgbfhok7ul5egez4iq5v2@qy5wy4hxpb5s>
References: <20240902-x1e80100-crd-dts-add-external-dp-support-v1-0-899c264c0eb7@linaro.org>
 <20240902-x1e80100-crd-dts-add-external-dp-support-v1-1-899c264c0eb7@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240902-x1e80100-crd-dts-add-external-dp-support-v1-1-899c264c0eb7@linaro.org>

On Mon, Sep 02, 2024 at 06:01:35PM GMT, Abel Vesa wrote:
> The Qualcomm Snapdragon X Elite CRD board has 3 USB Type-C ports,
> all of them supporting external DP altmode. Between each QMP
> combo PHY and the corresponding Type-C port, sits one Parade PS8830
> retimer which handles both orientation and SBU muxing. Add nodes for
> each retimer, fix the graphs between connectors and the PHYs accordingly,
> add the voltage regulators needed by each retimer and then enable all
> 3 remaining DPUs.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 414 +++++++++++++++++++++++++++++-
>  1 file changed, 408 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> index 10b28d870f08..6dfc85eda354 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts

[skipped]


> @@ -709,6 +861,163 @@ keyboard@3a {
>  	};
>  };
>  
> +&i2c1 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	typec-mux@8 {
> +		compatible = "parade,ps8830";
> +		reg = <0x08>;
> +
> +		clocks = <&rpmhcc RPMH_RF_CLK5>;
> +		clock-names = "xo";
> +
> +		vdd15-supply = <&vreg_rtmr2_1p15>;
> +		vdd18-supply = <&vreg_rtmr2_1p8>;
> +		vdd33-supply = <&vreg_rtmr2_3p3>;
> +
> +		reset-gpios = <&tlmm 185 GPIO_ACTIVE_HIGH>;
> +
> +		orientation-switch;
> +		retimer-switch;

Doesn't it need to listen to mode switching events? 4-lane DP vs
2/2-lane DP + USB3 requires propagating of the altmode events to the QMP
PHY, see the original 4-lane series.

> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				retimer_ss2_ss_out: endpoint {
> +					remote-endpoint = <&pmic_glink_ss2_ss_in>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				retimer_ss2_ss_in: endpoint {
> +					remote-endpoint = <&usb_1_ss2_qmpphy_out>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +
> +				retimer_ss2_con_sbu_out: endpoint {
> +					remote-endpoint = <&pmic_glink_ss2_con_sbu_in>;
> +				};
> +			};
> +		};
> +	};
> +};
> +


> @@ -1164,7 +1566,7 @@ &usb_1_ss0_dwc3_hs {
>  };
>  
>  &usb_1_ss0_qmpphy_out {
> -	remote-endpoint = <&pmic_glink_ss0_ss_in>;
> +	remote-endpoint = <&retimer_ss0_ss_in>;
>  };

orientation-switch and mode-switch for the QMP PHY?

>  
>  &usb_1_ss1_hsphy {
> @@ -1196,7 +1598,7 @@ &usb_1_ss1_dwc3_hs {
>  };
>  
>  &usb_1_ss1_qmpphy_out {
> -	remote-endpoint = <&pmic_glink_ss1_ss_in>;
> +	remote-endpoint = <&retimer_ss1_ss_in>;
>  };
>  
>  &usb_1_ss2_hsphy {
> @@ -1228,5 +1630,5 @@ &usb_1_ss2_dwc3_hs {
>  };
>  
>  &usb_1_ss2_qmpphy_out {
> -	remote-endpoint = <&pmic_glink_ss2_ss_in>;
> +	remote-endpoint = <&retimer_ss2_ss_in>;
>  };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

