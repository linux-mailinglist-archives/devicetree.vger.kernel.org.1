Return-Path: <devicetree+bounces-69408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 113C78CFCB1
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 11:22:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBAE62827AD
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 09:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADF71139D1A;
	Mon, 27 May 2024 09:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uc2fjePo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6FE1139D0A
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 09:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716801749; cv=none; b=G/zkVsx4BhE/PCDuNcFMJGez17QGUnOsLFOIB/ZsqILUS5FTpj/ZaoLgIf9gYLAcKKw8F4GYWiIXOzRvs0soalZLGZud2NxeG3NF6wa4nVFU56tdzAcda9kmuXTHusSWboL0WlizWxCzxSyL/vnZpxdiqmkj4Y/sawQxBkcXOsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716801749; c=relaxed/simple;
	bh=0SYu8q7ybUYE2G79eoZeMw4E0O4SMqXCRfB5V/UHjKg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KE2OQainNMoTcJnIE3Xi2fU1UCcKBy6yww5L2VF55H9o8CgRw5Teu2HWwMpIJlvCG4zGP6G0gieFie4PnkgTpnR+FFqilbs6EgycLgXSQ+fTjzPrSsA6tRY4UfoyHvrSwCI9YRDAMzMPmWFgZyo2O7KeYpTGEU8lHyXJr6Z545U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uc2fjePo; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2e95a1d5ee2so57656201fa.0
        for <devicetree@vger.kernel.org>; Mon, 27 May 2024 02:22:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716801746; x=1717406546; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ym8N/apnsnms9AtlgZdpReV5NsUO3m79sBepxCN6Uq0=;
        b=uc2fjePoPMq3GVl3iEinh9sTZJo39zgLKBecIo6uBlKNOWq+Kym2lxCT0L49YuzRzg
         LfbiZ1tAcTxKKlPi5sRhMLBzgFpTonwicSBaWaRyWVBVwznSmAaBYGMws9p/VrqOYV1P
         tzHJ84D3g0t3l2MMpjsRIxhUYOcpAZM5YHJyBue5V/IsyCs6NDs4n5/0q6wOFzQ6c3Lb
         A+0VohdPBVPzk6yEU0nAM6PfRcZVBqbqiqJqdz8K0/G8VVmZUXZVvaIXw7GtJZrJK3/F
         ffRUMJECXy8DYCS3M/sGozuhCvWk9xAhtu25t4kZ+5m/n/i2DWag5E/QJQK4jZ2j5zzG
         w8ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716801746; x=1717406546;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ym8N/apnsnms9AtlgZdpReV5NsUO3m79sBepxCN6Uq0=;
        b=U3bCxgq28HeI4aWlIuhfhWX63F6x/91+OaPL2M3VuZE05rQ7XWDpBG/y1zfm7rHvKQ
         ZBclK1wnuudYB/RxA6p8GV9wyyPPdp9bZskvpDsUKHLi25TimB118o7QGdbr+R6ZBl+g
         w1fjNM1C5CGzVWz49nMUvaiIuGJQ+9XtUxUjGNIJSjai4WY3avKuhRrODswlb5p5TTBH
         FJ9xQ6zumX9qXRXqPS6I//mqrS8EH8Bd17gFg9U8ZKloIViBSqyW9jzYKqmdIqNO+H1a
         PZ6CI1Tef2ZGqj57tlNiTuPVUFo3pdUvzllzEeiduw0U68W7yVCboMdHHdLqZgLfHRpd
         U2Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVyJNFpAIJl6CpP4ORsoPgfWGgLjhxwomz34pQ4Nw5Uo9T788W9QFptTKJ1rhtREjXBC0FEVdChUH8CHc7wbubiFiO6Bz7A+SR53A==
X-Gm-Message-State: AOJu0YzugQO092kk7JykZSOE2WsX9EPtEmHgi8WBOQTlbCAF6S5FeVmk
	DuEL5XgmDOqArxSvL7wsNTKMofrhP5f7WM61qzlnsmckfxE3WTQa8sz7qSDYy0I=
X-Google-Smtp-Source: AGHT+IFd0MGA8r0nsUkIMq2/dqyrPskMgV4yuH4ss7YhuqJmfZ/8dq9fDi/S0lBTmYS2hAfnqGxTuA==
X-Received: by 2002:a05:6512:1597:b0:523:9515:4b74 with SMTP id 2adb3069b0e04-52965290576mr8727679e87.14.1716801746001;
        Mon, 27 May 2024 02:22:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066af3fsm495960e87.153.2024.05.27.02.22.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:22:25 -0700 (PDT)
Date: Mon, 27 May 2024 12:22:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: x1e80100: Add ports nodes to USB1
 SS[0-2] PHYs and controllers
Message-ID: <gezvh4tnltri3mdo3lphyqytrmi53h2thgk7i6v3f7y6emoa2b@lkwwoqopoaqq>
References: <20240527-x1e80100-dts-pmic-glink-v1-0-7ea5c8eb4d2b@linaro.org>
 <20240527-x1e80100-dts-pmic-glink-v1-1-7ea5c8eb4d2b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527-x1e80100-dts-pmic-glink-v1-1-7ea5c8eb4d2b@linaro.org>

On Mon, May 27, 2024 at 11:07:27AM +0300, Abel Vesa wrote:
> All PHYs, being QMP combo type, implement both USB and DP. Add the port
> nodes for high-speed, super-speed and DP to all 3 PHYs belonging to
> USB1. Also add the counterpart nodes for the DWC3 controllers.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 123 +++++++++++++++++++++++++++++++--
>  1 file changed, 117 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 5f90a0b3c016..63e85c5ea6c9 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -2543,6 +2543,29 @@ usb_1_ss0_qmpphy: phy@fd5000 {
>  			#phy-cells = <1>;
>  
>  			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_1_ss0_qmpphy_out: endpoint {};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_1_ss0_qmpphy_usb_ss_in: endpoint {};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					usb_1_ss0_qmpphy_dp_in: endpoint {};

Unless the configuration is dynamic or platform-dependent, please link DWC3, QMP PHY and DP nodes in the SoC.dtsi.

> +				};
> +			};
>  		};
>  
>  		usb_1_ss1_hsphy: phy@fd9000 {
> @@ -2583,6 +2606,29 @@ usb_1_ss1_qmpphy: phy@fda000 {
>  			#phy-cells = <1>;
>  
>  			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_1_ss1_qmpphy_out: endpoint {};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_1_ss1_qmpphy_usb_ss_in: endpoint {};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					usb_1_ss1_qmpphy_dp_in: endpoint {};
> +				};
> +			};
>  		};
>  
>  		usb_1_ss2_hsphy: phy@fde000 {
> @@ -2623,6 +2669,29 @@ usb_1_ss2_qmpphy: phy@fdf000 {
>  			#phy-cells = <1>;
>  
>  			status = "disabled";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usb_1_ss2_qmpphy_out: endpoint {};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					usb_1_ss2_qmpphy_usb_ss_in: endpoint {};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +
> +					usb_1_ss2_qmpphy_dp_in: endpoint {};
> +				};
> +			};
>  		};
>  
>  		cnoc_main: interconnect@1500000 {
> @@ -3445,8 +3514,22 @@ usb_1_ss2_dwc3: usb@a000000 {
>  
>  				dma-coherent;
>  
> -				port {
> -					usb_1_ss2_role_switch: endpoint {
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_ss2_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_ss2_dwc3_ss: endpoint {
> +						};
>  					};
>  				};
>  			};
> @@ -3590,8 +3673,22 @@ usb_1_ss0_dwc3: usb@a600000 {
>  
>  				dma-coherent;
>  
> -				port {
> -					usb_1_ss0_role_switch: endpoint {
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_ss0_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_ss0_dwc3_ss: endpoint {
> +						};
>  					};
>  				};
>  			};
> @@ -3673,8 +3770,22 @@ usb_1_ss1_dwc3: usb@a800000 {
>  
>  				dma-coherent;
>  
> -				port {
> -					usb_1_ss1_role_switch: endpoint {
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_ss1_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_ss1_dwc3_ss: endpoint {
> +						};
>  					};
>  				};
>  			};
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

