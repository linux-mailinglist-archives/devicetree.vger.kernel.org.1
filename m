Return-Path: <devicetree+bounces-242811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF0EC8F7DD
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 17:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 39ABF4E1530
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 16:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BF953321BC;
	Thu, 27 Nov 2025 16:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KnZ9QDL6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE912D47E4
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 16:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764260596; cv=none; b=FHdFf7mhN8N6FZp7R1UpOANvX+nchFcQKuw1BVe9+NTrTp+m/aNFOi8gpgOJ0H68ELj2A6qMXHIY4UbHY1ie2gYxY6+IPN6fur1tFjvXlkj2ykX2I+jJKee/XcAsGR/ryd8bhViL97tUkaXAmnYAveLTnneBcnGlWr5/09b/rvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764260596; c=relaxed/simple;
	bh=5w4AUQuz0dGdw5CdD1rC201z9FXIhHuXRPxTOAxvqIo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IGGah1+VSibOw53tEegQvh1rvSLpraGvUPghlAsHH2XEDzCs8tmU2zVPzq5xXT+sIS+miyJB7ZIA1V9BB/pdxe7iKRLvRv14aEnirEdzQ08LitEunYntf1hx5KqB16Pi3TwYp7SaYH1Gsa0lQII9gVPESSk0mEjOOPbBvBP9trc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KnZ9QDL6; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-29845b06dd2so13648205ad.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 08:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764260594; x=1764865394; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=bYD9XqhUHtt4KPRx0lwsto4qlMl73VNVsS41vyaBbjs=;
        b=KnZ9QDL6NAAdDriT+kf3AzH0cczxMvyDbPEh80KrBoNO+sh1QfyUXcuKFaiAu3O7oB
         WnhSKn9NdiIZ/89Jj5DyRupokQ4tkCCgB0kkx6+cdPfCtRh1XrpVyVqxgwYcRmVFFLTu
         28BlcVetLYnBogIsJ84kRvZup6brvuCu5yLM+mo8dWnG40sBLD2NzOkgZfxj1St2WKfA
         uh8vmaVpXXu0HiqCaQQHf0l1pOTRj17fqtQP2K1l1gv7un6k8uWv1/6PIVBYVEl/jJKH
         qMO8uyJLd76P1v5Jj9Y5WRWfoalHIvDudpA+FHTLPhPvZp/8na0xl4ZqvwR489AtDwoa
         HI9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764260594; x=1764865394;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bYD9XqhUHtt4KPRx0lwsto4qlMl73VNVsS41vyaBbjs=;
        b=JBbarhgrL8GZx/PmResyLN/9ecAjCacf6PnMmC1HCItKIm/KXVks6EV9sTpWsZtEo8
         o76hCXSF4ZCspV/PNyo78NNN9PbEgZypJmO1UTf9EJccLepGVe7+h6qZIW+4GMbkUURF
         2Wf4rKtwajaPWjhFmgO03N9sXNGz24J9slTEHTYAhvb6zDMa6U5WnyUwPY5/prqshbvg
         947S1S5Gjo5bFVTPIuk/ESuqyZSRkNPgGE3qu8cLxyh2GfnPv7ttrDt4GR7yUiY5djK1
         U9e12HKl7eQpR8mOqr4Q9U6hYxeIXgSnlPX3Dx/5vowoUQxkxm8o/F1j17vrxknmPPHH
         XSBQ==
X-Forwarded-Encrypted: i=1; AJvYcCX2E+ogd3ZocZ8u1K50NpwBC6GKV0ex2I/UnP3R+K+2rvWQ40l78MuyHsVUTaPDe/wyR6z8Yq/KJzAF@vger.kernel.org
X-Gm-Message-State: AOJu0YwowhnEUYjCOSIM2EBa1BVonWL8cZdqN7Tm1SdX0UTscyzYGqga
	PNiLnioKupjxDyfCDL1uW7TT53bQz44uYDP8hqdQncnEHtsPUflJuY6o5jQ5YQSpLZ1tceMmzK+
	UxYZ+aq4=
X-Gm-Gg: ASbGncuSsJYViZjQYtkw14uoNPjPY/PtJi1YvWQnA3Rf176OHynpYoLlDKq90iTtoRp
	9UzDz2dWRg8cz/uykJeisKPfJ69m943OwGhIZFdp2zvsxvlj03pFAPiz1x+JMrv3NLE27Y5vrLp
	pW1NfmAI0S8QP9QZicQlHtnl1yeFleBrLhstbZ3JGWTmvf3wsbzyoAAHwli65JKVXgaAJqbLbs3
	rUAcz44SYljBDFSTWdOObkuMsycUooJWPd831UZrZIoeEadwhK1NxzW42bdlitQxy74XvC6DA7I
	JMiLXTB3AHWGu7HVIw4Z4Gpmd5foMIibbXhcPfcF9xAMuvpQU0yDBUi2xo9PXghBRJpxTbXHALg
	6bnx4vV921ENSwcnMKMJlZghBImao+9KQSlx/lyhcj+h1oDX/u9wC0JxgReVgJlV93QXYNG7ywH
	BtQXfKnGvv4UFD/g==
X-Google-Smtp-Source: AGHT+IHqx1uI/5nrF6nAELgHS8dwwRi8UkkNhUGcSd+x/B6tc1auqIiR26mDQUo8dP8rVSg7iApWFA==
X-Received: by 2002:a17:902:ef08:b0:248:ff5a:b768 with SMTP id d9443c01a7336-29b6c3c7340mr247945805ad.10.1764260593683;
        Thu, 27 Nov 2025 08:23:13 -0800 (PST)
Received: from p14s ([2604:3d09:148c:c800:9ef4:efaa:23ae:f181])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce2e676esm22111985ad.0.2025.11.27.08.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 08:23:13 -0800 (PST)
Date: Thu, 27 Nov 2025 09:23:10 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Shenwei Wang <shenwei.wang@nxp.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Corbet <corbet@lwn.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
	"linux-remoteproc@vger.kernel.org" <linux-remoteproc@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	dl-linux-imx <linux-imx@nxp.com>
Subject: Re: [PATCH v5 2/5] remoteproc: imx_rproc: Populate devices under
 "rpmsg" subnode
Message-ID: <aSh67mvFB_00PywW@p14s>
References: <20251104203315.85706-1-shenwei.wang@nxp.com>
 <20251104203315.85706-3-shenwei.wang@nxp.com>
 <aSdMufLCeqvVyKsp@p14s>
 <PAXPR04MB91857863B163B3F38A26647389DEA@PAXPR04MB9185.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB91857863B163B3F38A26647389DEA@PAXPR04MB9185.eurprd04.prod.outlook.com>

On Wed, Nov 26, 2025 at 09:46:38PM +0000, Shenwei Wang wrote:
> 
> 
> > -----Original Message-----
> > From: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Sent: Wednesday, November 26, 2025 12:54 PM
> > To: Shenwei Wang <shenwei.wang@nxp.com>
> > Cc: Bjorn Andersson <andersson@kernel.org>; Rob Herring <robh@kernel.org>;
> > Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
> > <conor+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Sascha Hauer
> > <s.hauer@pengutronix.de>; Jonathan Corbet <corbet@lwn.net>; Linus Walleij
> > <linus.walleij@linaro.org>; Bartosz Golaszewski <brgl@bgdev.pl>; Pengutronix
> > Kernel Team <kernel@pengutronix.de>; Fabio Estevam <festevam@gmail.com>;
> > Peng Fan <peng.fan@nxp.com>; linux-remoteproc@vger.kernel.org;
> > devicetree@vger.kernel.org; imx@lists.linux.dev; linux-arm-
> > kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
> > doc@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> > Subject: [EXT] Re: [PATCH v5 2/5] remoteproc: imx_rproc: Populate devices
> > under "rpmsg" subnode
> > > +
> > > +     drvdata = dev_get_drvdata(&rpdev->dev);
> > > +     if (drvdata && drvdata->rx_callback)
> > > +             return drvdata->rx_callback(rpdev, data, len, priv,
> > > + src);
> > > +
> > > +     return 0;
> > > +}
> > > +
> > > +static void imx_rpmsg_endpoint_remove(struct rpmsg_device *rpdev) {
> > > +     of_platform_depopulate(&rpdev->dev);
> > > +}
> > > +
> > > +static int imx_rpmsg_endpoint_probe(struct rpmsg_device *rpdev) {
> > 
> > Where does the rpmsg_device come from?  Usually there is a call to
> > rpmsg_register_device() and I don't see it anywhere in this patchset.  I also don't
> > see a link to the remote processor.  I can't continue with this set for as long as I
> > don't have this information.
> > 
> 
> It is in the function below named imx_of_rpmsg_register_rpdriver.
> 

The function below calls register_rpmsg_driver(), not rpmsg_register_device().
I still don't know where @rpdev comes from.

> Thanks,
> Shenwei
> 
> > > +
> > > +static int imx_of_rpmsg_register_rpdriver(struct device_node *channel,
> > > +                                       struct device *dev, int idx) {
> > > +     struct imx_rpmsg_driver_data *driver_data;
> > > +     struct imx_rpmsg_driver *rp_driver;
> > > +     struct rpmsg_device_id *rpdev_id;
> > > +
> > > +     rpdev_id = devm_kzalloc(dev, sizeof(*rpdev_id) * 2, GFP_KERNEL);
> > > +     if (!rpdev_id)
> > > +             return -ENOMEM;
> > > +
> > > +     strscpy(rpdev_id[0].name, channel_device_map[idx][0],
> > > + RPMSG_NAME_SIZE);
> > > +
> > > +     rp_driver = devm_kzalloc(dev, sizeof(*rp_driver), GFP_KERNEL);
> > > +     if (!rp_driver)
> > > +             return -ENOMEM;
> > > +
> > > +     driver_data = devm_kzalloc(dev, sizeof(*driver_data), GFP_KERNEL);
> > > +     if (!driver_data)
> > > +             return -ENOMEM;
> > > +
> > > +     driver_data->rproc_name = dev->of_node->name;
> > > +     driver_data->channel_node = channel;
> > > +     driver_data->map_idx = idx;
> > > +
> > > +     rp_driver->rpdrv.drv.name = channel_device_map[idx][0];
> > > +     rp_driver->rpdrv.id_table = rpdev_id;
> > > +     rp_driver->rpdrv.probe = imx_rpmsg_endpoint_probe;
> > > +     rp_driver->rpdrv.remove = imx_rpmsg_endpoint_remove;
> > > +     rp_driver->rpdrv.callback = imx_rpmsg_endpoint_cb;
> > > +     rp_driver->driver_data = driver_data;
> > > +
> > > +     register_rpmsg_driver(&rp_driver->rpdrv);
> > > +
> > > +     return 0;
> > > +}

