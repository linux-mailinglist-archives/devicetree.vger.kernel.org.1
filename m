Return-Path: <devicetree+bounces-155253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2813A5606B
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 06:52:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41237188B5E4
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 05:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC362198E6D;
	Fri,  7 Mar 2025 05:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z22T23Rj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8DB1946A1
	for <devicetree@vger.kernel.org>; Fri,  7 Mar 2025 05:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741326732; cv=none; b=Hzo1dZNLBmnQ/G55mZw3kFfWXocmR6dHaT4orslmHuTWTbFIQB42OPaVTrUYMFB9QqX60lCuUyOnpatDDFxuRZGZJgs1lc+xoRSAD+YY91bt3FETuVyQPB2ME9QteRgim5jy4QoPIfU7zWDKTphBOaqI+LIYmZVqPKkMW41MyCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741326732; c=relaxed/simple;
	bh=YJnxjBOJNGJpsAtvdYJofjwEZlD5vwrDmuoRdMrN4PU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFkS6GdF3NQkVVjl2UbMKdl8mAqnCGJEXnvPp4Jm9jL0Ng/Ba/HgT/2ODt1dA9GMd507wg9yub15ZSd4z1vEs5vY7vXhOVu5fBR9MXsfUgkFt/Jh85kkcmfZMbeJHKIbtoa60AxV7w/eIUQzIWAuf6xBKscfdMGj97/T1AeBCv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z22T23Rj; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-30615661f98so14795031fa.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 21:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741326729; x=1741931529; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=97xCV+Gvyecw927R3SbsNwJBWiMKRLeo3l2nPZL/r98=;
        b=Z22T23RjaQ7hR/bhCpL21ODdRKLOXfc/pnHvjCX99RjrYd7Agmil7uP69op6xFFXg0
         HqPn/bYqW3QzHF/ikzLKKi4+isbog0NZUlMBZN/TapZha9QTnj3eDU06rZ61KUtZMQh8
         P1vLshm5h0t7zrZNnrGqUCy2CQAsIlQLSIx1rSAWNsUY2/V43dNviNpSoQJH+EDCcER5
         XLj5HYPTC0+lGaR/PI23TsH5eFYO/otjvdAg/1UD829O3wZrYl7plxd2LANSAuWn6gGa
         D+vi61w8DAmc9uDDDPA64cdRU6/6Z1KtOTxR7ozsU9Xbzim2H2tCOujaEwPoCQMwc/QD
         EM4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741326729; x=1741931529;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97xCV+Gvyecw927R3SbsNwJBWiMKRLeo3l2nPZL/r98=;
        b=aVi651dSPAc5r3IXE/bCTCAljVkpUmD7E5RSIAztsbB9QhQYTrikbGoAobRnbQ0bXC
         n8HnWFKGyZ0H8rOgolCR0r4vQdA3hKntZPmQvxSrrGa7oIC9tnvisOVuyRafCGWoulJI
         em1fOA0Fhdb3Oh3wBAc2/h/vgB43rzKW05Sj8WT1I6AmTA1JSA1O7ML4kNqBWfge4Rr7
         e4veE2PeNuslLEkSELt9/evDNtMmYFHbrloM+ZLs1NHDYj8vv5nGounQQP+Pa5R7UV1t
         bZNvA77vzm1ix+Gfy1mOl/HickpbPBviyBP71Jc9yOKLtyDI5yu3ydi2tHme2ic/RRWC
         vVag==
X-Forwarded-Encrypted: i=1; AJvYcCWgX7slzEdtrFJAXNSfmEhXhyr79GdwwJl7kRTMSG5Nfhnm62krNQxHFkU76Tr3w+ijay1uW5JV/Iki@vger.kernel.org
X-Gm-Message-State: AOJu0YxP1VMXO2yuP5KnEF/tq6e4DcF/hppaqqNLr87mr45syquLJKBe
	UYY6qYrbABEnrNUkdBczLxm8yQq6TB6f/1Bk1EIRoyecVfT9+njjk8Ar9S5R4h8=
X-Gm-Gg: ASbGnctM9LWo8xS1tcyGLPXBVP2oZoRE9SMvQBhFoqgwmMEa53YLdieY+C5V0Noa2+E
	uWSkyyjcSwh0wCCXoBsz2fQUtDeAKUKY7wYx6XfqboONC13SZH0MNNDGGljrLXV0FxNt6bPAl9g
	Rdp93BLbvvtGnLgID1x7b6mS2kxZl2+HtcKj1Bz2weKPFlE0VdhpsJp2p9z61v4XZYN6yXT8LD3
	cWKS2i2PCjjgBGoLlMh7eiJW9hRDqcM8xR8ocXob4OnUw14w9ncc740C1v6aHh3odYm0OSKitwt
	mlvYOP4Nv8yPSURW3OfJYXw5VIlG1JkpEJJiZWmHaFe5fQHxoDSVZ2cOiXah6xYmSpDEaLD4Iz7
	8W9uoA4TOJCOSVZ1qXwiVQwfz
X-Google-Smtp-Source: AGHT+IHunk8+MpzZDHTJkBgYb12y6m7jhuOmcjA3ogw1gP8DkwdgKWszNP4J5Id48vGNdylVuIQYaw==
X-Received: by 2002:a05:6512:2342:b0:549:4de9:22df with SMTP id 2adb3069b0e04-54990da2057mr687182e87.0.1741326729036;
        Thu, 06 Mar 2025 21:52:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5498ae45f8dsm384613e87.34.2025.03.06.21.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 21:52:07 -0800 (PST)
Date: Fri, 7 Mar 2025 07:52:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Robert Foss <rfoss@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Christian Marangi <ansuelsmth@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Rohit Agarwal <quic_rohiagar@quicinc.com>, 
	Kyle Deng <quic_chunkaid@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Marijn Suijten <marijn.suijten@somainline.org>, linux-arm-msm@vger.kernel.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	linux-usb@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 03/11] dt-bindings: power: qcom,kpss-acc-v2: Add MSM8916
 compatible
Message-ID: <nolgnvhb4ipmt64bhy3swibrjb5cxncz7nwk56osn7bkbrsy2b@6ntbn5pk22gf>
References: <20250306-topic-dt_bindings_fixups-v1-0-0c84aceb0ef9@oss.qualcomm.com>
 <20250306-topic-dt_bindings_fixups-v1-3-0c84aceb0ef9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250306-topic-dt_bindings_fixups-v1-3-0c84aceb0ef9@oss.qualcomm.com>

On Thu, Mar 06, 2025 at 07:11:15PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> MSM8916 seems to reuse the same hardware as MSM8974 and friends (for
> whom this binding document was created). Add a new compatible for it.

Ok, I should have read dt-bindigns before sending a comment. But this
commit doesn't explain, why do you need an extra compat string.

> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml b/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
> index 202a5d51ee88c7190805efe8f1bf493bdb69ec45..27dae49163fa0790ceb6fda8a5c674f739d4a41a 100644
> --- a/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
> +++ b/Documentation/devicetree/bindings/power/qcom,kpss-acc-v2.yaml
> @@ -18,7 +18,9 @@ description:
>  
>  properties:
>    compatible:
> -    const: qcom,kpss-acc-v2
> +    enum:
> +      - qcom,msm8916-kpss-acc
> +      - qcom,kpss-acc-v2
>  
>    reg:
>      items:
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

