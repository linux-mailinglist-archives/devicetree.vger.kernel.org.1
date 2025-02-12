Return-Path: <devicetree+bounces-145751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D8150A32332
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 11:06:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A66F1662EF
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 10:06:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72EBD208976;
	Wed, 12 Feb 2025 10:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QsTHGA0F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ECC32080EB
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 10:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739354759; cv=none; b=efmDzeymByRJXsR3Ym5ivQinXmd4A2+s0HEvegLxDimMfgVOyD/vhICzIrRcvxxty9zBuP7W6o3Y2+zUQMCBmPop9L6rSV+cKk/D5srDRgkX3RIddrO7/NU2te8vsj43ESwCpk3yZFKSBQ8fpa2ZdivVFXnDeEzSGXjyD6hmLvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739354759; c=relaxed/simple;
	bh=EHsJvTqyGwhk3LqjRdMjJz1ojxkbMBNLqjWWV/RXQ+Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RrB1Xs5ZD5trGXmP0AdE8DyJIQDUz++InpAQhi2WrjmeazCD2efeTrYEGhYzS8juWmaisqooD96cKTNuiu0HneyAWrqOBGvdEYVXTtpqK1/AnUsq+FQ7Wdetj3dN8nxB7ReKd4sefYhRnnyQrqSgq1JoIR2kPPRQIbKrEFcvA08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QsTHGA0F; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-545064389d3so4159199e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 02:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739354754; x=1739959554; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rVn+uPBQWQ6NpvoZYnq/I1sJTX4u55kbRPPlDvjT25g=;
        b=QsTHGA0FFO5SkiyXDgcIraOuPAuhwUo3QmqBqB32Xk3n0pIRS7b69gnwJ2sir1QnLJ
         TF5NfRIz1EjbY8s1ZG6kRfpMBvhzs8Aa8ygqHls/2BmCWw97KSaaPHYvwUnJl7iEJf/h
         Nb38iD3zf08pAZ9jknpLjTFx9c1Jmok5oUKyH8PlzZoe4RgHW6Y6mGDgzz3lFthG/2iV
         4wtc7oi42IizS2dSRMh9X+Mn/K5AZM08vKVy+YCWx3CEIDtqP0omUxNjkG4qePAiYFaj
         o1txB5d2NHv6nICRL3yrR5NAiCL0Gvam9FLa6QeY/p+6XvgD7r3jljvqkZA2EgInaHL9
         lqwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739354754; x=1739959554;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rVn+uPBQWQ6NpvoZYnq/I1sJTX4u55kbRPPlDvjT25g=;
        b=Tpa/ilQMHXjxRDua0/QCBXRyRUrIp62E1hNb7w9IIdQrmqJwUFXxBu072qMv+P21tX
         Fmkznuo6pZbY1l2DccW91jS7zqeY/hmTJtDc7OrDa8ZYMVu8ulGEHHyxhONVnxmCB0p5
         P9I0HtCuOrm7Z+vaJrt+u+VsblLtp9PKEfv6RY5bOgwjufCsd/lWybSNySYlCK7d/EVr
         75fdskTQCrDYNTQbEUEJDM8SlVi63ClRyeh49fUVpiYKG0F4ebxMLkLUCeD1eKdV/Kez
         /eeYmV9gan0ItbugVVih9yPa5L7jAVWt7OnCQE6NPKVJOCw3uCPWSbuj08ptp6O39fZk
         ziVA==
X-Forwarded-Encrypted: i=1; AJvYcCUZg12/dwhU4m8Z8bnbG8pVPSWQYnCBJWWB2VU57U+YScBDg9lK7aJWhSEJkdSvqI/YKEISaC9t8thY@vger.kernel.org
X-Gm-Message-State: AOJu0YwsLPh2dbBoZkh6KQxfH8Tj2ndqgDEP3bSeqWwvmnLEbvyYEpU6
	1Mw4MEJwGe5lI054cBXEnZR5xTmwUOsdn7YIcS5/M+7+bj04ZxxbrY+O1hX4PQ4=
X-Gm-Gg: ASbGncuK+9isPr+mzRQz/oAlJWWIKPmxjB+HbsunQmuShBNRYT858lWxtzsen8W3BbT
	QKZJ/5izcss5pl6bseZ/tWyrxlqvgb4cZXgmM2m178mC/CwhwXy69e2y+h9AA5s1R4OGE9tV/LT
	YjIY3RFTnHEZ7tI2bxEid7zFqXfe+E1Riw8dFU7eKt4JIBBo5x4VeC9zgFKs9lWaMcqwngNR7AS
	N3Yo3scj7f4tcSnddPLmaVB+ykh/+9r1SBrECP8sm1udiUrkh8LJcxpTIQvo+ZH55D5ocJNceH4
	vnV1+PeMWcZqfZN6geSp0M87hz9O7+nx6GRrWMRz52lLRhKCnv3+zV3J3EkYEX+GJZhZ6lw=
X-Google-Smtp-Source: AGHT+IFcCCjr2F4j57iyCku2KMNTSNmgSM7kl23BAa4v+symeaOyRKmfomba9eHHUlGd0C+dHbaR+A==
X-Received: by 2002:a05:6512:3c9c:b0:545:bda:f0d with SMTP id 2adb3069b0e04-5451815a1ccmr746030e87.37.1739354754502;
        Wed, 12 Feb 2025 02:05:54 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54410555a3csm1825349e87.78.2025.02.12.02.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 02:05:53 -0800 (PST)
Date: Wed, 12 Feb 2025 12:05:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Yongxing Mou <quic_yongmou@quicinc.com>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/4] dt-bindings: display/msm: Document MDSS on QCS8300
Message-ID: <emfd4gqstixawba64mywtsitbek5srrekoute3hjudi6xhfjhl@7ndrv3ua7uei>
References: <20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com>
 <20250120-mdssdt_qcs8300-v4-3-1687e7842125@quicinc.com>
 <e620e80d-afeb-4ce1-9798-2f5cdd92b3b1@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e620e80d-afeb-4ce1-9798-2f5cdd92b3b1@kernel.org>

On Wed, Feb 12, 2025 at 09:38:07AM +0100, Krzysztof Kozlowski wrote:
> On 20/01/2025 04:49, Yongxing Mou wrote:
> > Document the MDSS hardware found on the Qualcomm QCS8300 platform.
> > QCS8300 use the same DPU hardware version as SA8775P, so we reuse it's
> > driver. But QCS8300 only have one DP controller, and offset is same with
> > sm8650, so dp controller reuse the sm8650's driver.
> > 
> > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > ---
> >  .../bindings/display/msm/qcom,qcs8300-mdss.yaml    | 244 +++++++++++++++++++++
> >  1 file changed, 244 insertions(+)
> 
> Also wrong compatibles used.

Which compatibles are wrong here?

-- 
With best wishes
Dmitry

