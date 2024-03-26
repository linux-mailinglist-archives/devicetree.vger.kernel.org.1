Return-Path: <devicetree+bounces-53264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4011C88BBC2
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 08:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BE451C27448
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 07:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE4C132C1A;
	Tue, 26 Mar 2024 07:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="MtRbwoAX"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8C113281F;
	Tue, 26 Mar 2024 07:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711439786; cv=none; b=rvDiuuaKcnPx/34jIHNVBYGthhRQmUnQ3X07SSHXHkD1bMTGou9JeN5f4MxixMEPp7GTl0MggzXmBe2gTeker2EBEgpjmCWVXIeCnBsfet2MALB2iPcx4GuguEeuJBHenT2NxWEBfFux8yspy3D8lVKQe5DUVz9ShB07kcbVfQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711439786; c=relaxed/simple;
	bh=ZhjPFTOQpzOVcd27gwoGXa9xyp/xBd/MZT46RvxTdVM=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gI571iUWbxRr7h0+PZSnHiFdtWaLZWcHVExzEELmE4uQjxErkIunG1n0a5niEFcm13qvcE9l4ffODkcag3qc2/PWoGxRNy774Ez21Qy2wIP25Guu9aeVyZq25tTEoaZ2TvF4zsGK899NXIKSQ0B7GO7t+zlHTtth8b4/X9fIS3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=MtRbwoAX; arc=none smtp.client-ip=217.70.183.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 6C092E0009;
	Tue, 26 Mar 2024 07:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1711439780;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=q3PckqHmeL8Qlv6PGSssocDsbW2N2t4rB3eMlEpT7SU=;
	b=MtRbwoAXlKOJXFBo2uw1U3FfF18lh/9Un2QrPY99lbMOggoYxh4YoueN3OlcohCi2Yx0Gt
	RG3XxXY1xPbGjWLbb+g9yVDEzOT0hE5gbIqOorQx1UtF0HSmgYFpmg59R1SUpD91ifHS+p
	CxoKnuh6g7K/dpNExERJKrYq/nhKxpupBmWvKB41uSlylTWcNJ9n//izG8ruIcsqBiT5Tt
	ZZVyosb8aeJp4Beu/PVmJGzJLoHKJGRGHAt11MiG7R15BtQJRRjHUJZm7XoPsntxPuQaZd
	wCBMkXr3B41DnZdT+XoCjsDFIGsNqqOfI7wzvYDIt0/tA5KGCGwzLafl3w7qvA==
Date: Tue, 26 Mar 2024 08:56:17 +0100
From: Herve Codina <herve.codina@bootlin.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, Saravana
 Kannan <saravanak@google.com>, Lizhi Hou <lizhi.hou@amd.com>, Max Zhen
 <max.zhen@amd.com>, Sonal Santan <sonal.santan@amd.com>, Stefano Stabellini
 <stefano.stabellini@xilinx.com>, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Allan Nielsen <allan.nielsen@microchip.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, Steen Hegelund
 <steen.hegelund@microchip.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Nuno Sa <nuno.sa@analog.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, stable@vger.kernel.org
Subject: Re: [PATCH v6 1/2] driver core: Introduce
 device_link_wait_removal()
Message-ID: <20240326085617.0cf217d3@bootlin.com>
In-Reply-To: <2024032548-rope-improper-4f67@gregkh>
References: <20240325152140.198219-1-herve.codina@bootlin.com>
	<20240325152140.198219-2-herve.codina@bootlin.com>
	<2024032548-rope-improper-4f67@gregkh>
Organization: Bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-Sasl: herve.codina@bootlin.com

On Mon, 25 Mar 2024 19:37:10 +0100
Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:

> On Mon, Mar 25, 2024 at 04:21:25PM +0100, Herve Codina wrote:
> > The commit 80dd33cf72d1 ("drivers: base: Fix device link removal")
> > introduces a workqueue to release the consumer and supplier devices used
> > in the devlink.
> > In the job queued, devices are release and in turn, when all the
> > references to these devices are dropped, the release function of the
> > device itself is called.
> > 
> > Nothing is present to provide some synchronisation with this workqueue
> > in order to ensure that all ongoing releasing operations are done and
> > so, some other operations can be started safely.
> > 
> > For instance, in the following sequence:
> >   1) of_platform_depopulate()
> >   2) of_overlay_remove()
> > 
> > During the step 1, devices are released and related devlinks are removed
> > (jobs pushed in the workqueue).
> > During the step 2, OF nodes are destroyed but, without any
> > synchronisation with devlink removal jobs, of_overlay_remove() can raise
> > warnings related to missing of_node_put():
> >   ERROR: memory leak, expected refcount 1 instead of 2
> > 
> > Indeed, the missing of_node_put() call is going to be done, too late,
> > from the workqueue job execution.
> > 
> > Introduce device_link_wait_removal() to offer a way to synchronize
> > operations waiting for the end of devlink removals (i.e. end of
> > workqueue jobs).
> > Also, as a flushing operation is done on the workqueue, the workqueue
> > used is moved from a system-wide workqueue to a local one.
> > 
> > Cc: stable@vger.kernel.org  
> 
> Why is this for stable?  You are just adding a new api, no one is using
> it.
> 
> Or if they are, you didn't send me that patch...

The patch 2 in this current series uses the new api.

Best regards,
Hervé


