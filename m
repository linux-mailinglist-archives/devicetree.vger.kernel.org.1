Return-Path: <devicetree+bounces-148354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D56BAA3BC45
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FC021885338
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C21081DE8A0;
	Wed, 19 Feb 2025 10:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dXfcfunG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D25F51DE8BC
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739962737; cv=none; b=OVe9+11lLGpR7pJEiRPHQhXcUc7IHte/6Q5P8+qWbOqJDYLXmAPgPMSzTU1hedc4vg/UJA8EK9rUTEFPri8BuyK4GxvWCqpqMnXWFGmucT59VYA72+FfEQi44vvLSiGOIL7t/HOlFqMC2sPhdn/azsMyCHrWYnLMb7D/l4VXX48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739962737; c=relaxed/simple;
	bh=CvEuSAg+nVFG6qjJEiGbScYYldX03GA1lX/QwghhTd0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H6t/Pvj9vewFiwmEKKBdWaRtD8nXunk+Ar+HPUabVBL7SgIfSuy4JvYplsdJHOQ0Zgq4F5YlGJb5bQzLMqgm1VsHkPFSeHeItpjzyEf98zeRThkWVKU1b1FAWx/YS39AoqLDkB9EG5U6iL8wQzI6ppD7tQ49z5ZnAs+8Lf0I60M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dXfcfunG; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-30762598511so63069161fa.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 02:58:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739962734; x=1740567534; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=01B6M3B/6e8fBJbhUwGqxldkm9jDFUlKOIpIo2WPDw8=;
        b=dXfcfunGsCOyRyQGqbUrdL2QDRdpdSqqtmedHNgKcSGW1Yyj5j5xzp5nyOKNoGAZc6
         oqIBasn7CdYzeoZv81v11xudZqz+xzp08ErLTKfU2KYVqqgTPBsGYdiI1HrHkeAfCAx0
         CWhqCOsLl4/pXa4snN0pu7DosLiYf6WCCKAgaJx6oFmhMS8vD61PREyp0JyY2wlINCKD
         qd//FS5l8F8/AXhlzbID15+J9VX3FkBqeWks+cK1OJfrcylqCIts1qHd1WMXDNyVkRD2
         WO4lkHX0i4oWbhE9dpcAW60wutXsD/fTd4YY4VrCn2o7RxFgzHl3B0S1aA9O5uuvAJy0
         JsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739962734; x=1740567534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01B6M3B/6e8fBJbhUwGqxldkm9jDFUlKOIpIo2WPDw8=;
        b=rWqlLZJiUM1r5N/tihyuC2ii37CJCniOeO8po+DQj+TW1eXvEMs4wIwwAvtOUEUAWN
         UhJ3dPaO7GHN4XHxazJpPcdtaE+z8Pl2pE8NoPvVQkNQqBB31PEoIMhpZ1syNXFUggxr
         xOnF7hUhgWI9fKJ5Z6uQ9RUIjySHkCLs2+BzVnRHpVcPWLSnaYGixJUac7ROGG+cxfbc
         J945lnfFZPgV46gjbo7MvyyJCXxsvoH1y3rtwDbcY2rGpiWJ9+MapWgvekBWRFBC3ALN
         FGRgAViVrPd5avn7Zr1tL//xVxMgxMqfmY3pxS5srvdv6e4+cRvtt9SzqVlerPiL5ul3
         NGOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVT7cqhBcHs9H+quNImLXPxDdg9+Flm5oD5V0PTyEPc8l2+/6CX+ZwClWdCubaCYDDwmYIHZqrvnSa6@vger.kernel.org
X-Gm-Message-State: AOJu0YzEWjOOQHQ5Wo1hvq/e9H0vzEcrPxo9Dx5UjsdzgNn+FP+P162s
	ltTkhzFOHjIXI/NE+a2fSFHLZBM87PPZUVHNUvvGHeiLX3yzXCEE0j9RpDCfGKg=
X-Gm-Gg: ASbGnctEBu90irWIMnIshUufZRB32rVe8X/EGgCf7/TJ0z4EjAtGFIY7CnnGr4MxBNC
	pTFLrWV1E5m3Q+1EYrTC4bfz5L5x4e1gKnL/Bnx7PEr8wb9JkZVKYc3BPVVE3I0IHl0GmLOhLqN
	+qadTg6o8xsQCB05JWDU9uKFKV7H4AR+j2jldmL0enPB3yOftVQP0a9ebYgZMIGE2q+4vdOBDxM
	UYWwwfOsreYD3FqpOMyIc41TQxhOwTG1kF+hNnvXf7GXugFTqeiFeasN2AKRLND7BuDiiV//58i
	47qIi5GWcRUf6Ata7UdcW846mPxiux+zWnSC4TfX42aA4o89IjpaOrOUHXXFIL+TsJJxdPI=
X-Google-Smtp-Source: AGHT+IGcisYXxPQLC+b5+fYSrjvm5AAYIjBDylh4x2pSEkaI839acVqUHx0018XYsObzYf9DMzTOXA==
X-Received: by 2002:a2e:91c6:0:b0:300:1ea5:1655 with SMTP id 38308e7fff4ca-30927a47351mr50492061fa.15.1739962733885;
        Wed, 19 Feb 2025 02:58:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30941da3978sm14149531fa.112.2025.02.19.02.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 02:58:53 -0800 (PST)
Date: Wed, 19 Feb 2025 12:58:51 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/4] Add MST support for qcs8300 platform
Message-ID: <ylotx2i5wvkitezd3ilqg67g2fj2emjigvnxhsdfl5nmoscsbf@kybjxritnslb>
References: <20250212-mst_qcs8300-v1-0-38a8aa08394b@quicinc.com>
 <87058b73-8854-4dbd-9f27-1da2a8240c16@kernel.org>
 <2ede97c5-a4f2-42fb-b3cd-68f26297150b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2ede97c5-a4f2-42fb-b3cd-68f26297150b@quicinc.com>

On Wed, Feb 19, 2025 at 06:02:27PM +0800, Yongxing Mou wrote:
> 
> 
> On 2025/2/12 17:06, Krzysztof Kozlowski wrote:
> > On 12/02/2025 08:12, Yongxing Mou wrote:
> > > This series of patches introduces how to enable MST functionality on
> > > the qcs8300 platform. The qcs8300 platform uses dpu_8_4 hardware, which
> > > is the same as the sa8775p, but it only has one DPU. So it only has one
> > > DP0 controller, supporting 4-stream MST. This patch only enables
> > > 2-stream MST, using intf0 and intf3. The first and second patches are
> > > modifications to the correspond dt-bindings, third patch is the dp
> > > controller driver after not reuse sm8650, fourth patch is the qcs8300
> > > dts modification which add the clk support for stream 1.
> > > 
> > > Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> > > ---
> > > This patch depends on following series:
> > > https://lore.kernel.org/all/20250120-mdssdt_qcs8300-v4-0-1687e7842125@quicinc.com/
> > > https://lore.kernel.org/all/20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com/
> > > https://lore.kernel.org/all/20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com
> > > https://lore.kernel.org/all/20241205-dp_mst-v1-0-f8618d42a99a@quicinc.com/
> > 
> > Buggy patch cannot be the dependency. You need to fix the original patch
> > instead. You are not supposed to wait till knowingly incorrect patches
> > get merged so you can send a fix. You must respond to that patch
> > stopping its merging process.
> > 
> > Best regards,
> > Krzysztof
> Thanks for the reminder. I hadn't noticed that before. We will wait for our
> dependencies to be ready before sending the new patchset.

Hmm, no. Work with Abhinav and send the bindings (including all 4
stream clocks) and platform enablement. Then MST support can come up
together with the rest of MST patchset.

-- 
With best wishes
Dmitry

