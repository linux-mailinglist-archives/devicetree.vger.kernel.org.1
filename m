Return-Path: <devicetree+bounces-122190-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8FC9CF0FC
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 17:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3038028C346
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35611CEAD5;
	Fri, 15 Nov 2024 16:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qmovczre"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1CC54769
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 16:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731686728; cv=none; b=VASndfT6SozPlK5q8wv4EGL2MJQKhiTlmIGQQi6a91C7vOnQue0Q2PxqC4NTk0T1RmLVT1U2IWr2y5T7cfrzJ7MjCjnGOAK8q1rNLwTj0UA5Yp+oizfDpgzt8J4rQ5HsyNcuM08gCcTS6EYk+LBR6WSWNB7ScSkdLRWyhcw8e/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731686728; c=relaxed/simple;
	bh=AiCrCdtxoEFEeIFaKHGzaI8DqsRzxsiTrVhWRGf7Wxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XDxRRou+ZsY2LhzSKxuG0h3yM+Mcv4jHM1G8NPv/I4cNQMHczCd5V0RG7xdsM1qLy2vkuRNUEn9lJuj5/u7BaLMyaHe0PfV76hk4NaX7XiB843MqGp4v0x9SoFflo5KbfhKwCoAx6UdgEv3wii9R8ObxOh/N2popk2EcK9UwCAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qmovczre; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539d9fffea1so1977926e87.2
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 08:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731686724; x=1732291524; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qv0WPXRPIqQqwTh/ogUFCfsKiGp9/hWbSnGnwEUev20=;
        b=Qmovczre8pQMW1M5dTdjcSEa7fB85Uw2wheDEe+uOkmKhdncPK4pUDMtowgsBteJYz
         qlg5qT0wVb7e7Bc2J7/RHzJYhaiSG/0MGWnZkSbj1+DKwe0AMpQ2YWynW8aSeskgxFr/
         Zt6GHpuA6cuo7j3N2FdPm5ULGj//JGYRwo+SqwNrRUnE3zNG5+TmmeW/bmYjFaMwZ0XO
         WbsKVSKPqLFt2zjMuQ9GDMMOuNeDB+pxCWeijfC9MMREEjlFYS0oSVPZs/ZZYPMmrL1g
         wThp9ssexpOGzouEjuMSUhyzGlmXqCkeH7QKoAsjiJYaSdd09RnYe/5yiQD9yJXZTyOO
         pfGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731686724; x=1732291524;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qv0WPXRPIqQqwTh/ogUFCfsKiGp9/hWbSnGnwEUev20=;
        b=bMfuy5oUEWCrepuHGrMyH52sqvIga0b9wX5Mpc2DHW0Oxv7ZflwRJheLqZN9HE0Hqz
         AxIEtghl3vmnqm7BKs/NnJgVAA9XkGEli89isa8Y3Eq5z3oSWFl6LLKWYJi1LpKaQX35
         uYedLpVCWad4K5JR0P0ClcCyRJRrsPN8jrI5PlkyftWSaEfIBxr/cEtjX15anadlDrSm
         0EleMm7qYHWRipA8dNOhjgniUd03G5CGUlyEF6PChKs5iJoJxGvAISM32x2A6vL721xi
         gsRbEWVmJgoO2q7cjy4FQB9A55h7s275F1/gBzvJXTV8q3KUKpRwKcw3/YvBgUNOiePy
         RcLw==
X-Forwarded-Encrypted: i=1; AJvYcCXUILv5mPlkmBXKEbgf5Ty9KsrLtTnInNVyw1kRzu7iFVLKBiXN4y3FxRbiuF/Pj5ouXiKSV+bK1qp2@vger.kernel.org
X-Gm-Message-State: AOJu0YwsZpl39B+8FlB8kmHUk8KmwTm95rqJjCR76ipNOeZUi6D1ADWa
	PpPoJjZSFIrqjVda7CX1paKkR1r4QRVzY80p9pImm2kXuFZozyI5b9t9HP/iU2Q=
X-Google-Smtp-Source: AGHT+IHrBECP4OjSU34WVOJhQG9Udf7rrAPtjXGsGS2ldnGooEzSZ30zGQ8cCWs4Gi4JIBh8DsTSxA==
X-Received: by 2002:a05:6512:128a:b0:539:e8c6:7c1c with SMTP id 2adb3069b0e04-53dab29dc5dmr1918279e87.20.1731686723590;
        Fri, 15 Nov 2024 08:05:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da64f2b97sm612157e87.53.2024.11.15.08.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 08:05:23 -0800 (PST)
Date: Fri, 15 Nov 2024 18:05:20 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/5] arm64: dts: qcom: Add support for QCS9075 RB8
Message-ID: <glvtcxuaniuzxg46rr2a6nvem2ruxxmvidafcn33xpeskjkqal@fyehlwys43vc>
References: <20241110145339.3635437-1-quic_wasimn@quicinc.com>
 <20241110145339.3635437-5-quic_wasimn@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241110145339.3635437-5-quic_wasimn@quicinc.com>

On Sun, Nov 10, 2024 at 08:23:38PM +0530, Wasim Nazir wrote:
> Add device tree support for the QCS9075-RB8 board.
> 
> Basic changes are supported for boot to shell.
> 
> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |   1 +
>  arch/arm64/boot/dts/qcom/qcs9075-rb8.dts | 287 +++++++++++++++++++++++
>  2 files changed, 288 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 9bb8b191aeb5..5d9847119f2e 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -115,6 +115,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-rb8.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-rb8.dts b/arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
> new file mode 100644
> index 000000000000..8d4a27a8f371
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
> +
> +&tlmm {
> +	/* FIXME: mdss0_dp0 is dependent on this so adding a dummy node for now */
> +	dp_hot_plug_det: dp-hot-plug-det-state {};
> +
> +	/* FIXME: mdss0_dp1 is dependent on this so adding a dummy node for now */
> +	dp1_hot_plug_det: dp1-hot-plug-det-state {};

I don't see these two being used in the MDSS node. Please drop.

LGTM otherwise.

> +
> +	qup_uart10_default: qup-uart10-state {
> +		pins = "gpio46", "gpio47";
> +		function = "qup1_se3";
> +	};
> +};

-- 
With best wishes
Dmitry

