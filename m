Return-Path: <devicetree+bounces-123163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D139D3937
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 12:12:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB42E1F26DB8
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:12:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72F1519C554;
	Wed, 20 Nov 2024 11:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jkOrSKNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9F9199E84
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 11:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732101142; cv=none; b=rfUmeiGi5rUEdMnmFNBlkVAIJSnLdygJyvzWkoreOja09upsVbR+6ikpyTrv5HCaCmfFr1A8zrYdJYb8UHtLwWqh80+7R5OPZeG6ZMaFSoSchJM2WHzOcqmT0uHrz2v89GqvshZnEI8YHiCkS9ILrGhRwEoH/dSKUFWMxQe2M0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732101142; c=relaxed/simple;
	bh=sTIrY2sJNGWGUmHnCcr7JTspPdLcIuOEoGsMA3vi/Ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mSz4L/YizN1LdNKyArk6tyh/iBwzqUE1/euN6FMfb9YfizbP/z4Vun6X/P/gMvTA9C8o5tCI3zd1+mmn2pfOq+lFM+vVHG4zUy+bO0XYKEw8Oa/ag5UAra++UsSIFxhreiYVDm1V3Ud32u8KBJqNwS29YZffoM+rHtmyy1MWf2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jkOrSKNO; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539ee1acb86so4365218e87.0
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 03:12:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732101139; x=1732705939; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9rAN4nKbft5CXDCdEJ1vMSCwtZ3Xk9NEt+75Eio0hiY=;
        b=jkOrSKNOvhd4KEmR05+JcOOPANZBIjnVsJdMvjwLEph05EQFcMGLE0e8+XeXVmjGtR
         XK8u+JrsXjTfUexcYymHY184p/H7IhF5Jfkb2hDtp87O2nH4SDf1gnz8X0bYVu9wtSQ4
         1LWQAf4KTAnmCzjjVkdrIxQvb3Tfv8MuLkiyxiDz4maNS6rJ/Eq8V/rSfS1T4kIV91g+
         o8fdj80JSkIj+PCItTRh4r8eFlyvVHALoCTM5avbZI/Iw0NntHfl2VZvllmodAHURJoc
         puR4Ka4pGBUbAA4FoUamN4OpFYFT1Sn5FgWWnC9PgdUOI/YoJhLPnz1cZ/pd3blpEpXL
         3hfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732101139; x=1732705939;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rAN4nKbft5CXDCdEJ1vMSCwtZ3Xk9NEt+75Eio0hiY=;
        b=vnfciEYGgQrGkMEQ8fO2cF5/FjQA15mw5cm9Cg2/sQVreCcJwJDYw5O2qFS1uPo5GW
         AxDfVwie09o8mI8DTj0ItFiTH7yy9UQhwXikIn36QMy2CoMi7mDC4r3Oy1j9pCTH0P5X
         NypBpERUhpssQi7VOOyhZHQNrRDjOp6hM9smcH0EjAKHd14x05uqG3mJu3PpKPuhXETd
         dFc1isyucoMLi5SNOTkoOvyFGwSDvP5fCMgFjedU0EsX3ELTH8bevaAl/+RUQM4ibJ0F
         yPOVLyRWdGN2LDo6bMv1VfhZIy3QsH6/bkx7pT3L0SEPgjn4c8hUuT4N3Sxb60JgE3Ou
         XBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLmBw1fLl372lkcHYGHgE7Hy74VeXRrAO/6bUWtVjnOllyza/I0Gs2yyoIUfqtezW7gly+2y2EG81o@vger.kernel.org
X-Gm-Message-State: AOJu0YylzQsFA3lwm7T9WD4jye3DLcC7YVk7yu85EhWTtfDJZO5EyQmI
	mTzKyDJVmPe9M+AvJghUkvOGzzrT7TNPIb/Til6sDclVujd4RzFFkwTl9hkrjIY=
X-Google-Smtp-Source: AGHT+IEluENj384Eah3BgM0n5k4aswo8bBzu/OLNpizzi4AQu1mRHvzrFAFcSCe5MSGLZJ52zq+atg==
X-Received: by 2002:ac2:4c26:0:b0:536:a275:9d61 with SMTP id 2adb3069b0e04-53dc1333a6dmr800517e87.21.1732101138711;
        Wed, 20 Nov 2024 03:12:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dbd472335sm593024e87.184.2024.11.20.03.12.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 03:12:17 -0800 (PST)
Date: Wed, 20 Nov 2024 13:12:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com, quic_abhinavk@quicinc.com
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sa8775p-ride: Enable Display
 Port
Message-ID: <lkovymvjsbd44v2huij7paikvnmo7i7rrmkmvpha2wn5sc4hr3@ppr2dgvhzy6d>
References: <20241120105954.9665-1-quic_mukhopad@quicinc.com>
 <20241120105954.9665-3-quic_mukhopad@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120105954.9665-3-quic_mukhopad@quicinc.com>

On Wed, Nov 20, 2024 at 04:29:54PM +0530, Soutrik Mukhopadhyay wrote:
> Enable DPTX0 and DPTX1 along with their corresponding PHYs for
> sa8775p-ride platform.
> 
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index adb71aeff339..4847e4942386 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -27,6 +27,30 @@
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	dp0-connector {
> +		compatible = "dp-connector";
> +		label = "DP0";

Thundercomm's SA8775p RIDE platform doesn't show such a connector. At
least not on a device advertised on the web pages.

> +		type = "full-size";
> +
> +		port {
> +			dp0_connector_in: endpoint {
> +				remote-endpoint = <&mdss0_dp0_out>;
> +			};
> +		};
> +	};
> +
> +	dp1-connector {
> +		compatible = "dp-connector";
> +		label = "DP1";

Same comment here.

> +		type = "full-size";
> +
> +		port {
> +			dp1_connector_in: endpoint {
> +				remote-endpoint = <&mdss0_dp1_out>;
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {

-- 
With best wishes
Dmitry

