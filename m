Return-Path: <devicetree+bounces-165431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E19A84543
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 15:47:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7F6747A9862
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 13:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B67C1519A1;
	Thu, 10 Apr 2025 13:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JUoJWD8u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76EA178F4E
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 13:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744292818; cv=none; b=KByOPnF1nK2PG+tKCK7PezgQ6xVD4qdqFq6cYMfkKXcPGd12JjK3epvtMB4KOe/wpe/+6y4fxehXHTpkgXDZ9mrTSiLgYM0oTmDVzFn2zc+DRbrwG/cARPBAdA1ozr2oaPYrM6PlxmT/pgblOcMimhoyjiC3/saHyWrJiWZCLHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744292818; c=relaxed/simple;
	bh=zwA4d25ah+mvZoYrC4tRowa2RLqWtvgbqQJWlfZnLMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=orPklYDBdY7rRPpDLuZ6yfNRikkEMUtk9QetiDIoJTmQCtJ93GmO0tSzMEx0xvjTcnzWonpCLluqM6pNbL/9tobA5JIeSWOCSDJ8eKlvR+QGhhZECk8YOI2KlcyrSRcPaegYbgMYPjO218QYKMicUigAUbuM/rsrpIVKJZsrcHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JUoJWD8u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C33DC4CEE8;
	Thu, 10 Apr 2025 13:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744292817;
	bh=zwA4d25ah+mvZoYrC4tRowa2RLqWtvgbqQJWlfZnLMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JUoJWD8uYX4yM7s6elH8ae0Xd1wm1WehC7D3FSe3d4Mk+njp9fOTgIL1N+N2uylJ4
	 JQNUiatvFap/4ndjE7iJRZKc4dNVEtMWEGyHZaMqIc+UnTFxe4o+BEBADAj75HZ7Vw
	 unCOiZc+CpwjAEyZZGPwGkXjb5693vTD0hi/dCanPlK1kS6IGYwFshMmY7qVJC1n+z
	 9IgZwHHdREjOCsSvDn/wQyAsHmijCsClwg62wjtJXz8jQdMzcYcrJF1ccpZLdtFxCh
	 sGOYMXowBdBD9lyNriCrnebMIZ523012k862xWlSxmrIwOJNg8hjr+yvR3EvPkhzkj
	 fFsFk4F+InQ/g==
Date: Thu, 10 Apr 2025 19:16:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: markus.stockhausen@gmx.de
Cc: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, chris.packham@alliedtelesis.co.nz
Subject: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
Message-ID: <Z/fLzpuj13WRe1/0@vaman>
References: <20241017162400.3881609-1-markus.stockhausen@gmx.de>
 <20241017162400.3881609-3-markus.stockhausen@gmx.de>
 <Z1XLheRVQYu43hI+@vaman>
 <138401dba84e$04bc0cf0$0e3426d0$@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <138401dba84e$04bc0cf0$0e3426d0$@gmx.de>

On 08-04-25, 08:18, markus.stockhausen@gmx.de wrote:
> > Von: Vinod Koul <vkoul@kernel.org>
> > Gesendet: Sonntag, 8. Dezember 2024 17:38
> > An: Markus Stockhausen <markus.stockhausen@gmx.de>
> > Cc: kishon@kernel.org; robh@kernel.org; krzk+dt@kernel.org;
> conor+dt@kernel.org; linux-phy@lists.infradead.org;
> devicetree@vger.kernel.org; chris.packham@alliedtelesis.co.nz
> > Betreff: Re: [PATCH v5 2/2] phy: Realtek Otto SerDes driver
> >
> > On 17-10-24, 12:24, Markus Stockhausen wrote:
> > > The Realtek Otto platform is a series of 4 different MIPS32 based
> > > network switch SoCs. They consist of:
> > >
> > > ....
> > > +DEFINE_SHOW_ATTRIBUTE(rtsds_dbg_polarity);
> > > +
> > > +static void rtsds_dbg_init(struct rtsds_ctrl *ctrl, u32 sid) {
> > > +	debugfs_create_file("mode", 0600, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev, &rtsds_dbg_mode_fops);
> > > +
> > > +	debugfs_create_file("reset", 0200, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev,
> &rtsds_dbg_reset_fops);
> > > +
> > > +	debugfs_create_file("polarity", 0400, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev,
> &rtsds_dbg_polarity_fops);
> > > +
> > > +	debugfs_create_file("registers", 0600, ctrl->sds[sid].phy->debugfs,
> > > +			    &ctrl->sds[sid].phy->dev,
> &rtsds_dbg_registers_fops); }
> >
> > Please create a driver directory and add files to that please
> 
> Sorry for the late response as I have been busy otherwise. I will take care
> about the things you noted. Regarding this advise: Do you want me to create
> a separate directory in the debugfs or for the driver source code?

Debugfs please

-- 
~Vinod

