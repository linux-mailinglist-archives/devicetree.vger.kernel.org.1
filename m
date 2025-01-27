Return-Path: <devicetree+bounces-141040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C580DA1D34E
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:26:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B45C3A2BD4
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 09:25:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F180A1FDA6A;
	Mon, 27 Jan 2025 09:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OOxTlSu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2BD01FCFF4
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737969911; cv=none; b=anOKr3Unjzy0KGwMuUZGaUnu78yvIPY85BInee67bKfDY5WfFAdukYxy++ANQFVwcT0znK0QdrN2FbnoYLAErmNna+KKo3u4bAgxLkl/lPX3NA+9/SMWq1rnCMuztTiu+izQ9RVWkKxD2Q16s1DO4h1xDK+sT9a6iv7QFIcuhX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737969911; c=relaxed/simple;
	bh=56tDzFIXEtGdOtC9F0MtvNxSVAr7SnGQwGbOoV+MHFM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AjLLK3TqL5VwzL3/32C0JR2618fJkAoxUX87dfmrIbylrwH9/8eZRuMJAbL7Kv4Y4F1BcMlT53iDxG2hHMYUgNXxbuEiY1ozjMAjQbgcgbx0ULxJqj1O3N05hiwTPS6eoijgNiYM9A43RyRx7XUUlZAYg0UxaQgfZH2nOi1ZQZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OOxTlSu+; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5d3ecae02beso5702744a12.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 01:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737969908; x=1738574708; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hIYVqZqrG/5LtvA8vm5og/V+cG1TdUFNI7a3hbvY91Q=;
        b=OOxTlSu+0HFi/tKKRF91XtJ5KuTQj+AXAtQeGBp1HXSe4n2O64g95cXyMBfRns7joL
         CUyWAxQMbBxLUP1sFYIni4XGqwH8tnItX5nVYrEwHo3XLf27B9onOPj30oqKOrWuTMRC
         SFZptmII6UMeR8xIq2whPq1M/7UzSbGjZ9e0Uh/R/IMv2zdKV4CB/B9bHTO6XIMobbv0
         ePU9xjfYZ24xYM/0OXM1cqMcuF4HpuFHjYnwx6us3+uTYtGJqQ78vxiQ0CxZgoiDyGCH
         HbSy2hbtP3bwljz1jwKaWf/H4z7tWV5QtHigUUBh4DxkAIYqEJsLPnqVvWuMGmfhtp3M
         YvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737969908; x=1738574708;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hIYVqZqrG/5LtvA8vm5og/V+cG1TdUFNI7a3hbvY91Q=;
        b=oIeqP/Y7RGfuctp9M67GUsyk8tshsO6c4Qc8uW1N9WY4Rkn1XgKQTNLZR/0rmZhm29
         UTOVaUiLHYBPTwK21SC7HuD+Cpv8omk72zE/MKuv5nclvjgwss5lm3oznovD3Xihy6eO
         83jPucRE20L9E9407ZFEmP3IMF4YM/rbTeTH1F7lxgu4EDA9fQQUvqYCLSSJtZrCbW55
         X5Zlt4sWT22vEp9ov5TgSbURe3i3SWq4caNeMAZZsl/9Fv1+8j4DmZSlhdNiygog1j2F
         SIDKmnwiqPpkelFA9QIQoVfTXNTbXmTuumkdjZblNSDXbeJTzvhjWHlCUb2H4/bCKqKz
         Jdkw==
X-Forwarded-Encrypted: i=1; AJvYcCVDwC7sq3hOp7P5TPqBf98SuDCuXnMk+tclaOGmGTwbTZnyMKUFMzmBcRXUE86MDu6yiInoozNKU/AA@vger.kernel.org
X-Gm-Message-State: AOJu0YxrkOpwjbG7W7NpTzwR0Ej3PKPW0wwK/8OKYsWYTgmUL/UrGtNm
	/yvAujFXRGik3MYlQQscvHLt4zsi0nWlRMbnEVtT/efsCMRRXDlL/Gy0c/XCAXU=
X-Gm-Gg: ASbGnctQ+6aemaa9oO0uU6p4uNrylNUJnU4wSwzWBY9XgVJhRj+klBS4SHh1qY6wmwK
	QV8Y5vUhlKwlJyjueZgKplBUDNNPSnff+7gCqfGz4Sa1hPi21f16Dd2SVbdlQQZbSJoak1X5SzV
	WHQZgnn2RpKG7fpWTpn0GR0YJiA3G0iK1c4dfEkjaiDlgBjMaddS/sHJ3vz8Xk0+o+C2PIDex1H
	bs/DKRCPVkIpxPOrp3CazkNXT4LgO8WZugkRn575qZs8egipPaMdYD3BZX3mpnjbwq7VSle/TSa
	4RDlK2jfrKpiS7Oj
X-Google-Smtp-Source: AGHT+IHaEZMeqHr5SVpC9d6i67wUVow77h2AjUw0E2EtYt8mel2FDSwOAFgQY8C9TalXT4MhrOnaHw==
X-Received: by 2002:a17:907:1b1d:b0:aa6:834b:d138 with SMTP id a640c23a62f3a-ab38b1122e8mr3658238866b.19.1737969908146;
        Mon, 27 Jan 2025 01:25:08 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:f64e:7d70:e55f:6da8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab693f51ed8sm306255866b.53.2025.01.27.01.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 01:25:07 -0800 (PST)
Date: Mon, 27 Jan 2025 10:25:05 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Matti =?iso-8859-1?Q?Lehtim=E4ki?= <matti.lehtimaki@gmail.com>,
	linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 8/9] ARM: dts: qcom: msm8226: Add BAM DMUX Ethernet/IP
 device
Message-ID: <Z5dQ8Zu3zlSlkJj_@linaro.org>
References: <20250126-msm8226-modem-v2-0-e88d76d6daff@lucaweiss.eu>
 <20250126-msm8226-modem-v2-8-e88d76d6daff@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250126-msm8226-modem-v2-8-e88d76d6daff@lucaweiss.eu>

On Sun, Jan 26, 2025 at 09:57:27PM +0100, Luca Weiss wrote:
> BAM DMUX is used as the network interface to the modem.
> 
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>

Reviewed-by: Stephan Gerhold <stephan.gerhold@linaro.org>

> ---
>  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 26 ++++++++++++++++++++++++++
>  1 file changed, 26 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> index f7f57c3f583557830c0a6dc9f0eebc2ddebbbe3c..5e82d871b81019d2f4f84d1228e8e9278ac44be3 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> @@ -914,6 +914,18 @@ spmi_bus: spmi@fc4cf000 {
>  			#interrupt-cells = <4>;
>  		};
>  
> +		bam_dmux_dma: dma-controller@fc834000 {
> +			compatible = "qcom,bam-v1.4.0";
> +			reg = <0xfc834000 0x7000>;
> +			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +
> +			num-channels = <6>;
> +			qcom,num-ees = <1>;
> +			qcom,powered-remotely;
> +		};
> +
>  		modem: remoteproc@fc880000 {
>  			compatible = "qcom,msm8226-mss-pil";
>  			reg = <0xfc880000 0x100>,
> @@ -949,6 +961,20 @@ modem: remoteproc@fc880000 {
>  
>  			status = "disabled";
>  
> +			bam_dmux: bam-dmux {
> +				compatible = "qcom,bam-dmux";
> +
> +				interrupt-parent = <&modem_smsm>;
> +				interrupts = <1 IRQ_TYPE_EDGE_BOTH>, <11 IRQ_TYPE_EDGE_BOTH>;
> +				interrupt-names = "pc", "pc-ack";
> +
> +				qcom,smem-states = <&apps_smsm 1>, <&apps_smsm 11>;
> +				qcom,smem-state-names = "pc", "pc-ack";
> +
> +				dmas = <&bam_dmux_dma 4>, <&bam_dmux_dma 5>;
> +				dma-names = "tx", "rx";
> +			};
> +
>  			smd-edge {
>  				interrupts = <GIC_SPI 25 IRQ_TYPE_EDGE_RISING>;
>  
> 
> -- 
> 2.48.1
> 

