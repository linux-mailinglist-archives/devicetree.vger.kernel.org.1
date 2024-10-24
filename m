Return-Path: <devicetree+bounces-115392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 895A49AF523
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 00:13:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACE581C2137F
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 22:13:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32A592178E4;
	Thu, 24 Oct 2024 22:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j0Wgioe9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DB5217320
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 22:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729808027; cv=none; b=Mza/zyvDWgFVxAveeIbirt9b7YTtg4yB6BUYL2k706Jcsw8pLCQUxBsZmiycOm2J2IHFgJLCYFuw1GpqdFk4/BdMQ/6SWQRSu6yGoEw1iZeHnVJW5qnqZZL24rYRDU49j5oGBcsvl6XTLOui/RdZZ5jnq+M98vnKBCsZOogeZrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729808027; c=relaxed/simple;
	bh=9lMSENVIJJRpnSCggPkSPu1+oPLoGZ0nvK2QkBlWz30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LwVtOhzAqOJefQcjnlkes9WlhoqkNDVNXsM6AEOlC5K+tFc53J+SPKUvpP2FtLZkN6RR1WNo7oViQbT7bdGbAHOSWv+SKnMpU9cHoi2XR2bf+mZOSDtrJE4fVeqOlGVW9TvNtwbgzYb48LqBZ9YkEQ2bEm/XX1NwYY+JNR5GJ20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j0Wgioe9; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-53a0c160b94so1763755e87.2
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 15:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729808023; x=1730412823; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eBfosn3dMOIW9KAAEmKKkFXzmH4oZmgd1l/2Gdt9RF8=;
        b=j0Wgioe9YqQ2C16mKvGay91mHrBVcsi5Jd8gQKpfeZfKwuk60OY4p2jg4CyckncV/0
         +DD/aA8c6Ua0/8JOPqaDUG3BQzVXudxmGySQC3TAVdSVgV9s2melEU/drSD+7o0ueq08
         +DsNj8rI+MAvoycunZMsAFmIJE9cGM43Vh8J2vWIT3I0zaTsFZ8QZDgJ85tKTruGM/EF
         wfElox0XY9tH0ATuwN+RgRrOHPbe1qcgem5swzDuYNTzmJVOy8P2QoMfBBpIVxVNHtaY
         kvdDf7TbebCon2GTbixN3QlMDQlMsqO+Xdd+JFCNOdI35rWbozdkdW0dX53VRmLMygbz
         1apg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729808023; x=1730412823;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eBfosn3dMOIW9KAAEmKKkFXzmH4oZmgd1l/2Gdt9RF8=;
        b=A3KHy1MKanEYPm9ttKgQHd7tOG03S+7NmV5Yzt/GuWZsflz/poTZOopV7IW0uG7BHs
         h1wftxHRsVtbj0sQEcvI+X6LJLYF54H+Qqvb4ZVYyeo1r6mlGqWBBl9uQlaCj7h4Vgey
         CEnIVa+wu1KRAJyH4/1HPO3rUvW1nS7GaVFjGeSBJeINoQEsIltLWh8pXRbNmrXPax+Z
         KITPA0CEZGtJBR0LLDsC6247ViZpC3mNCinVvXjtmZMTSPX8N+qDtYi5TOPQzP3/VT5S
         /1bj/wRGNJxDIBXbvrQrbTbrVZng4mWVOi2ExPIhGyWt/Emt2FKzoPeh/HqxxYpnb0bz
         n3/g==
X-Forwarded-Encrypted: i=1; AJvYcCVzypnq2KIX9jNhHm3foOZ9S6u5VJxh8UYbVyJXZp8auFq6UtGtsmHzpSMIuOYXCtE9WWXDE5b1bzHL@vger.kernel.org
X-Gm-Message-State: AOJu0YwScmFgUsyLff/G3HYhA8KnIQT0ehF58ezN6/6ErJEXVw8u0Sh2
	wDD6a5KlYAVleE7OU4ATx/RDheltsqexzhH6763sqLJK0PwH3W35tfEOvFiH8zM=
X-Google-Smtp-Source: AGHT+IFejQ+dzTn6UBP+4jkDIy3TF8AM4cqHLEWGCqd4joA6Qse3z9EVZDKmi3LosTveQZZlcUMUnA==
X-Received: by 2002:a05:6512:3d27:b0:539:e3cc:721a with SMTP id 2adb3069b0e04-53b1a3616c0mr4958178e87.47.1729808022997;
        Thu, 24 Oct 2024 15:13:42 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a223e5951sm1477988e87.58.2024.10.24.15.13.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 15:13:42 -0700 (PDT)
Date: Fri, 25 Oct 2024 01:13:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, quic_mohamull@quicinc.com, 
	quic_hbandi@quicinc.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs6490-rb3gen2: enable Bluetooth
Message-ID: <5ivx2nmsr2buq7huiu4rv23lnuzqq3yhhyydhwmi5pz5lrr6ny@w3o6iawiyj64>
References: <20241022104600.3228-1-quic_janathot@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022104600.3228-1-quic_janathot@quicinc.com>

On Tue, Oct 22, 2024 at 04:16:00PM +0530, Janaki Ramaiah Thota wrote:
> Add Bluetooth and UART7 support for qcs6490-rb3gen2.
> 
> Signed-off-by: Janaki Ramaiah Thota <quic_janathot@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 122 ++++++++++++++++++-
>  1 file changed, 121 insertions(+), 1 deletion(-)
> 

[...]

>  
> +&uart7 {
> +	status = "okay";
> +	/delete-property/interrupts;
> +	interrupts-extended = <&intc GIC_SPI 608 IRQ_TYPE_LEVEL_HIGH>,
> +				<&tlmm 31 IRQ_TYPE_EDGE_FALLING>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-1 = <&qup_uart7_sleep_cts>, <&qup_uart7_sleep_rts>,
> +			<&qup_uart7_sleep_tx>, <&qup_uart7_sleep_rx>;
> +
> +	bluetooth: bluetooth {
> +		compatible = "qcom,wcn6750-bt";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_en>, <&sw_ctrl>;
> +		enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
> +		swctrl-gpios = <&tlmm 86 GPIO_ACTIVE_HIGH>;
> +		vddaon-supply = <&vreg_s7b_0p972>;
> +		vddbtcxmx-supply = <&vreg_s7b_0p972>;
> +		vddrfacmn-supply = <&vreg_s7b_0p972>;
> +		vddrfa0p8-supply = <&vreg_s7b_0p972>;
> +		vddrfa1p7-supply = <&vreg_s1b_1p872>;
> +		vddrfa1p2-supply = <&vreg_s8b_1p272>;
> +		vddrfa2p2-supply = <&vreg_s1c_2p19>;
> +		vddasd-supply = <&vreg_l11c_2p8>;

No, this is not correct, these supplies are connected to the on-chip
PMU. Please add PMU node and use pwrseq subsystem to power up the BT.

> +		max-speed = <3200000>;
> +	};
> +};
> +
>  &usb_1 {
>  	status = "okay";
>  };
> -- 
> The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> a Linux Foundation Collaborative Project
> 

-- 
With best wishes
Dmitry

