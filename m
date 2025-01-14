Return-Path: <devicetree+bounces-138419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE82A104DA
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 12:00:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F5D0166B00
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:00:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5C8B1ADC93;
	Tue, 14 Jan 2025 11:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VFfOd8x2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B7420F973
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 11:00:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736852402; cv=none; b=Ahc3Ek+x2xogcrsxIXaMQHCc0hGwW0WsI52agdHTEQAm066H/xHv0Uz4K0YcRfbBlCT0f+mdDgxXGjNtmk/fa4sZz94T7OJ65+D6TFpOlXijInSQIzr9JKrHJ7RuETQV81vzOLQQXC0W0e63i6ZOaGYiSmFkvDSbMpPdzV2ZdxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736852402; c=relaxed/simple;
	bh=zYC+LJGBzT7jX1TCKPt4yTydGvGRCWlYRbWU3ziZkvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SH26tfq2/WCGmrBjSxGV8eeYzFUbF/9kU/386eKbMNh4dYjLoF5q5bT8+y1AxIStrZG4vZN7tzNrJ/i9pTKSdfZCv+29pDfuo3J7mUNQKypHxmahHIG9c11puiNc6YtCnIySl4+RaMAcHhpkZ/l8yNarbn5iuPittxgOsXyW0eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VFfOd8x2; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-303548a933aso42945331fa.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 03:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736852399; x=1737457199; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rkFYv1AX0Hh8J4zW9uSN3y+fYuCV+xvNFHIdq6traAg=;
        b=VFfOd8x2c5uC6mQjx/P7X6nbgOIHr58AUCkuMnMAuJPOG/qihr8xbIxCrgjR30rN6x
         W4NA2pTLFG20mnh+4ps27pZmrl3dO9e8Ip0K2XgXDDQ2DqWOaccsdYnn1P2ShBcJ3xiB
         dgWKmDu1u42knE5H5kqkpfBJscgptAZ2Tdhk+5rTe5N04KZbicv6NejpfzOPv5duakf0
         IGM4e3oCG/USIaK2bPitbpmeiCESh5yxr/5SSZ+TrpJrIQvi5wTkH3EqC47VNQJA/rri
         XCqqBgPl5iXGVZSWJg3Gm3i9gk48CJAAnORtxjaNYr9iorO/qgMtaB0kA5VD7beT5ko3
         0uqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736852399; x=1737457199;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rkFYv1AX0Hh8J4zW9uSN3y+fYuCV+xvNFHIdq6traAg=;
        b=uY6SkVY7eY3aLHTwbJY2O2Vc0RjajOJ/dNOxW2mswTQFrEfxWvNpfg7kJfNzC1IBCg
         B5eHapWEz65cCEii1vjnRSQnPCnMKBb+1v1m3L1KSdL/6aADC8+HnXqL+Z32ilyMqd/c
         AZYl0ybbs22YD3z+/C9j5UgXTOGYZ06NbVQvZnlDFHuyBVPIhtGisooXU4/8igOMtW6o
         h1/qiB3gFkeNBdZayLkMv0XgPYerdHhkkJT47omO/NkwUsbAZG0JzYTRAV7/l4SW9hJE
         jS/wDAQYzhtxvzj62YBTgtb53/kwEWataLPNA7kSy5CsBCt2bcme+AAUfyoFvljtRM5e
         hihA==
X-Forwarded-Encrypted: i=1; AJvYcCWAPJQLkGTjA/2I6qkwdOpP7Ly1CtUZHMmV9eI2AjTQT8F+q/Q+4gSR3m7nv/pTrQ8lOC8lYgEsWvqo@vger.kernel.org
X-Gm-Message-State: AOJu0YyO/48WgYyFlU7N41ZTaogxUgLGmAolwFGl91rgXiYC0nBugt6V
	AcqOLbDbHJGgtq416fSL2pZICTwFQ4IaSKIg1OwILMb4vFc8AmVkHdJSgHnJmY8=
X-Gm-Gg: ASbGncvJMSbOrnAPHlfa2iXEpLy9xBDpcC3Y6oKOw5jHnzFpFuEo7Uuegug70vxJgYN
	+63PiwCek2AnF2ytzAkMeMWE+6kSrrErbzDCs6IuIxYbqhPwGklnuXQ9u61n2bxCXH4SkDI7+qC
	9E+2LcR9LVfPVB0qXB404JfaqaO+NFu3R17DbmRi2exas9Em7tNnxc7Onv7QE0hBHnjSVaX6OXu
	maZogx9l9Bk75v1lgLKXmunKT097uPGleCCTmSUn+iAmxtKSiMFnVlGi10qiUnnuWmczojKnsWY
	bWelO6jXnH8rwGQ0n+SadD3sGb2JD3IIB3Uu
X-Google-Smtp-Source: AGHT+IFCFXLpskTww+oakGW+yd3kGKr+RYDFkg5RSWxp++2txZY27zK5gcNngkAOxYQvIKwGlJK7AQ==
X-Received: by 2002:a2e:bba2:0:b0:302:4115:acd with SMTP id 38308e7fff4ca-305f45a4203mr60644311fa.22.1736852398734;
        Tue, 14 Jan 2025 02:59:58 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff1c7700sm17465821fa.87.2025.01.14.02.59.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:59:57 -0800 (PST)
Date: Tue, 14 Jan 2025 12:59:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: sm8750: Add LLCC node
Message-ID: <7jo242e674fsqbia7udid4abq4euofishstmix6m7xqzdgcqiy@3zukruizim4n>
References: <20250113-sm8750_llcc_master-v1-0-5389b92e2d7a@quicinc.com>
 <20250113-sm8750_llcc_master-v1-4-5389b92e2d7a@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_llcc_master-v1-4-5389b92e2d7a@quicinc.com>

On Mon, Jan 13, 2025 at 01:26:43PM -0800, Melody Olvera wrote:
> Add LLCC node for SM8750 SoC.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..3cd7b40bdde68ac00c3dbe7fb3f20ebb2ba27045 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -2888,6 +2888,17 @@ gem_noc: interconnect@24100000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		cache-controller@24800000 {
> +			compatible = "qcom,sm8750-llcc";
> +			reg = <0x0 0x24800000 0x0 0x200000>, <0x0 0x25800000 0x0 0x200000>,
> +				<0x0 0x24C00000 0x0 0x200000>, <0x0 0x25C00000 0x0 0x200000>,
> +				<0x0 0x26800000 0x0 0x200000>, <0x0 0x26C00000 0x0 0x200000>;
> +			reg-names = "llcc0_base", "llcc1_base",
> +				"llcc2_base", "llcc3_base",
> +				"llcc_broadcast_base", "llcc_broadcast_and_base";
> +			interrupts = <GIC_SPI 266 IRQ_TYPE_LEVEL_HIGH>;
> +		};

PLease take a look at sm8650 and change your patch accordingly.

NAK

> +
>  		nsp_noc: interconnect@320c0000 {
>  			compatible = "qcom,sm8750-nsp-noc";
>  			reg = <0x0 0x320c0000 0x0 0x13080>;
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

