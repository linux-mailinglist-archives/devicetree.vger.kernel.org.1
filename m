Return-Path: <devicetree+bounces-240971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 685ABC782F4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 10:37:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 10BF0348100
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:37:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A827030E0F2;
	Fri, 21 Nov 2025 09:37:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from Atcsqr.andestech.com (60-248-80-70.hinet-ip.hinet.net [60.248.80.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85B92D193B
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 09:36:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=60.248.80.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763717852; cv=none; b=fhORexqlK+h7SLJyOxcDIrrWb7WI9Mg9CKTmpUffNzYLs1P7KApJOvJ7KO0RDB9YLZBAMcb9cP9v2NJN6GuXpD1Bv+bp+xf6U8dOQPU6f7CFtQ6aFOV+0uwfu6x7KemwWWJi7zWrEW7VVQIN7hlRD4cIf+k0Z0+SGs3NiHCKZV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763717852; c=relaxed/simple;
	bh=YkdsA5OIGHFVkvcgR89QyHDhanQzIqF/1eGoMs51eC4=;
	h=Date:From:To:CC:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IO+cvi6R32Hs3PmnJvF6rZBm+JZoxfPmrRpDTTvfRo0qwj5sTTYVSMbi0OCpRsRnbTxC8/RS4hn45RFTGk8oQICfcV7PWjXgPoMtd7K0irp5zuHQBSNMfNy6wK7GJXlZaw2h16Wtm+XGrUDDT7o8FxMPTEchRn+hwYMPjo//V4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=andestech.com; spf=unknown smtp.mailfrom=andestech.com; arc=none smtp.client-ip=60.248.80.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=andestech.com
Authentication-Results: smtp.subspace.kernel.org; spf=tempfail smtp.mailfrom=andestech.com
Received: from mail.andestech.com (ATCPCS31.andestech.com [10.0.1.89])
	by Atcsqr.andestech.com with ESMTPS id 5AL9aWW5051674
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 21 Nov 2025 17:36:32 +0800 (+08)
	(envelope-from cl634@andestech.com)
Received: from swlinux02 (10.0.15.183) by ATCPCS31.andestech.com (10.0.1.89)
 with Microsoft SMTP Server id 14.3.498.0; Fri, 21 Nov 2025 17:36:32 +0800
Date: Fri, 21 Nov 2025 17:36:32 +0800
From: CL Wang <cl634@andestech.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
CC: <broonie@kernel.org>, <linux-spi@vger.kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <tim609@andestech.com>, <cl634@andestech.com>
Subject: Re: [PATCH 2/2] spi: atcspi200: Add ATCSPI200 SPI driver
Message-ID: <aSAyoP3ohz73sd1U@swlinux02>
References: <20251112034724.1977630-1-cl634@andestech.com>
 <20251112034724.1977630-3-cl634@andestech.com>
 <73a39371-5bf0-4a3d-a48b-9e91668b779c@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <73a39371-5bf0-4a3d-a48b-9e91668b779c@kernel.org>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-DKIM-Results: atcpcs31.andestech.com; dkim=none;
X-DNSRBL: 
X-SPAM-SOURCE-CHECK: pass
X-MAIL:Atcsqr.andestech.com 5AL9aWW5051674

Hi Krzysztof,

Thanks for your review, and please see my responses inline.
> > +     spi->clk_rate = clk_get_rate(spi->clk);
> > +     if (!spi->clk_rate)
> > +             return dev_err_probe(spi->dev, -EINVAL,
> > +                                  "Failed to get SPI clock rate\n");
> 
> You miss clock enable/prepare cleanup. In other places as well.
You are right — the error paths miss the corresponding
clk_disable_unprepare() cleanup. I will update the probe logic to ensure
the clock is properly disabled along all failure paths

> > +
> > +free_controller:
> > +     spi_controller_put(host);
> 
> Where is DMA channel release? Same for unbind path.
Thanks for pointing this out. To ensure proper cleanup in both the probe
error path and a potential future remove() implementation, I will switch to
devm_dma_request_chan(), so that DMA channels are automatically released
by the device core.

> > +static const struct of_device_id atcspi_of_match[] = {
> > +     { .compatible = "andestech,qilai-spi", },
> > +     { .compatible = "andestech,atcspi200", },
Understood. I will fix the compatible strings and ensure all of them are
properly documented in the binding.

Thanks again for your review and suggestions.

Best regards,
CL


