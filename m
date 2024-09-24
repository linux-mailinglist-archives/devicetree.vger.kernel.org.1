Return-Path: <devicetree+bounces-105014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D38C984E36
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 00:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07BE7284A3B
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 22:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A31A4183CA0;
	Tue, 24 Sep 2024 22:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp6EwC+0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7973818308A;
	Tue, 24 Sep 2024 22:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727218635; cv=none; b=C+aMgpCF9xv4eL7OeVz24829vplT36VSHBHkCHhjCWTP3qKBsdhr4yDc9r8L0v9FK5eAReQEDLoXZl5Avn0Yh/ZU2cWrsteycYayYM14GOM6ygfFZeni2MAOOv6xfUinl7Of3EUkh1Qdew7WNNCGpE3L51q+mMsVWumWkHwCgHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727218635; c=relaxed/simple;
	bh=7TOMyGnNRfS07fDKrf9aztT10/hMmF0NI01sY3HZEsQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I3YcGUAfYG7BneQPY3Xk/ALxXoNFK780tLJAJ1Yp2DetsLzynptkR/wlWwdYt3O0Ek+yGNHiLMcV1D3lkCyxKSbPtQcTmoSgx6NgirvYp9GfvcODeA9ilG7I56SO1p7XKvYp3PP265pwZlKj7udd8psmpnW2pQjUtrAEzO9H5jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp6EwC+0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 332CEC4CEC4;
	Tue, 24 Sep 2024 22:57:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727218635;
	bh=7TOMyGnNRfS07fDKrf9aztT10/hMmF0NI01sY3HZEsQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mp6EwC+08tvRjigKaxyJ0SgygzO2X+itRiyuGjzwyDO3asFTYZXXsTplobETHh3tv
	 GX9H0Q94sHa0EQR6zMcsS69k3CPXnMn7fsaR80H33xTdnyVw744cqvOqJZvy1bt3sE
	 UvA3gPXxNjzwVzDVxujk62sq9gIXVJcGtZ+On8TSvGOjt0dHf6zAsuoJ0dYYpOSm3E
	 D/ojir7uhxPXDvqslcjeF4NkgEY/IyeGvUkcnWJ+A2auex1H/itCpG+ob3OOonMvPB
	 gi2sryBW6y7IYilQrnCWwxkdPt0s0Ep98KmA+noVQ8SOPF5tXu5lox0ouXHmUKawZ6
	 JYfoz4Orlj1EA==
Date: Tue, 24 Sep 2024 17:57:14 -0500
From: Rob Herring <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: Lukasz Majewski <lukma@denx.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stefan Agner <stefan@agner.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Fabio Estevam <festevam@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: lcdif: Add support for specifying display
 with timings
Message-ID: <20240924225714.GA441530-robh@kernel.org>
References: <20240923135744.2813712-1-lukma@denx.de>
 <0e72b574-14ec-4369-b899-30d5c615d238@denx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0e72b574-14ec-4369-b899-30d5c615d238@denx.de>

On Mon, Sep 23, 2024 at 07:53:57PM +0200, Marek Vasut wrote:
> On 9/23/24 3:57 PM, Lukasz Majewski wrote:
> > Up till now the fsl,lcdif.yaml was requiring the "port" property as a
> > must have to specify the display interface on iMX devices.
> > 
> > However, it shall also be possible to specify the display only with
> > passing its timing parameters (h* and v* ones) via "display" property:
> > (as in
> > Documentation/devicetree/bindings/display/panel/display-timings.yaml).
> 
> Timings should go into panel node, not into scanout engine node.
> 
> See e.g. panel-timings in arch/arm64/boot/dts/freescale/imx8mm-phg.dts , in
> your case the compatible might be "panel-dpi" .

I agree, but if this is already in use, we should allow it. We can mark 
it deprecated though.

Rob

