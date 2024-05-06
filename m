Return-Path: <devicetree+bounces-65255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C13B8BD4FC
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 20:57:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD0FE1C20C6C
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2024 18:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1886B158DB9;
	Mon,  6 May 2024 18:57:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from fgw20-7.mail.saunalahti.fi (fgw20-7.mail.saunalahti.fi [62.142.5.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D31A158DB0
	for <devicetree@vger.kernel.org>; Mon,  6 May 2024 18:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=62.142.5.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715021837; cv=none; b=dt/G+pQoey5Dh5myDwcGTMQolqr0L/cwlYQJ07kMWfFfzSYHIVjJmRQRXrKU8n508whemye6hwdCyeQvUjvCNH29fyWtaY5jzdO87Hn79ok+wYo+OEXRG/GqauxmRfgs4cMZSOKFIfwrzCMMiHp7rM/KeGUQHrzutrywI7obhD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715021837; c=relaxed/simple;
	bh=dMhPV3IMcLOLNuDvwfw8BsOYqG4R3kM9nwX10XYlXyA=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dl1i4o+tDcVVUaEQk+aObtDwvp9cnYc3WDvqjfFNcMnln0+BPAxp7I+Yhb4PiVzsjHhmubxv9ffYJAUHUOtmFXwmllnDwtRqPyg4FDgzMg9TMRGqArR5W6FRtfKkzei1WyUZNbHglhpfzwyHUpjARApMuhFcn18yIz+0fZp6wK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com; spf=fail smtp.mailfrom=gmail.com; arc=none smtp.client-ip=62.142.5.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=gmail.com
Received: from localhost (88-113-25-208.elisa-laajakaista.fi [88.113.25.208])
	by fgw20.mail.saunalahti.fi (Halon) with ESMTP
	id 4a9edbaf-0bda-11ef-b3cf-005056bd6ce9;
	Mon, 06 May 2024 21:56:05 +0300 (EEST)
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 6 May 2024 21:56:05 +0300
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Das Srinagesh <quic_gurus@quicinc.com>,
	Satya Priya <quic_c_skakit@quicinc.com>,
	Stephen Boyd <swboyd@chromium.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [PATCH 02/13] mfd: pm8008: fix regmap irq chip initialisation
Message-ID: <ZjknxSsyo20b5_Tm@surfacebook.localdomain>
References: <20240506150830.23709-1-johan+linaro@kernel.org>
 <20240506150830.23709-3-johan+linaro@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240506150830.23709-3-johan+linaro@kernel.org>

Mon, May 06, 2024 at 05:08:19PM +0200, Johan Hovold kirjoitti:
> The regmap irq array is potentially shared between multiple PMICs and

IRQ

> should only contain static data.
> 
> Use a custom macro to initialise also the type fields and drop the
> unnecessary updates on each probe.

...

> +#define _IRQ_TYPE_ALL (IRQ_TYPE_EDGE_BOTH | IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_LEVEL_LOW)

This is repetition of IRQ_TYPE_DEFAULT.

...

> -			dev_err(dev, "Failed to probe irq periphs: %d\n", rc);
> +			dev_err(dev, "failed to add IRQ chip: %d\n", rc);

dev_err_probe(...); ?

-- 
With Best Regards,
Andy Shevchenko



