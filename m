Return-Path: <devicetree+bounces-251145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD2FCEF64E
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 23:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 75C23300215A
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 22:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4894326E179;
	Fri,  2 Jan 2026 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkQdtMoK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F11F3C465;
	Fri,  2 Jan 2026 22:02:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767391353; cv=none; b=pO4czc3o4Hj6aLUI4ZhxtEYVkibM25MeFfoYcgbfjLY/JA3API5Bgp0QSxvdgv6rd7wPmzWz0ChnCy5UOUtgQDkA4WxZUXNPdSMvXlabLQzASkWiID/b8IcMuVD4SscNrvAZBfFhk7fbMum61OI6E0MTIbBKX4nO/ALpni6ryEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767391353; c=relaxed/simple;
	bh=PaFfr5xbBo6idP1H145bJKQ7hsu4kIqvyGzc26+G8f4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Vs2Fm/Gbp4Wr6CU7BczlW9wQoGoevnPXWfsut/2K2uCOj/6ExOUuc9ZIdGwo76XhHMhwJNUyVKj5wAQfg/3IzJVrE+w0TXC39QCT5tF3a5k3AMKkskvbgvgBA64qozB2m6kevar2hvrXhI1a77O6xvEHABrSDGWgRNUJ5yTdf5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkQdtMoK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58DD5C116B1;
	Fri,  2 Jan 2026 22:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767391352;
	bh=PaFfr5xbBo6idP1H145bJKQ7hsu4kIqvyGzc26+G8f4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rkQdtMoKVOCWPZk8JtuzRroy20R9dakdifkYLjWsSBnjxsGvX2Jy2s6u1dosFPNs/
	 wNlniWmvZWtBGbbeLlLoVw0rs2WuYSmMDf8WpRKrHmyW8RE/2IrocaAwHEwI8EggCn
	 X2edUlT05woh+frYOVZO+fH+U5f1LaSiLE/AV30zF13e10VFvg0IyW7+PDVx8MaMRE
	 2LCsLuk9Szv8VKQGKoRj6N+SJIrszODbGlK+sCDRanC8Sdn9/PN3Xz5Ro9PPaasjeZ
	 ju45VQACyG5OkgLDRAP39GANcsBJtBy65Vb5XD6sTCTN4Gwpq91fI2Z2fFz/QNPrij
	 HqRi34dWrgA+Q==
Date: Fri, 2 Jan 2026 16:02:31 -0600
From: Rob Herring <robh@kernel.org>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: omap: ti,prm-inst: Convert to DT schema
Message-ID: <20260102220231.GA247492-robh@kernel.org>
References: <20260102-prm-inst-v1-1-e85402b86885@kemnade.info>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260102-prm-inst-v1-1-e85402b86885@kemnade.info>

On Fri, Jan 02, 2026 at 08:32:15PM +0100, Andreas Kemnade wrote:
> Convert prm-inst binding to DT schema. Use the closest matching standard
> node name in the example.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  .../devicetree/bindings/arm/omap/prm-inst.txt      | 31 ------------
>  .../devicetree/bindings/arm/omap/ti,prm-inst.yaml  | 55 ++++++++++++++++++++++

ti,omap-prm-inst.yaml to match the compatible. Otherwise, looks good.

Rob

