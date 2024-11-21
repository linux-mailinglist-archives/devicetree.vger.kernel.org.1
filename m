Return-Path: <devicetree+bounces-123568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6A79D52B0
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 19:44:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61615281C22
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 18:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4F101BC9EC;
	Thu, 21 Nov 2024 18:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gvCuZSEM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D09156F5E
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 18:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732214666; cv=none; b=nGBR+mdth1PY6XMqBU+Xnx820Y3f+UHmZa5PpNI6kKU8eTNO/pd1/9rKFHXFAiUksO7TGaIRcU4Vfd2YbHO2dZ6luYVuvXbEvNK2bPks3r3uscTmAr7kGa/z+lu7sh+gnIPZwFIG+OmV9Ytgm2jvxbXU5lTBqlaZHhDBO+40Oas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732214666; c=relaxed/simple;
	bh=0iXEZP10lMiFvqi+1JJCxNY441IVtcYkv7fsyr5IQSU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tI7rEZKpOGDqpY+9EO2AGS+Q/r12vKrz02zu+xPpK3wEOZBFDY70fofIJ38qX83Ob+VWNY9H/wy50H1IomohqML2pORHEl5R9oGpxpVV3EOd31eiD7FE8a91lkulFd19VWLzIomZvcSijTAPEBRgqo/yN2FBMnyaQxhD7Iucm00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gvCuZSEM; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53d9ff8ef3aso1457065e87.1
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 10:44:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732214663; x=1732819463; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TZyh5R6Jjbt7oN7KVsZQw9ZFXBRvyZ4Sk/f6o54iZsw=;
        b=gvCuZSEMYZ9ionoELpCChVruD1ekPOwiLm8SwmoA3U7tXZc4H3T5isIRMvkDp5zQjx
         pAXsW70fq+OW+b4glBXIRreI7bM4lf2tWv8a3GoFMgUaS4RxH2aFC3KIVXRWGPMS/Mmc
         nQcWyf+4YfckdVN9P1t6KdCp0msGAmiywdEKT1psucrxPDN706R4DGGR7l8mdvJ2hiYJ
         6a5wsjOrP+Qyn83+InSPWfdeDNd1WovU0okKGJ4dvCdnpEb4O9w3jsRrEDyvVElPzYAZ
         hyG4rK2GKPACZnRZdMs/UgYKkLXL2eiYzn7ri3NWs9VW1rWnQhjuHK07wlBAydHLewCd
         C0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732214663; x=1732819463;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TZyh5R6Jjbt7oN7KVsZQw9ZFXBRvyZ4Sk/f6o54iZsw=;
        b=Hdv5caOTSdlR3hWs8Qtj4CW3xgf2QD8p+vs5w9DexKnbRTX2MD5DVHBLINO1qwE6Ej
         Sb1XKpmtwOqx6V89i4S4Cj2nFT+zsUnd4eoITXr798bf901JOnBcJiXm9NJZAwJPDWXv
         +lRMl5WwjkTIW3kRP2ityz1tLiw0SsI5qVs+FQWIi7kVXt2vcgHPHieLhav7GhOI3KVF
         TrGt9B9ZD/8ovQfz1x0fxLF10TSnKLfNlb9dcEY3+hoNWRIoXZHl1eRj7B0chAlQ3EvX
         V+B2ndqIIb4FHPIahyrFN7LyyOx9voJUNQM8Zjh8kAcjMDKhLHCOAlaM1yFdbjQzloMb
         Dauw==
X-Forwarded-Encrypted: i=1; AJvYcCU/W1OZMZUjcw90pQEK2FBkVqAZ29YVPP0iJlbXT1tegZ9vKC7N8XRSKH3LuD1XYmqwbQnghOzPAg1A@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0//ZuRPS3aIBGRA2NM8PMZMEuk3mrw1V9RRN+b9c3/FYplg7z
	F3shvx9sNOes+u6R9Es5ZJLjqm2Kn88BbURUnSzCIm/0xGG4ProwDdyMmEF9/b8=
X-Gm-Gg: ASbGnctyidvzvud88xyRmhciDrt2l5zcPOy4i6rNs/WS9D2KHo2M8Iedrvujl/RIUPP
	ZXLnzQdv2g7el5Aaa+tC94MMUaTRrTsFS9moHTlgKsGBfsMrlRYZTmNozqaxDyYFpHwABwWriHo
	vYO+EzHbWLCE6Zf63o0qEUgTr1n4iHHxuS/h+DW9aOHXs7MIsW5IKZGUrlHriW9eOVUFp6zXMYG
	Iyui2kISgc3zRsZfSlH0NruL+Sw1CPYcQ506/be6Hl3ro+rHDhncamYHWY5CwMyKiqmdQ2Y8qhV
	jZ5T1gdMssV41lNnvKaH3LQxBitY9w==
X-Google-Smtp-Source: AGHT+IG7nxOfbTTnTu4v1sr9zkOK5csQupd0P6YOCsdv1of5Sqk8kO39dWTULCj7D8rgDzFjdACzwA==
X-Received: by 2002:ac2:430a:0:b0:539:adb0:b91 with SMTP id 2adb3069b0e04-53dc138a1ffmr3344284e87.57.1732214663097;
        Thu, 21 Nov 2024 10:44:23 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2496a37sm43307e87.234.2024.11.21.10.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 10:44:21 -0800 (PST)
Date: Thu, 21 Nov 2024 20:44:19 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Akhil P Oommen <quic_akhilpo@quicinc.com>, Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>, 
	Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Connor Abbott <cwabbott0@gmail.com>, linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 03/11] drm/msm: adreno: move features bits in a
 separate variable
Message-ID: <dtt6d427u5yep3i3b3zxxef7uh572aeu3vtatmjvpbqfpjbvjc@epkkr7oumncn>
References: <20241119-topic-sm8x50-gpu-bw-vote-v2-0-4deb87be2498@linaro.org>
 <20241119-topic-sm8x50-gpu-bw-vote-v2-3-4deb87be2498@linaro.org>
 <fkezpguictntg2wkouwqipnaaiauo6vu46n7a2xzvlorzvyeaw@bbcpj3bs5eko>
 <CAF6AEGs6zT_kaTXNohUaA7KWZxZTr4byaoMoLAceuyqA7S+2CQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAF6AEGs6zT_kaTXNohUaA7KWZxZTr4byaoMoLAceuyqA7S+2CQ@mail.gmail.com>

On Wed, Nov 20, 2024 at 10:54:24AM -0800, Rob Clark wrote:
> On Wed, Nov 20, 2024 at 3:18 AM Dmitry Baryshkov
> <dmitry.baryshkov@linaro.org> wrote:
> >
> > On Tue, Nov 19, 2024 at 06:56:38PM +0100, Neil Armstrong wrote:
> > > Now the features defines have the right name, introduce a features
> > > bitfield and move the features defines in it, fixing all code checking
> > > for them.
> > >
> > > No functional changes intended.
> >
> > I think it might be better to squahs this patch into the previous one,
> > it would simplify checking that we use .quirks for ADRENO_QUIRK_foo and
> > .features for ADRENO_FEAT_bar.
> >
> 
> IMHO better to keep this separated

If they are separated, it is easy to overlook presense of a statement
checking .quirks against ADRENO_FEAT_bar.

> 
> But we don't have _that_ many features/quirks so I don't find
> combining them all that problematic
> 

-- 
With best wishes
Dmitry

