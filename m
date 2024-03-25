Return-Path: <devicetree+bounces-53063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B216C88AC0F
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:43:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2BBB91F34E14
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:43:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3886D38DD1;
	Mon, 25 Mar 2024 16:48:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m+MTuF2w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740395786D
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 16:48:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711385293; cv=none; b=aYRvr/dHL3lxiqoe8tu5bNZjeFoQ0tFORYCuthq8kgw+a1dLJb+CImWP2d5Vyq7siOTiAjU/10lCfoSbmnxSsm52pBkzwm5CU4F4Vt4XMTEorwx3i4rXedQFFWrKvOymrkyxOS7O7I67uONFoxX+trJsI1tJhXe0iIt6jt22u5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711385293; c=relaxed/simple;
	bh=gqR4dMtr09msmwGAqcZR/QoEZd5ixjXQwrvoLI4iHFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gSDqYUzScsipgvZo59FVTDkDtvlCF2glP8ADIzeD8eL5XG2pS6rt3/f4DyPsb55GKPMh8HfQ8JENPY7bn4DtRe9o1jtljLWXdXojgo5QZZnpFXd9AKhIdmib5e4YSGZDon5WtoO8bVGyiOgBu0l6KZHJs/43sULdoW9t5+wOL5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m+MTuF2w; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-1e0ae065d24so13027205ad.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 09:48:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711385291; x=1711990091; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0Li9ePBDN5kdTzO/p/pyUro/E5ONNdjRLMyuXA5qxWs=;
        b=m+MTuF2wuWTUMLr8MbaI/JJ3HisSRlUchc1kXO3Zzb578hW7PoXxz/H3zUr3h72RaB
         8tHw1tYWyjF6KnPMYDXcJnXQ71XPImUgBfRTdXiETREvn0fUt9kvv3v0szDVUfyrSgT2
         DnU4erfH9fkNSWdBCDr2koxH4KLa7Oe8HQIMOcyTgR8NFNVKLuI0g2nNE5nnYzDChal/
         sifxabWE6mSXwFKlLhRw9s1FIXXYbJ3pl6aTuFoatzX59JfsOpOUo22rwF2jRIxbP5XF
         hrxrniQi8jvELUnekvNADP27jPh8uUCjA3OUbwMkmDfQ4zp14octQvpAnwaEEhBliqa+
         6IkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711385291; x=1711990091;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Li9ePBDN5kdTzO/p/pyUro/E5ONNdjRLMyuXA5qxWs=;
        b=jmTTWBQFMQkOAtgg5YvJzVi5GfEN3JTH5XCnpzghvLj+98asfWpkJX1CqirWNsmpK7
         C2RJTZ1P8qc9UHA3mqizsFV23WubQM1/g5ZaFG6d/j0TFzt+JFNzGrJMMwBUrxtPeGp7
         IV9hvYzjFQ0nQagN4K0lxay5NyNuTfVp9l6qzApfvcZe7F/RCpgXDTYlZhjkdVqgSHHu
         juQPBEJuzpGSJ4SD58T6w9O364kF93NShSZMlerSgBbeEHuvzIrWTRHbI2w32vWxjlQv
         p5D1IKHd8hcDLvBUB2a14ba/QkOIIwtMJIQi+TPYdizyvhaRZ1OxyGZMo6Pa5ZRZW+Ic
         oefw==
X-Forwarded-Encrypted: i=1; AJvYcCUL1ZXjGOWkPAdvJPkqkSIsC6pxgHHapv3Dk9MxcrWx1D0hG4kE4nCh1DlRvE0tyw5eh3lXSna0ZHrYP183qNL3gKL6qidxH8ft/g==
X-Gm-Message-State: AOJu0YyzjNJbw3DyU47vmzOoERXZI2LjUZLu0gZmGTVyUt2O4F70lnuD
	D26VAFV5T6Pcnhyurd9dI6YAXXVTQK8bt8+my4LQHWWv+fjY8S6VZw2wmjQZ6U0=
X-Google-Smtp-Source: AGHT+IFBoBsSglPKHUxyixrU3Fl2cREElqaGHFDUAzOeeEFm+j/qwqzea0cL8fVxvarsqHFodVnMMw==
X-Received: by 2002:a17:903:192:b0:1e0:bddf:7ed0 with SMTP id z18-20020a170903019200b001e0bddf7ed0mr3942884plg.27.1711385290761;
        Mon, 25 Mar 2024 09:48:10 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:4a22:28de:eba3:89d1])
        by smtp.gmail.com with ESMTPSA id d9-20020a170902b70900b001ddbd9ac28bsm4893178pls.142.2024.03.25.09.48.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 09:48:10 -0700 (PDT)
Date: Mon, 25 Mar 2024 10:48:07 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Jens Wiklander <jens.wiklander@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
	op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 3/4] remoteproc: stm32: Create sub-functions to
 request shutdown and release
Message-ID: <ZgGqx0Lg9FH217Wc@p14s>
References: <20240308144708.62362-1-arnaud.pouliquen@foss.st.com>
 <20240308144708.62362-4-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308144708.62362-4-arnaud.pouliquen@foss.st.com>

On Fri, Mar 08, 2024 at 03:47:07PM +0100, Arnaud Pouliquen wrote:
> To prepare for the support of TEE remoteproc, create sub-functions
> that can be used in both cases, with and without TEE support.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
>  drivers/remoteproc/stm32_rproc.c | 84 +++++++++++++++++++-------------
>  1 file changed, 51 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 88623df7d0c3..8cd838df4e92 100644
> --- a/drivers/remoteproc/stm32_rproc.c
> +++ b/drivers/remoteproc/stm32_rproc.c
> @@ -209,6 +209,54 @@ static int stm32_rproc_mbox_idx(struct rproc *rproc, const unsigned char *name)
>  	return -EINVAL;
>  }
>  
> +static void stm32_rproc_request_shutdown(struct rproc *rproc)
> +{
> +	struct stm32_rproc *ddata = rproc->priv;
> +	int err, dummy_data, idx;
> +
> +	/* Request shutdown of the remote processor */
> +	if (rproc->state != RPROC_OFFLINE && rproc->state != RPROC_CRASHED) {
> +		idx = stm32_rproc_mbox_idx(rproc, STM32_MBX_SHUTDOWN);
> +		if (idx >= 0 && ddata->mb[idx].chan) {
> +			/* A dummy data is sent to allow to block on transmit. */
> +			err = mbox_send_message(ddata->mb[idx].chan,
> +						&dummy_data);

Why is this changed from the original implementation?

> +			if (err < 0)
> +				dev_warn(&rproc->dev, "warning: remote FW shutdown without ack\n");
> +		}
> +	}
> +}
> +
> +static int stm32_rproc_release(struct rproc *rproc)
> +{
> +	struct stm32_rproc *ddata = rproc->priv;
> +	unsigned int err = 0;
> +
> +	/* To allow platform Standby power mode, set remote proc Deep Sleep. */
> +	if (ddata->pdds.map) {
> +		err = regmap_update_bits(ddata->pdds.map, ddata->pdds.reg,
> +					 ddata->pdds.mask, 1);
> +		if (err) {
> +			dev_err(&rproc->dev, "failed to set pdds\n");
> +			return err;
> +		}
> +	}
> +
> +	/* Update coprocessor state to OFF if available. */
> +	if (ddata->m4_state.map) {
> +		err = regmap_update_bits(ddata->m4_state.map,
> +					 ddata->m4_state.reg,
> +					 ddata->m4_state.mask,
> +					 M4_STATE_OFF);
> +		if (err) {
> +			dev_err(&rproc->dev, "failed to set copro state\n");
> +			return err;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
>  static int stm32_rproc_prepare(struct rproc *rproc)
>  {
>  	struct device *dev = rproc->dev.parent;
> @@ -519,17 +567,9 @@ static int stm32_rproc_detach(struct rproc *rproc)
>  static int stm32_rproc_stop(struct rproc *rproc)
>  {
>  	struct stm32_rproc *ddata = rproc->priv;
> -	int err, idx;
> +	int err;
>  
> -	/* request shutdown of the remote processor */
> -	if (rproc->state != RPROC_OFFLINE && rproc->state != RPROC_CRASHED) {
> -		idx = stm32_rproc_mbox_idx(rproc, STM32_MBX_SHUTDOWN);
> -		if (idx >= 0 && ddata->mb[idx].chan) {
> -			err = mbox_send_message(ddata->mb[idx].chan, "detach");
> -			if (err < 0)
> -				dev_warn(&rproc->dev, "warning: remote FW shutdown without ack\n");
> -		}
> -	}
> +	stm32_rproc_request_shutdown(rproc);
>  
>  	err = stm32_rproc_set_hold_boot(rproc, true);
>  	if (err)
> @@ -541,29 +581,7 @@ static int stm32_rproc_stop(struct rproc *rproc)
>  		return err;
>  	}
>  
> -	/* to allow platform Standby power mode, set remote proc Deep Sleep */
> -	if (ddata->pdds.map) {
> -		err = regmap_update_bits(ddata->pdds.map, ddata->pdds.reg,
> -					 ddata->pdds.mask, 1);
> -		if (err) {
> -			dev_err(&rproc->dev, "failed to set pdds\n");
> -			return err;
> -		}
> -	}
> -
> -	/* update coprocessor state to OFF if available */
> -	if (ddata->m4_state.map) {
> -		err = regmap_update_bits(ddata->m4_state.map,
> -					 ddata->m4_state.reg,
> -					 ddata->m4_state.mask,
> -					 M4_STATE_OFF);
> -		if (err) {
> -			dev_err(&rproc->dev, "failed to set copro state\n");
> -			return err;
> -		}
> -	}
> -
> -	return 0;
> +	return stm32_rproc_release(rproc);
>  }
>  
>  static void stm32_rproc_kick(struct rproc *rproc, int vqid)
> -- 
> 2.25.1
> 

