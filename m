Return-Path: <devicetree+bounces-83515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 874ED928B7A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 17:18:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3C496281F30
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 15:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7F8116C861;
	Fri,  5 Jul 2024 15:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W3XEmMPl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98FFC149DE4
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 15:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720192618; cv=none; b=PqeZnK35/R3F4OBMVc6r1jzkIo/XubfZT9nJ/xbhJEtlgu4cdF0sIf1oJAUa++B+KY2E0OXWcYjBs5VYPhYQE3K/fB+rv834Ni7F6q/dhiatF7Oj+nMe1g8rRnoZtSSrCV15uXnWUDDVCR2IgwlA2nspizYsDIHQbl8Td6WZwnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720192618; c=relaxed/simple;
	bh=1SJmi6roK53nVSxDpk01R+5CCMtW24rzBmgbVvZa2Uo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SjeIxVN/DgD88fQbQ2O2V7TLxDgWZCS3iPNmOU727VuUNuaYua93KGRD+zqhyXvCGqOE9mhaAOSHvJ56UNKiyjME1R26EYorqwa9YWxUS9Mtu8Ain1fGGte8Aoop5UUo7gCsAsuwfOon6nry5LY8RxXXEBre1iHkckyjTP2s/JM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=W3XEmMPl; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52e9f788e7bso1868966e87.0
        for <devicetree@vger.kernel.org>; Fri, 05 Jul 2024 08:16:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720192614; x=1720797414; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jAi8Yh8H6kvgELJJaleTT1aA4PEdcZWxJ8yjwouMUBU=;
        b=W3XEmMPlaruFF4HyT9k2xhRRwhbpFg4N6Qmi4Z7vyUphmTXgvE1GJ1rrnHdqX1nZSW
         cxAYuxauplJPOV6l0XNM8Gph55reSYZOSVZhxQscmVkxNUK1sZwH9+w/7d7UxKvGIqTX
         9C16hJpgv2Fa4Hp7vAbA6ZQmZlQySk3haIkl66qeDCbrBq0eXVU5v1AJJglkc2oVPA8u
         B7Wm9DkOC03RTnKqf8JvhH6A3EUid+bIvtjrOZjp5XTx1u7Ox1lHOlFT1B/Nwp9sskOk
         em699gf9hAuF6SO8fuac4wlVD3Owi4Bw3yuWTvyl4fCaGuZQs9/lkt22qLdXp9184zuN
         Av/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720192614; x=1720797414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAi8Yh8H6kvgELJJaleTT1aA4PEdcZWxJ8yjwouMUBU=;
        b=pg7gBHero0JYPE/SCp/IlHlHoxi3jS0Elt4dbAf/HdvP87IyL0gnPW87XS2+8R39ES
         BxnCBCF7okX52RvjNDC9IImPv6Dm/W2LvCndyzYDWBNOr288r8FNNdeywXxCeaT38CY6
         g1Y/Yu3igKSzQMHqlNA03sNk548SPOLosDIGw5+VtYzE2TL63rUFkYabXgPm3PJ395Gq
         mZilzGTVmPJiY2FR9nZ8dNHRuK8U9T7qgXjIVWptOCdGIdwihRqBI8Xg8FsNaC6tJZKx
         5f6rm5LiHUQOqIMkbj3iWjC7U6o1iI43yWieeuUxV8KkaqRONMY2Q+7RAKsD6sChpYfQ
         ZMGA==
X-Forwarded-Encrypted: i=1; AJvYcCWPqaLUDnhGPAad/E8SEnEQIsHUQp69VimtPCh9a47vtUtHslYpLPY/HbB6xQEFSoBiwnyVI7++d0JBirYDNmHyDhO/vahGpduanQ==
X-Gm-Message-State: AOJu0YzujAThqcRX1w9WOYJROUbg/MXjJe16OLEXYMrihr+giaUmTJYE
	VeROE8FFxVWFLdcs4w3mChAbtj2DwC1lGoa2k3XGxksNwKWt0CECXJzhb7coOCk=
X-Google-Smtp-Source: AGHT+IFF0x3NMy9LMtTvla/+V+TLaDM4vdzLOeeF5CqOS6ZS3ehsuSFZ/VTsszSK87chi/FZYGvU/g==
X-Received: by 2002:a05:6512:3da3:b0:52c:db80:d694 with SMTP id 2adb3069b0e04-52ea0626e92mr4204523e87.20.1720192613739;
        Fri, 05 Jul 2024 08:16:53 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52e9baf8e26sm730057e87.128.2024.07.05.08.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jul 2024 08:16:53 -0700 (PDT)
Date: Fri, 5 Jul 2024 18:16:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, angelogioacchino.delregno@collabora.com, 
	andersson@kernel.org, konrad.dybcio@linaro.org, mturquette@baylibre.com, 
	ilia.lin@kernel.org, rafael@kernel.org, ulf.hansson@linaro.org, 
	quic_sibis@quicinc.com, quic_rjendra@quicinc.com, quic_rohiagar@quicinc.com, 
	abel.vesa@linaro.org, otto.pflueger@abscue.de, danila@jiaxyga.com, 
	quic_ipkumar@quicinc.com, luca@z3ntu.xyz, stephan.gerhold@kernkonzept.com, nks@flawful.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 01/10] soc: qcom: cpr3: Fix 'acc_desc' usage
Message-ID: <bsr6l33xllblwwoa3ftbldxvqwe6tcljt3ek2petoc4hc5xgsg@b36fw3wetj5f>
References: <20240703091651.2820236-1-quic_varada@quicinc.com>
 <20240703091651.2820236-2-quic_varada@quicinc.com>
 <u4hzxnecdyow6h4vhddcp53tuxrqhbqu6cv4cznytihsyshzy4@lqxhsn3qvjbz>
 <ZoYsguLOCnZjxOku@hu-varada-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZoYsguLOCnZjxOku@hu-varada-blr.qualcomm.com>

On Thu, Jul 04, 2024 at 10:30:50AM GMT, Varadarajan Narayanan wrote:
> On Wed, Jul 03, 2024 at 01:46:54PM +0300, Dmitry Baryshkov wrote:
> > On Wed, Jul 03, 2024 at 02:46:42PM GMT, Varadarajan Narayanan wrote:
> > > cpr3 code assumes that 'acc_desc' is available for SoCs
> > > implementing CPR version 4 or less. However, IPQ9574 SoC
> > > implements CPRv4 without ACC. This causes NULL pointer accesses
> > > resulting in crashes. Hence, check if 'acc_desc' is populated
> > > before using it.
> > >
> > > Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> > > ---
> > > v4: Undo the acc_desc validation in probe function as that could
> > >     affect other SoC.
> > > ---
> > >  drivers/pmdomain/qcom/cpr3.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/pmdomain/qcom/cpr3.c b/drivers/pmdomain/qcom/cpr3.c
> > > index c7790a71e74f..6ceb7605f84d 100644
> > > --- a/drivers/pmdomain/qcom/cpr3.c
> > > +++ b/drivers/pmdomain/qcom/cpr3.c
> > > @@ -2399,12 +2399,12 @@ static int cpr_pd_attach_dev(struct generic_pm_domain *domain,
> > >  		if (ret)
> > >  			goto exit;
> > >
> > > -		if (acc_desc->config)
> > > +		if (acc_desc && acc_desc->config)
> > >  			regmap_multi_reg_write(drv->tcsr, acc_desc->config,
> > >  					       acc_desc->num_regs_per_fuse);
> > >
> > >  		/* Enable ACC if required */
> > > -		if (acc_desc->enable_mask)
> > > +		if (acc_desc && acc_desc->enable_mask)
> > >  			regmap_update_bits(drv->tcsr, acc_desc->enable_reg,
> > >  					   acc_desc->enable_mask,
> > >  					   acc_desc->enable_mask);
> >
> > Should the same fix be applied to other places which access acc_desc?
> > For example cpr_pre_voltage() and cpr_post_voltage() which call
> > cpr_set_acc()?
> 
> With this patch alone, if acc_desc is NULL, cpr_probe() will fail
> at the start itself because of this check
> 
> 	if (!data->acc_desc && desc->cpr_type < CTRL_TYPE_CPRH)
> 		return -EINVAL;
> 
> After applying this patch series, cpr_probe will cross the above
> check to accomodate IPQ9574. However, the check below will ensure
> drv->tcsr is not initialized.
> 
> 	if (desc->cpr_type < CTRL_TYPE_CPRH &&
> 	    !of_device_is_compatible(dev->of_node, "qcom,ipq9574-cpr4"))
> 
> cpr_pre_voltage() and cpr_post_voltage() call cpr_set_acc() only
> if drv->tcsr is not NULL. Hence acc_desc need not be checked.
> 
> Will add the check to cpr_pre_voltage() and cpr_post_voltage() if
> you feel it will make it more robust regardless of the changes to
> cpr_probe in future. Please let me know.

Having !acc_desc check instead of the of_device_is_compatible would
solve the issue.

-- 
With best wishes
Dmitry

