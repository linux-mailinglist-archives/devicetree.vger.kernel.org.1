Return-Path: <devicetree+bounces-45636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2899862943
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 07:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10B001C20A15
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 06:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25CB67484;
	Sun, 25 Feb 2024 06:12:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b="DcvOgHRS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail5.25mail.st (mail5.25mail.st [74.50.62.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659DC944E
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 06:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.50.62.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708841550; cv=none; b=coERkfNOQp0HX2XeQ6u7SUvflNzDLVO7FjBMR9nh3iwI9Dlio6Hba49YOWCmtQJ/d5GiSnaexofJmGrJTHJmuRyZS8LJITLckbkFeLv86aFSLq4QdH9k2VO3ju8wKq0n+ID+BrSaQxPMCuq1BOInOMapcFRQ8nyUl/TTQd0SaA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708841550; c=relaxed/simple;
	bh=TLbErP9TshFhoHBnjxKHNEUx7cMv4h8UxZqTKhM427k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OxOBChnOabNf6f20/DLbCqQwA2R5UNqOwU/KHQv+lhqfcqpn6rjKA8FoujWpNzXL5IDaj/BAJSpfWDUdQWTXktdPhVFSYDfeUgfXcGONVoVjX6V05IzeZA7eGQL2HImNstD/sI2p5XFr5PP4hZ04xU0em12ZdnoagHGUyjJygPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com; spf=fail smtp.mailfrom=atomide.com; dkim=pass (2048-bit key) header.d=atomide.com header.i=@atomide.com header.b=DcvOgHRS; arc=none smtp.client-ip=74.50.62.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atomide.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=atomide.com
Received: from localhost (91-158-86-216.elisa-laajakaista.fi [91.158.86.216])
	by mail5.25mail.st (Postfix) with ESMTPSA id E9A636058D;
	Sun, 25 Feb 2024 06:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=atomide.com;
	s=25mailst; t=1708841541;
	bh=TLbErP9TshFhoHBnjxKHNEUx7cMv4h8UxZqTKhM427k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DcvOgHRSRN/jmv5zpOoR7Fdte2V3Hs8bP4ARNe6NFyv7cXoEOQZEAWcFr/NiKec8o
	 X9Mfxb+fnw6/5Nopb4f7kG+kQBAEeeSbkgDQqUoXmVlzfNWuhLC/QYPouRJ6KoIb59
	 6Lkixjnyey7Mxgry0HZKayxYL9JEEXXpLm7JvgoeZllTVF+Di4/HSzzUyucn89d2G9
	 P7MaVcia15w1mKt0TJX9ILW8WEfQKrNX49z8ZzXQ5wkYVRp39JOLjQ1sPAKKso5aYM
	 crCMPr86YI+XCUyQZxUEcmMRs+bxRiDqwRcth137t+nMSJABUjfsvGdKxPpkzWS4DI
	 irG68Wc8b91Iw==
Date: Sun, 25 Feb 2024 08:11:35 +0200
From: Tony Lindgren <tony@atomide.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Simha BN <simhavcs@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Michael Walle <mwalle@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v4 03/10] dt-bindings: display: bridge: tc358775: Add
 support for tc358765
Message-ID: <20240225061135.GR5299@atomide.com>
References: <20240215123222.42609-1-tony@atomide.com>
 <20240215123222.42609-4-tony@atomide.com>
 <61a6b5a8-7dbf-4b37-9f6e-1bd85dc5f7b5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61a6b5a8-7dbf-4b37-9f6e-1bd85dc5f7b5@linaro.org>

* Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [240215 18:43]:
> If there is going to be new version, please put allOf: block after
> required: block.

OK will post v5 set.

> Anyway:
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Thanks,

Tony

