Return-Path: <devicetree+bounces-117755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E990D9B798E
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 12:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 701AF1F215FA
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 11:19:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 927A119AD7D;
	Thu, 31 Oct 2024 11:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Uj8RLqMB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED37919A2BD
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 11:18:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730373531; cv=none; b=JrqBmG4GvMZXXCQPi7qSmm0JK3oH9zdSlBsHYrxkH5qDENE1kXlc3vEbyV8ygNenFO4AOtP1BC7LcYbFyLuNkz9obGtDPrATCt6vitln3b9Rkm0Jte0gopQOIYPRqqEfX4gbne909LbToe1n4kRc8PRMWVqwil8tY9B0vuyrmq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730373531; c=relaxed/simple;
	bh=P1m23rwMnx54MjRVtY546V3j5gxJtS/n0bt5NNfdIIQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dhR927mzW077bVGsNUl4CuKQrL3DDOIVUm1f0RtRoQPQjGZMfCJYiW9V7b7dLqeO6B29vaB4tvcaK0+1hpcwSVTp2qE1Roru5JtBBBAXQEW5zIrXb2yaUFhp/ebP3UtguaUSSDTG00TUTM1MV9RCn3YaGq4jO5jcw+72nqJCKLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Uj8RLqMB; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5ec6bdd9923so436763eaf.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 04:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730373527; x=1730978327; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6tOVqDGIVkJ6VSlfAnQKasdgXF9e/3uyEUG7DpZuXhY=;
        b=Uj8RLqMBBtP4jTmovogATZJXH7b5FznTvEAuLO3kU03Pep561isNfkVkGWsp1oOqCQ
         RC+4rMettWCIp0zUjeGEun4UqyEp1TYgBRIbfhHRkisHnbtxBWbMgu0vzdU7syJI1L6I
         8EsfXgE8tmjK+IGKUhdrOhC6i0q/MaCJcCnxcD287E4gpCrs7/jSq1Bc+AU6Pl/8qDqB
         ZrQr9Dg7JGsfN7UjhrFIbvPPOv4FKTE5IaW1iOmgh+4Gldc6mLA/R4DERltqIvhkMCD+
         BIxhEr7QHnVZz72COQxW5e0bBtMVMidcTMwShm6mJWaxkZQgYLo9ADzbug5EamsezYNB
         p5Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730373527; x=1730978327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tOVqDGIVkJ6VSlfAnQKasdgXF9e/3uyEUG7DpZuXhY=;
        b=pFZ4r7Bw+zj4PWC1lZoJHtEVK4IGt51y3wwKneZ35J3QtaVu5qif/+BYxBUMmARXkr
         aathog4K27VHK8cnhPRl4Cw+hU86BFh5zzr3w7g3W5zSyF3lO2XLGm8LV0f/PCeI9QJR
         Abwn2v3vLlDBcDQRBzbWra8vbV/rT2HUpaXW4WyY78cNKCC8DfWfm1E1u9bzmNaJiM5l
         EtXPrSK3mjRrq8rYi0umGXK0TWiUb5XPsWbQC9NB/2meHL4PE/juZzxOmgG16DU/8zYA
         eBfBOgF86JxKnp0SSNJp3o/5lI0eqCfMMiRiZ/ICQSS003Qlemv/hprDXCFvn8SzLN6g
         J6Ow==
X-Forwarded-Encrypted: i=1; AJvYcCUA+xxFxlCdUyGCYehzyISAZYSIhXE0QGgcGO7PhYgMr8F4eePRBOOvVTOg2uaG7yVgDF5FYw2nOWCt@vger.kernel.org
X-Gm-Message-State: AOJu0YwPGwZbsypbeeylvs1seh3cDVieB/C11qnu1EvzktRQS8aavIbb
	RkxdV9sJMZosnSiKrg9LxHmvSewUV2M9gdXYXjcuZBN25gefGbdGCxltf6IFiw5S72m72Dee1+x
	ZlpQnDXQ8XqfD1VRJnn1eZESmjus6y0XN9kqEhQ==
X-Google-Smtp-Source: AGHT+IFQY0jyd6E8l4ZVxaxh5x5SVk1SxFaa6tSUf7REkjjSQjNyJIZv7P8E7RYon6B3a5PLGcKeZNWF/nmdRTVbnGc=
X-Received: by 2002:a4a:a701:0:b0:5ec:5922:ddb with SMTP id
 006d021491bc7-5ec592219f4mr4806888eaf.2.1730373527001; Thu, 31 Oct 2024
 04:18:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025131442.112862-1-peter.griffin@linaro.org>
 <20241025131442.112862-5-peter.griffin@linaro.org> <f5ac07e3-3fde-4ac8-8cfc-fb7918ffb2a7@linaro.org>
In-Reply-To: <f5ac07e3-3fde-4ac8-8cfc-fb7918ffb2a7@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 31 Oct 2024 11:18:36 +0000
Message-ID: <CADrjBPpYQQNdYya_95KXRYBrfSD91E-rfYcw6Q-ZNOgh5-4VJw@mail.gmail.com>
Subject: Re: [PATCH v2 04/11] scsi: ufs: exynos: Add EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR
 check
To: Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: alim.akhtar@samsung.com, James.Bottomley@hansenpartnership.com, 
	martin.petersen@oracle.com, avri.altman@wdc.com, bvanassche@acm.org, 
	krzk@kernel.org, andre.draszik@linaro.org, kernel-team@android.com, 
	willmcvicker@google.com, linux-scsi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	ebiggers@kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tudor,

On Wed, 30 Oct 2024 at 08:56, Tudor Ambarus <tudor.ambarus@linaro.org> wrote:
>
>
>
> On 10/25/24 2:14 PM, Peter Griffin wrote:
> > The values calculated in exynos_ufs_specify_phy_time_attr() are only used
> > in exynos_ufs_config_phy_time_attr() and exynos_ufs_config_phy_cap_attr()
>
> all values set in exynos_ufs_specify_phy_time_attr() are used *only* in
> exynos_ufs_config_phy_time_attr(). Or did I miss something?

Yes you're right, I'll update the commit message.

>
> > if EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR flag is not set.
>
> yep, wonderful.
>
> >
> > Add a check for this flag to exynos_ufs_specify_phy_time_attr() and
> > return for platforms that don't set it.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  drivers/ufs/host/ufs-exynos.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
> > index d685d3e93ea1..a1a2fdcb8a40 100644
> > --- a/drivers/ufs/host/ufs-exynos.c
> > +++ b/drivers/ufs/host/ufs-exynos.c
> > @@ -546,6 +546,9 @@ static void exynos_ufs_specify_phy_time_attr(struct exynos_ufs *ufs)
> >       struct exynos_ufs_uic_attr *attr = ufs->drv_data->uic_attr;
> >       struct ufs_phy_time_cfg *t_cfg = &ufs->t_cfg;
> >
> > +     if (ufs->opts & EXYNOS_UFS_OPT_SKIP_CONFIG_PHY_ATTR)
> > +             return;
> > +
> >       t_cfg->tx_linereset_p =
> >               exynos_ufs_calc_time_cntr(ufs, attr->tx_dif_p_nsec);
> >       t_cfg->tx_linereset_n =
>
> tx_linereset_n, rx_hibern8_wait is set but not used anywhere. Can we
> remove it? Not related to this patch though.

Yes they can be removed if they are unused.

Peter

