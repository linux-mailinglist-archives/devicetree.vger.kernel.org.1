Return-Path: <devicetree+bounces-238796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C64C5E474
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 17:38:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A656A3819D9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B62133122A;
	Fri, 14 Nov 2025 15:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="hyQRb5Dr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8B1332ED2F;
	Fri, 14 Nov 2025 15:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763134781; cv=none; b=bHKca8RCVM2Vrg+/dosZ8p5F5KQ1osPbguRLsVFzHxX4TvOVQt5HSnvoZ8JNPYNJB2x5V+/RA5bhhqYSDaPmryLwdgqlh2/Ykd84Cc378qMFQc17p2FyT0OzsiV6znGY272Qm0wAgpWsiy69Rvw/y3m6MTSdXAnHXS81AVzfTvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763134781; c=relaxed/simple;
	bh=W//pr7z+l8C5B0W9byilpav5EkrL8iPQFpEaRLcro/M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bwDc4mv8fULz3eGacQsJBQmFgFe7u0X8qGUZRH1/jLyyOoDs8u2hjOsjQtJ2nyXBMbdFfUK9J4zk+Nq6zU5vMeEDPJ+cJF209B6MIcbyqqtNGGcfUjKJGxbGAUKwgcMNm+3uwR1pCyMehCa9t3Yvvj54WAZWro01GlApijoPWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=hyQRb5Dr; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id C416D1FB01;
	Fri, 14 Nov 2025 16:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1763134769;
	bh=+n2jQLHIbyJVzOQ1DnRlrFwOMqiMdgedNP4TIuFj/1I=; h=From:To:Subject;
	b=hyQRb5Dr8omzynZ/UcQGIUjOD5CmwshBN5J1diwKAYRPdKWZyfIjzOojSh0vnUq4P
	 eVs9OsFmCmzGshrgXSyIAlI5orR1p/Fa+AvrgZp5jtHGI5+KmD4y2cGx9wJexvhrtB
	 9shN/XS0szeEfNWbRFVbso5fsSshimK+kqczg8V4ZCuyP/MwvmbhQTS59C6+V2Vs9U
	 sjYRZTMZh4ub0G1d0b4FSvELEafxcQVNWvr2NYwlpcga1r+noqEGgdpfh19WrTiTWy
	 nRprAUly5TCBZONokq6+0ZgjIQMwgFExSVVJHjNcGDGlSG3GNBLgJBBudjnhqhweZo
	 DmCfPsZYHdLew==
Date: Fri, 14 Nov 2025 16:39:25 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Swamil Jain <s-jain1@ti.com>
Cc: jyri.sarha@iki.fi, tomi.valkeinen@ideasonboard.com, airlied@gmail.com,
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, aradhya.bhatia@linux.dev,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, devarsht@ti.com, praneeth@ti.com,
	h-shenoy@ti.com, u-kumar1@ti.com
Subject: Re: [PATCH 2/3] drm/tidss: Power up attached PM domains on probe
Message-ID: <20251114153925.GA62911@francesco-nb>
References: <20251114064336.3683731-1-s-jain1@ti.com>
 <20251114064336.3683731-3-s-jain1@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251114064336.3683731-3-s-jain1@ti.com>

Hello Swamil,
thanks for the patch.

On Fri, Nov 14, 2025 at 12:13:35PM +0530, Swamil Jain wrote:
> From: Devarsh Thakkar <devarsht@ti.com>
> 
> Some SoC's such as AM62P have dedicated power domains
> for OLDI which need to be powered on separately along
> with display controller.
> 
> So during driver probe, power up all attached PM domains
> enumerated in devicetree node for DSS.
> 
> This also prepares base to add display support for AM62P.
> 
> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> [j-choudhary@ti.com: fix PM call sequence causing kernel crash in OLDI]
> Signed-off-by: Jayesh Choudhary <j-choudhary@ti.com>

you need to add your signed-off-by at the end

Francesco


