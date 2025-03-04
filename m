Return-Path: <devicetree+bounces-153535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F33CBA4CF8E
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 01:01:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 26D1016B5E5
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 00:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CD279FE;
	Tue,  4 Mar 2025 00:01:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="L4oW7hKk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8BBEC4
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 00:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741046475; cv=none; b=W9LrFUNkAw69EY8zp2Lz3F+SFmpBZDxcplaGQPtepd5UB1Z0SgrFufuihMhYy62uohYp0EVFrPozfT3qxC+/h6KgZTZWf+6NhQjeb3pwuNHJJUcIpxRnYI71dJ2PvPI7lh9+b3J4AKmd0Ehpy7kihnKAstD+XwKuwfhuLmEwYl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741046475; c=relaxed/simple;
	bh=9+pEkwg2vuoEzMhL5Cl/B8uzhCiG5riWIsKZ/O2ZmG4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IcxQKg7lto0do7NvY4rP0Atw/XFj6W9G4tVp6dTmToKjONQft0ykRkjDR8f43Av9jYaRXlerb6NyR3ArPfkfi1cYqgR7aKiAjHngCjhFcMLInravsEucuO3Elw9S1oC2Q/U52NHx2uq2LqQ/tG+2RjUdG/ePDLsTj+O1OsTyY0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=L4oW7hKk; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5495c1e1b63so2687402e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 16:01:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741046472; x=1741651272; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nkqxBKG8Qf6FiNEdeYYpYgDqec2n3GJdXjk7zy/AcfA=;
        b=L4oW7hKkNdPbLc3YEYxfQKZXt7dw9dyMP94iLnu6Hv1JA30UnNrCqxfSp1SLYbtDvd
         SMuBZagCi6OOA4mv5TMCGJuz4MdW0+f3DFS5WU7jR+DK8v245NbFFJxQtfrLWs52ebs+
         /ZjVFhCqgigHz74aOeWpB5Mk4SB29KKCtGmeSh/lK+yqAczJ2MiRGO1X1Zi4dLTuHkyH
         B/tjUw2peUC7AuJh43L66KOF/FPBcXubzA7ths+5fUJHMEBYhX+sn3S4LEKKivyYsqeK
         k7quxmnGbMTRtj5SmeXtDFpRBGHWuylLP0NCT96wLbYpqhgBJ9TRSPFBkbFRhdX04cuZ
         Zwrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741046472; x=1741651272;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nkqxBKG8Qf6FiNEdeYYpYgDqec2n3GJdXjk7zy/AcfA=;
        b=AirqQzh3t1ZnbK00DvmW4KwvhqNDKLndNvOXvDRb5P9Om7p/ALj2btFIQ1D8yfZsHJ
         zJzixzFup3RejN1TYf2mIiDoLwhSVP3qVgglI5HPJ/bNF/qBfZswU08aNPASPW3IZoV7
         q9RPZ9rh2CrJBSv1hKZiAquLHXmx+KcjIl664Sa+UtfxUu4sksfFrtWYMRbyrBFOXKXR
         mAEndiNlBZXgwarq5cTpmlohkr5nRo4qgMN+pLoqFNfrQYCkVGXROgx2WazjLWYZJvLG
         4Fmw8kDGPIE0edv2BW3vneEBZ2yBOSIFi8ojFpYfpNCVbel6QVgq/hmPOIKTS7EWx6Wd
         zJQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBgLGeuS2A+cc77gHwFOkzd2VE+3K+TTYPayx0iHwPCvFD/D3MC0GbuB0iwK6mRLcla0+EvL6KyqaW@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3N6Sc1INEk1UWknsYPx5VgBcnC6BcrMrXDF8QW7xSAMpb9blQ
	LsggpKdfe74WWB4lFFSxDuFxdrMr/vNpFjaxtkT6gQ86pbO+ezj/FuYt5wwAm5U=
X-Gm-Gg: ASbGncvmmqyM7gauNxngU4TI1HOL5lEf2WO+0u+9mXTUJDjqW4UeS/nJRd1SrPWvuGm
	sK/KDoNxK9xHVBkR6fV3cCEwBVXA6fY2GiY7G0MtWYXQtwFFaBtlj7+dMn1P27FTSrJVFOJDk0g
	T9OekjOz5fdGXwUWxJDzK5bXLqlnsHnjHyOPwasQAWPlIfOHmmZaevPp3M+pQd3GsXoXSrT+V2v
	5oN3NSkYATfpSwrIom4uwjGjmrYo+8cmeyZCFO3bC+oAESU8SXysT+fHyfxuYVSFwh5TPviIc4W
	poeSWGCyaaZEWxVjKPm87yAMyBv3hu5m1R34zcUfFETZ2p0EGG5qkUeislsIlbGvymBmmZ814GB
	+Dv5IAieqrnFASdRcdUKJl3Ev
X-Google-Smtp-Source: AGHT+IGAn6gM1TyoFfcxy1mqC0F4XhADSkCvoUeeALC8/A3I1KfzwKl6LMwy2iUWuocM+y/26k7tHw==
X-Received: by 2002:a05:6512:234f:b0:549:6451:7ea0 with SMTP id 2adb3069b0e04-54964517fb8mr2749118e87.19.1741046471766;
        Mon, 03 Mar 2025 16:01:11 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443cd03dsm1427182e87.244.2025.03.03.16.01.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 16:01:10 -0800 (PST)
Date: Tue, 4 Mar 2025 02:01:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alyssa Rosenzweig <alyssa@rosenzweig.io>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Maxime Ripard <mripard@kernel.org>, fnkl.kernel@gmail.com, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, asahi@lists.linux.dev, Janne Grunau <j@jannau.net>, 
	linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Alyssa Ross <hi@alyssa.is>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Neal Gompa <neal@gompa.dev>, Nick Chan <towinchenmi@gmail.com>
Subject: Re: [PATCH v7 0/5] Driver for pre-DCP apple display controller.
Message-ID: <dn7zskhxgdgr25nvbnsjyn5brc3yoc446dxz3vqgbiwoccvlcr@5l6f4byj53fo>
References: <20250217-adpdrm-v7-0-ca2e44b3c7d8@gmail.com>
 <c3927b51-55ef-4a38-8931-18ff00caa8d8@linaro.org>
 <Z8XcH7xoDC7TA7ZC@blossom>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z8XcH7xoDC7TA7ZC@blossom>

On Mon, Mar 03, 2025 at 11:43:11AM -0500, Alyssa Rosenzweig wrote:
> > > Sasha Finkelstein (5):
> > >        dt-bindings: display: Add Apple pre-DCP display controller
> > >        drm: adp: Add Apple Display Pipe driver
> > >        drm: panel: Add a panel driver for the Summit display
> > >        arm64: dts: apple: Add touchbar screen nodes
> > >        MAINTAINERS: Add entries for touchbar display driver
> > > 
> > >   .../display/apple,h7-display-pipe-mipi.yaml        |  83 +++
> > >   .../bindings/display/apple,h7-display-pipe.yaml    |  88 +++
> > >   .../bindings/display/panel/apple,summit.yaml       |  58 ++
> > >   MAINTAINERS                                        |  16 +
> > >   arch/arm64/boot/dts/apple/t8103-j293.dts           |  31 ++
> > >   arch/arm64/boot/dts/apple/t8103.dtsi               |  61 ++
> > >   arch/arm64/boot/dts/apple/t8112-j493.dts           |  31 ++
> > >   arch/arm64/boot/dts/apple/t8112.dtsi               |  61 ++
> > >   drivers/gpu/drm/Kconfig                            |   2 +
> > >   drivers/gpu/drm/Makefile                           |   1 +
> > >   drivers/gpu/drm/adp/Kconfig                        |  17 +
> > >   drivers/gpu/drm/adp/Makefile                       |   5 +
> > >   drivers/gpu/drm/adp/adp-mipi.c                     | 276 +++++++++
> > >   drivers/gpu/drm/adp/adp_drv.c                      | 617 +++++++++++++++++++++
> > >   drivers/gpu/drm/panel/Kconfig                      |   9 +
> > >   drivers/gpu/drm/panel/Makefile                     |   1 +
> > >   drivers/gpu/drm/panel/panel-summit.c               | 132 +++++
> > >   17 files changed, 1489 insertions(+)
> > > ---
> > > base-commit: b62cef9a5c673f1b8083159f5dc03c1c5daced2f
> > > change-id: 20241124-adpdrm-25fce3dd8a71
> > > 
> > > 
> > 
> > All patches are reviewed, can we funnel patches 1, 2 & 5 via drm-misc-next now ?
> 
> I'm planning to do so today, just need to get dim setup first :)

Nice! As a heads up, it would be really-really nice if you can send any
kind of 'applied' message. If you are using 'dim b4-shazam', then
'b4 ty -a' might do that for you. Otherwise just a simple 'hey, applied'
email is useful enough.

-- 
With best wishes
Dmitry

