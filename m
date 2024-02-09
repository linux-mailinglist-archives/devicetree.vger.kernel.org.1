Return-Path: <devicetree+bounces-40087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 681EE84F265
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 10:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1A0491F233E9
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 09:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF6CA679E7;
	Fri,  9 Feb 2024 09:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="VhVJhVHZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF9C664B4;
	Fri,  9 Feb 2024 09:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707471652; cv=none; b=HG0XKiRu2HBu2Dryuk+pIa/yQK3jkkHZS4nNmhFYyVBt+nDDiGq49Ule9leujKZOYBDZu/bLopkZA6YSYprqAzj+XrA3sE+Zt13s49NMNihZlMk7jQjoJq6SPmCNx1Tu4osMhHLKU4lAxpN/r4tS1wJmcmVHh0PKuVcBmAVNBnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707471652; c=relaxed/simple;
	bh=jzZ/VNt6rEEtxZX6VQAnrsQIlVcxLaQEBm6Js0gK5oM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HtqyUToXb/oFgQoTFVLhsA/CDu4JFKOuvQwKTrICCRq1SI3y1ccEvVE65ZRR5ccStTFpHzLWooq5lwWrrIZQRJhmOXCinXZSRubdu/v2dJ94bz4IS4e12oelNci+EoxkgeRrtVBYKKsl/XBdk6osIDvRSPup8IqTXnOeuoWWNWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b=VhVJhVHZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A62E4C433C7;
	Fri,  9 Feb 2024 09:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1707471652;
	bh=jzZ/VNt6rEEtxZX6VQAnrsQIlVcxLaQEBm6Js0gK5oM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VhVJhVHZsRa9Pqz5fCrlUkCCB/A/PdMn5almDD6tlOUGPXDDaWtLVdSgQVMMgaX23
	 8FIqBI4fSm9o+QQqoefoQr/mY4Gne5ewh6dr5onNr8VHyEADH0OdL6xnV7LWGTCYqU
	 nEuVCwpxJyDFEu7PmC1k4a17jjaiyin9FBmrF6tw=
Date: Fri, 9 Feb 2024 09:40:48 +0000
From: Greg KH <gregkh@linuxfoundation.org>
To: Stefan Eichenberger <eichest@gmail.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, piyush.mehta@amd.com, michal.simek@amd.com,
	francesco.dolcini@toradex.com, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: Re: [PATCH] dt-bindings: usb: microchip,usb5744: Remove peer-hub as
 requirement
Message-ID: <2024020941-small-devious-1e36@gregkh>
References: <20240130073505.8916-1-eichest@gmail.com>
 <ZcXfflAvkzHzWBfb@eichest-laptop>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcXfflAvkzHzWBfb@eichest-laptop>

On Fri, Feb 09, 2024 at 09:17:02AM +0100, Stefan Eichenberger wrote:
> Hi Greg,
> 
> On Tue, Jan 30, 2024 at 08:35:05AM +0100, Stefan Eichenberger wrote:
> > From: Stefan Eichenberger <stefan.eichenberger@toradex.com>
> > 
> > The peer-hub is used to model the relationship between the USB 2 and USB
> > 3 hub. However, it is possible to only connect USB 2 without having
> > USB 3. Therefore, the peer-hub property should not be marked as required.
> 
> I just wanted to ask if everything is okay with the patch and if its
> fine to apply it or if it needs some updates?

That was only 10 days ago, please give us a chance to catch up on
reviews.

In the meantime, while waiting, please review other changes on the
lists, that way yours moves higher up in the queue.  Any reason why you
can't do that now?

thanks,

greg k-h

