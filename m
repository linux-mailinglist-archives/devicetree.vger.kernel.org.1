Return-Path: <devicetree+bounces-141041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14584A1D356
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:28:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62D16164C88
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 09:28:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D04E21FDA6A;
	Mon, 27 Jan 2025 09:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="r4NVy8Xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBC61FCFC5
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:28:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737970115; cv=none; b=qE5/rNMQKGQ9st6GodqQlVirA2g9lKp7U396ovtuQOdLLuOyqzxRRnFNKXVPXeiZVJ4Nh+18D3SzBxC1apPkrSQWdU3C3CJZUUDMeXZy66v+pCbHdD0RzqJgbtHTA3qiVTaTQoNH1ULDKYoGuC+7UHHi1Hmi7bVCtEjMmk2S+qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737970115; c=relaxed/simple;
	bh=jG6C1oQBMCq9LAc/Rvpv8xIkgJhrX5pH93bT32/ipBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XZ2TdvT7HNLfewIV6LV+Ttm4UZ9LF47TdzTqWY5UYn+I3ctUMEolVgvOZP7wzkrK8lbCm5T42vT1Sxrvd6aQqAULobBJ27WdAqfTp46zR0LFig2BDXkUBYoLbmxtVg5YFFpg2PyxClcBFkNu5+MYHFz7ic5+dwcFYJ8eenDT4ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=r4NVy8Xk; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ab69bba49e2so179493866b.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 01:28:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737970111; x=1738574911; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dijvCU0SPZdtVsHE2T2w5uYrQzB+N6hQhFYPYAMrz9o=;
        b=r4NVy8Xk3Pa7Z0NHyi/B17zUAaG3GKol7Hg3cJP3bPDYO2a3G17GojahIe/oXNWoTQ
         XbvJYN+VKlCLUaj4dI88iGL91QqTJFLALscNUVy+vubfGpVK+bsvmeCz/q78m0Z7sisn
         SGHdM218geVKvvYXHGOK3NhPjPCkyxsr9pblbQzq6ELzqAfMXGNUO6JxR1lAbnoV8Lql
         o3NVYKaDLoozB+9DZD+LsNa8skKHgFCW71GQC/S7nC2JfvKOAoJ541CAGUZ4ULitygyX
         jowTkMNymJC/EP8x4AKBJ3L2zwFBRMEklQnwnsISyZ3z1BlOBUsNYR+5nQOIMkZRLL8Q
         ZAcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737970111; x=1738574911;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dijvCU0SPZdtVsHE2T2w5uYrQzB+N6hQhFYPYAMrz9o=;
        b=TTh8sVtpzzcsb+PriuzLBy71WUmYOAYinS4KFVajVWd2DeyUT7qyRN7HnWvrVgVJCY
         5RLannA8c93+07ERivZrerwxZadNtIyfoBYLlN9x3s7sloPNIyhlLUMdBvo/wO0P0VHi
         B1uzWINA7/gUysoxgdRkZ0oOFNBXNBUuzvEp/wvBffoFt7zHa9ADyC1pBxLLZUcsOilp
         E0fSb931VV+l/xoDPkXd7pOHtoR25xJVJyc7InLHF1acICBOE1OmO3UsJFMOTlHAOFK4
         ViBhl4GvpWchZa+oQ57Q1qqrhyT1CYXhhjybzOzGYobbtZOTrBU1A3++rtfoPhFIjd5A
         Ff6A==
X-Forwarded-Encrypted: i=1; AJvYcCWC34RoB8zYMFQtMbFmGrOfoIhg+eJ0U3Gj/m9bDe4ztOAXufhFbVAmpfpR8Tol071snkAQR8RvmAqX@vger.kernel.org
X-Gm-Message-State: AOJu0YzIb6kzSRUS0bpzBR+C1VgtyyKzA71+RwRgEKE5dZUH1Rxs2rvZ
	BGQzucuBVBkBUfdBpnMZCLP3pxm078uRZW9UuyrxZDAOR+q8q1bRY2zRgVzOYpM=
X-Gm-Gg: ASbGncu5hJKdXI1T05PkVAXZ5QnhtLxwn2wsuXXPlO4Mh49KI6kqhGLJpBkQX02VciJ
	W2+q8Oz1wWseTx5k+LPqb5z1FX+Cw4IeB9gC+5N5guvZM486SM+Q/YLF2JV7BsV1xughCngvx8V
	jfyzEJ7fLLY5ALfLrgwiHD4wOks1lEypSPruY40WTPQg3NCFLmxNjPhM/NFKJ0ZSUy3Z51oitZZ
	I0u71Fp/CsdXYeif1aGj/cs1EhhdvR/Ed1ryWGEg3vuuR95XE7/YCIhxMAEGos1lr+kAJ+REmjd
	3FsK1xOJImb3y0Vs
X-Google-Smtp-Source: AGHT+IG/PK0i4cjJBXR80fck8NTF0pr77nNVOKwW0u+ZnYmXiYMPZNiHwSdPWJd7JmifLLUGyuml+A==
X-Received: by 2002:a50:9357:0:b0:5db:e91a:6baf with SMTP id 4fb4d7f45d1cf-5dbe91a6ce3mr42059947a12.14.1737970111005;
        Mon, 27 Jan 2025 01:28:31 -0800 (PST)
Received: from linaro.org ([2a02:2454:ff21:ef30:f64e:7d70:e55f:6da8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc186d8b37sm5108857a12.72.2025.01.27.01.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 01:28:30 -0800 (PST)
Date: Mon, 27 Jan 2025 10:28:28 +0100
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
Subject: Re: [PATCH v2 6/9] ARM: dts: qcom: msm8226: Add smsm node
Message-ID: <Z5dRvI9psN4hBqah@linaro.org>
References: <20250126-msm8226-modem-v2-0-e88d76d6daff@lucaweiss.eu>
 <20250126-msm8226-modem-v2-6-e88d76d6daff@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250126-msm8226-modem-v2-6-e88d76d6daff@lucaweiss.eu>

On Sun, Jan 26, 2025 at 09:57:25PM +0100, Luca Weiss wrote:
> From: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> 
> Add smsm node for remoteproc cores.
> 
> Signed-off-by: Matti Lehtimäki <matti.lehtimaki@gmail.com>
> Co-developed-by: Luca Weiss <luca@lucaweiss.eu>
> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>

Reviewed-by: Stephan Gerhold <stephan.gerhold@linaro.org>

> ---
>  arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 34 ++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> index caaeeadf289f78d29403312738bbb714eaad74d2..7e0838af6c2d0dc26e0082471b70578bc627491d 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8226.dtsi
> @@ -253,6 +253,40 @@ adsp_smp2p_in: slave-kernel {
>  		};
>  	};
>  
> +	smsm {
> +		compatible = "qcom,smsm";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		mboxes = <0>, <&apcs 13>, <&apcs 9>, <&apcs 19>;
> +
> +		apps_smsm: apps@0 {
> +			reg = <0>;
> +			#qcom,smem-state-cells = <1>;
> +		};
> +
> +		modem_smsm: modem@1 {
> +			reg = <1>;
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		adsp_smsm: adsp@2 {
> +			reg = <2>;
> +			interrupts = <GIC_SPI 157 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +
> +		wcnss_smsm: wcnss@7 {
> +			reg = <7>;
> +			interrupts = <GIC_SPI 144 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-controller;
> +			#interrupt-cells = <2>;
> +		};
> +	};
> +
>  	soc: soc {
>  		compatible = "simple-bus";
>  		#address-cells = <1>;
> 
> -- 
> 2.48.1
> 

