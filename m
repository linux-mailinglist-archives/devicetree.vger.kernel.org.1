Return-Path: <devicetree+bounces-140229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0021A18EED
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 10:56:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 957B93A4E25
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 09:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39672116E4;
	Wed, 22 Jan 2025 09:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mZ65s2Fn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADD6210F56
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737539738; cv=none; b=ZRIGli/td2WHzrLSOrFnVATO+dFb02gnV50mG/TsLz6Mk1ZN4JDOqIifxS6ZSAILAiT2yPN5tdTLDxZp2jkDgYPTw7xmqp3XIVhRiYidHLj6K0djJWy4qxPu5QjQz+7yd4fAq11Bk0Rk202WJ59HEwPp2eC9ZwvrnNnzvmbml7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737539738; c=relaxed/simple;
	bh=A7skF+DaxCykLOeAdbWIBEemfXQfKaF/hi2Lg/ra9b8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cXE3bdSIQ6nkZO8D7EwGHru+LLqfdeuuTcG+ChkvO8WQd1G2/Ou3RPRhVM8IG0g+1CoYyvNb3so1Pe4xYBx4eqhHx1GK4p4TOyEIVD21DPInLbxxcYW+2qk+5x/QKJoR8qnA8uSlmcYKeUZSrcOvwUi0mV78U7FKXFBoBwBmzJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mZ65s2Fn; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-303548a933aso59599181fa.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 01:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737539734; x=1738144534; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=scV0mTsOi7ZzfUvIFazmqCl77AdAA0xM0waC6G2ecgo=;
        b=mZ65s2FnOLQS37AXtF5gwU9InMa9kgOJzws6pSdQt5jc77Ah0J8jq7DmAsbdTlRrIs
         wn+L1Ve8xc1aIymUv+ZOsfsN59h1FmIYfZQMOcegvxJJCzjXFF7718RUcTryHKXK9SIV
         9mbeo1MleUOnutEO5TgK+hiMOdPY1JaftpWtOEr1q8e4r/Z0ZXr2psEgvOd/BHQR+AsT
         7iEWY7+TMaSPIMVXPAHyV4ZRKcGRYiwzxVkG65JvjksIrnSZ+1SfyUH9ynwNF21W2RI5
         mX4CAGYdSVsWTGjVOJR62csqHV91/FStO5pqLz7IYJyW8Eb9/Lqh+nWWeGCU/hWI5IvF
         FaLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737539734; x=1738144534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=scV0mTsOi7ZzfUvIFazmqCl77AdAA0xM0waC6G2ecgo=;
        b=gzyRHb8ImHyA/cbH2dpO+1h3Htx9ZaYSFEjHIIZG/1uizPrC3jFsQ6ydZNsb49I08w
         /OSuxHsu2+n6RjwnO7sKW+A2URpxVwxV7bwoppg+UgJcRLM/gXQAU+5ADf9PsUUu9uv/
         xtcz1WyXXxZIqSEJOeUeY5s85RJrUTuiMJkbmvJ7g3JpkIhMYosYIsP5mNBDKuvyGzVF
         lEDCju3F653ntX2oersdgIKhYcV5J9VEsw+IcakvLFsXuhtubWPjbxTghRDRihgwlYM+
         zBsaucNoGe/E/Ys7ZAl7I9qtFbL8pLjJukwcVcwyFEVh69w4AhGka6kwCaVd4Ded5MOO
         3EPw==
X-Forwarded-Encrypted: i=1; AJvYcCVp1HMlr2l9yywdNhnDs6qMTqJCx5sB9YVtgTvbkPOa1+4Huja1qao+KFnhB8LO4o8/ni2lBWSqBslO@vger.kernel.org
X-Gm-Message-State: AOJu0YwSqagNZdI1LqpePtOEo9m0Y4kaZ4L0dmI6tr/QxjiT1mzPDNC9
	5cCOGOc4XD6fIB0KmwaVMhjILDAXa0WiWS8p3FQp9ek23q+Syf3wtwQ9m5KikD0=
X-Gm-Gg: ASbGncupbkiZGKQ6PpmcJZiB5QwYThOYkZjmA3Bh9+UG60NZjYPXULpiFy/MLUWWRmV
	JbcJmuVw4MSncNGpvBq5uQfmLqK4aAFG++Kl4+gCFzRCE/c5XmAyBtvAlsRlcBpA5ij7Pixo5nt
	NTScf3QGrEYiwCLyW2kJQK3lmUVxbaHzeQZoBk8OIKLazRlgiPOdw6DWc9YaGmqxXv+gXdIRfOe
	2VXa0ehYoAbayN7Eb06Qph+tSmDFsft0ZxrsD+b++F0vEqxLSX/PyXFyeqLXDapgXImiYhyN/2g
	xLtwjG81pO7e5CwdTyzqJd/QmJS8gwzR/uKjrOIgrZd/cftBwA==
X-Google-Smtp-Source: AGHT+IEyVRLyus5hXslfncouru7d589DBCXm5XQ6Y4wWqmqqzrIjL4zImkrlqZfNjmApRZhoecA7yw==
X-Received: by 2002:a2e:bd89:0:b0:307:2bc6:5eae with SMTP id 38308e7fff4ca-3072c990274mr76013791fa.0.1737539733757;
        Wed, 22 Jan 2025 01:55:33 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a5013aesm25703591fa.89.2025.01.22.01.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 01:55:33 -0800 (PST)
Date: Wed, 22 Jan 2025 11:55:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sachin Gupta <quic_sachgupt@quicinc.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Bhupesh Sharma <bhupesh.sharma@linaro.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, quic_cang@quicinc.com, quic_nguyenb@quicinc.com, 
	quic_bhaskarv@quicinc.com, quic_mapa@quicinc.com, quic_narepall@quicinc.com, 
	quic_nitirawa@quicinc.com, quic_rampraka@quicinc.com, quic_sartgarg@quicinc.com
Subject: Re: [PATCH V3 2/4] mmc: sdhci-msm: Add core_major, minor to msm_host
 structure
Message-ID: <rvu75rn2m32eyjr4ogwz5tmns2bkv3mp4gaz562gjmxztnejsl@deslghsvjhmi>
References: <20250122094707.24859-1-quic_sachgupt@quicinc.com>
 <20250122094707.24859-3-quic_sachgupt@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122094707.24859-3-quic_sachgupt@quicinc.com>

On Wed, Jan 22, 2025 at 03:17:05PM +0530, Sachin Gupta wrote:
> This change adds the core_major and core_minor variables to

Please see Documentation/process/submitting-patches.rst, look for "[This
patch] makes xyzzy do frotz", then update your internal documentation so
that other engineers stop making the same mistake.

> the msm_host structure, allowing these variables to be
> accessed more easily throughout the msm_host context.
> This update is necessary for an upcoming follow-up patch.
> 
> Signed-off-by: Sachin Gupta <quic_sachgupt@quicinc.com>
> ---
>  drivers/mmc/host/sdhci-msm.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/mmc/host/sdhci-msm.c b/drivers/mmc/host/sdhci-msm.c
> index e00208535bd1..2a5e588779fc 100644
> --- a/drivers/mmc/host/sdhci-msm.c
> +++ b/drivers/mmc/host/sdhci-msm.c
> @@ -273,6 +273,8 @@ struct sdhci_msm_host {
>  	bool tuning_done;
>  	bool calibration_done;
>  	u8 saved_tuning_phase;
> +	u8 core_major;
> +	u16 core_minor;
>  	bool use_cdclp533;
>  	u32 curr_pwr_state;
>  	u32 curr_io_level;
> @@ -2557,6 +2559,10 @@ static int sdhci_msm_probe(struct platform_device *pdev)
>  	core_major = (core_version & CORE_VERSION_MAJOR_MASK) >>
>  		      CORE_VERSION_MAJOR_SHIFT;
>  	core_minor = core_version & CORE_VERSION_MINOR_MASK;
> +
> +	msm_host->core_major = core_major;
> +	msm_host->core_minor = core_minor;
> +
>  	dev_dbg(&pdev->dev, "MCI Version: 0x%08x, major: 0x%04x, minor: 0x%02x\n",
>  		core_version, core_major, core_minor);
>  
> -- 
> 2.17.1
> 

-- 
With best wishes
Dmitry

