Return-Path: <devicetree+bounces-122151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0089CEFCC
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:27:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95E70B2260F
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 14:49:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE7A61CF5C0;
	Fri, 15 Nov 2024 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OBF7GjNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5D1CDA2D
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 14:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731682157; cv=none; b=Xgoh+Q1NpNCDI6NfYZ//APUzRJg/Oz/tKpUbDqhZAmBpheOk5DkRN2leVG47cbcKGCgrHH0ySrdmK8q3QyKboZm+V9wPeCrf0iTqfc4imDXc4bu+RBK8Ja+WxpyUw8tw1psGy8lik+ft4m9UZGqoRNHU6PdeGpAkUrUevFzM3eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731682157; c=relaxed/simple;
	bh=MJh1GOKiwjKgIQo9t6hbR2hhtJZkOmGxVYf4augiVik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MrxYnzi/AXQymxINxz8l+qme2bSLpKGE1OuMmGPqofl2TmHv8/9RNXgd6ewwH+Ujn4LhR+Gj5NbpbpfZj5vK018YGX9pp/qMWd0RgAj6GnL+2iAmiVHyrstZsw2fNktZIGNoD4qCloe4CI14w2aHD0PjhR9NBp+jFT0kBGWfHSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OBF7GjNR; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2ff5d2b8f0eso12477921fa.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731682154; x=1732286954; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ascYhFdbvJ6nC72OA8rh8LvUXFT//M84YMCSbVmuWzM=;
        b=OBF7GjNRlhe4K/RbLNVM8fU4redAPGqdMIpPb354C0SdsZRhThDI5kwxPf3jQK77vF
         Tu4Awte9dC8TQx6970Vz2I2tu5SZ325YUeE3sLoTFt9vkdEp/WJ4KkmOq1d7WiKEgPOk
         U2gKmsh6fZkPghZwn5xC8AphMWJpWBWJGs3oR6lz4V11INm5G9UgqekdkUzBXcce8L7e
         0zu8XxLVgZSYeC7biLBHDf5tLPcadiIe8lPolBJNHiDiUlJcBjtD7ttDFs/3JPtduSYW
         OU2k/2Dr7i6tYMGoDVZu/O5UcAzYpgepyUn+9DJidUiPP2OsBTZlB+cKmCiE4ZMTTkD3
         barA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731682154; x=1732286954;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ascYhFdbvJ6nC72OA8rh8LvUXFT//M84YMCSbVmuWzM=;
        b=uVQi6I+bLenvIbRa2jgzT2YAdanJSS9u1Q1H2oXGSc0ghp/nDV/1VgnlHgz+n4mUnj
         8y40DMN7Xgq+ad5ma1Rg/77hErdsEDHyVuRM9QlR31u1iFuOT9spR9fLTFC0iIUsRENp
         L+h+BFAxn6DDUuYm54/K41ru/6VTTMHpRC5+K3BHsJGuMHAUAUS7dtX1tccTgSMvCKcj
         SE1ihSEN4fRtpvzNm9oQg281WvZd2SPyg9m6QAtpD8uQ7nzZfJAxAHMzNtpU6QN1R2Cu
         11yoAhghSXX+jIVReFw9Db4gqxmvELL/cKeiHmnseHprUihcqLwaM1bkYQsFFrv4DbEl
         DrYw==
X-Forwarded-Encrypted: i=1; AJvYcCX2oRy33kLTk7d1+x2/Xn2kxDIMI+4Gikp1MEvHPlbI5R55Z0fCTZdV6t2pHDtcMdPuTcTqoBKBGkv9@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvi+mOxhHp5VsUAxTky3cTTHXHBV4WbDcMj19XXrNpgjvyFzkx
	+/SwOb9DC3G59YrO17En21Da9cXrTzAlEZVxcL4yOgjnSzjQKTHMaSz8Xm58Bu4=
X-Google-Smtp-Source: AGHT+IG1NFDzV6MZrchb+mEsTwZ0o/ief5MAWsOvo+nNU08Kv6TuNreXt1Cx161FLCFILoMwYnjw2w==
X-Received: by 2002:a05:651c:98b:b0:2fa:d84a:bd83 with SMTP id 38308e7fff4ca-2ff6066e711mr18694701fa.24.1731682154301;
        Fri, 15 Nov 2024 06:49:14 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ff59763fa1sm5695241fa.11.2024.11.15.06.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 06:49:13 -0800 (PST)
Date: Fri, 15 Nov 2024 16:49:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Arnd Bergmann <arnd@arndb.de>, 
	=?utf-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4=?= Prado <nfraprado@collabora.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/6] dt-bindings: arm: qcom: Document sm8750 SoC and
 boards
Message-ID: <6xz7tuzxxkda4h5se4wep4krja2pq63lyq2uh6f5m2ywtnumgc@dctwjxngrkzp>
References: <20241112004936.2810509-1-quic_molvera@quicinc.com>
 <20241112004936.2810509-2-quic_molvera@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241112004936.2810509-2-quic_molvera@quicinc.com>

On Mon, Nov 11, 2024 at 04:49:31PM -0800, Melody Olvera wrote:
> Document the SM8750 SoC binding and the boards which use it.

Nit: In subject you have 'sm8750'. Please use single style for all SoC
names (I think it's preferred to use uppercase).

> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index 7c8c3a97506a..f4e8f8821405 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -86,6 +86,7 @@ description: |
>          sm8450
>          sm8550
>          sm8650
> +        sm8750
>          x1e80100
>  
>    There are many devices in the list below that run the standard ChromeOS
> @@ -1077,6 +1078,12 @@ properties:
>                - qcom,sm8650-qrd
>            - const: qcom,sm8650
>  
> +      - items:
> +          - enum:
> +              - qcom,sm8750-mtp
> +              - qcom,sm8750-qrd
> +          - const: qcom,sm8750
> +
>        - items:
>            - enum:
>                - qcom,x1e001de-devkit
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

