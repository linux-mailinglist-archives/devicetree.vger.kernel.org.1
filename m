Return-Path: <devicetree+bounces-144257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1C8A2D950
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 23:32:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93CDB188810E
	for <lists+devicetree@lfdr.de>; Sat,  8 Feb 2025 22:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933FF1F2B94;
	Sat,  8 Feb 2025 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ANau2tYU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C741F2B87
	for <devicetree@vger.kernel.org>; Sat,  8 Feb 2025 22:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739053943; cv=none; b=NpW1ozo6096kSNcMldRGeE6OJLofiGYxc/Fq4cSY8eEYRxBhQ8hRa1dV1dHdwy3RnUJLRjjS3TL31aGPJkgIz5YJfhJUV1TJ7df84nQ72J2h1C399wM1HiqVqjyYy7A65ubsm772qGEkIucHZoJUR8UzcFMTMg1FDBIGr/QjPWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739053943; c=relaxed/simple;
	bh=cmG/SbbB3cisojdaO+4uHb7XpN+HtDdeH9DqF1/z74A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IpZBRNPjkg+PuY8X+y2xXxDs2QsmpXxbZfbluzqovMe1sffbJyUmpmZoGAmDoY/lB2XMwjVwFJLNN6/Y4OWDRJPVx+c99+5lfsI8pWTnWH6hg8wdzzSqYrG4cNVdu1xQ9caDSs4fsp9dKkRtsz3Deyp7V/bfw8OOxsm1lPm/jjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ANau2tYU; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-308a559bdf7so17645261fa.1
        for <devicetree@vger.kernel.org>; Sat, 08 Feb 2025 14:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739053940; x=1739658740; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OoAfmsggo7EidUtnQBiDbjVxpXFthZ69JupoUyDZEP8=;
        b=ANau2tYUun97pk+N4T5s5yD2tgPYjtXRwLMdW0dl1pZdrxRIQuUvkbyf49sd1G9JOe
         6bOpCTh9UPdZYDNOJk4ZPrTSeXDBnnflVsguDqZy+j9BsjzdoiXqC0+HngM67GTbK3NM
         jcm+hV2bTJcuhpnuumAU5yB72jwtg0yBLbREwQip/mxMUSsBdfnFYnQTYYrBMZ3wT5EJ
         tRYviQJLrDLakErMFMOh35e1BTEw43Hppzf1AHTOB52GnF5d22+ibPNP/1TA3SeUek/Y
         X1ID1OP5sVuouIR98xRCIxDBFFa8isJTyC1N5SLqaiQ8O2+2USvUFaUuPjrKv3utGBOs
         j3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739053940; x=1739658740;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OoAfmsggo7EidUtnQBiDbjVxpXFthZ69JupoUyDZEP8=;
        b=iLGaWbeAceFoHLDZW91W0oqaRwny/pLN8DrSOL6jDEFgcI7I4yFF5p0HRM4DnphtaA
         Mwn+ZYOciQqZtqVme6DK7kg0BPRnPvmTaqx3dE/rgt5xwkF8FraHmYEid1HvEvlmEw7P
         2Iwp3FNzS78URI7dW8FMkdv84UVBByzYlcZpQeN99Gg3tN3Erhv/e2SBNY1tbMCeWhVN
         G9Xa2iEEPNjQmsAxtQqsD3EqbdTKWfVuvBcw8yF7Rq82vpG0/1tNE2dA3U7WoW4ao7Wr
         ZmXgE9A3YsrjjvOmnB8ERDO+TBLJzs8Tgknvxcx3eO5UsGbLVwfJALPmIRVXwJ3VDAzL
         S25A==
X-Forwarded-Encrypted: i=1; AJvYcCUJmPPD1MEO0Q15peXdczn8Cugrq93TQUtKoSxyE8/jopr5yqhIkaba1oKXFd+AAi6YO/2HgHmQ1Nhw@vger.kernel.org
X-Gm-Message-State: AOJu0Yzlqftx/uiEsz2cHEydSV2xV3uSICOK6oKMImln2uoXnAcuKTNm
	ex+BYVSQawgHqIjM/iV1mdlChUDQyGKvtmv+16bSmUyB6hSJGLcMMUjVhV51ks0=
X-Gm-Gg: ASbGnctsiXFThO4w962JnHS4lv3xv7srF/ySxHiIbfQ+mu8oiFiPS9z25qKZ9I/+5mz
	t4ToqJKZmA9joMPbwkZbm+KEmRqWHL/LE0+7L7GC6ux7QUn7LbZgo+a1pi81wp3pqWrI8yQie/P
	b5mwcE4tojDPTNpfFiDh4hqpFctdy98iRYtpwBtkQeBcIAQBX2RBb4fHMQCpk86iU3KhlY46sz+
	6Rr1s75mrzABbW+HMut5bRqzdkXTZuYc0jPRMFFwMfSeQVF4qoHgA1e9wpdmwPyHzYMShQbfd/I
	/s07XCxDdE7SHH2OxhY42BUPX17BXn5XJ3YSssXuHmrzVjqsLqqwCQxrpf/hWT0aX3e/+J0=
X-Google-Smtp-Source: AGHT+IHnMxSLCdxMnbDBy9u58ckrqNO9Jg2ChETCK+eCWlzlOT9M+YisygDlkTGNrNn8aaJ+5piFmg==
X-Received: by 2002:a2e:a805:0:b0:307:2bc6:5eb4 with SMTP id 38308e7fff4ca-307e57ce743mr25834061fa.3.1739053939534;
        Sat, 08 Feb 2025 14:32:19 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-307de18f728sm8231001fa.36.2025.02.08.14.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Feb 2025 14:32:18 -0800 (PST)
Date: Sun, 9 Feb 2025 00:32:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Marijn Suijten <marijn.suijten@somainline.org>
Cc: Danila Tikhonov <danila@jiaxyga.com>, neil.armstrong@linaro.org, 
	quic_jesszhan@quicinc.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org, 
	konradybcio@kernel.org, robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	jonathan@marek.ca, jun.nie@linaro.org, fekz115@gmail.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, linux@mainlining.org, 
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 3/4] drm/msm/dsi: Allow all bpc values
Message-ID: <nx5zeueyifytvxpr5mm3njztt2npfbp7oczdc7zk2i7vulnoon@u2c5dfim5xci>
References: <20250203181436.87785-1-danila@jiaxyga.com>
 <20250203181436.87785-4-danila@jiaxyga.com>
 <rnuv4dieiy6s6c5s33hff7ntr6hkneemsq5qzk3u4ug2abwisd@6ahmijlayhhr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <rnuv4dieiy6s6c5s33hff7ntr6hkneemsq5qzk3u4ug2abwisd@6ahmijlayhhr>

On Sat, Feb 08, 2025 at 11:09:56PM +0100, Marijn Suijten wrote:
> On 2025-02-03 21:14:26, Danila Tikhonov wrote:
> > From: Eugene Lepshy <fekz115@gmail.com>
> > 
> > DRM DSC helper has parameters for various bpc values ​​other than 8:
> 
> Weird zero-width \u200b spaces here between "values" and "other", please delete
> those.
> 
> > (8/10/12/14/16).
> > 
> > Remove this guard.
> > 
> > Signed-off-by: Eugene Lepshy <fekz115@gmail.com>
> > Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> 
> Should this patch elaborate that those "DRM DSC helper" don't have any
> additional guarding for the values you mention either, i.e. passing 9 or 11 or
> >16 don't seem to be checked anywhere else either?
> 
> And your title might have space to spell out "Bits Per Component" entirely.
> 
> > ---
> >  drivers/gpu/drm/msm/dsi/dsi_host.c | 7 +------
> >  1 file changed, 1 insertion(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
> > index 007311c21fda..d182af7bbb81 100644
> > --- a/drivers/gpu/drm/msm/dsi/dsi_host.c
> > +++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
> > @@ -1767,11 +1767,6 @@ static int dsi_populate_dsc_params(struct msm_dsi_host *msm_host, struct drm_dsc
> >  		return -EINVAL;
> >  	}
> >  
> > -	if (dsc->bits_per_component != 8) {
> > -		DRM_DEV_ERROR(&msm_host->pdev->dev, "DSI does not support bits_per_component != 8 yet\n");
> > -		return -EOPNOTSUPP;
> > -	}
> > -
> >  	dsc->simple_422 = 0;
> >  	dsc->convert_rgb = 1;
> >  	dsc->vbr_enable = 0;
> 
> This seems supicous on the dpu1 side, in the original DSC 1.1 (not 1.2) block in
> dpu_hw_dsc_config(), which has:
> 
> 	data |= (dsc->line_buf_depth << 3);
> 	data |= (dsc->simple_422 << 2);
> 	data |= (dsc->convert_rgb << 1);
> 	data |= dsc->bits_per_component;
> 
> The original value of `8` would overlap with the lowest bit of line_buf_depth
> (4th bit in `data`).  Now, the 2nd bit which will take the value from
> convert_rgb, which is already set to 1 above, will overlap with the 2nd bit in
> your new bpc value of 10.
> 
> Can you double-check that this code in DPU1 is actually valid?  I assume you
> have tested this panel at least and it is working (worthy mention in the cover
> letter?), this just seems like yet another mistake in the original bindings
> (though the register always had a matching value with downstream on 8 BPC panels
> for me).

Indeed. msm-4.14 explicitly names that single-bit field as
'input_10_bits'. The block is supposed to support bpc of 8, 10 and 12.
This bit should only be set for bpc=10.

Marijn, thanks for catching it!

We should start rewriting DPU register accessors to use generated
accessors. At least it will clearly show if the field is a flag or a
field which has some values. With the current code it is impossible to
notice the difference.

> 
> > @@ -1779,7 +1774,7 @@ static int dsi_populate_dsc_params(struct msm_dsi_host *msm_host, struct drm_dsc
> >  	drm_dsc_set_const_params(dsc);
> >  	drm_dsc_set_rc_buf_thresh(dsc);
> >  
> > -	/* handle only bpp = bpc = 8, pre-SCR panels */
> > +	/* handle only pre-SCR panels */
> >  	ret = drm_dsc_setup_rc_params(dsc, DRM_DSC_1_1_PRE_SCR);
> 
> Good catch - this comment sounds like it's documenting a limitation of
> this helper function, but the function does not have such limitations...
> rc_parameters_pre_scr has values for all these combinations.

I think the =8 part is a leftover of the old, pre-helper code.

> 
> - Marijn
> 
> >  	if (ret) {
> >  		DRM_DEV_ERROR(&msm_host->pdev->dev, "could not find DSC RC parameters\n");
> > -- 
> > 2.48.1
> > 

-- 
With best wishes
Dmitry

