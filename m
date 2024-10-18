Return-Path: <devicetree+bounces-112700-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E579C9A351C
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:11:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E9522851FF
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 06:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF59F17C208;
	Fri, 18 Oct 2024 06:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBtgFLtt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B07620E30C
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 06:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729231862; cv=none; b=YDFs7DuJX9WlVk4hODOveiYTsV4Pn4WzTi/9X/1DjcUJZw7il1i4gkHM0zsUBafpimZRnodihOM73ikXFQ2SWGSZchWh9TfIDL05i1p6k2VlAjna5e5KGXMm8oK0Ki7ZXNBDvVY61feFMwfnorv2yuDL7nktpJJFzgVpdOnmNRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729231862; c=relaxed/simple;
	bh=dEU7JVgsSSXUnouwOGrjzVa2zsi/LvY9smBUluomUkw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H1vEQdeTNyjZ/dEah60shi1WxHXIUL59Y0g94xA2Qk8arnk36Pf9z6lHgqgU6jy33Q3AbsKUgyn5TIh3c/mnxLok0NWS3C1an9mmjYLDqsEsN2sup7KmtU/FkRPVY1ZwWs7VuT6nabB+0Ef29Ed46O6ioR4MyoOl/SMEdpcRFxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBtgFLtt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F7EBC4CEC3;
	Fri, 18 Oct 2024 06:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729231862;
	bh=dEU7JVgsSSXUnouwOGrjzVa2zsi/LvY9smBUluomUkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GBtgFLttY6KjPml5P7kJbYveiFC4fQFqYeR8HdOKMxrhBMkhQ0TIUlRCUokpJ/IQU
	 Q4bJKUCqiFg3Jf7vsj7usUhi6gqinp3lszurKwVF8yVJ8X+A0Pyx2uawpJeIYFzLQE
	 DsMMmBLYTz8KbOx7ll4iBRLJceN+S8xdLuZmLK/ujQsGNh5TRw0HPyvq3bJmzNk4hS
	 wauPfQXcOA6wVrIslFZgA1C1D5s/iVZOiauu5YRbX7FbjsIe+rmjRczR+VB4NwW++v
	 K5GZR9jpWq4/bMzSsTbMofG6eAaqpf/WYazJGWd92Rj8/zs3Ty+p5Gj0G3lm6HhUmA
	 q8FFObhxf3rjA==
Date: Fri, 18 Oct 2024 08:10:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: add realtek,rtl8380m-serdes
Message-ID: <sh34yi5j6vjpl2lbs5osttsi2kdgwjhrw6fipxzqndg3gk3day@aoebakdn3i2d>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241017162400.3881609-2-markus.stockhausen@gmx.de>

On Thu, Oct 17, 2024 at 12:23:59PM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> MIPS based network Switch SoCs with up to 52 ports divided into four
> different model lines.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

<form letter>
This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577
</form letter>

Best regards,
Krzysztof


