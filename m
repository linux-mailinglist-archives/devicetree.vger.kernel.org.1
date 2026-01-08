Return-Path: <devicetree+bounces-252879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB70D03B23
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 16:13:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 019DF3014D16
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:13:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A17B241CB7;
	Thu,  8 Jan 2026 15:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pxg4R7jy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F14B23EAA4
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:10:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767885016; cv=none; b=AaBkxJ+caj/H1gYBLIzDUrX9L0TWJ7tQrSaZ5x8zsmjbvRPseeSKJkEjVvaOOUfsjSpHQUFnjTlAki1IUAkk0MzLZMcRHwSWhY5JdZaLuMchUqqwpnc5Bxg+azZw2fWRquqoLmKBOTlvaoj4tSzh2vA+vOebJqlgwvQ0BKi0C/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767885016; c=relaxed/simple;
	bh=qKoNns7ZimbfPEEy1t4QVDO1CmWWwQqfbpDDZVsHnmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dNS8ILE9q8bO9Osp/2qb1452C6E6BYX1NwOBtH1IoD7iYySD9aNuNCWxmOdQrIztFDeJwgNn5zz38fC4J1qJ6iybVZhRqQ25uXtxYwvXdAXljkhuKYvNw9VOVeAOqigs1RfToVTz1LlbrsboeISn46JlTU5UC5J49dy+NK3EYHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pxg4R7jy; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c0bccb8037eso1615072a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:10:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1767885013; x=1768489813; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Dhcuq9el8jXisrdDDPJhueutUdvIyETPBmEWgvOuRc0=;
        b=Pxg4R7jyv688W0U2QDM4Ci2Gbk0j+SJXbtdB3wGyUtOrDT5U8fMbpaSwKYSvrhQqKk
         m6bJMNkOOYCWUViWsrDWk8ozDnIJYVAl+Tt0wCLRMZ6txaHJw8JFFr/KF9XeJI0jIh24
         5tcb/1UetapGMWfPNm+O4uJcLxA2ZeSTiaCXP5QpXudGu59X3gbAZFsjiuP5JgyU9X8e
         icBU5sOZ2HVv4MtHn9CRorYca7al3++fZ3S+Nc7htk8Mfpzc/eZ7Sty8jRirYNNxhdde
         12Inzi3UB743xon+WJ6tcgA8y8MeZNN7Bv8My/bo9P3y1bDVl+9YiLG+eXED3SX7/D7W
         32LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767885013; x=1768489813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dhcuq9el8jXisrdDDPJhueutUdvIyETPBmEWgvOuRc0=;
        b=Nwzy1PlqZb9pyr4iGv+wXf88hzYDoy3B06KM9JEnsTSro3APkKpFX88Aa3rQHk436i
         f3fKngNrR9FgtAZhDBJvTvjA0Zpfh8Y/XQkv4iQYDX4rknosmt6PKOZL5WLOYOYvEJF3
         XOUIlg8wsU3imKezl+VCLSQFYI+ieKd+f3pmXVOF1U0kxiI2/42pIt4eBM7Og4lW6IF2
         4IgsAOVCINjygJwCzPciQu5ijVhREP+XUHq5nZt5kKlQwf12W/YFuVk2ljJ5VYGs7hx6
         dSP+ednJ2L1UFcEUiFVWLFm1rXlfLb8fbKgDDy1mp0BwOpyk2AE4azVa+plwIt0ap3n8
         RNzw==
X-Forwarded-Encrypted: i=1; AJvYcCVNcPx9NSHTyUZPM+VrcjdmzhFtNNfEzQ8ECndzXzESAltizmcwq4sAgERDIMF9hu4GEXxxRAmazjaS@vger.kernel.org
X-Gm-Message-State: AOJu0YzFZ1YCJIoNToAF2Vy0jMIXcAjbd1HZPAr0o/ZYzpTG/U4iOuR/
	l4SVcw9pzk2EkJYGN0LY+Pqf7sGCZ2DMeDzBdpzmHdQyvE2x2hUsCDUtgw8JGJJokwg=
X-Gm-Gg: AY/fxX7YrVEdKPsGCX7iX9YuhBl8LP3TsPK7QfmpWU3JSs+DDbHj4R8Y+FcNX0YXeex
	zJy0iHZmYcZ+9kK1/8yzihqVAnkYLU1v/Ep82mFu6oraji5ThIVgUvCBUSsLaHeDaUz1x6j5aFk
	fykchbjzFa5Cal2gTSuBDV8SllscaAQJdGV5cMPKu0sFag4WmOSs93MTf2OlGYuB4W6f4hCtUN2
	9/yxXdfc97sJPGdyaM6ocpi+9P5OaoZKshAGqMBLG5To1UDO0pfC8sDeulvDHB6Qoc7PnmA7E6t
	WTmbxycfSG/FbYvus+3nFIPJvAt0hymHldos1sl3jBFFCDwMnNqn6I3kpx9IWuBnE+Bal9x/Ezx
	hSk5dfsU7ONLu3omj7Wtx8ayqdEr0zcSlHS4tPHN+I5KRLJEir5orwfHdxxPOeNx/pXiq5oBjiA
	Ibk5Fv8wtUIiuDeA==
X-Google-Smtp-Source: AGHT+IHdVQFm0LoRLpz5ffOipFREjXXoGNgUc0A0LwHWdii2Nr5bh8+R06mGKRoJf0I2Vwoi809Uig==
X-Received: by 2002:a17:902:e846:b0:2a1:39cd:7462 with SMTP id d9443c01a7336-2a3ee43892bmr52476395ad.8.1767885013214;
        Thu, 08 Jan 2026 07:10:13 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:9a09:dd70:79df:b876])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c75sm83669855ad.35.2026.01.08.07.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 07:10:12 -0800 (PST)
Date: Thu, 8 Jan 2026 08:10:10 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Peng Fan <peng.fan@oss.nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Frank Li <Frank.Li@nxp.com>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v5 4/5] remoteproc: imx_rproc: Add support for System
 Manager API
Message-ID: <aV_I0iGYt1lxEIUw@p14s>
References: <20251218-imx95-rproc-2025-12-18-v5-0-b56a27d4158f@nxp.com>
 <20251218-imx95-rproc-2025-12-18-v5-4-b56a27d4158f@nxp.com>
 <aV6ow9dGUNaPDqZg@p14s>
 <aV+HEAzwNSOCUx88@shlinux89>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aV+HEAzwNSOCUx88@shlinux89>

On Thu, Jan 08, 2026 at 06:29:36PM +0800, Peng Fan wrote:
> Hi Mathieu,
> 
> On Wed, Jan 07, 2026 at 11:41:07AM -0700, Mathieu Poirier wrote:
> >On Thu, Dec 18, 2025 at 01:17:38PM +0800, Peng Fan (OSS) wrote:
> >> From: Peng Fan <peng.fan@nxp.com>
> >> 
> ...
> >> +/* Linux has permission to handle the Logical Machine of remote cores */
> >> +#define IMX_RPROC_FLAGS_SM_LMM_AVAIL	BIT(0)
> >> +
> >
> >This should be named IMX_RPROC_FLAGS_SM_LMM_CTRL.
> 
> Fix in V6.
> 
> >
> >>  static int imx_rproc_xtr_mbox_init(struct rproc *rproc, bool tx_block);
> >>  static void imx_rproc_free_mbox(void *data);
> >>  
> ...
> >> +static int imx_rproc_sm_lmm_start(struct rproc *rproc)
> >> +{
> >> +	struct imx_rproc *priv = rproc->priv;
> >> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> >> +	struct device *dev = priv->dev;
> >> +	int ret;
> >> +
> >
> >A comment is needed here to say that if the remoteproc core can't start the M7,
> >it will already be handled in imx_rproc_sm_lmm_prepare()
> 
> Add in V6:
>         /*
>          * If the remoteproc core can't start the LM, it will already be

The remoteproc core starts a remote processor, which in this case is the M7.
I'm not sure why you are referring to the logical machine (LM).


>          * handled in imx_rproc_sm_lmm_prepare().
>          */
> 
> >
> >> +	ret = scmi_imx_lmm_reset_vector_set(dcfg->lmid, dcfg->cpuid, 0, 0);
> >> +	if (ret) {
> >> +		dev_err(dev, "Failed to set reset vector lmid(%u), cpuid(%u): %d\n",
> >> +			dcfg->lmid, dcfg->cpuid, ret);
> >> +		return ret;
> >> +	}
> >> +
> >>  
> ...
> >> +static int imx_rproc_sm_lmm_prepare(struct rproc *rproc)
> >> +{
> >> +	struct imx_rproc *priv = rproc->priv;
> >> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> >> +	int ret;
> >> +
> >
> >>>>>>>>>>>>
> >
> >> +	/*
> >> +	 * IMX_RPROC_FLAGS_SM_LMM_AVAIL not set indicates Linux is not able
> >> +	 * to start/stop rproc LM, then if rproc is not in detached state,
> >> +	 * prepare should fail. If in detached state, this is in rproc_attach()
> >> +	 * path.
> >> +	 */
> >> +	if (!(priv->flags & IMX_RPROC_FLAGS_SM_LMM_AVAIL))
> >> +		return rproc->state == RPROC_DETACHED ? 0 : -EACCES;
> >
> ><<<<<<<<<<<
> >
> >        if (rproc->state == RPROC_DETACHED)
> >                return 0;
> >
> >        if (!(priv->flags & IMX_RPROC_FLAGS_SM_LMM_AVAIL))
> >                return -EACCES;
> >
> ><<<<<<<<<<<
> 
> Update in v6 with your code snippets.
> 
> >> +
> >> +	/* Power on the Logical Machine to make sure TCM is available. */
> >> +	ret = scmi_imx_lmm_operation(dcfg->lmid, SCMI_IMX_LMM_POWER_ON, 0);
> >> +	if (ret) {
> >> +		dev_err(priv->dev, "Failed to power on lmm(%d): %d\n", dcfg->lmid, ret);
> >> +		return ret;
> >> +	}
> >> +
> >> +	dev_info(priv->dev, "lmm(%d) powered on by Linux\n", dcfg->lmid);
> >> +
> >> +	return 0;
> >> +}
> >> +
> >>  static int imx_rproc_prepare(struct rproc *rproc)
> >>  {
> >>  	struct imx_rproc *priv = rproc->priv;
> >> @@ -980,6 +1078,93 @@ static int imx_rproc_scu_api_detect_mode(struct rproc *rproc)
> >>  	return 0;
> >>  }
> >>  
> >> +static int imx_rproc_sm_lmm_check(struct rproc *rproc, bool started)
> >> +{
> >> +	struct imx_rproc *priv = rproc->priv;
> >> +	const struct imx_rproc_dcfg *dcfg = priv->dcfg;
> >> +	struct device *dev = priv->dev;
> >> +	int ret;
> >> +
> >> +	/*
> >> +	 * Use power on to do permission check. If rproc is in different LM,
> >> +	 * and linux has permission to handle the LM, set IMX_RPROC_FLAGS_SM_LMM_AVAIL.
> >> +	 */
> >
> >Two things here:
> >(1) This whole comment describes what this function does rather than what the
> >code is doing in the next few lines.  As such it needs to be moved above the
> >function declaration.
> >(2) We know the M7 is in a different LM, otherwise "dcfg->lmid == info.lmid" in
> >imx_rproc_sm_detect_mode() and we would not be here.  As such the comment is
> >wrong.  The only thing this code is doing is check if the remoteproc core is
> >responsible for the M7 lifecycle.
> 
> Update in v6:
> /* Check whether remoteproc core is responsible for LM lifecycle */

Same comment as above.

> static int imx_rproc_sm_lmm_check(struct rproc *rproc, bool started)
> 
> >
> >> +	ret = scmi_imx_lmm_operation(dcfg->lmid, SCMI_IMX_LMM_POWER_ON, 0);
> >> +	if (ret) {
> ...
> >> +
> >> +
> >
> >>>>>>>>>>>>
> >
> >> +	/* rproc was started before boot Linux and under control of Linux, directly return */
> >> +	if (started) {
> >> +		priv->flags |= IMX_RPROC_FLAGS_SM_LMM_AVAIL;
> >> +		return 0;
> >> +	}
> >> +
> >> +	/* else shutdown the LM to save power */
> >> +	ret = scmi_imx_lmm_operation(dcfg->lmid, SCMI_IMX_LMM_SHUTDOWN, 0);
> >> +	if (ret) {
> >> +		dev_err(dev, "shutdown lmm(%d) failed: %d\n", dcfg->lmid, ret);
> >> +		return ret;
> >> +	}
> >> +
> >> +	priv->flags |= IMX_RPROC_FLAGS_SM_LMM_AVAIL;
> >
> ><<<<<<<<<<<
> >
> >        /* Shutdown remote processor if not started */
> >        if (!started) {
> >	        ret = scmi_imx_lmm_operation(dcfg->lmid, SCMI_IMX_LMM_SHUTDOWN, 0);
> >	        if (ret) {
> >		        dev_err(dev, "shutdown lmm(%d) failed: %d\n", dcfg->lmid, ret);
> >		        return ret;
> >	        }
> >        }
> >
> >	priv->flags |= IMX_RPROC_FLAGS_SM_LMM_AVAIL;
> >
> ><<<<<<<<<<<
> 
> Thanks for your code snippets. Update in v6.
> 
> >
> >This patchset would be a lot easier to digest if you had split the support for
> >CPU and LMM protocols in diffent patches.
> 
> I appreciate your detailed review and the code snippets you provided. Please
> let me know if you'd prefer that I split the support for LMM
> and CPU into separate patches in v6, or keep them combined as they are.

Please split.

> 
> Thanks,
> Peng.

