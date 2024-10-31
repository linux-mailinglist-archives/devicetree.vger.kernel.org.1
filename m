Return-Path: <devicetree+bounces-117877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A6309B831E
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 365701F22D96
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 19:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D83541C9EAA;
	Thu, 31 Oct 2024 19:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pWj5KqBx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B160213C8FF
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 19:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730401972; cv=none; b=X839IGYYdR1uA8v6aYiwD9aXxOznRNLHSsXq5sQBNiKSl7qLhOlfQKNke3U+5VrgeCo6Rh9x/6fTBNZQd7nRauiuYpz6tojtbnO+dWB8fyn8Q6K0TI7xYUowd7l2xBf2I6p7c7ExB12dfHKWXkM5537nk7TMIwNSr5tKJwNrHoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730401972; c=relaxed/simple;
	bh=TYW55Jhp7t0Vd1HnF8KrL/jWsJe3Zk30JNz8WAh27Rw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OzDLipSAxjeFFMaaijBeXyLBt5s/GHxcuKjQ3V6IDdoxDiDT3fqZ2h4xd/85Nj8vBlYfGI8POzGoZGGxssXtZcufQyLkBy39E8aarSM6MwCdRH1njd/fGbVNR186MTqcfV2exoJ0AOn4LnZVJy/q2QzH8EVRSTUKgBLdSmdXzCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pWj5KqBx; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539f72c913aso2067742e87.1
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 12:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730401969; x=1731006769; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rD/pY/i638YKtWjS7I89D6wpk5BweHDNRe5Pjk8A2Hc=;
        b=pWj5KqBxM2rzUTiYhkbIpkfVcRHBvnSezYO6nWCe6HtDecuyfrlj4N2v1tX/bfVQLz
         nrlHw7wEE2G6Jz+UCNOVW1OuX8amsxpgSoK53yCw2QC+2CNr56jBJnBPOfmKgLbGLz26
         rqfyh++uFwVmoBXRo5iIF1TP8SjVU1Tlr1OVPLwCVblhFSUcxxcYFnbCHpmXeAmYNleF
         8BsYcg51bx/AhUVRPv2lWuB3uZMjXszC1l6svNwhIkNJHW2X0cM3BUJyvl8Q+h5LlEdH
         UWNeyDKGuMagpguR4BFB02hqhscOak0cppKz7p0xJEULHI3kUqrXUTzK7uk09LhyLAcP
         K1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730401969; x=1731006769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rD/pY/i638YKtWjS7I89D6wpk5BweHDNRe5Pjk8A2Hc=;
        b=ly4C7k5O9hv6S2wkP+NzijoIZOrnlXqRl9y5pyqRtM2gl4biwVoA419VvdQI0IBHKK
         pOxSmBWDp+bLvB1pi+j5mTL0CJa/+Mv3s6LpsXff+dsVpvE7JCCKAOREzQsC5xdgyKi/
         uF94DPWWdZ8SV9/bpxzzQZOeizX3LkwT+dXi09Fw2ODdse9UQ9hDuN0n9dW1qJF66eq5
         hTcl00gfCnhep6/N7t3wtdMgMsS7DZCw/TG585HnbFc6VxHGux1e7RXOHQCFKPky3quy
         +J53UywSxSJ0rXBA0RANVo39SrVJI4wYewZPY5la1H/EDatSbyR0gZH0zOFejOyXUmA4
         7HCg==
X-Forwarded-Encrypted: i=1; AJvYcCXJEaOO6E5vE5N8KTBLTiODyemrh/y+6aLuGuD355aReJd7Dc0ddsAMV1QhybsNLcveamnKhOYFAW3G@vger.kernel.org
X-Gm-Message-State: AOJu0YxuC/YXET5M/6y3JZPTA+d9AlqFsoi/KhF5uJ31c5CDRLN+6kp/
	33IhS9QkKWeUOhpxr/qNkQKFFTLxq7/UHUKfM/LG1WMJ75rW+H/dRNHoilsNIMQ=
X-Google-Smtp-Source: AGHT+IEHlgrOOPldK5P7S57DuVyfV2iyV8RJOHXDbZ5tbr/99nLsMq1Jtiuo0Qol8RifwvNdY1Zhjg==
X-Received: by 2002:a05:6512:3b25:b0:539:e9b4:7ff6 with SMTP id 2adb3069b0e04-53b34a18f2fmr10168609e87.45.1730401968815;
        Thu, 31 Oct 2024 12:12:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bc957aasm302503e87.42.2024.10.31.12.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2024 12:12:47 -0700 (PDT)
Date: Thu, 31 Oct 2024 21:12:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Richard Acayan <mailingradian@gmail.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 0/2] iommu/arm-smmu-qcom: Add SDM670 SMMU v2
Message-ID: <jivvekptfdr5zh6xnzvzgye7oaana6q3dpyge65m4uklfo6ubv@rq5uar3avkdg>
References: <20240730013820.41702-4-mailingradian@gmail.com>
 <ZyFSJjO2fkqCwzWm@radian>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZyFSJjO2fkqCwzWm@radian>

On Tue, Oct 29, 2024 at 05:22:46PM -0400, Richard Acayan wrote:
> On Mon, Jul 29, 2024 at 09:38:21PM -0400, Richard Acayan wrote:
> > This adds the SMMU v2 for the Snapdragon 670, used for the Adreno GPU.
> > 
> > Richard Acayan (2):
> >   dt-bindings: iommu: arm,smmu: add sdm670 adreno iommu compatible
> >   iommu/arm-smmu-qcom: add sdm670 adreno iommu compatible
> > 
> >  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
> >  drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c            | 1 +
> >  2 files changed, 2 insertions(+)
> 
> Hi, I'm wondering if this is still being considered.
> 
> The NAK doesn't really make sense here, as there's a warning/BUG at the
> bottom of the qcom SMMU driver that occurs when the compatible isn't
> added:

Please resend it, adding an explicit note about having no generic
-v2 fallback and that being a correct way. I don't think Krzysztof
reacts to old patches.

> 
> 	/*
> 	 * If you hit this WARN_ON() you are missing an entry in the
> 	 * qcom_smmu_impl_of_match[] table, and GPU per-process page-
> 	 * tables will be broken.
> 	 */
> 	WARN(of_device_is_compatible(np, "qcom,adreno-smmu"),
> 	     "Missing qcom_smmu_impl_of_match entry for: %s",
> 	     dev_name(smmu->dev));
> 
> DTS change for context (pending):
> https://lore.kernel.org/linux-arm-msm/20240806214452.16406-10-mailingradian@gmail.com

-- 
With best wishes
Dmitry

