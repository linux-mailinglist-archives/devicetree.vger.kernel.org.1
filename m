Return-Path: <devicetree+bounces-141576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76317A21682
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 03:21:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B984D161DAE
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 02:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4019618FC65;
	Wed, 29 Jan 2025 02:21:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PJYHdyCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E725218DF80
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 02:21:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738117298; cv=none; b=PnsHlcTKZJhuo/95NRlF4Nyh1haV5bqp+Y0TDGjF9etSYHbFpOYZi5J7EKfEkBcfzk8GPGmJKaTuXJrBC8nq7zu17liZBUsnZWw5FwPSvf5llZqr6v4tcX7jlBVwMGC8go573zWwnON9iI5/AXVy1g4dZKXzycG2NOBk4CRJPxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738117298; c=relaxed/simple;
	bh=ClyITuF8gOnzs/F3NZb6ENAP9stJFnJgE1LAv9csGYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nDe9EZ7sS9TUBAt+4P99BHqBKCu6Utl5utIusUomggveP9gkWeZeiahLKUjeKLFFE9yKcxODf7XvnIr4KzAuFUVIoNn5cjOaXd0J/FETJISh5qzf/YDhkdD641MHxlWiHictbjF3dz+Mo3ux86Sg7HYx9zcL7jm/rlirXSxoj3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PJYHdyCI; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-543d8badc30so3158595e87.0
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 18:21:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738117293; x=1738722093; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=lhVC/jY9oSkBWKgGztp81ZX5vLd9ni6/ghgnT90rp+w=;
        b=PJYHdyCIm9xZGeITClzrO6WHqyVJEVh7jpVEqtysZvOXALjGF4rSZ9uhEfIXlmaHDr
         SoLCkZPjer9NBDwv7YJ1rjqLmmAU2KUQsnacAP7G/SRs1TJd4UszHR5RHy6RQzkfwgXc
         CRHQPthNtcQVvpEpIHchSFYQ4AsmrxHJkZDbr9Xqh2kKUawpb6dREjHSUPhwTFDREyar
         mCCc4i3DofWGY3vZUo3gUkKfUD7y9bqDeYXgjDVraqTnpdcx/Pjwqossjv4uMWKbqTpW
         fcvFwsc8NECy4dkudNIdaHkOfH09CR1BgJz76ar5M0JEJnf2PLQ8Tp+F1LG7Mo7CbmMt
         bY0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738117293; x=1738722093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lhVC/jY9oSkBWKgGztp81ZX5vLd9ni6/ghgnT90rp+w=;
        b=D1ZIo7ZE9M5jsmO+g5tr7VTvsqtBiXnC+Lc7d8l74iGpZKpU7xf3+G+83U9iQVTOWn
         sz8TXhNd1j+yZC/o2mU562vxAzs4mwFTRMuQ5S5jmXkj3wgnfV3f8FyUw42ZxToowMBA
         V9Wk4nRt+FRsbwrVxgJCK0elf+MZ+ORvaEqs+JDYIYdzm6IJIXCcXaCqSfQ99zfqoWRC
         +sJzUELt1omvCJf8K4Y70FfQM8YcbWGv3LymusXWSpICsIrtM+wzn4FMiEZJ/i30H3Mi
         BfbC2PZ2HyFIMJ0zXvvwVGsrV9UQq2WZLnnpUcpn8ctD9ssoFW6bsL3tvO7STheonnwn
         sOuw==
X-Forwarded-Encrypted: i=1; AJvYcCWaOKGKsPTJqPFvG413mP4z9hLu2bekH9j7DjY3C5QO8QQQadn9f5+se6Y/GgiT6tQn03Sc3155GxMr@vger.kernel.org
X-Gm-Message-State: AOJu0YzWE9GST2D+bQ+ndIukmPwkfjYUcP2NL/CylwcP6Hf1o2QbIscH
	L49qMjcMjuekSFHhvsCHn4traywj9ygYwMRrDIW4oAHwlncyWPMVFI5ZIcCjj7I=
X-Gm-Gg: ASbGnctmRgM0uAPr9E/TjsTeAhPabs58SopvwoNnubzxSOll0BuKMbmXdHAdhaoiaVS
	a9aI4QMwE+qOodeLL656kJBISSNb9OdRA5W4U6gxcNUwN5aohRSLzsm59t+jZvtw93hok3EPTTX
	SnXehIHoTCHyn7ZqCbH43Yl/mrcAGakZ5yMTNneYsbKYfiRRRp99zCYTnx1BuUtgSZIqi24vObC
	PFeP0EA84aJJZKJIOuZ194U0fu2OW11SPbV2OFp5r9pZu9TpGYGd9bkt/h3rIw6Bfgyndlo2A6V
	AxlLfsrd9S9lYlBs/SKTVNmIIikFoHeuBqadihjup72i6t0AySWZFXZ5rsoE3xw/0xv3CH2gSF2
	bJBRVUg==
X-Google-Smtp-Source: AGHT+IFCsKhtG6nSDsI742TadJTivtvw91Ucb98NwdkXhuO5uH0m74kP7qa7ILD4yusdJNvna23Ihw==
X-Received: by 2002:a05:6512:3081:b0:542:2999:2e43 with SMTP id 2adb3069b0e04-543e4c011acmr409942e87.24.1738117292885;
        Tue, 28 Jan 2025 18:21:32 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543c836846asm1808863e87.116.2025.01.28.18.21.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 18:21:31 -0800 (PST)
Date: Wed, 29 Jan 2025 04:21:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Viken Dadhaniya <quic_vdadhani@quicinc.com>, andi.shyti@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, jirislaby@kernel.org, broonie@kernel.or, andersson@kernel.org, 
	konradybcio@kernel.org, johan+linaro@kernel.org, dianders@chromium.org, 
	agross@kernel.org, linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	linux-spi@vger.kernel.org, quic_msavaliy@quicinc.com, quic_anupkulk@quicinc.com
Subject: Re: [PATCH v2 4/8] dt-bindings: serial: Add support for selecting
 data transfer mode
Message-ID: <v5n7wn3saiymi2ncgi35drzdjfeaa4ng2ftia6ggex6oh74ocg@7vuskxosh726>
References: <20250124105309.295769-1-quic_vdadhani@quicinc.com>
 <20250124105309.295769-5-quic_vdadhani@quicinc.com>
 <10060d39-87a4-4565-a2a6-80c93ac2266a@kernel.org>
 <dudqd2y42wy6iq2k73aphd5ol4mtq7z4c54zhd27rl745rrw5x@p3oummf2jke7>
 <374e16d6-46aa-4bdf-85e9-bc2e33c38057@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <374e16d6-46aa-4bdf-85e9-bc2e33c38057@kernel.org>

On Mon, Jan 27, 2025 at 05:24:21PM +0100, Krzysztof Kozlowski wrote:
> On 27/01/2025 15:27, Dmitry Baryshkov wrote:
> > On Mon, Jan 27, 2025 at 08:02:12AM +0100, Krzysztof Kozlowski wrote:
> >> On 24/01/2025 11:53, Viken Dadhaniya wrote:
> >>> Data transfer mode is fixed by TrustZone (TZ), which currently restricts
> >>> developers from modifying the transfer mode from the APPS side.
> >>>
> >>> Document the 'qcom,xfer-mode' properties to select the data transfer mode,
> >>> either GPI DMA (Generic Packet Interface) or non-GPI mode (PIO/CPU DMA).
> >>>
> >>> UART controller can operate in one of two modes based on the
> >>> 'qcom,xfer-mode' property, and the firmware is loaded accordingly.
> >>>
> >>> Co-developed-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> >>> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> >>> Signed-off-by: Viken Dadhaniya <quic_vdadhani@quicinc.com>
> >>> ---
> >>>
> >>> v1 -> v2:
> >>>
> >>> - Drop 'qcom,load-firmware' property and add 'firmware-name' property in
> >>>   qup common driver.
> >>> - Update commit log.
> >>>
> >>> v1 Link: https://lore.kernel.org/linux-kernel/20241204150326.1470749-4-quic_vdadhani@quicinc.com/
> >>> ---
> >>> ---
> >>>  .../devicetree/bindings/serial/qcom,serial-geni-qcom.yaml | 8 ++++++++
> >>>  1 file changed, 8 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> >>> index dd33794b3534..383773b32e47 100644
> >>> --- a/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> >>> +++ b/Documentation/devicetree/bindings/serial/qcom,serial-geni-qcom.yaml
> >>> @@ -56,6 +56,13 @@ properties:
> >>>    reg:
> >>>      maxItems: 1
> >>>  
> >>> +  qcom,xfer-mode:
> >>> +    description: Set the value to 1 for non-GPI (FIFO/CPU DMA) mode and 3 for GPI DMA mode.
> >>> +      The default mode is FIFO.
> >>> +    $ref: /schemas/types.yaml#/definitions/uint32
> >>> +    enum: [1, 3]
> >>> +
> >>> +
> >>
> >> Just one blank line, but anyway, this property should not be in three
> >> places. Do you really expect that each of serial engines within one
> >> GeniQUP will be configured differently by TZ?
> > 
> > Yes, each SE is configured separately and it's quite frequent when
> > different SEs have different DMA configuration.
> 
> Well, I checked at sm8550 and sm8650 and each pair of SE - which shares
> resources - has the same DMAs, so I would not call it frequent. Care to
> bring an example where same serial engines have different DMAs and
> different TZ? We do not talk about single QUP.

Well, I don't have access to the latest sm8550 / sm8650 devcfg sources.
I checked the RB5 ones. As far as I understand out of 14 enabled SEs
only two are configured for the GSI DMA, others should use FIFO / SE
DMA. Same applies to the SM8250 MTP devices. Checking the RB1 / RB2
setup also shows 3 out of 6 SEs being set for GSI.

> 
> Anyway, if you need property per node, this has to be shared schema.
> 
> Best regards,
> Krzysztof

-- 
With best wishes
Dmitry

