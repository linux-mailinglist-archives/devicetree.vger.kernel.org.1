Return-Path: <devicetree+bounces-131797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5AB9F4991
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 12:07:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 83C7A1649D0
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 11:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 825191E883E;
	Tue, 17 Dec 2024 11:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hg18FeHl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9933B1DDC35
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 11:07:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734433631; cv=none; b=gNGCcYO2LvhtGpftwJujS4/ytCyUcDBBQydsuB9rApc585wYZkSm6Y6rbMWfASZAJnmGCIYRyLGJdPUMMZ3SveNqTrr0oJwxTfMO2yh+hmD3mANzWLmipKEiRkSAKI6JFv0dARkFlUzi2p8fgR2rStPVbBctNzgK39fteY+ATww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734433631; c=relaxed/simple;
	bh=DssytWRsJzFgDQC1CkHvnXulBSToKLyeKpd2UiymnY4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FqOwCY6t5Vr2heScyXUJMZmincQjZhd6r8gUGeMfVgzu887aNyE1LPH0u6Ki40kcZz2yd5KHmFbLCjuEVmF4E3aD0nmttgBr50tDIeViO0Qr+7R+LW0BDX3ZvoX5fMBOX2qSCH9j+1MI+jx35xWm+H4SQmbno4weZIT4upWzxZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hg18FeHl; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5401c52000dso5577426e87.3
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 03:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734433627; x=1735038427; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AfuoU4NCeZC6i1F3LvimU1oXmmt7Zka/LPketmVAjnQ=;
        b=hg18FeHlgKYaZGPHZpZs/LQQ0wJOEtwbKnGINxWzTyfjwe3BWQAaUIXuJ0/pWnGxH0
         4NlVzA6hQe3XeTQztKuyOJkORaUCdgCDi+Sj6JShPb/kSIIFBYE3W0i3Yy+syjmXzryJ
         cLu0B5on/Oyb/Xw7y9Vpl0wy36xBg0Hy11K3QcTn8yNJvu7hP3Z9ot577WmddNEyoXru
         6G/DVXrYhDM1Vrg+ALeFXTIjv+LNUZfdjnpw4FGikN2G6fDa4YgMRNFGM6ZSoqGPsOe3
         oOq2mhTk2Qbr4xVL1bWaWg440lPYl0vuCCDskCw+9vRn9h1Qf/nvci8sEHJU/HIVcDtr
         s6uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734433627; x=1735038427;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AfuoU4NCeZC6i1F3LvimU1oXmmt7Zka/LPketmVAjnQ=;
        b=BJCAIN1ktYhULNNT/oWlA06Hhkzif7Wpqn0T4wU3sLara33mxsHpApPC9y4z2upQWU
         T4BCpoVpBL35jNZIoYG6zv7Z9Qp4vzAonilzFrGTqFrUFAsQAh72eb8pYywuCH4RBeMr
         /jjx71/HQey/qj6Z6NqYhe6pcGkUE9DzwiQ0XtSTdX2kuxD6PgXpd8/5oP0aIRkhndBM
         AUO5cQgGSbV1ppySkmPxaiCVT2u5IBF22M0ZajFSC6PHzSjuRb134JK1idO33rh2Q+pE
         XO0hGaZSLHyKZs7pbIAFTbMZJSloo6n1Vt0Ecyu+nIBn08ivAAWJWcBC/h4SHZNzcHys
         AAWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXXNo8OSHoiuWZyz9iQ6E7DTSLj2ODi2kNee3nEDpgmRvmF4VuQutf+xbDgojmOyW1yAQmQCz9jjh1t@vger.kernel.org
X-Gm-Message-State: AOJu0YzmcW9sSac0snkqatpjNI3AUQ1+7EBVRTC3hDxwNM8Ls+U5RGJa
	2w7xpOiuBa+0lOR2f08vEqatRhEBxPvz1SqwoTateTWHQfpoZ2dZJm97nM777wIBlt1QzEdfgvK
	9
X-Gm-Gg: ASbGncsDOe8zxU/5sw7PH3OjMfPw+PEYfi3wRuwucawGVoEwA5aQ26VuMG7tTj5m0BQ
	a7VgnmV+MXVRlxAY2BUvSmCZI7LKw3gP3apz33CJ0m3E/ZsUdptEmEnR9vkCR8zPBar2jOvdUQe
	XAaeHq6ngOKr9tBtgHvktkCjetCxPFigLRVPj91g3J7ZLiS3XbQ4TaJdctxAVyCAFEhKlLK9fAC
	4hcYVNNfXxwHZ7NA6y8uM257MVhEEu30J8oWtpozzoAnegWo/UAEDx6UGpJQ9Sli7aWqFvgp0Id
	j1spYk1WmoXw2iqowlpVsceZKToSY0ZoexSH
X-Google-Smtp-Source: AGHT+IGORYjhudTQdAvMdm8g3LCUxmZy1h6j52DQHamk5YqQ8TrNPXiGHtV+PtxV/2H4doZcZuIeCQ==
X-Received: by 2002:a05:6512:2392:b0:540:20eb:80c5 with SMTP id 2adb3069b0e04-540905a6f84mr5483487e87.37.1734433626614;
        Tue, 17 Dec 2024 03:07:06 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54120c13d69sm1118592e87.217.2024.12.17.03.07.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 03:07:05 -0800 (PST)
Date: Tue, 17 Dec 2024 13:07:02 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org
Subject: Re: [PATCH v20 1/9] soc: cadence: Create helper functions for
 Cadence MHDP
Message-ID: <rew4x4qxemig7rq4kossrn7cybihrgsizh43wnllgv2daf75gm@ziqsakm7gm56>
References: <cover.1734340233.git.Sandor.yu@nxp.com>
 <7fd5d54e2594aadd66598888ddf512f3d6d30e5d.1734340233.git.Sandor.yu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7fd5d54e2594aadd66598888ddf512f3d6d30e5d.1734340233.git.Sandor.yu@nxp.com>

On Tue, Dec 17, 2024 at 02:51:43PM +0800, Sandor Yu wrote:
> Cadence MHDP IP includes a firmware. Driver and firmware communicate
> through a mailbox. The basic mailbox access functions in this patch
> are derived from the DRM bridge MHDP8546 driver.
> New mailbox access functions have been created based on different mailbox
> return values and security types, making them reusable across different
> MHDP driver versions and SOCs.
> 
> These helper fucntions will be reused in both the DRM bridge driver MDHP8501
> and the i.MX8MQ HDPTX PHY driver.
> 
> Six mailbox access helper functions are introduced.
> Three for non-secure mailbox access:
>  - cdns_mhdp_mailbox_send()
>  - cdns_mhdp_mailbox_send_recv()
>  - cdns_mhdp_mailbox_send_recv_multi()
> The other three for secure mailbox access:
>  - cdns_mhdp_secure_mailbox_send()
>  - cdns_mhdp_secure_mailbox_send_recv()
>  - cdns_mhdp_secure_mailbox_send_recv_multi()
> 
> All MHDP commands that need to be passed through the mailbox
> should be rewritten using these new helper functions.
> 
> The register read/write and DP DPCD read/write command functions
> are also included in this new helper driver.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
> v19->v20:
> - new patch in v20.
>   The patch split from Patch #1 in v19 and move to a new folder drivers/soc/cadence

It makes it harder to review, but granted that we have already past
that, I think it's fine.

> 
> diff --git a/drivers/soc/cadence/Kconfig b/drivers/soc/cadence/Kconfig
> new file mode 100644
> index 0000000000000..b668790660fa5
> --- /dev/null
> +++ b/drivers/soc/cadence/Kconfig
> @@ -0,0 +1,9 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +config CDNS_MHDP_HELPER
> +	tristate "Cadence MHDP Helper driver"

This symbol isn't supposed to be selected by the user. Please leave just
tristate without the menu entry text (the help text is fine, please keep
it).

LGTM otherwise.

> +	help
> +	  Enable Cadence MHDP helpers for mailbox, HDMI and DP.
> +	  This driver provides a foundational layer of mailbox communication for
> +	  various Cadence MHDP IP implementations, such as HDMI and DisplayPort.
> +

-- 
With best wishes
Dmitry

