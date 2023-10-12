Return-Path: <devicetree+bounces-8202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8257C71AB
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 17:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BF221C20A56
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 15:37:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 230DA27EC7;
	Thu, 12 Oct 2023 15:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUa9IbTg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013912773F
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 15:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E69F5C433C8;
	Thu, 12 Oct 2023 15:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697125056;
	bh=ML/ItAhL36ApIhxTi+3W4IYUm7EIERSRXtCwbBcLfCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KUa9IbTgCoqpTvU++heQIdq4I240gcIfvieNWQpfdGD+PIR77+dxnOrwjQD+/eKVA
	 1Sv6NOvaDsKwzy8jY0RtidZaieb0+H5DmsS5VioUWmAkStXuxFmVeO7Q5+pAu77JpM
	 kcE/0Zs73AbnQMRTpp1F5faMlpmhcnJHqzSo3dRts+66VzU0ayHF9NKHbRYaixDlH2
	 NaE1yjZFPQoN07qCBoNB3gDedgUXBRGxhJCv42sKFsrKlb6cwmS21fPmiv/+ozLxzd
	 ri1h+7x2j6k7Ld7q5rps95jyMp9QXRjgVeQCNJkglh2u2RZuq2fw7a9Mm8D7gSV8u6
	 +OnouuvXbcLOA==
Received: (nullmailer pid 891148 invoked by uid 1000);
	Thu, 12 Oct 2023 15:37:34 -0000
Date: Thu, 12 Oct 2023 10:37:34 -0500
From: Rob Herring <robh@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Conor Dooley <conor@kernel.org>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org, Kieran Bingham <kieran.bingham@ideasonboard.com>, devicetree@vger.kernel.org, Lee Jackson <lee.jackson@arducam.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Message-ID: <20231012153734.GA826122-robh@kernel.org>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
 <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
 <20231011-conflict-monument-75379ef495cc@spud>
 <ar5rf3mas33vvg47jflmhajpyx2pypdjdf3x522x3a3v5cva2a@gjmr5cjv6dyd>
 <20231011-deserve-platonic-0beb72c94661@spud>
 <20231011162454.GB5306@pendragon.ideasonboard.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231011162454.GB5306@pendragon.ideasonboard.com>

On Wed, Oct 11, 2023 at 07:24:54PM +0300, Laurent Pinchart wrote:
> On Wed, Oct 11, 2023 at 05:16:50PM +0100, Conor Dooley wrote:
> > On Wed, Oct 11, 2023 at 06:12:28PM +0200, Jacopo Mondi wrote:
> > > On Wed, Oct 11, 2023 at 04:53:34PM +0100, Conor Dooley wrote:
> > > > On Tue, Oct 10, 2023 at 05:12:07PM +0200, Jacopo Mondi wrote:
> > > > > Add bindings for OmniVision OV64A40.
> > > > >
> > > > > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > > > > Signed-off-by: Lee Jackson <lee.jackson@arducam.com>
> > > >
> > > > What does Lee's SoB indicate here?
> > > 
> > > Lee has contributed to the development of the driver and validation of
> > > bindings.
> > 
> > Then you're missing a Co-developed-by: from Lee :)
> > 
> > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > index b19995690904..df089d68b58c 100644
> > > > > --- a/MAINTAINERS
> > > > > +++ b/MAINTAINERS
> > > > > @@ -15821,6 +15821,13 @@ S:	Maintained
> > > > >  T:	git git://linuxtv.org/media_tree.git
> > > > >  F:	drivers/media/i2c/ov5695.c
> > > > >
> > > > > +OMNIVISION OV64A40 SENSOR DRIVER
> > > > > +M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
> > > > > +L:	linux-media@vger.kernel.org
> > > > > +S:	Maintained
> > > > > +T:	git git://linuxtv.org/media_tree.git
> > > >
> > > > Binding looks fine to me, my question is here. Usually having a tree
> > > > here means that you apply the patches yourself. Do you?
> > > >
> > > 
> > > No, and only Mauro has commit rights on the media tree.
> > > 
> > > All i2c sensor drivers have a tree listed, regardless who commits
> > > there. What should I put there ?
> > 
> > IMO, nothing. The media tree entry should cover the parent directory,
> > no?
> 
> There's little documentation for the T: tag. In MAINTAINERS, we have
> 
>         T: *SCM* tree type and location.
>            Type is one of: git, hg, quilt, stgit, topgit
> 
> which doesn't tell much. In Documentation/sbumitting-patches.rst,
> there's ona additional paragraph:
> 
>   Note, however, that you may not want to develop against the mainline
>   tree directly.  Most subsystem maintainers run their own trees and
>   want to see patches prepared against those trees.  See the **T:**
>   entry for the subsystem in the MAINTAINERS file to find that tree, or
>   simply ask the maintainer if the tree is not listed there.
> 
> If the purpose of the T: tag is to tell which tree patches for this
> driver should be developed against, the above tree seems right.

No, it says 'T' would be in the subsystem entry, not the driver entry.

It is somewhat frequently suggested to use 'T' entries as the way to 
find maintainers who apply patches vs. maintainers for a file. I would 
like something more explicit, but that's what we have ATM.

Rob

