Return-Path: <devicetree+bounces-134997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E53B69FF5C0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 04:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 411C216200C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 03:27:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7DD48F66;
	Thu,  2 Jan 2025 03:26:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aV3e/YeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3294C83
	for <devicetree@vger.kernel.org>; Thu,  2 Jan 2025 03:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735788417; cv=none; b=NhAk+3LVZBXcAOYuv5LsZwpvIi43C42l28AyyAHRF/Kw/2/n5oSxJZQUdn+WJLVoeqSEzGWC5IFLj4V0DCrDCFi4KtGXH1jLVHvzdHlUh7Bg1q/MNHNIoyXNCyTYfDnkDxUEEOmX6pdb5IELCb6yFKDs0Apn021A+leAptMNlPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735788417; c=relaxed/simple;
	bh=DdJYgZc7Q4Jmxkcgf85nULXchKuOAv2m3m5DI1QNZoY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BVhOlylrahxsjGZXuLTG1lu78eBGtDwYbLwulp81tiYdpjHUBryme+J6muykzGNTIUmbK9PWVgOGA7s2pkhFnZsV/wHlQZK0OuCIKwJfxp0RasLQ6vTzPtPyc4JFdDkX0gUReg1Go8HvrZnoEr3j+zkTbi31j+I7GrU3T/OVrZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aV3e/YeJ; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53e389d8dc7so12004851e87.0
        for <devicetree@vger.kernel.org>; Wed, 01 Jan 2025 19:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735788414; x=1736393214; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5FmDRLFpz5VQYbAEJQmse1pMniexgMfpHZTjVy2AVGc=;
        b=aV3e/YeJRyucw9//vq1PExnzKSK+SsGSONRcmFNdlWPNfodUCxLr7CNdtYX7BpnCSj
         c53AVi0nAwnVAGsX2QwsoHLdBYNCsrqpcZABLJh8FR3qKVQUMq6OQ3vn46GsSg7OGdql
         h75TURsVBNpdDoiOIJccTzR6iMNrH8Lqc0GHUCPHEckokLUG64cGxCp6l5mg4HR1g1Ms
         6BKvdbUswS8C3NvyAxlipHJ0aHq3zFhLH+geI8xJqNr2iqArl4wVATqAdonhSOc2VcHc
         VpH6jghVGg0Mi5TQOBokcgsAd8WWtBgPWE7+55TUC3UhGrgeyS7PLuVyJR0mjtLkcwZ2
         /aGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735788414; x=1736393214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5FmDRLFpz5VQYbAEJQmse1pMniexgMfpHZTjVy2AVGc=;
        b=KFjyUSlBxNbW4Op/94e6VzRMJoE9izfB4VuotAMJFcN0KIZZ6Noj1xtJq2Yltkd9YN
         uPW135uzCm5G95vIg12LLGW0NMWHb1nYG1s7kgPtlwP9suMgc2e1PVt+iPbWRuZlJ9bx
         u7ODW1bfZP3JuHUnoDpkhX3T3qBKi4cSq+hzoRoOB2vZV7vzuxV+qVeogAsFwZ/Yt5id
         jx9XQRGZBRKoF5y2sDh+FajqrsUicMHIPFjZ6opPFIgX2smPLLiRs6GueUrZlSca4pEO
         Yl1KBFtTXPtfPujQuaKpd8murNA0AR7bv9XmI4uYKgGtjR70GTKQaWsy4q9y3darJSml
         rM0w==
X-Forwarded-Encrypted: i=1; AJvYcCUC7/Q8Z1qHRQMeWzoqhmx6cSBBMb56uDBWV0/TuUO6yT98VrAjSzHoWY4q09SDzuhfY7r3OVZZ6kmh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1jQliFhM5JNQlO4x3bMcE1wTvlpTE216rh++JAZxChCPmNYqA
	BEKzip2dbJm0JJHlGceb9OFqfpsApI6HjxwDTpieGNgWc6x5Fb60XVO0Cmbv4YM=
X-Gm-Gg: ASbGnctkYpFMhlzXx9vkYgGhILekcrMBaWV9lEKQdOeLis4gwbkHqtPph6zm10cvJcw
	tp+tvuHISE/yXw75LiYL0ISWwfQ5WMRfODT9Hgjs4KOitlm7ktQmOlom4dU8ypQW9DiDcZ/Km3y
	ux3WGR5DtJBw+GC8Ngr+320i0XogT4N0gHJsrbf5fzsbdCecI2QYh11Evm4G27+39++mrt+bWAn
	/7pheTRoK1dvCVKxGzyxwIue034pkbjCGe+iV28gH+vCSB07llJ/Waqt7FoFObAbSy1/PHy9nAw
	4GyGfaCeowl2jabVsOEJoUgoM7zBcGanX0QR
X-Google-Smtp-Source: AGHT+IH7I7RcNKZb9xeKgk2U2YJlaxlN65glovYfr8zNiCQJ9pCqdsXeeY1ES71gZQ0js0Fb7YH1MQ==
X-Received: by 2002:a05:6512:3f0c:b0:53e:3a7d:a1df with SMTP id 2adb3069b0e04-542295619ecmr13281012e87.45.1735788413995;
        Wed, 01 Jan 2025 19:26:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad6cae6sm41978011fa.23.2025.01.01.19.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jan 2025 19:26:52 -0800 (PST)
Date: Thu, 2 Jan 2025 05:26:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org, 
	Andrzej Hajda <andrzej.hajda@intel.com>, David Airlie <airlied@gmail.com>, 
	Fabio Estevam <festevam@gmail.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Robert Foss <rfoss@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Simona Vetter <simona@ffwll.ch>, Stefan Agner <stefan@agner.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/4] drm: bridge: dw_hdmi: Add flag to indicate output
 port is optional
Message-ID: <ac4kkjv2nmziu6pd6vkuxbllhkqaueu32snfetpemtu2l5s6ud@cvystps3734o>
References: <20241231192925.97614-1-marex@denx.de>
 <20241231203136.GD31768@pendragon.ideasonboard.com>
 <88778e2b-8c43-46a1-bb79-0d9c968a5233@denx.de>
 <20250101223620.GA7206@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250101223620.GA7206@pendragon.ideasonboard.com>

On Thu, Jan 02, 2025 at 12:36:20AM +0200, Laurent Pinchart wrote:
> On Tue, Dec 31, 2024 at 10:10:51PM +0100, Marek Vasut wrote:
> > On 12/31/24 9:31 PM, Laurent Pinchart wrote:
> > > Hi Marek,
> > 
> > Hi,
> > 
> > > Thank you for the patch.
> > > 
> > > On Tue, Dec 31, 2024 at 08:28:48PM +0100, Marek Vasut wrote:
> > >> Add a flag meant purely to work around broken i.MX8MP DTs which enable
> > >> HDMI but do not contain the HDMI connector node. This flag allows such
> > >> DTs to work by creating the connector in the HDMI bridge driver. Do not
> > >> use this flag, do not proliferate this flag, please fix your DTs.
> > > 
> > > What's the rationale for this, what prevents fixing DT instead of using
> > > this flag ? Adding such a flag will most likely open the door to
> > > proliferation.
> > 
> > See the V2 series discussion, there are a few in-tree DTs which do not 
> > have the HDMI connector node. The rationale is there might be more and 
> > they might come from vendors, so this flag is necessary to work around 
> > those DTs.
> >
> > > If you can't fix the DT on particular boards, patching it could be an
> > > option. We had a similar problem on Renesas boards, which we fixed with
> > > a DT overlay, see commit 81c0e3dd82927064 ("drm: rcar-du: Fix legacy DT
> > > to create LVDS encoder nodes"). This made the workaround self-contained,
> > > and allowed dropping it several kernel versions later (in commit
> > > 841281fe52a769fe, "drm: rcar-du: Drop LVDS device tree backward
> > > compatibility").
> >
> > Frankly, I would much rather fix the few in-tree DTs and mandate the 
> > HDMI connector node in DT, which would keep the code simple, rather than 
> > maintain a backward compatibility workaround for problem which might not 
> > even exist.
> 
> The in-tree device tree sources should be converted as part of the
> series, I don't see a point trying to maintain backward compatibility
> for in-tree DT sources.

DT is an ABI. We are supposed to keep backwards compatibility with
existing device trees (at least for a while). I'm adding DT list and
maintainers to be able to provide comments on this topic.

> For out-of-tree sources it depends on how likely the problem is. There's
> no regression if nobody is affected. I personally like restricting
> backward compatibility to the strict minimum, to ensure that all new DTs
> will use proper bindings. Making the backward compatibility code
> self-contained helps there, and we could also print a loud warning
> (WARN_ON() seems appropriate) and set a date for the removal of the
> workaround.

-- 
With best wishes
Dmitry

