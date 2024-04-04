Return-Path: <devicetree+bounces-56234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6F18982BA
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:02:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B18F2B283B9
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 08:02:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABB995D734;
	Thu,  4 Apr 2024 08:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="IJZDVKa/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2495745970;
	Thu,  4 Apr 2024 08:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712217733; cv=none; b=iv/ML0HMK9c5wRw0d6ClwmAfCudn3L9GAXsP/c8L6k5Q+3inahkB1BpNmFEVGNZCBQbSyADF5HZSNwDqYrzudecO+YlBvi3H48fFTXtBxlsWc/V1BEh4m3E4lgsOgrVXWYD5kH/gAUgdm04uTqcXgZO6UTXScELSEzrNsHnkIEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712217733; c=relaxed/simple;
	bh=P64eT4AQ7tpEohdrZ0kzS9V6MntqvBaF3CJMEmytD04=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HHnLBn5TjDrfsh85brnlF1ZvagQHXwl0sLAFFvZS11aViobLLs8y4QM6LJwmXaoxJLOIrk8soA9dV4r6iew/PPax4jCCRBNncprbWdBlqDojqPs5YTX0p7wF2n1euG/c+o1TFjwJLGyoPj/ddZlsr8QkNE3N1n8nLJkUEK5EWE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=IJZDVKa/; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 93F611FA13;
	Thu,  4 Apr 2024 10:02:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1712217729;
	bh=66tsFT04mgIwzVF2MW9IycnyBVv3PsQQMbCL7bGCO3s=; h=From:To:Subject;
	b=IJZDVKa/j6WBqg5nIjG35BsPg2lHr48Ioc5SNq3sHlklTpDe0PaxAIPxQqQOAveke
	 1DoPGonYynJ8w4IyLYUtxiSz3vaaIGsF2nE5iibeh3OkjXVuW+YKWb2N+Wvmq1O5Dz
	 SuxFXY650ghk7K51a6Rq19GrjLmhCuHAe5yUkpXjbC6SDfDqtrR6KRbkGNs/kIZMVW
	 Rv/HFxBxKcs/pZoMaSgnZYyahyIeyfxoSy1rFIqciqTT1qlWR2kDtqpDFthNtOY7/R
	 8ntlLq1Y/2/gd3a3PklRDz6Bd0W2DdbUT9qw2S8oXam02aBSu+1I9PLrJFG+Uz6Znt
	 M7dotOZgQremg==
Date: Thu, 4 Apr 2024 10:02:04 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: Rob Herring <robh@kernel.org>
Cc: Hiago De Franco <hiagofranco@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hiago De Franco <hiago.franco@toradex.com>, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/4] dt-bindings: arm: fsl: remove reduntant
 toradex,colibri-imx8x
Message-ID: <20240404080204.GA6839@francesco-nb>
References: <20240402193512.240417-1-hiagofranco@gmail.com>
 <20240402193512.240417-3-hiagofranco@gmail.com>
 <20240403165721.GA3980362-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240403165721.GA3980362-robh@kernel.org>

Hello Rob,

On Wed, Apr 03, 2024 at 11:57:21AM -0500, Rob Herring wrote:
> On Tue, Apr 02, 2024 at 04:35:10PM -0300, Hiago De Franco wrote:
> > From: Hiago De Franco <hiago.franco@toradex.com>
> > 
> > 'toradex,colibri-imx8x' is already present as a constant value for
> > 'i.MX8QP Board with Toradex Colibri iMX8X Modules', so there is no need
> > to keep it twice as a enum value for 'i.MX8QXP based Boards'.
> 
> If the module can operate on its own

For the records, it can't.

> Acked-by: Rob Herring <robh@kernel.org>

Thanks,
Francesco


