Return-Path: <devicetree+bounces-7803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F7FE7C5912
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B3902828F7
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 16:24:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DAC83C691;
	Wed, 11 Oct 2023 16:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="LYj9wM8R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2A30F88
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 16:24:53 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A72F991;
	Wed, 11 Oct 2023 09:24:52 -0700 (PDT)
Received: from pendragon.ideasonboard.com (213-243-189-158.bb.dnainternet.fi [213.243.189.158])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5EBD3512;
	Wed, 11 Oct 2023 18:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1697041484;
	bh=VvTWetfAU33D3NP4Jevd86GCQidIbkk2d2bk+mjnMe8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LYj9wM8RwWcbKBn5rk0zwDaQg5Jn324N0JGSPS2g0ZYJn1uK63bcgRpdZBDnLxLQc
	 0Ey+84ngHilPQdrAL7Lc+LxVCqHsG2B0I80cUcdeMIsLIhRjc6bSGGgN7QYJWr8AEg
	 RFBm+XV7sVILu2eUcg7mbVZdTZqt0SNe19Rm3xB0=
Date: Wed, 11 Oct 2023 19:24:54 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Conor Dooley <conor@kernel.org>
Cc: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	devicetree@vger.kernel.org, Lee Jackson <lee.jackson@arducam.com>
Subject: Re: [PATCH 1/2] media: dt-bindings: Add OmniVision OV64A40
Message-ID: <20231011162454.GB5306@pendragon.ideasonboard.com>
References: <20231010151208.29564-1-jacopo.mondi@ideasonboard.com>
 <20231010151208.29564-2-jacopo.mondi@ideasonboard.com>
 <20231011-conflict-monument-75379ef495cc@spud>
 <ar5rf3mas33vvg47jflmhajpyx2pypdjdf3x522x3a3v5cva2a@gjmr5cjv6dyd>
 <20231011-deserve-platonic-0beb72c94661@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20231011-deserve-platonic-0beb72c94661@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 11, 2023 at 05:16:50PM +0100, Conor Dooley wrote:
> On Wed, Oct 11, 2023 at 06:12:28PM +0200, Jacopo Mondi wrote:
> > On Wed, Oct 11, 2023 at 04:53:34PM +0100, Conor Dooley wrote:
> > > On Tue, Oct 10, 2023 at 05:12:07PM +0200, Jacopo Mondi wrote:
> > > > Add bindings for OmniVision OV64A40.
> > > >
> > > > Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>
> > > > Signed-off-by: Lee Jackson <lee.jackson@arducam.com>
> > >
> > > What does Lee's SoB indicate here?
> > 
> > Lee has contributed to the development of the driver and validation of
> > bindings.
> 
> Then you're missing a Co-developed-by: from Lee :)
> 
> > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > index b19995690904..df089d68b58c 100644
> > > > --- a/MAINTAINERS
> > > > +++ b/MAINTAINERS
> > > > @@ -15821,6 +15821,13 @@ S:	Maintained
> > > >  T:	git git://linuxtv.org/media_tree.git
> > > >  F:	drivers/media/i2c/ov5695.c
> > > >
> > > > +OMNIVISION OV64A40 SENSOR DRIVER
> > > > +M:	Jacopo Mondi <jacopo.mondi@ideasonboard.org>
> > > > +L:	linux-media@vger.kernel.org
> > > > +S:	Maintained
> > > > +T:	git git://linuxtv.org/media_tree.git
> > >
> > > Binding looks fine to me, my question is here. Usually having a tree
> > > here means that you apply the patches yourself. Do you?
> > >
> > 
> > No, and only Mauro has commit rights on the media tree.
> > 
> > All i2c sensor drivers have a tree listed, regardless who commits
> > there. What should I put there ?
> 
> IMO, nothing. The media tree entry should cover the parent directory,
> no?

There's little documentation for the T: tag. In MAINTAINERS, we have

        T: *SCM* tree type and location.
           Type is one of: git, hg, quilt, stgit, topgit

which doesn't tell much. In Documentation/sbumitting-patches.rst,
there's ona additional paragraph:

  Note, however, that you may not want to develop against the mainline
  tree directly.  Most subsystem maintainers run their own trees and
  want to see patches prepared against those trees.  See the **T:**
  entry for the subsystem in the MAINTAINERS file to find that tree, or
  simply ask the maintainer if the tree is not listed there.

If the purpose of the T: tag is to tell which tree patches for this
driver should be developed against, the above tree seems right.

-- 
Regards,

Laurent Pinchart

