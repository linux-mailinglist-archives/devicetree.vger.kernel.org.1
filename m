Return-Path: <devicetree+bounces-58053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B25958A0090
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 21:26:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1E891C222FD
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 19:26:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEE58181329;
	Wed, 10 Apr 2024 19:26:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HDVm4d17"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5E1180A87
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 19:26:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712777204; cv=none; b=Bg22mB2qzpY+RsF89ijq+mhI/s/G3w5s6spTefsh5sz8ahmkiqZTaiaa5/aVQ3uOmBiMfKUtdpPFq1zrZxRRg11WWjh7FNEmx91NESHHqeN7XGxnUy2aZcgWEHDPlMn4VMKnq+jf56/Pi5xKcJwS1PkjfoLTLeQrm3pFu+VS3s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712777204; c=relaxed/simple;
	bh=AMqlBZLFJT51AESr/QfuR/fFI09Sip8DaT6BxjSLNiQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JBJQ9xNyB7tsKdMSVPU8bZVePeQPDs+WRcuGv+2Z0YWWw+nGtj0/MZfHxxTiAi5PdWLFaVByDzc+goNfUjXtQxdZdyzd5fC+yxxu4pGY3LP4aFkfBnJFtr6EnficROCGdgAfUesZbcRf4HkczNJ366mZ3VCkjQTh7o8fxGhzlS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HDVm4d17; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-516d2600569so7830199e87.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712777200; x=1713382000; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Oql17Fqd5Jg6+8RYI68vlFWWGpYVeFoSsC2gYOuJOyU=;
        b=HDVm4d1763wqDWlp21v1uApnIRTHTAHFmQ1mmgP4tGVluYPKOqA8QY6VgQV5vITWfB
         CtryNqjgQYoDWTXvxjnoahmkIrsqeuTUrbqDmvExjz9rwfeo8J1+PceGD2SV0wVrfYL1
         nz+CkBtn92gEsFOVOekO4X6+G8vqTQ3Asu8AMCXtZy7+Kk1e7MiNYKwOzVuBpxtkwOAF
         l2G7NmrpM65h2oxCGJgLGwa1OVjMe2Km83HhT5DZMwXbgPhSgGhXNND4r9IPctJPc5Zd
         +MBsjv+deBWzQ8KhAwP6+jZO0kWXNrbcHDWZNdJQN19XGgT9Ha4hj3U4LZpHz5mOTIdA
         JEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712777200; x=1713382000;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oql17Fqd5Jg6+8RYI68vlFWWGpYVeFoSsC2gYOuJOyU=;
        b=j56I3ZkKlfr56gMb6oWiyQvraR5R0pIP53MgEVxZ9uBsoS2bRzBw1goPueqQO5hRCV
         Pf7gnAArRhpTmL/Ykg5hTgKBshGd4sth5Q0Fk338bXPGdHJjjhraVXEFbLBsbT3kkMXX
         d6NdrPzHmLHcsCzqXO6Vdzeh+QoItI1fmREKv1gTPmBAO4/QXNUAt/o1D96VN0MOF5gV
         +ojV9aWScfBcD8wcobAUcR9Q9JuWb8rrzzJjUwd5BUFrYX5vYLjti13cHqjy03tydlyl
         6TEj8yXdP6zjwxEL5B/eM1bdQZOGVysDyisBYVY5XZL+maHpihmLNv3uDkkRlHOlpS8b
         LXAQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrPkCa8weYCBPCUgbGv5WoqKWs0aFfwFaIPekyGEploTunHKuvnvdkxb5wI3R/Ts3XHKR+qCEfMqVyQqoJI3WjCd8wSOA7kCBTIg==
X-Gm-Message-State: AOJu0YyLWf1s9o5A2dfGKQqvl3lNEqBS+IovTcP+BnlY9nFO1FfgY6Qs
	oKqXjpcc3QimbTDyv1TS4vYgQx8DjbIDVWp57v7TxLBWC+IxmNleX+RmsvZYVvY=
X-Google-Smtp-Source: AGHT+IEJyevAVtPCLcTaJGYyYSGZelO6kzFGO1RxVTJJabuGr3OAqPR7yMBG4cD0OBvbeQOjPS5GUQ==
X-Received: by 2002:a19:e00f:0:b0:513:ec32:aa81 with SMTP id x15-20020a19e00f000000b00513ec32aa81mr2418754lfg.13.1712777199719;
        Wed, 10 Apr 2024 12:26:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id x27-20020ac259db000000b00516b061e091sm1924951lfn.4.2024.04.10.12.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 12:26:39 -0700 (PDT)
Date: Wed, 10 Apr 2024 22:26:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH 4/6] drm/msm/adreno: Implement SMEM-based speed bin
Message-ID: <33qyr6cfruczllvavvwtbkyuqxmtao4bya4j32zhjx6ni27c6d@rxjehsw54l32>
References: <20240405-topic-smem_speedbin-v1-0-ce2b864251b1@linaro.org>
 <20240405-topic-smem_speedbin-v1-4-ce2b864251b1@linaro.org>
 <scvwfj44z3wpp7phvesfwjuv5awtlkwby2vvrpaq4i5fircrt3@i3ebya4iymf3>
 <730d6b9e-d6b4-41fd-bef3-b1fa6e914a35@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <730d6b9e-d6b4-41fd-bef3-b1fa6e914a35@linaro.org>

On Wed, Apr 10, 2024 at 01:42:33PM +0200, Konrad Dybcio wrote:
> 
> 
> On 4/6/24 05:23, Dmitry Baryshkov wrote:
> > On Fri, Apr 05, 2024 at 10:41:32AM +0200, Konrad Dybcio wrote:
> > > On recent (SM8550+) Snapdragon platforms, the GPU speed bin data is
> > > abstracted through SMEM, instead of being directly available in a fuse.
> > > 
> > > Add support for SMEM-based speed binning, which includes getting
> > > "feature code" and "product code" from said source and parsing them
> > > to form something that lets us match OPPs against.
> > > 
> > > Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > > ---
> 
> [...]
> 
> > 
> > > +	}
> > > +
> > > +	ret = qcom_smem_get_product_code(&pcode);
> > > +	if (ret) {
> > > +		dev_err(dev, "Couldn't get product code from SMEM!\n");
> > > +		return ret;
> > > +	}
> > > +
> > > +	/* Don't consider fcode for external feature codes */
> > > +	if (fcode <= SOCINFO_FC_EXT_RESERVE)
> > > +		fcode = SOCINFO_FC_UNKNOWN;
> > > +
> > > +	*speedbin = FIELD_PREP(ADRENO_SKU_ID_PCODE, pcode) |
> > > +		    FIELD_PREP(ADRENO_SKU_ID_FCODE, fcode);
> > 
> > What about just asking the qcom_smem for the 'gpu_bin' and hiding gory
> > details there? It almost feels that handling raw PCODE / FCODE here is
> > too low-level and a subject to change depending on the socinfo format.
> 
> No, the FCODE & PCODE can be interpreted differently across consumers.

That's why I wrote about asking for 'gpu_bin'.

> 
> > 
> > > +
> > > +	return ret;
> > >   }
> > >   int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
> > > @@ -1098,9 +1129,9 @@ int adreno_gpu_init(struct drm_device *drm, struct platform_device *pdev,
> > >   			devm_pm_opp_set_clkname(dev, "core");
> > >   	}
> > > -	if (adreno_read_speedbin(dev, &speedbin) || !speedbin)
> > > +	if (adreno_read_speedbin(adreno_gpu, dev, &speedbin) || !speedbin)
> > >   		speedbin = 0xffff;
> > > -	adreno_gpu->speedbin = (uint16_t) (0xffff & speedbin);
> > 
> > the &= 0xffff should probably go to the adreno_read_speedbin / nvmem
> > case. WDYT?
> 
> Ok, I can keep it, though realistically if this ever does anything
> useful, it likely means the dt is wrong

Yes, but if DT is wrong, we should probably fail in a sensible way. I
just wanted to point out that previously we had this &0xffff, while your
patch silently removes it.

-- 
With best wishes
Dmitry

