Return-Path: <devicetree+bounces-164662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4458AA81E2A
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 09:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D6644C0D49
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 07:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5412D259CBC;
	Wed,  9 Apr 2025 07:21:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pXH3heZF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A364E259CB3
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 07:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744183284; cv=none; b=kET4eV7t8yoHHSNxY/LAcSIaUaFNLIej2qQ1tcq0SiATH2B7F0JvmVoiE3ulcIWTjB7usxPytF+Q/1Bzyhm4tnMjuL2RZpYmwaPOPkfyFJcHTk6stFDPI8u+OFMNl+8Z/8EZ8/HYGaxxDAC+ecAts1WLuGD9V57Rd9CXHMD3hlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744183284; c=relaxed/simple;
	bh=qNSl23w5CnRkWWQDCwzcmDhQyRvrFgVagKgPYfHX2a8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ftj8S9NKz5mTOappYUVaI910o4Yl4aHSWeEZSHveg/ujejfhr2UFVrSEAL/YlC0W2AGvxG75g3c3B0lXvz/UiIgRvoPzLgC/JSh92A8EDvuJEFmdk9LEclfJKJe3g347YmjdNAAwhrOz5wG5sSsyXgxpyJoZNzJoRMGI0E9v3N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pXH3heZF; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-223f4c06e9fso4250875ad.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 00:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744183282; x=1744788082; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=W/Lgrhm4h4G8hxhz8A5NFWeZfI9t1CHWAlhm6z4dsMY=;
        b=pXH3heZFOmY36C7hlyIVWOqlyX1i2qp+Wzw2JoZHbN+4feRFT/cfjxjniY9ahXt2pP
         pSXM7GAWM3p6TqK8kyPtP0uaIXfFIl4vvBNBzpOX1gv8GnUmX345daFkHJWlk/1BcRP5
         OPlSJvYvNC9AtVOj7PEamLr0Kxrm9uc6y7FWR0ZMbmWI7dbH291ez4ZHg8JrL7Fck1rr
         nwOYBNRymVK4KuMbwHyFT2Z+QvhuqQDKiVdQTa3cGRUUMRpO69VjO9EDP/+tWPPIevhB
         EcLyhNzniDxPOY+JtFTvYDjFWDSK2/R09KYl3sRANZgt9kSqW856OTWwDFJyYh3b92wR
         2vJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744183282; x=1744788082;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=W/Lgrhm4h4G8hxhz8A5NFWeZfI9t1CHWAlhm6z4dsMY=;
        b=JWNv6dHDIWNaWhIPpKOMTA0ZooIgojt0bTlRcopOOsmKQZ7ps6mgDEaQ1v7iQSok4x
         hMBg7d9LbZxkh5xS5cXaaEOKBvcAk1GYgk43zXD0tnj3Gd0LlKY3NoYqaLs5ioGE8OIX
         ZULERZOcHEQgBbYibat88GpjxvtET7jH3QgNgANcoYGYpHbfbRAPtS4rryXPDAMD0Urm
         aCC0QCbAvh08NycqS6d8YvmmFLSJfVgTEWIJAH82MDsYUl5kw1s7YX7E+luP+dNiAfgh
         5cU0S1TIdG0fowdB3DSWDQcSRzANDNk+6AjpBPf6eWhPDwk/C0LazRNn6DnUnCyvHHd2
         L/RQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr+gpJmLTnPgviaKBTADkKvOtPUXJOoeNhekCs3iTFj6yeXfAiyyrtHlBpsQCma3AUHZ2vor/f3dK6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9/lTZLSBQFvk7kZQW+jFDRjg6C6WkffJZU8+p465oGdmMa4xc
	I2EUowhq9rkxjb3BTxB7FzkWwI7kQcSLsD4PrxdjMYbS1+b5xkhKbgJVfupu+yG6RcVfJShSIiM
	=
X-Gm-Gg: ASbGncudUR137gmMsW/rfoToLg5+2VflPce0ezI08yVr+Qit0+ZgATJFlLeC6VOIA8h
	Wl72F9mfGjk6QQBli5BxokcEl+InICMv+ftR7S7iENy7LRhpz5dszIr0BO5sy1Yf65xV0Rf2l78
	R64UmZhofVJG71mRGVdRGsCglr/j46dMnjr22hwXkxgioJlwx6bG47TopbKXcBhazlX2sksdigr
	1M9l53O4yG0rfuzOl16zQbUfcYcs7PF60SSdRt3Za7Z7TA+M/YfunNBJeSexi47lFvcBD4XfBCi
	kCBCmkEo2Kx2xTftPGyIYB9eVYLGKGDvmkSXIHmKutdNKvzZkEU=
X-Google-Smtp-Source: AGHT+IGUCu6KH+qbWXj60ojYm5A5DYVA5PgB9guIKo4oEmIjyN5lFtDuT6SUF5QFieMWF+Ry0lPKeA==
X-Received: by 2002:a17:903:3c4e:b0:215:58be:334e with SMTP id d9443c01a7336-22ac324a92fmr30082095ad.10.1744183281894;
        Wed, 09 Apr 2025 00:21:21 -0700 (PDT)
Received: from thinkpad ([120.56.198.53])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b62864sm5025575ad.22.2025.04.09.00.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 00:21:21 -0700 (PDT)
Date: Wed, 9 Apr 2025 12:51:17 +0530
From: 
	"manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>
To: Manikandan Karunakaran Pillai <mpillai@cadence.com>
Cc: "lpieralisi@kernel.org" <lpieralisi@kernel.org>, 
	"bhelgaas@google.com" <bhelgaas@google.com>, "kw@linux.com" <kw@linux.com>, 
	"robh@kernel.org" <robh@kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>
Subject: Re: [PATCH 0/6] Enhancements for PCIe Cadence Controllers
Message-ID: <kx3cive5lamnvs4lnngs2d53fadpnhasagutsgdumb366btcw7@2oodfpe55bo5>
References: <20250324082241.2565884-1-mpillai@cadence.com>
 <CH2PPF4D26F8E1C205166209F012D4F3A81A2A42@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CH2PPF4D26F8E1C205166209F012D4F3A81A2A42@CH2PPF4D26F8E1C.namprd07.prod.outlook.com>

On Mon, Mar 24, 2025 at 09:08:09AM +0000, Manikandan Karunakaran Pillai wrote:
> Enhances the exiting Cadence PCIe controller drivers to support second
> generation PCIe controller also referred as HPA(High Performance
> Architecture) controllers.
> 
> Comments from the earlier patch submission on the same enhancements are
> taken into consideration. The previous submitted patch links is
> https://patchwork.kernel.org/project/linux-pci/patch/
> CH2PPF4D26F8E1CB68755477DCA7AA9C6EBA2EE2@CH2PPF4D26F8E1C.namprd07.prod.outlook.com/
> 
> The changes are tested on 2 platforms. The legacy controller changes are
> tested on an TI J7200 EVM and HPA changes are tested on an FPGA platform
> available within Cadence.
> 
> Manikandan K Pillai (6):
>   dt-bindings: pci: cadence: Add property "hpa" for PCIe controllers
>   PCI: cadence: Add header support for PCIe next generation controllers
>   PCI: cadence: Add architecture information for PCIe controller
>   PCI: cadence: Add support for PCIe Endpoint HPA controller
>   PCI: cadence: Add callback functions for Root Port and EP controllers
>   PCI: cadence:  Update support for TI J721e boards
> 

Your series is broken in some form that neither lore nor my email client could
find all patches linked to the cover letter. Please use a better tooling like b4
and resubmit.

- Mani

>  .../bindings/pci/cdns,cdns-pcie-ep.yaml       |   4 +
>  .../bindings/pci/cdns,cdns-pcie-host.yaml     |   7 +
>  drivers/pci/controller/cadence/pci-j721e.c    |   8 +
>  .../pci/controller/cadence/pcie-cadence-ep.c  | 179 +++++++++--
>  .../controller/cadence/pcie-cadence-host.c    | 257 ++++++++++++++--
>  .../controller/cadence/pcie-cadence-plat.c    |  30 ++
>  drivers/pci/controller/cadence/pcie-cadence.c | 195 +++++++++++-
>  drivers/pci/controller/cadence/pcie-cadence.h | 290 +++++++++++++++++-
>  8 files changed, 922 insertions(+), 48 deletions(-)
> 
> -- 
> 2.27.0
> 

-- 
மணிவண்ணன் சதாசிவம்

