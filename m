Return-Path: <devicetree+bounces-140865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 98801A1BF02
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 00:21:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 77B6D3AF336
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 23:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63C31EEA28;
	Fri, 24 Jan 2025 23:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b="cwH55OIm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7081E1DDC2F
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 23:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737760863; cv=none; b=Ep++qQqUPFbKlVhqqyoKx6/FY7QcgBxAzKd7gUytvjQ7nrJMXU0dQF3LbQGdWhTfNU3FVDJVb29vbpdX16GAQyCz0vxV0coq5QSumWIQ1rPALMxD6H1yOzclk4MtsIG+hmsf08JR1wyObJbCS8GrcDSQgaOxy8OKEc6E6EW74K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737760863; c=relaxed/simple;
	bh=8lx8vgHE1m6Y5baU2XpMoUndgpmc9nAWajXS/JsK2e0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fkxRW6MKBO7np19dOB62cMnIa1Y4eup+vfxlYpWP5MSL8MFUYB2Q2WHYsBAY+LWTlPwJRbu8enA53jq019tTR6Xle+UK96E/mTigxBVSkW6vu1G5bm6NvQSrs26ig8jaOv/spwlW1x4CAzSaZISc+kEjnrYzpCUMhXpo98gxNN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com; spf=pass smtp.mailfrom=fastly.com; dkim=pass (1024-bit key) header.d=fastly.com header.i=@fastly.com header.b=cwH55OIm; arc=none smtp.client-ip=209.85.166.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=fastly.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fastly.com
Received: by mail-io1-f46.google.com with SMTP id ca18e2360f4ac-84cdb6fba9bso208289839f.2
        for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 15:21:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fastly.com; s=google; t=1737760860; x=1738365660; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H7/eMVpXx+68IbocBkX45wzxl6Oa4llA1O2i3334KXs=;
        b=cwH55OImNlayLgk0OlzeR13avNMqwJ3qAD3stRXcX6zdvr5za4qtLjI9Zx6jY+UERF
         KSpH6r7m3YXhYlGN9fR8Svo4a7FPaWoosfl07g/8g9WsFOtRbSAhoK4n2vb4uje7/NeU
         ztLtsXL/AGzQ0j5jQk7+VGvz0GiMloMkmilWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737760860; x=1738365660;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H7/eMVpXx+68IbocBkX45wzxl6Oa4llA1O2i3334KXs=;
        b=EYgie5TfTVTxVeRSDAKx/FeUYr9Jbr5gL2MWeyTQIW34rl7Jj6MmzGGb/AqvY8dTv/
         SJybP0/9lclTuWM49i+qUy1Dc0P9IxbY1HrhIDjU6RtY7zjGrfpvRpWQsp5maQMu0V2v
         WFjXr1TwaW2frNyfPXiMYVb3dksJC4XVfGJs2jEMvZC9Qij8L2KshuKsAwsf/HBHD3IV
         sTMFyKOvWyvsCf+3cPSZV34YEcvXrwr6jGBjjXL0Yb4THCllUmtBrMsvuSRzBXuTtcGD
         jIjhK+YOe+1iztu000XUAjBarm4r0BLcRVagVRuUdYUpgwqcXDKz2MNpmeani1uuZecd
         q1jw==
X-Forwarded-Encrypted: i=1; AJvYcCXiiNu8JCcHfptCtV0tOa9KuO3/4x4AborQdGOdq7ykJ034jqmIBHvw20OIWUHiPhScigvJaV2o9l69@vger.kernel.org
X-Gm-Message-State: AOJu0YwHUmIRqCKWYhnhTk88y6JeX1gZInclY3AUCfiw9KvvHVvV/1/P
	nJ7OmMCldi2LuVERUekhBLnXRcwrP1zyk5Ek+fspoPwOZrKM6BdCWGWw1jFX52Q=
X-Gm-Gg: ASbGncvzJTTg7rmeWFutxwQaupEz2PqaAwzGHToofTGXpfyTPWVPn7aq75EPdepTfF6
	oefjWmQvAypIKnUdiA4og7rGSLqOXYyN+5+qPyi8hIOtFK8Y0E+gMICP7LU8Rcmdzedbf2DmvCA
	p+skR4io225tW+8V4TgSbB2RJhziyTlpER6d5WKe8HaH4QVYXaDeSosaNEDkGWIZsA8xP5DAZBZ
	OkKNav/KslBhAcZY7fgXFE/ip5Mq19ugnpPux1rAI6m4g8=
X-Google-Smtp-Source: AGHT+IECMWc7yThU7l9WdvRzNr4eg6ummfBBXVEJMmSq56k2ixzMFXtpxeH39Pu9mIfQVrYnbtfDtg==
X-Received: by 2002:a05:6602:6d13:b0:83a:9488:154c with SMTP id ca18e2360f4ac-851b619f80dmr3126811239f.3.1737760860423;
        Fri, 24 Jan 2025 15:21:00 -0800 (PST)
Received: from LQ3V64L9R2 ([75.104.111.203])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-8521e01abb7sm97948739f.36.2025.01.24.15.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jan 2025 15:20:59 -0800 (PST)
Date: Fri, 24 Jan 2025 15:20:22 -0800
From: Joe Damato <jdamato@fastly.com>
To: Basharath Hussain Khaja <basharath@couthit.com>
Cc: danishanwar@ti.com, rogerq@kernel.org, andrew+netdev@lunn.ch,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, nm@ti.com, ssantosh@kernel.org,
	tony@atomide.com, richardcochran@gmail.com, parvathi@couthit.com,
	schnelle@linux.ibm.com, rdunlap@infradead.org,
	diogo.ivo@siemens.com, m-karicheri2@ti.com, horms@kernel.org,
	jacob.e.keller@intel.com, m-malladi@ti.com,
	javier.carrasco.cruz@gmail.com, afd@ti.com, s-anna@ti.com,
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org, pratheesh@ti.com, prajith@ti.com,
	vigneshr@ti.com, praneeth@ti.com, srk@ti.com, rogerq@ti.com,
	krishna@couthit.com, pmohan@couthit.com, mohan@couthit.com
Subject: Re: [RFC v2 PATCH 04/10] net: ti: prueth: Adds link detection, RX
 and TX support.
Message-ID: <Z5QgNu9AOzRre91J@LQ3V64L9R2>
Mail-Followup-To: Joe Damato <jdamato@fastly.com>,
	Basharath Hussain Khaja <basharath@couthit.com>, danishanwar@ti.com,
	rogerq@kernel.org, andrew+netdev@lunn.ch, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, nm@ti.com,
	ssantosh@kernel.org, tony@atomide.com, richardcochran@gmail.com,
	parvathi@couthit.com, schnelle@linux.ibm.com, rdunlap@infradead.org,
	diogo.ivo@siemens.com, m-karicheri2@ti.com, horms@kernel.org,
	jacob.e.keller@intel.com, m-malladi@ti.com,
	javier.carrasco.cruz@gmail.com, afd@ti.com, s-anna@ti.com,
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org, pratheesh@ti.com, prajith@ti.com,
	vigneshr@ti.com, praneeth@ti.com, srk@ti.com, rogerq@ti.com,
	krishna@couthit.com, pmohan@couthit.com, mohan@couthit.com
References: <20250124122353.1457174-1-basharath@couthit.com>
 <20250124134056.1459060-5-basharath@couthit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250124134056.1459060-5-basharath@couthit.com>

On Fri, Jan 24, 2025 at 07:10:50PM +0530, Basharath Hussain Khaja wrote:
> From: Roger Quadros <rogerq@ti.com>
> 
> Changes corresponding to link configuration such as speed and duplexity.
> IRQ and handler initializations are performed for packet reception.Firmware
> receives the packet from the wire and stores it into OCMC queue. Next, it
> notifies the CPU via interrupt. Upon receiving the interrupt CPU will
> service the IRQ and packet will be processed by pushing the newly allocated
> SKB to upper layers.
> 
> When the user application want to transmit a packet, it will invoke
> sys_send() which will inturn invoke the PRUETH driver, then it will write
> the packet into OCMC queues. PRU firmware will pick up the packet and
> transmit it on to the wire.
> 
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> Signed-off-by: Andrew F. Davis <afd@ti.com>
> Signed-off-by: Parvathi Pudi <parvathi@couthit.com>
> Signed-off-by: Basharath Hussain Khaja <basharath@couthit.com>
> ---
>  drivers/net/ethernet/ti/icssm/icssm_prueth.c | 599 ++++++++++++++++++-
>  drivers/net/ethernet/ti/icssm/icssm_prueth.h |  46 ++
>  2 files changed, 640 insertions(+), 5 deletions(-)

Looks like this patch was duplicated and posted twice ?

