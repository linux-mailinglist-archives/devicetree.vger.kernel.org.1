Return-Path: <devicetree+bounces-146528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE5AA35527
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 04:02:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E99B23A4BAE
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 03:02:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7512A14F104;
	Fri, 14 Feb 2025 03:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z6DfKkJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1EDC18EA2
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 03:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739502171; cv=none; b=MjcCJ53OfzfvGjU62AQWVVdpuFneQiORGOOc9kiQJ2bDPsPu90iMmR5fJQSc7fSlrPOrW8nmRUv8dtE5SdravLWGZbkzI3Xei23YcG63iNviRjezmw4THhcH+MGyB4UGY1qMpCLkS1cMwMX0hkKVv1MQzHkCaH+vUYA45eQg+cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739502171; c=relaxed/simple;
	bh=310SCreLOWjVMoQwtab8Ic7phC4zW26IofrQVnTjjNw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FV0kFoS8A/m4xY6eDMFDwgaTn/lAic3DtDD1I5oFJUN8MO5cJ48aD5PAzM7GtBCTnfkX3LAw39PxmS2x3IndeDnTzBzXiMC5G/pOvzK//+CRHYJy3Vtja1gFBbFizemom8nL6AL310aVpA37HcEgohondG57khxeBqiAMQlA1yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z6DfKkJe; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54529e15643so85760e87.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 19:02:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739502168; x=1740106968; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YMXPC0n9S8Wq9vfM8cZ2cyfmYZ/PuB3p3mPS4Blfh8I=;
        b=Z6DfKkJeoEr2ShQFHS4sNa/MMjw77/qdh5KWqTCSdz2vkve9jlaOLTMEk/S2kLku7G
         8zOuJGO/GVhIIvpce/sH9XDbGFwD/fD6jSizTu08j8qxFZ3Ww2xuex3C/kEx+/EqlHuk
         7Pa4H2fAeW5h0MfidjbuTbkFlD530mMmSEiA1WS1H1prYACqIk1ynBfIJKMcchyqq9oW
         v0u932dGcDPD44GJ+inuDilzPKepUltKhvU8be7VU4SC4kPfKNYKVvP+NRsMoAe4SFDo
         JaI4Hw9L9wiTjMYiGs4WZUMuIEc2Dzj3t6C1lpl2a9UIeOrCyk5ujmgMPN/XBbfghJUR
         eGlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739502168; x=1740106968;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YMXPC0n9S8Wq9vfM8cZ2cyfmYZ/PuB3p3mPS4Blfh8I=;
        b=myEX5PESfWIl611P9EUbKuLkyNZtf9qDInnvl3s7+MvLtVglnW2aMH9XCYFwhi89uc
         LVFIjZjIsGZdp5XXCO/3bqNL0FngBqq2oG4Wdk2wXDDRLg2KA0Z6WvLGFoZonlXbddfH
         x5pXQtvb7IDdmMMqjQXGswLiwzzxpRUMkGSrQfRMS+2MwDe+kAt7vUE48j2pRDWz95LU
         ZaS7UccWxZXxFL2KQwR/H/xd8n4GH+/J/WaPE01BYqCblzpB5ZpNEebzaFZQxRz0Inj4
         52ystLkk3LmfeeuJIbDI6l1ugX/m6LlbtyudyrK+2bqyX5lGIOFqtdqG85BXGLp+8tJO
         Qrgw==
X-Forwarded-Encrypted: i=1; AJvYcCXRyKQLaseb/ER6ITjX1+dN3W8gP1q5cIVlUjCpGEl+SgKzRelUg+bxpxT9xVcDNBn+Pv5lG/lv/ScM@vger.kernel.org
X-Gm-Message-State: AOJu0YxMsGD09SN7ogWcrywddY0sW1FsjC17sGygbV8ahbLS6jPldDaV
	r8StbtXA1Ay4EiYoYo411jp4wrak/0+edfgNmOm8t4c8kzrXXtxmK3sQKjTrf8k=
X-Gm-Gg: ASbGncv0IFxlwccbLAsf7yien7QwDR/Dc24u32pblBkvGN9Gr29DWKq+HMH8LnGU748
	6zs/PJB80o+Jps2wjyf+LlRMwBhVruaGy/1zbVBdkts9qsH5cKE0DyTn6TV/xAJoOUnjc9YlGdc
	z6F8yBAxStwjdBUBwMOgbtywqQu8A7teAQ1Z0HbNREOy8YcLFMPHkkI/KZpyQxwZrZuwsToIjNj
	dtibMFS37VhFJqdD8L4ZKjEMqfF2qnEwb+hH0j2vYqlX29vGr8NvxdYi3oGPJE7z5xG/wEr1zxc
	p4vbGeaLMIJd6k7x5nO/NtHhfoam15tuUSmjmanS7uUt9CkRBo0tDusR4fwFxxTk0Ga3EGY=
X-Google-Smtp-Source: AGHT+IEiisR2Dr3bIqWPVy/kYxhsVVznWxSw11t3tOyaPR+gHNxORbGD6+GOA3VnDVeXzhuCObwtWg==
X-Received: by 2002:a05:6512:e97:b0:545:2a89:5673 with SMTP id 2adb3069b0e04-5452a897ec3mr41274e87.9.1739502167443;
        Thu, 13 Feb 2025 19:02:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5451f09ab7dsm370613e87.61.2025.02.13.19.02.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 19:02:46 -0800 (PST)
Date: Fri, 14 Feb 2025 05:02:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rudraksha Gupta <guptarud@gmail.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Sam Day <me@samcday.com>
Subject: Re: [PATCH v2] ARM: dts: qcom: msm8960: Add BAM
Message-ID: <v5eipkz7daurxueft66f5kxzm7fnjamtzivzoldztxjy2f7vbv@2ju4jvcrpefc>
References: <20250209-expressatt-bam-v2-1-e6c01c5d8292@gmail.com>
 <e0ef29dd-afe4-4ad7-95db-d21326744c92@oss.qualcomm.com>
 <CABhZbsXo69FL-xUfg3a20RybO_uRmsOKyMJ2w3qnpk+8pYyUqw@mail.gmail.com>
 <e2b31450-c428-43c3-b25c-3ec130171011@oss.qualcomm.com>
 <CABhZbsVUY5n3bL-vbzO-xdDH6amC7FYmZHuRTh3Cb3OiQSa-3Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CABhZbsVUY5n3bL-vbzO-xdDH6amC7FYmZHuRTh3Cb3OiQSa-3Q@mail.gmail.com>

On Thu, Feb 13, 2025 at 05:25:58PM -0800, Rudraksha Gupta wrote:
> > Did you keep your changes that shortened the sd controllers address space?
> 
> No, I changed sdcc3, sdcc3bam, sdcc1, sdcc1bam from 0x2000 to 0x4000
> (2nd param of reg) as you requested, however, I got a splat.
> 
> Please let me know if I did anything wrong. Thanks.

Konrad asked you to increase the size of the BAM devices. You've
increased it for both BAM and SDCC controllers. Please revert the size
of the arm,pl18x devices (sdcc1, sdcc3) to 0x2000.

> 
> >
> > Konrad

-- 
With best wishes
Dmitry

