Return-Path: <devicetree+bounces-39281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F6F84C024
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 23:36:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CDDBB24C65
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 22:36:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9975E1B971;
	Tue,  6 Feb 2024 22:36:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from relay06.th.seeweb.it (relay06.th.seeweb.it [5.144.164.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7BD51BDED
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 22:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.167
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707259004; cv=none; b=sdUvww6eUTt7glWOxvby9Qf2++blZqq+Uq+0WXd11KJyAwyMA9Fjak9zLQh0TZAooU0DF5YMsBS29ITrG+l4fqsSErZj/v2HMb8p5YraYiFMrq3+dFQBhrWEklmAWXHiJnIxO/Se8ZQzsngBqjR1eBbYnUI0kp7LVOOFESEtzIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707259004; c=relaxed/simple;
	bh=A6S132/zWnIF604R2BGgbTO1mKS5nuWInKg4JB4uibs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FqCdWybQ1ToKTXoxztRbb+5gjnK1s5hlIqGS7S3LrWD5Tncu9RDHR1E2OLQsX2e+KG96kW1iDbzE8MdaivltxxHZg/1FJkdbZeO9lYCTqYaiu+KvRe9y1UIHPnPIQKP0Uk2EBEvkj2NcFyIB6/GdGo6jKDv7RT3IRV1APdN37No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.167
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 07AC33F78E;
	Tue,  6 Feb 2024 23:36:32 +0100 (CET)
Date: Tue, 6 Feb 2024 23:36:29 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>, g@somainline.org
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, ~postmarketos/upstreaming@lists.sr.ht, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Luca Weiss <luca@z3ntu.xyz>, Adam Skladowski <a39.skl@gmail.com>, 
	Martin Botka <martin.botka@somainline.org>, Jami Kettunen <jami.kettunen@somainline.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: msm8976: Declare and use SDC1
 pins
Message-ID: <tz3vwpcpbctxfx22rbhdnpy7fljijtpbdlmq6jwtw3jcvcwpka@3mnyq5h5h7bb>
References: <20240121-msm8976-dt-v2-0-7b186a02dc72@somainline.org>
 <20240121-msm8976-dt-v2-4-7b186a02dc72@somainline.org>
 <808bd239-6a61-4932-ab91-3dcbe10a7a05@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <808bd239-6a61-4932-ab91-3dcbe10a7a05@linaro.org>

On 2024-02-06 19:58:50, Konrad Dybcio wrote:
> On 21.01.2024 23:33, Marijn Suijten wrote:
> > Add the pinctrl states for SDC1 and use them on sdhc_1.
> > 
> > Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> > ---
> 
> [...]
> 
> 
> > @@ -840,6 +890,11 @@ sdhc_1: mmc@7824900 {
> >  				 <&gcc GCC_SDCC1_APPS_CLK>,
> >  				 <&rpmcc RPM_SMD_XO_CLK_SRC>;
> >  			clock-names = "iface", "core", "xo";
> > +
> > +			pinctrl-names = "default", "sleep";
> > +			pinctrl-0 = <&sdc1_on_state>;
> > +			pinctrl-1 = <&sdc1_off_state>;
> 
> -names should go last

Per the cover letter:

    - Moved pinctrl-names before pinctrl-N (Konrad);

You explicitly requested this in https://lore.kernel.org/linux-arm-msm/60a40ace-d4e9-df74-88f9-4354d80efaac@linaro.org/#t
but we also backtracked on it somewhat for consistency with other -names, and the general state of this file.

Maybe we should apply v1 of this specific patch?

- Marijn

