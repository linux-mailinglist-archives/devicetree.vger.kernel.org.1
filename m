Return-Path: <devicetree+bounces-137623-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E62EA0A213
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 10:01:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 412163A3BAA
	for <lists+devicetree@lfdr.de>; Sat, 11 Jan 2025 09:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 094E082899;
	Sat, 11 Jan 2025 09:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZqcfpAJ0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D14D77E1;
	Sat, 11 Jan 2025 09:01:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736586070; cv=none; b=PZevXmDzqW+1ofuNy67zZP/P6FHpDnbChw0WCFhMWzKaopfjW2CAnW8s0Nc+YEwjo8FQHje7Ga6x//9/bs9Sk6TRHDftwOsxWiPDg+x7P9iA4QnHg3Hn1V87/T3lokwWB/t2y/EWTCmXzA5swOMqimwHmc9teaJNXykSSRFx4i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736586070; c=relaxed/simple;
	bh=VYqEP6/lSetVMds3F44oHgUXC5d4OmKFKzttviwN/Fc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFmo4t5/CVf/dtkJsuPsddk0XVksFm+xff5bFKCinuaNdIlAHtvYw4j8S6ahv7mLUcoy65MFUO4xN4s+vRNhCXpk079QqLmteuSymxQS1+4ZUmxSEsd32EBhvBRmSlngjdWO185Ms66ezzQNN4G7WtyxpWX83SeuUc9PoeB5fp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZqcfpAJ0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AE67DC4CED2;
	Sat, 11 Jan 2025 09:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736586070;
	bh=VYqEP6/lSetVMds3F44oHgUXC5d4OmKFKzttviwN/Fc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZqcfpAJ0VZGvjBdNBUpcvX9nkB7pv5JIdSPJCiUVe2joHMw7de1gDSKzgS9qmPtLt
	 kIwW/JSF96yWQ8LwQUfU9H9qzm2+ouw8PXJuTbbsexUJMnGAu68zVbdREJi+1Mhauc
	 ItjeA+nH+k+EyCVtFjOrS0Cqykc51g0/DwLVf8UJgjFHwnyM0Y7uOcpfaUmmxfqrJs
	 yPcfWDi5arAvd34X/ExGQfa6Oo5rInquSg3AoH0m3AUPncNx3HvSxWWbMmi7R0r/wx
	 wq7yV0TV2RQwZ445Oy8M5t7QUfQCBzwi8E5x8qkqpvaes6BSphuwKwfPdNiRdV3QXu
	 PGAaFtMokFJEA==
Date: Sat, 11 Jan 2025 10:01:07 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Maxime Ripard <mripard@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Grant Likely <grant.likely@secretlab.ca>, Marc Zyngier <maz@kernel.org>, 
	Andreas Herrmann <andreas.herrmann@calxeda.com>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Mike Rapoport <rppt@kernel.org>, 
	Oreoluwa Babatunde <quic_obabatun@quicinc.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v4 06/14] of: property: Avoiding using uninitialized
 variable @imaplen in parse_interrupt_map()
Message-ID: <jmwcuelvywejhgy3mjo4y4odewirotlagmlahevsh2kicrakey@qvdajicxn7tc>
References: <20250109-of_core_fix-v4-0-db8a72415b8c@quicinc.com>
 <20250109-of_core_fix-v4-6-db8a72415b8c@quicinc.com>
 <20250110202649.GA3227291-robh@kernel.org>
 <dc7328d2-502c-4d10-af8f-f3ae02f636b8@icloud.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <dc7328d2-502c-4d10-af8f-f3ae02f636b8@icloud.com>

On Sat, Jan 11, 2025 at 06:34:21AM +0800, Zijun Hu wrote:
> On 2025/1/11 04:26, Rob Herring wrote:
> > On Thu, Jan 09, 2025 at 09:26:57PM +0800, Zijun Hu wrote:
> >> From: Zijun Hu <quic_zijuhu@quicinc.com>
> >>
> >> parse_interrupt_map() will use uninitialized variable @imaplen if fails
> >> to get property 'interrupt-map'.
> >>
> >> Fix by using the variable after successfully getting the property.
> >>
> >> Fixes: e7985f43609c ("of: property: Fix fw_devlink handling of interrupt-map")
> >> Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
> >> ---
> >>  drivers/of/property.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/of/property.c b/drivers/of/property.c
> >> index dca1a3ebccae1093b2b11f51e8e692bca854d0e3..6245cbff3527d762c16e7f4b7b7b3d4f2e9ddbe6 100644
> >> --- a/drivers/of/property.c
> >> +++ b/drivers/of/property.c
> >> @@ -1391,9 +1391,9 @@ static struct device_node *parse_interrupt_map(struct device_node *np,
> >>  	addrcells = of_bus_n_addr_cells(np);
> >>  
> >>  	imap = of_get_property(np, "interrupt-map", &imaplen);
> >> -	imaplen /= sizeof(*imap);
> >>  	if (!imap)
> >>  		return NULL;
> >> +	imaplen /= sizeof(*imap);
> > 
> > sizeof() is a compile time constant, there's not an actual dereference 
> > here.
> > 
> 
> the uninitialized variable is @imaplen, and not sizeof(*imap).

Correct. I think error is harmless, because whatever stack/random value
of imaplen we use in 'imaplen / =sizeof', we immediately return.

Anyway, for code correctness and silencing whatever warnings there are
(if there are you should actually paste them in commit msg):

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


