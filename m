Return-Path: <devicetree+bounces-50642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ACF87C8CB
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 07:26:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 79EB71C2123C
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 06:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E0812E71;
	Fri, 15 Mar 2024 06:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hi4E6Ocl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346741401C
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 06:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710483851; cv=none; b=as70TX2kUOMfmlCyQedwCSzOhG6aWzhsevyoMDYrsfn9FWBQUPzZ3DFLmWDIp0rmC3fuh7kQrVuep4gFj19hFjYWCS+E1UZkuXRW5yPwhgC3lZNAn3roT9xy0UH+lRgmKxwIe3cE5zq1WMwiaBlmW86cR26nYg4pjJwGhmBoM2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710483851; c=relaxed/simple;
	bh=8hatKKv5/7R423aa6ntHditmiT/I4Zc0RS592ZzdzBo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rimqn03prUr+elpiuoWvFM5auApvSa1kYUPee4DXAKysCCkp3ZUa30GXiPVoW13kk5orHeXsM38jYwaMhftbnbFrQBUB98bsOr8BEcafIQMImmMJi5RlwZvsj9e1ULsfv3aO1i0LE5UywODAUA1Rt0KIBi8D1T7BpuGKOZM6HMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hi4E6Ocl; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-33e5978fc1bso863793f8f.3
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 23:24:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710483847; x=1711088647; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s9LPhepAIkivg02JjKy3gGkvg0KX9KjTZMR9ul/pzXw=;
        b=hi4E6OclXfSNhOQsILaTH56uAg3eD5I+wY6oZTBCxOBnao3ofmJkn4TGM70t91fqXZ
         IJl/pdCOtoJRVidZt3/9fi4gQ5MhYBRz8KkDWrd1MSAZ77MI/D2034HKDNIMRf8tkCPs
         2uQSurVlurkVAxHfwvs7iqEsmkGPibL0lTnKCFf+AeWd3lP4N2/Z9FUJoofN8oRJF0I2
         lJBbfRQfgRZCcip6AKN+lXxjMCrG4SdDFuofFJD+ge+tuC1ZVDaAeQ8ZFFHt3rF+qJb5
         /VfNbYAdmTN8GC63NhnSmF1ZYYn+BtAElEG19SpRxKfg8xH73jGN0IOdjblYI+6T44rp
         p/dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710483847; x=1711088647;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s9LPhepAIkivg02JjKy3gGkvg0KX9KjTZMR9ul/pzXw=;
        b=Yg51Eu3GrbAVwUa9hwuxsY2ROZx30EwgtUnTBU1fQIudXy+4rOH9cAMUKPkePl5ZFO
         vBWIPDkxB++k7RaSEwKebh+zCDbUjlJLfPG8znVrykKFA6ie468BrlwA4vS3TDyKhECz
         DNMxlxTkRmpO290r8OMDRND4Sx3Dma7kreQfBoFkhZHuUC7YuZNKJtcduTke19icbnAH
         NTlsO5oUovu3DfpFrKvnzJuwk9Nfh8bWmt98EJZBKqAEKxD0kaEyA4XLU9dHhbcCqi3S
         5vQEyr8VOou+Q+y5pfLPqp6bFdMkvewGFsNkZUDz85CGzCAgugSd+NNZFwNoeoZf4ArJ
         AV1A==
X-Forwarded-Encrypted: i=1; AJvYcCVPRxkTvk8H3D0rrKsJqi+iBx2vJjoip0epkTkhqi2uByI6+pamOjmcOY4iDIDo8DuV0/a7TJZSXd4sQ/BmTNG6K0+OUGGzAOaGsw==
X-Gm-Message-State: AOJu0YzN34vFzqXLK9Q96smBDir/9+ddW/1AFgBO54/OCroUKeeimpkk
	YZEC7hRpxER+YfV+DnQYdBeZfoeRlBF0tRj1k7VcoxkQUxPTr4+au8/euUtVmq8=
X-Google-Smtp-Source: AGHT+IGuc1jijyMO18jNQFeSjG/gNhcDM/wtNd54nQwkBqzISLhJ08o59pWhpo7tuOIhvoHzQzAu1g==
X-Received: by 2002:a05:6000:a90:b0:33e:4238:8615 with SMTP id dh16-20020a0560000a9000b0033e42388615mr2698769wrb.40.1710483847319;
        Thu, 14 Mar 2024 23:24:07 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id dd12-20020a0560001e8c00b0033eab3520a9sm2384912wrb.43.2024.03.14.23.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 23:24:06 -0700 (PDT)
Date: Fri, 15 Mar 2024 09:24:02 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Peng Fan <peng.fan@nxp.com>
Cc: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Oleksii Moisieiev <oleksii_moisieiev@epam.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	dl-linux-imx <linux-imx@nxp.com>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>
Subject: Re: [PATCH v5 4/4] pinctrl: Implementation of the generic
 scmi-pinctrl driver
Message-ID: <64523bd3-d208-4989-b8d9-57952c77954c@moroto.mountain>
References: <20240314-pinctrl-scmi-v5-0-b19576e557f2@nxp.com>
 <20240314-pinctrl-scmi-v5-4-b19576e557f2@nxp.com>
 <55ec2392-c196-4669-a339-12ef336707fa@moroto.mountain>
 <DU0PR04MB9417F0C53A0B112E7A8A334288282@DU0PR04MB9417.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DU0PR04MB9417F0C53A0B112E7A8A334288282@DU0PR04MB9417.eurprd04.prod.outlook.com>

On Fri, Mar 15, 2024 at 12:44:34AM +0000, Peng Fan wrote:
> > Subject: Re: [PATCH v5 4/4] pinctrl: Implementation of the generic scmi-
> > pinctrl driver
> > 
> > On Thu, Mar 14, 2024 at 09:35:21PM +0800, Peng Fan (OSS) wrote:
> > > +static int pinctrl_scmi_get_function_groups(struct pinctrl_dev *pctldev,
> > > +					    unsigned int selector,
> > > +					    const char * const **groups,
> > > +					    unsigned int * const num_groups)
> > {
> > > +	const unsigned int *group_ids;
> > > +	int ret, i;
> > > +	struct scmi_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
> > > +
> > > +	if (!groups || !num_groups)
> > > +		return -EINVAL;
> > > +
> > > +	if (selector < pmx->nr_functions &&
> > > +	    pmx->functions[selector].num_groups) {
> > 
> > If pmx->functions[selector].num_groups is set then we assume that
> > functions[selector].groups has been allocated.
> > 
> > > +		*groups = (const char * const *)pmx-
> > >functions[selector].groups;
> > > +		*num_groups = pmx->functions[selector].num_groups;
> > > +		return 0;
> > > +	}
> > > +
> > > +	ret = pinctrl_ops->function_groups_get(pmx->ph, selector,
> > > +					       &pmx-
> > >functions[selector].num_groups,
> > > +					       &group_ids);
> > 
> > However, pmx->functions[selector].num_groups is set here and not cleared
> > on the error paths.  Or instead of clearing the .num_groups it would be nice
> > to pass a local variable and only do the
> > pmx->functions[selector].num_groups = local assignment right before the
> > success return.
> 
> So you concern is I should clear the pmx->functions[selector].num_groups in
> err path, right?
> 

Yes.  If functions[selector].groups is invalid (NULL or freed) then the
pmx->functions[selector].num_groups variable must also be zero.

regards,
dan carpenter


