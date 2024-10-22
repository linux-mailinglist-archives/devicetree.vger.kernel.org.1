Return-Path: <devicetree+bounces-114317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 260209AB451
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 18:48:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 443401C22168
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 16:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E901A3AB8;
	Tue, 22 Oct 2024 16:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="krQjBik8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2B042AB3
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 16:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729615692; cv=none; b=d2gCgTIQTB1VfJh9GUusdYvvar8yRcs7KhSap0JEARApzsRQOhtwzu94bmWrtkxspm3G43OYDh9+82PUPWKq38wN8V9o+CEVNv1k6P5sDbGZE4R38UGifiIAZGQE1A9BoNsuPyLkn31iOPtZeiq0mEwxJvhWxUg85bmUTZtsNYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729615692; c=relaxed/simple;
	bh=eB2r4a4nMF7jLZ5dNv6AlWAk7IIKZ4EHpTdNsNxxefk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WFib7rax5acRo9A+sTPNkYBsLXReCs+WOwsCbvQl1niAtp26z7pvtvrlB0Fqvn7+AjNf4EZhljQyv+XpNr6D5a5ehWJvaS6jUVctaXgWwRSiaO4bPV14vlgyEi1wk0lWE+xwyhUVjVjwXDc2NwXrXnEwyu/GbOC7eErmoShZu3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=krQjBik8; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20c767a9c50so54748785ad.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729615690; x=1730220490; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3JEQ9MM+0bQRBQpufIz+g9Ep0xv8kpXfh0HhFXLCte8=;
        b=krQjBik8lahTFsygWO7U0XmU5J+sC4djL3BfarQdP07uH3aruRoM/HM7+JrvIsk67D
         aKJVo3TxFps+l5c7hvIlNLtjxKCLithtRDhUG3zA0+A2MCXyeLesW8yQxuwuJVODtdoq
         Wj/YyRJX+FAzTYqRsyUCkkbwdpydxdvOi1+Um4G9ojXPcM8XmpHpFcR9lf6Am5kky5kI
         oJIafh7oAhA81uGRqY+/BMEOeBhcEzqFhwgvBqd+886ck4UFsKQx55Xur2lVtJwpVnOI
         dNJ4tqyMAL9qZ8PADFwPGqaYhUTemKMpGkVhD8VSAR25AA1j9ABbYoKViUw6Z4rfHvze
         NgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729615690; x=1730220490;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3JEQ9MM+0bQRBQpufIz+g9Ep0xv8kpXfh0HhFXLCte8=;
        b=qMIisM6yuI54iCPm3ARv03RRq6xUKlwoC6jznw3drgXRXM6L3Mq+p2zd3NJH1OtP2Z
         slQQ4aUOmLnVpVtDchKFJrnJjB9p43EFLua3eg8OHfBJIcsCoxLAzEkYJNUXjkFTILV5
         pLGZ1dM1JcRq2j6MrARjobmreYkbZINpgxOMqZ9FPDi0BKT8kRcM7sSL0/+fIAojNiev
         siKl7F1gKkxdlVPYsJ+2hUNgJnDUwkiEtUWMfYUWH6rv0dz/V7gVkxs/CUfWMqPTbo+F
         3qok8VZhcu/RzUY7r7dz/f5rKLKSPANlbCoRaKZ2Hcpz7D+EcLxrn4GROYqw5RygDTvY
         YQ+g==
X-Forwarded-Encrypted: i=1; AJvYcCVnFmbcu2WqdwPvgGrRXWwEvubKUlk8ZnbTQmNPuijTGHPeQXpNw7/Q/47k2Kcory9o51s8mw4HDG0U@vger.kernel.org
X-Gm-Message-State: AOJu0YyYmSdJLU73p1z8fkell6uHsZ2li0PQJXLt0UgLydHoPoUGn3g3
	KQdFAkF7yMS1t8vSCOvBnRnCJBCzjzrMWnZW7PS2KQKbOEFB93USNKxxoSMHjA==
X-Google-Smtp-Source: AGHT+IFa07tHycQZi4y8Cv96iyWVS9+/qqyom7Z+lob5auNlXr7DiOgX6ejk3Gy2vlhqcjfCd1hWNw==
X-Received: by 2002:a17:902:eccc:b0:20c:ca83:31c7 with SMTP id d9443c01a7336-20f54395ebdmr472615ad.54.1729615690130;
        Tue, 22 Oct 2024 09:48:10 -0700 (PDT)
Received: from thinkpad ([36.255.17.224])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7f10dbf9sm44820105ad.308.2024.10.22.09.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 09:48:09 -0700 (PDT)
Date: Tue, 22 Oct 2024 22:18:01 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: kw@linux.com, bhelgaas@google.com, lpieralisi@kernel.org,
	frank.li@nxp.com, l.stach@pengutronix.de, robh+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
	s.hauer@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v4 3/9] PCI: imx6: Fetch dbi2 and iATU base addesses from
 DT
Message-ID: <20241022164801.h7eh2gkuiy7pfkmr@thinkpad>
References: <1728981213-8771-1-git-send-email-hongxing.zhu@nxp.com>
 <1728981213-8771-4-git-send-email-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1728981213-8771-4-git-send-email-hongxing.zhu@nxp.com>

On Tue, Oct 15, 2024 at 04:33:27PM +0800, Richard Zhu wrote:
> Since dbi2 and atu regs are added for i.MX8M PCIes. Fetch the dbi2 and iATU
> base addresses from DT directly, and remove the useless codes.
> 

Again, what will happen to old dts that don't define these regions?

- Mani

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 20 --------------------
>  1 file changed, 20 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 52a8b2dc828a..2ae6fa4b5d32 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1113,7 +1113,6 @@ static int imx_add_pcie_ep(struct imx_pcie *imx_pcie,
>  			   struct platform_device *pdev)
>  {
>  	int ret;
> -	unsigned int pcie_dbi2_offset;
>  	struct dw_pcie_ep *ep;
>  	struct dw_pcie *pci = imx_pcie->pci;
>  	struct dw_pcie_rp *pp = &pci->pp;
> @@ -1123,25 +1122,6 @@ static int imx_add_pcie_ep(struct imx_pcie *imx_pcie,
>  	ep = &pci->ep;
>  	ep->ops = &pcie_ep_ops;
>  
> -	switch (imx_pcie->drvdata->variant) {
> -	case IMX8MQ_EP:
> -	case IMX8MM_EP:
> -	case IMX8MP_EP:
> -		pcie_dbi2_offset = SZ_1M;
> -		break;
> -	default:
> -		pcie_dbi2_offset = SZ_4K;
> -		break;
> -	}
> -
> -	pci->dbi_base2 = pci->dbi_base + pcie_dbi2_offset;
> -
> -	/*
> -	 * FIXME: Ideally, dbi2 base address should come from DT. But since only IMX95 is defining
> -	 * "dbi2" in DT, "dbi_base2" is set to NULL here for that platform alone so that the DWC
> -	 * core code can fetch that from DT. But once all platform DTs were fixed, this and the
> -	 * above "dbi_base2" setting should be removed.
> -	 */
>  	if (device_property_match_string(dev, "reg-names", "dbi2") >= 0)
>  		pci->dbi_base2 = NULL;
>  
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

