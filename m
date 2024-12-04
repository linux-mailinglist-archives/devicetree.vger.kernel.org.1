Return-Path: <devicetree+bounces-127127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D859E47ED
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 23:36:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 562A61880510
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 22:36:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E071E1F5427;
	Wed,  4 Dec 2024 22:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fB4WuRcM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F281F03F8
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 22:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733351781; cv=none; b=XucW1swtzGxq03mF2BGVt+pQShkV38qCHC0d/s3rfibwbx+m+0hZNbXLtx8Rg8hmYM/cQaM2Y5N8+jcHerup186zoY6MNLfChv+GCVxPIvJL4U7/I7l2zF8KX6mM0BGOLdxxsJFepLrDPgvdPg7S+NLO5++VSST0dP37kfcvYH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733351781; c=relaxed/simple;
	bh=8nyNe6nBOf2Dk/jqULA7hpqv08Qyov1aCsfLJP+e0ac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ci7MZxzko3ZpGWZidKlAzc/DEXFZQdBs8zqY3J8NYNdFKb8Wx5NSfoM/lAFFqJ2IiAB3PWctKvFx0CtH0a3pvhsA3SXhhMRNso9xsj/fweoeLdGiJQ8KiPluGxHNfpksF+mFuWCbd6KmLjlbK8oBK3kJK+XaL9Q16+W+WEf6AxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fB4WuRcM; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53df119675dso417006e87.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 14:36:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733351778; x=1733956578; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+mmQIbMpMz7O0AOKTkxfl8dFrxJ33xOJobw0OfEwbNw=;
        b=fB4WuRcM3FIp3T0F7f5PzJzFKbU/bMYUYGPDay+g8J48QH0dCklAeeNTvHN3ZmW/Yd
         9C0xzANYRgGvyyjJxKgQzKq1mRnbNWxpkFdrKB/XVHomB0HhOZwlVfQnbgCrkgB3JFEJ
         JFgH0auMNwDgnydg/bUUCSk6vRZk07hwwJuYtnXfwkDqdQFMRB0O+5dfXToOQbH0DKxJ
         9qkDmYVDfxCj7Q0jrdONvImyT3Q6YJ/9Hi8R2DLDDWXhQBjbTkmZOz1S1/k7/gI7P7ek
         O7EkwK42zF/uvdRPRGogcgaflKYKCJ+qv1hj2asg5NwIITHtI2+Va7d6K/APbo0YKG6A
         cEmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733351778; x=1733956578;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mmQIbMpMz7O0AOKTkxfl8dFrxJ33xOJobw0OfEwbNw=;
        b=KAVHjHMUEi0VtGAVB4XLgefp0pCvDDkv0OASJ7AgAwiga6iKFCVI07tENzd6AGGMLP
         bIox78enHXzdEXxzgXzDqHSlTpnKFyTPMxG+IRZhnUOsh4/oSH34nwfiHTJG4UJuAVF/
         KNGh/OqcxUksQsDuFDzDfNDaipjSSnAaUiIYeXobRYAnNc2szw7ccHYp4uvpJliNlag5
         Y9NEqQlvYkf38yahWLd4g203TmGhHstl4d75oYxb93G+ZqavQ/Y179xbR7Svw6GyjR0a
         OxPb03/nyjr1aUH6cpvHtxCOesUuSS63G4of+udxY2GTFOq7n9CTDP+DJRcufZShlx5M
         XBfw==
X-Forwarded-Encrypted: i=1; AJvYcCWaFzwk6mgd8Nybh/4G2ftvsTFtGOc7o3rwcf09Cqq13pTmMprpfhSHAawFlEhridwXdMIAS2eYR5hU@vger.kernel.org
X-Gm-Message-State: AOJu0YxWEllTM+zM7hvo1Y1ilDNA1GHkAMmy6KO+wuywZ+qfbVzKYjGU
	8uSPHrqv3ufU5kWQHg/gZ9T6vSZSJxI8M7MTgIJus6wLn9b91VpicdCys4jqFAQ=
X-Gm-Gg: ASbGncvLDM/fXJKWRBKkR02clduPpVz2cmyyoZg2J1QJ8JtUAFGztr6PfpvpF1pQixp
	y8+IGzdLeic8fEMTscM6cZkavEpN0mYMWRjmhjpDxEK9NSfnIgUmtX2MqJ2kIf28+BQRTGwnWlW
	xFJnjADKY67V6/FGm0EScucWicJLt9aAxrypbFMhQ0nbaQnoD9XxMctb6DTDo78Zi+D0PKh7MXM
	1f9NvwJcjUtaspIShAFixjGD3z76U2QXV3BPCsZAzr+DKkdG4ELjZvtC/BHPCieRGq1TwKpx85B
	abzoQyYKN7LuyQg2GRsXxuvmh5TFCA==
X-Google-Smtp-Source: AGHT+IGuGoCD3puMElK86ZdB02YG7dUQkM6ohz8Me4tads6hOhrBog3l0JNlc1YxUZmWAvJj211T6g==
X-Received: by 2002:a05:6512:220d:b0:53d:d3c1:9fc4 with SMTP id 2adb3069b0e04-53e12a31944mr5017238e87.41.1733351778075;
        Wed, 04 Dec 2024 14:36:18 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53e229ca47esm21650e87.264.2024.12.04.14.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 14:36:16 -0800 (PST)
Date: Thu, 5 Dec 2024 00:36:14 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Viken Dadhaniya <quic_vdadhani@quicinc.com>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org, 
	broonie@kernel.or, andersson@kernel.org, konradybcio@kernel.org, 
	johan+linaro@kernel.org, dianders@chromium.org, agross@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	=quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com, 
	Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
Subject: Re: [PATCH v1 1/7] dt-bindings: i2c: qcom,i2c-geni: Document DT
 properties for QUP firmware loading
Message-ID: <garuc5au5464xpmj3exlull4o2763xrkqubplde56xmyfhfhmn@cpd4bbt4dfyr>
References: <20241204150326.1470749-1-quic_vdadhani@quicinc.com>
 <20241204150326.1470749-2-quic_vdadhani@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241204150326.1470749-2-quic_vdadhani@quicinc.com>

On Wed, Dec 04, 2024 at 08:33:20PM +0530, Viken Dadhaniya wrote:
> Document the 'qcom,load-firmware' and 'qcom,xfer-mode' properties to
> support SE(Serial Engine) firmware loading from the protocol driver and to
> select the data transfer mode, either GPI DMA (Generic Packet Interface)
> or non-GPI mode (PIO/CPU DMA).
> 
> I2C controller can operate in one of two modes based on the
> 'qcom,xfer-mode' property, and the firmware is loaded accordingly.
> 
> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> ---
>  .../devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml   | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> index 9f66a3bb1f80..a26f34fce1bb 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-geni-qcom.yaml
> @@ -66,6 +66,15 @@ properties:
>    required-opps:
>      maxItems: 1
>  
> +  qcom,load-firmware:
> +    type: boolean
> +    description: Optional property to load SE (serial engine) Firmware from protocol driver.
> +
> +  qcom,xfer-mode:
> +    description: Value 1,2 and 3 represents FIFO, CPU DMA and GSI DMA mode respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3]
> +
>  required:
>    - compatible
>    - interrupts
> @@ -142,5 +151,7 @@ examples:
>          interconnect-names = "qup-core", "qup-config", "qup-memory";
>          power-domains = <&rpmhpd SC7180_CX>;
>          required-opps = <&rpmhpd_opp_low_svs>;
> +        qcom,load-firmware;

please use instead:
firmware-name = "qcom/sc7180/qupv3.elf"

> +        qcom,xfer-mode = <1>;
>      };
>  ...
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

