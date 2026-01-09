Return-Path: <devicetree+bounces-253362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D89BD0B36E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 17:25:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 665DB3155946
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 16:18:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39B9364040;
	Fri,  9 Jan 2026 16:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b="qIyyRxFS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.andi.de1.cc (mail.andi.de1.cc [178.238.236.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4702773DA;
	Fri,  9 Jan 2026 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.238.236.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767975447; cv=none; b=IgMm1fRmEcI+6aKdvQRFSOZXLy/5WsVe1njCJmqndTf6hHUKbXv0toS9H6imGxrX/IXRwS69rJ0Ude73dWOqQ7Wk4FVO7vWWcBIFhAEKlTA7w1QwvLkVLAFb/qbUQLVAV6fe8ItY4nY5HXcRWnPsfCdgWdr6XZWtaTkfSz6TbBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767975447; c=relaxed/simple;
	bh=AOFFKh3bP0AYCpimAyhrNvO9NpEjYpKlV0CEbcUjOT0=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=JkJSjVDMjMAtezxFV36brC/AguMh9epTkceutLfgn+MK5l/RB3gAp78pjGfjUJvZcUKw/de7UTBmbjC5hOcjhiT605osylLQ5Yh+zQz8fYw38jk6bWzRbJau4OsInK6OyaWFhP3HMc6Wu1BgjrixzT/Cqls9De3VQaJmihZf0Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info; spf=pass smtp.mailfrom=kemnade.info; dkim=pass (2048-bit key) header.d=kemnade.info header.i=@kemnade.info header.b=qIyyRxFS; arc=none smtp.client-ip=178.238.236.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kemnade.info
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kemnade.info
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kemnade.info; s=20220719; h=References:In-Reply-To:Cc:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=VOzCAKrFGKy7NNjvxbeCqy8hAMZUYHoldpLwQznGtOY=; b=qIyyRxFSSZxih2R3LO5QyB9jJd
	KferFIpvl/8y1vrHx96X1wzGE/jy51zUohHy4zP8eMNSU4aWIxZHOLMnTEBfFt6xbSqMXzLw3jAzu
	xHfMwnEAXHTEuQRyN2jy2V87co31tdU9WVbBfUSQf9Z0U3rmAn2Op7wH+zFkt94K7fL5YNYZ8PFKk
	bK89/th2Ig7JKYwB0jGoA3yJ33vwUObgoLzG9RbQXQC+MW+stwMJulYVW6fZzDSV8xZQsrG/9Yy4Z
	vk6unspchIi4ozR5UGG4hYHxQRLw/1FBVguUkAo8Y8e9z42JYU2/QQL3Gj6qtlyHjQgrarW2r9b4L
	rL45IcEg==;
Date: Fri, 9 Jan 2026 17:17:11 +0100
From: Andreas Kemnade <andreas@kemnade.info>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, Kevin Hilman
 <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, Tony Lindgren
 <tony@atomide.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, nm@ti.com, ssantosh@kernel.org
Subject: Re: [PATCH] dt-bindings: omap: ti,prm-inst: Convert to DT schema
Message-ID: <20260109171711.7080e54c@kemnade.info>
In-Reply-To: <20260102220231.GA247492-robh@kernel.org>
References: <20260102-prm-inst-v1-1-e85402b86885@kemnade.info>
	<20260102220231.GA247492-robh@kernel.org>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; aarch64-unknown-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 2 Jan 2026 16:02:31 -0600
Rob Herring <robh@kernel.org> wrote:

> On Fri, Jan 02, 2026 at 08:32:15PM +0100, Andreas Kemnade wrote:
> > Convert prm-inst binding to DT schema. Use the closest matching standard
> > node name in the example.
> > 
> > Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> > ---
> >  .../devicetree/bindings/arm/omap/prm-inst.txt      | 31 ------------
> >  .../devicetree/bindings/arm/omap/ti,prm-inst.yaml  | 55 ++++++++++++++++++++++  
> 
> ti,omap-prm-inst.yaml to match the compatible. Otherwise, looks good.
> 
or do we want to put it in arm/ti where also the board compatibles reside and
have bindings/arm/omap as the purgatory of the bindings.
BTW: the driver (drivers/pmdomain/ti/omap_prm.c) is listed under
TI KEYSTONE MULTICORE NAVIGATOR DRIVERS in MAINTAINERS although it is not keystone arch.

> Rob
> 


