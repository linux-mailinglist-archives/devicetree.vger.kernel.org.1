Return-Path: <devicetree+bounces-102389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FB5976E01
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 17:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13BA41C212F4
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 15:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13981AD27C;
	Thu, 12 Sep 2024 15:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WBATCGF9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E85F1BB6B3
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 15:41:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726155689; cv=none; b=A0yVhGM0294LPcbng5+EJAHs+ZeA4ywsyPBv4QWtQRwdYPvCOu6tTAoQX9yPghZ1Mv5bpz2QehvEsy2UV8h8DfBzLVAZzYG4jHqu2arrFS9UiyHjAFDqkpXcO2Cy8/Pq1i4MkIU6GprTFSG730vL2HAMBSgTJjhff1f12O3+yko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726155689; c=relaxed/simple;
	bh=MMgC/aqt9wcmvoZXDiJlIZxFtdta8SZFDTKjqp2m56M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nbVh+bBmC5JVIbYk02nP1A7R2H3/JjQillyULTOVh1s4WvkNSDFyPiOrZe+2N3BAmaacNrEs7kinBrDS07MsI7nJK7dPe3Ei2S3tQmn88xJe657rTVXGYC8fON5MH7oH8YWYG2RzQmCVH90FC+R+IC/nJm2CL9sJKgr0o6cGkdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WBATCGF9; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2053525bd90so11730935ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 08:41:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726155687; x=1726760487; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UX3TDD1wg3fmZECxkbsHACOqCzp6B1JzxKfaMLm2U8M=;
        b=WBATCGF9aV8eYt7r+resZHnANpxsPqlyuzjCm270745ZZErhABeSDdyyYCCVKi2Q1w
         OP63+9l/EeaBbQjZZtFLrudMg/1QufBvDxmzz4nGzPQZm9+Ss4E6ZQKITHn4/9tfXCP0
         CoyiJhAdQ8UQQL77Gce20jGRctPQRtL+EtBwGRQc2Bf0cNWahzScJGDZHnS5P128MZsD
         1ydkVZKj9T31gzVQ0o9st9BCiRen7TEOz02HUjhAR7J38/9fD6OvBlt7ZFRGzPVzw1OK
         nnDn/aSFLTlxAFXPdet9eTR2tV3EjWCyXSVFOvYpYB4Ip/qwHCI6aojk5hzVrrrheFzH
         CHRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726155687; x=1726760487;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UX3TDD1wg3fmZECxkbsHACOqCzp6B1JzxKfaMLm2U8M=;
        b=GetjExe9zXcRypx09mkVbET/gmvQN9SmyFC9ruP6El90gtuvmoN0X2wUNS/BDAXIDE
         G+jIXg06fBzxIE1atDIZMO3JDCVkP5lKTE17V7ji6gXFAPh15fE789fsJyYSszpRReJX
         M8FxjZ4Tqhu9Vq9WzEg7vQbaEkxR2pSmWbctp9XI+rZv3htg78jSmswtEMtmefcpto/Q
         yyNQGFlATLcL9Yf+MTP+2i6UCBXMVvicu/v7SG6dNgVifVqfAkE2BgT/RKJ3og6poFmr
         XPrQaAEsDFdPyiaxHX00nngRcynM6Vf/qOGdTl3XCcPCS23jAnZ9UOFQdK3Kn+o0aQC6
         pzTg==
X-Forwarded-Encrypted: i=1; AJvYcCUj55/2Gp/2cCYg/vWLL6mZcTxvJEgMhfFz7IX8+dYmL2RUgQnEl/9i2TMTPBFd41JTIL4Dz37OrvF8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0GRlKfs2LxtTMS+dh7VZB8m1lyMOrKwlEN4mbeFKe23CglwQ9
	THqdaXGGMoMeFTtrrSimGOLm3vt4s21U23SOU0k5IprBA6K+pnJKhPp3KD8aPf8=
X-Google-Smtp-Source: AGHT+IFagW7EpGoI8wKxQY38cWVqzvg3XfqIXD61efl4qhGkGiSohPvpLEyd4ziYpx5dvCOQgOsAAQ==
X-Received: by 2002:a17:903:32c3:b0:206:ca91:1dd6 with SMTP id d9443c01a7336-2076e315569mr46690225ad.9.1726155687450;
        Thu, 12 Sep 2024 08:41:27 -0700 (PDT)
Received: from p14s ([2604:3d09:148c:c800:a82e:e104:d822:3d3c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afdd672sm15667935ad.156.2024.09.12.08.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 08:41:26 -0700 (PDT)
Date: Thu, 12 Sep 2024 09:41:23 -0600
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
Subject: Re: [PATCH v9 6/7] remoteproc: stm32: Create sub-functions to
 request shutdown and release
Message-ID: <ZuMLo2+an1sxdYlt@p14s>
References: <20240830095147.3538047-1-arnaud.pouliquen@foss.st.com>
 <20240830095147.3538047-7-arnaud.pouliquen@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240830095147.3538047-7-arnaud.pouliquen@foss.st.com>

On Fri, Aug 30, 2024 at 11:51:46AM +0200, Arnaud Pouliquen wrote:
> To prepare for the support of TEE remoteproc, create sub-functions
> that can be used in both cases, with and without remoteproc TEE support.
> 
> Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>
> ---
>  drivers/remoteproc/stm32_rproc.c | 84 +++++++++++++++++++-------------
>  1 file changed, 51 insertions(+), 33 deletions(-)
> 
> diff --git a/drivers/remoteproc/stm32_rproc.c b/drivers/remoteproc/stm32_rproc.c
> index 8c7f7950b80e..79c638936163 100644
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

When refactoring functions, please do not change the inner code.  Here
@dummy_data was introduced.  Making changes, even small ones, makes it really
hard to review your work.  I'm pretty sure we talked about that before.

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

