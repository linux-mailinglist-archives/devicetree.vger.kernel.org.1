Return-Path: <devicetree+bounces-32334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF4D82F03A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 15:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 948511C22C5B
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 14:05:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A62E31BDE7;
	Tue, 16 Jan 2024 14:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqdtqpaj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FEE1BDE2;
	Tue, 16 Jan 2024 14:05:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D92B3C43394;
	Tue, 16 Jan 2024 14:05:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705413926;
	bh=wdApqMu8yNYkMKGqd22mtZ0Ag75N+acHPwxyLZRbFs4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oqdtqpaj8keG80MKofmm+/4W4Imz2FHtS+o4CtqoQFnORrJaBPQXFHSqAw6kv3hDM
	 ViUfbpY+8ck27mkQ4RLJwiBuocuBWeziLRRo2jNaNgrw2USxSPXw1MpWOtljGkSs1X
	 WMizARNn/x7T2EfytvIxcaqLiTfWkOMzh9QkKFOUdklooT9mZUGGw5BSe+zvISlS9Y
	 m5RsO6yw8QSNeQ9zuzNqgS055j2xowU/qKoFaGAcUj09VbVagiUqIWrYGGV3WI+tIZ
	 cu3xzO7jg2xfwnEDgiD8rp2iBnIyfX0UGlnKZd17B/M3ZpJtlUwISM9Hswdmp0CPFh
	 /cLrpGPjrmw9g==
Date: Tue, 16 Jan 2024 08:05:23 -0600
From: Rob Herring <robh@kernel.org>
To: Devarsh Thakkar <devarsht@ti.com>
Cc: Conor Dooley <conor@kernel.org>, jyri.sarha@iki.fi,
	tomi.valkeinen@ideasonboard.com, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	praneeth@ti.com, nm@ti.com, vigneshr@ti.com, a-bhatia1@ti.com,
	j-luthra@ti.com, kristo@kernel.org
Subject: Re: [DO NOT MERGE PATCH 2/2] arm64: dts: ti: Add common1 register
 space for AM62x and AM65x SoCs
Message-ID: <20240116140523.GA3809602-robh@kernel.org>
References: <20240115125716.560363-1-devarsht@ti.com>
 <20240115125716.560363-3-devarsht@ti.com>
 <20240115-penpal-pluck-d156ccf21b2f@spud>
 <4c5cb4ed-96a3-7bd8-f660-2a3bb041ca09@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c5cb4ed-96a3-7bd8-f660-2a3bb041ca09@ti.com>

On Tue, Jan 16, 2024 at 02:48:53PM +0530, Devarsh Thakkar wrote:
> Hi Conor,
> 
> Thanks for the review.
> 
> On 15/01/24 21:44, Conor Dooley wrote:
> > On Mon, Jan 15, 2024 at 06:27:16PM +0530, Devarsh Thakkar wrote:
> >> This adds common1 register space for AM62x and AM65x SoC's which are using
> >> TI's Keystone display hardware and supporting it as described in
> >> Documentation/devicetree/bindings/display/ti/ti,am65x-dss.yaml.
> >>
> >> This region is documented in respective Technical Reference Manuals [1].
> >>
> >> [1]:
> >> AM62x TRM:
> >> https://www.ti.com/lit/pdf/spruiv7 (Section 14.8.9.1 DSS Registers)
> >>
> >> AM65x TRM:
> >> https://www.ti.com/lit/pdf/spruid7 (Section 12.6.5 DSS Registers)
> >>
> >> Signed-off-by: Devarsh Thakkar <devarsht@ti.com>
> >> ---
> > 
> > "[DO NOT MERGE PATCH 2/2]" but no rationale here as to why this cannot
> > be merged? What's the problem with it?
> > 
> 
> No problem as such from my point of view, but this is the process I follow
> since maintainer trees for device-tree file and bindings are different. I
> generally mark a [DO NOT MERGE] tag for device-tree file patches until binding
> patch gets merged so that the device-tree patches don't get applied by mistake
> if binding patch has some pending comments.

RFC is the tag for "don't merge". Don't make-up your own tags.

Rob

