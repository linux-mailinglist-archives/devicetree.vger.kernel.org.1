Return-Path: <devicetree+bounces-123824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2270A9D627C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 17:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 812D9B21479
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:44:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1AC91DF720;
	Fri, 22 Nov 2024 16:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S2EojH6Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F261DE8B0
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 16:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732293876; cv=none; b=cgwXsnIQG46sGKpTN1l8Z99Rv7SXcaslXp5q+1grrpfno6AR5erTluM8a/5dpmcjfTpTDwSQeTuZanpYoTRXU+AN88yTh9xHksF61w1kLrruyZedI1SrXRnsRJCiEo8oWCR+sTC+hOqWsqm8KEf73ksarO6qqU+iZyo2mLnY2lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732293876; c=relaxed/simple;
	bh=gRXAN2GhFByioHeJclpQRULpgQOeLPlr8+w40Lu99vw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l2ZByWyGrJidgE2DIA++DW26Ml3jzhN6m/Cyy19iuErEX5pZuI7mXcTo2Z9mfW6X5A0goY3k+2OByzbELyARddNujenHAmHshDhzcUce/9PVp157xo59zAUeGcWw8P+TLjB9chiqTzlVheb6PeCw82VxXGgXz2MSzibWgIYmDgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S2EojH6Y; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-724d8422dbaso1585697b3a.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732293873; x=1732898673; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IwR2oPIQAt5cBP8ivKC91SEZVyVQIhFtIJGjJD68WpY=;
        b=S2EojH6YrFGb81BD7+xxtr/EXLr5m7ZNqasBtgRiiIGvnTij9Z/+4yQHncFw+w2T0a
         rtQY9c45y+3l3yLHWeBCZMkpruLUWiQLmhmgfjfL67hHMPQFzS5qQqgyZMMfASYAJcdM
         KqJwqLeQTMY1i4yHj3nMa22pwUvAOfnBpJzf0ZTM1Tlfmknn59SfnTD3lbhjSRynZFXB
         FFI0XdvIKSHd3SGSKgc9as7doJH9+GNqStb6LgYExyhlBoH/mXirzeqyrGtfaLowyi0v
         ukt9Mch1pjF0UqOctfXJn8SLvhI/RUC7yBqGEvJNjjM64GGdNbfW3qRdPz7dVuyNnxga
         jSSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732293873; x=1732898673;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IwR2oPIQAt5cBP8ivKC91SEZVyVQIhFtIJGjJD68WpY=;
        b=SZSQU/dDXIikNY4BJqgmR9vAI95Zfk+ae1L6xjvD9+T3v3QxLNBeFdtBI3/N6d7ct3
         RucrLD7659GwJWHhEhLar56fAHRLg/8h7mjUDWCVHWZWyo0iRSIZWWYOLt+uUs+podPP
         5gRdylUfo92/gdmHl34n5BGxAN0M1s7w0H4wnEALQNGg/SbuYc+86Vcyem++TXdEkJJX
         apVIT4AdQNid+XUKklhqpDhcltlGkh41dqan3balHYuhrvA1atNnKGjUGHBjHjaqoGly
         HmJcHGFdtqF8PNCY7TVDdm29FCoRRakk5a3pSNFHKEuWiMXoS1+YYbZcEZdVYFAtsYFJ
         mWVg==
X-Forwarded-Encrypted: i=1; AJvYcCVKjl8ji7Q3GhllgTbV+Xf9SV2OKXE7dRLvaByB5LAl6vPKzJJ/qYqL93/0yR5HacO+ESZZSAhP4i8T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx17hLTLSqTF0kqQWqczzqzgdciuuhyNm8HE8fdYtADnwcPuZbE
	gMxYxIvRlBz53DguquMpStgyqGvAMj+cR/Hp8erB4OXGTyEhUF0msoLTTt4n1w==
X-Gm-Gg: ASbGncso+R8bhCnU8r8eEjPr5rBx7hgJ8LJ5Nx064fLTSEpANGFSB54Ibc+nc5Wf4rb
	TV9RiKGYsYi4es5f+2cmLcGZxTUWAQhwi7JlUJggIWoidbscWmXgl0QFKxvrsBkFz1aaMXA+8fY
	gjEuqgCAL6GEyiWRWusU0JrK3GOBQ0yIxyj4jN9f2TW0mAcJnQi2RaIqNzYYwkKkTjOpUJXQP1a
	mkeaeUghf7vUcbPbE7RwNgKEpcVTAUcyW7UtCxRjjsWEkA0Yr0sSiGVZxgq
X-Google-Smtp-Source: AGHT+IHgULISyXOq5TQcOtW3Twh+i1nObBb6S6wCbmH2FUwOM/cGRvZbPtQMUa46S4dJNMfTxBufDg==
X-Received: by 2002:a05:6a00:9a3:b0:71e:5de:ad6d with SMTP id d2e1a72fcca58-724df6b81c4mr4858528b3a.24.1732293873177;
        Fri, 22 Nov 2024 08:44:33 -0800 (PST)
Received: from thinkpad ([49.207.202.49])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7fbcc1e3fdbsm1607239a12.30.2024.11.22.08.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2024 08:44:32 -0800 (PST)
Date: Fri, 22 Nov 2024 22:14:26 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Hongxing Zhu <hongxing.zhu@nxp.com>
Cc: "l.stach@pengutronix.de" <l.stach@pengutronix.de>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	Frank Li <frank.li@nxp.com>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 02/10] PCI: imx6: Add ref clock for i.MX95 PCIe
Message-ID: <20241122164426.55zgf36oewcjxjvz@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-3-hongxing.zhu@nxp.com>
 <20241115063816.xpjqgm2j34enhe7s@thinkpad>
 <AS8PR04MB86767205982E13C2771614AB8C272@AS8PR04MB8676.eurprd04.prod.outlook.com>
 <AS8PR04MB8676DFD33B926A2EC57577CC8C202@AS8PR04MB8676.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <AS8PR04MB8676DFD33B926A2EC57577CC8C202@AS8PR04MB8676.eurprd04.prod.outlook.com>

On Tue, Nov 19, 2024 at 05:38:30AM +0000, Hongxing Zhu wrote:
> > -----Original Message-----
> > From: Hongxing Zhu
> > Sent: 2024年11月18日 10:59
> > To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > Cc: l.stach@pengutronix.de; bhelgaas@google.com; lpieralisi@kernel.org;
> > kw@linux.com; robh@kernel.org; krzk+dt@kernel.org; conor+dt@kernel.org;
> > shawnguo@kernel.org; Frank Li <frank.li@nxp.com>; s.hauer@pengutronix.de;
> > festevam@gmail.com; imx@lists.linux.dev; kernel@pengutronix.de;
> > linux-pci@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > devicetree@vger.kernel.org; linux-kernel@vger.kernel.org
> > Subject: RE: [PATCH v6 02/10] PCI: imx6: Add ref clock for i.MX95 PCIe
> > 
> > > -----Original Message-----
> > > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > > Sent: 2024年11月15日 14:38
> > > To: Hongxing Zhu <hongxing.zhu@nxp.com>
> > > Cc: l.stach@pengutronix.de; bhelgaas@google.com;
> > > lpieralisi@kernel.org; kw@linux.com; robh@kernel.org;
> > > krzk+dt@kernel.org; conor+dt@kernel.org; shawnguo@kernel.org; Frank Li
> > > <frank.li@nxp.com>; s.hauer@pengutronix.de; festevam@gmail.com;
> > > imx@lists.linux.dev; kernel@pengutronix.de; linux-pci@vger.kernel.org;
> > > linux-arm-kernel@lists.infradead.org; devicetree@vger.kernel.org;
> > > linux-kernel@vger.kernel.org
> > > Subject: Re: [PATCH v6 02/10] PCI: imx6: Add ref clock for i.MX95 PCIe
> > >
> > > On Fri, Nov 01, 2024 at 03:06:02PM +0800, Richard Zhu wrote:
> > > > Add "ref" clock to enable reference clock. To avoid the DT
> > > > compatibility, i.MX95 REF clock might be optional.
> > >
> > > Your wording is not correct. Perhaps you wanted to say, "To avoid
> > > breaking DT backwards compatibility"?
> > >
> > Yes, you're right. Thanks.
> > 
> > > > Replace the
> > > > devm_clk_bulk_get() by devm_clk_bulk_get_optional() to fetch
> > > > i.MX95 PCIe optional clocks in driver.
> > > >
> > > > If use external clock, ref clock should point to external reference.
> > > >
> > > > If use internal clock, CREF_EN in LAST_TO_REG controls reference
> > > > output, which implement in drivers/clk/imx/clk-imx95-blk-ctl.c.
> > > >
> > > > Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> > > > Reviewed-by: Frank Li <Frank.Li@nxp.com>
> > > > ---
> > > >  drivers/pci/controller/dwc/pci-imx6.c | 19 +++++++++++++------
> > > >  1 file changed, 13 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/pci/controller/dwc/pci-imx6.c
> > > > b/drivers/pci/controller/dwc/pci-imx6.c
> > > > index 808d1f105417..bc8567677a67 100644
> > > > --- a/drivers/pci/controller/dwc/pci-imx6.c
> > > > +++ b/drivers/pci/controller/dwc/pci-imx6.c
> > > > @@ -82,6 +82,7 @@ enum imx_pcie_variants {
> > > >  #define IMX_PCIE_FLAG_HAS_SERDES		BIT(6)
> > > >  #define IMX_PCIE_FLAG_SUPPORT_64BIT		BIT(7)
> > > >  #define IMX_PCIE_FLAG_CPU_ADDR_FIXUP		BIT(8)
> > > > +#define IMX_PCIE_FLAG_CUSTOM_PME_TURNOFF	BIT(9)
> > > >
> > > >  #define imx_check_flag(pci, val)	(pci->drvdata->flags & val)
> > > >
> > > > @@ -98,6 +99,7 @@ struct imx_pcie_drvdata {
> > > >  	const char *gpr;
> > > >  	const char * const *clk_names;
> > > >  	const u32 clks_cnt;
> > > > +	const u32 clks_optional_cnt;
> > > >  	const u32 ltssm_off;
> > > >  	const u32 ltssm_mask;
> > > >  	const u32 mode_off[IMX_PCIE_MAX_INSTANCES]; @@ -1278,9
> > +1280,8
> > > @@
> > > > static int imx_pcie_probe(struct platform_device *pdev)
> > > >  	struct device_node *np;
> > > >  	struct resource *dbi_base;
> > > >  	struct device_node *node = dev->of_node;
> > > > -	int ret;
> > > > +	int ret, i, req_cnt;
> > > >  	u16 val;
> > > > -	int i;
> > > >
> > > >  	imx_pcie = devm_kzalloc(dev, sizeof(*imx_pcie), GFP_KERNEL);
> > > >  	if (!imx_pcie)
> > > > @@ -1330,7 +1331,10 @@ static int imx_pcie_probe(struct
> > > platform_device *pdev)
> > > >  		imx_pcie->clks[i].id = imx_pcie->drvdata->clk_names[i];
> > > >
> > > >  	/* Fetch clocks */
> > > > -	ret = devm_clk_bulk_get(dev, imx_pcie->drvdata->clks_cnt,
> > > imx_pcie->clks);
> > > > +	req_cnt = imx_pcie->drvdata->clks_cnt -
> > > imx_pcie->drvdata->clks_optional_cnt;
> > > > +	ret = devm_clk_bulk_get(dev, req_cnt, imx_pcie->clks);
> > > > +	ret |= devm_clk_bulk_get_optional(dev,
> > > imx_pcie->drvdata->clks_optional_cnt,
> > > > +					  imx_pcie->clks + req_cnt);
> > >
> > > Why do you need to use 'clk_bulk' API to get a single reference clock?
> > > Just use devm_clk_get_optional(dev, "ref")
> > It's easier to add more optional clks in future. I can change to use
> > devm_clk_get_optional(dev, "ref") here if you insistent.
> Since the clock fetch is not distinguished by platforms explicitly.
> devm_clk_get_optional(dev, "ref") can be used only when i.MX95 specification
>  is added.
> -       ret |= devm_clk_bulk_get_optional(dev, imx_pcie->drvdata->clks_optional_cnt,
> -                                         imx_pcie->clks + req_cnt);
>         if (ret)
>                 return ret;
> +       for (i = 0; i < imx_pcie->drvdata->clks_optional_cnt; i++) {
> +               imx_pcie->clks[req_cnt + i].clk = devm_clk_get_optional(dev,
> +                               imx_pcie->drvdata->clk_names[req_cnt + i]);
> +               if (IS_ERR(imx_pcie->clks[req_cnt + i].clk))
> +                       return PTR_ERR(imx_pcie->clks[req_cnt + i].clk);
> +       }
> 
> Or
> -       ret |= devm_clk_bulk_get_optional(dev, imx_pcie->drvdata->clks_optional_cnt,
> -                                         imx_pcie->clks + req_cnt);
>         if (ret)
>                 return ret;
> +       if (imx_pcie->drvdata->variant == IMX95) {

Why do you need this check? If there is no clock, devm_clk_get_optional() will
return NULL, so you can just do IS_ERR() without any checks.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

