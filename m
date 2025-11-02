Return-Path: <devicetree+bounces-234122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E85FFC29144
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 16:48:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B52374E2484
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 15:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DE098635C;
	Sun,  2 Nov 2025 15:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="wRWu0IkA"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE583EEBB
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 15:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762098533; cv=none; b=WH4ypDQmrqgelWaMVW8JmKziMnYCPB8VFJgzSssDu8pJyevG6KOool5tlMUjVrcHf1yOYGeezuaL1lkqo2DcSiHLHA1+v3A6/fi/PMK26v+52SitPT+ymb5Xq3fi0YS+UPtnUeO5J5pPa+oME/20x55wZSHsP2MB91Ntq4Sms/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762098533; c=relaxed/simple;
	bh=nPOfhTMcxOpJUCQ3O3IQahZCN/dRkEJN4xU3hX+etf0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZWqxJ3d4MIKp/rINC0MhFwql4E7LfDxsRQgUfFMgTyznapT0hmri1D/TkIq2vEA64oFqO09hllryGmg29xlpr0K9iSZntyK0/11woP9EFR7PnawylPUTbuk9Wk2yVBLkTfx/46LaEQw5NF0FFSsQAYmrGt2ldcrrZttH2xHnjG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=wRWu0IkA; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (82-203-160-149.bb.dnainternet.fi [82.203.160.149])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id D065D10D4;
	Sun,  2 Nov 2025 16:46:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1762098416;
	bh=nPOfhTMcxOpJUCQ3O3IQahZCN/dRkEJN4xU3hX+etf0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wRWu0IkArjwiQeCVj7KIfJ9WoJcHWxhZAaVwVxOHGzrcLTj9z9YyCdQd+dbsJWkP3
	 1CJGBAA//UX001rO9zJLbBgwZoT+7MjPijd/05KFmHlVDGxIub2Y5x7QpDrKHmFTba
	 NI3xzB1vCDR08fo6Xu+lQ0cVbwQ9MGMUAW4dzxBA=
Date: Sun, 2 Nov 2025 17:48:34 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>, Rob Herring <robh@kernel.org>,
	Stanimir Varbanov <svarbanov@suse.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0
 alias
Message-ID: <20251102154834.GB27255@pendragon.ideasonboard.com>
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
 <bfc2be91-dcf9-4b38-a3f3-a1cad6c6aef2@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <bfc2be91-dcf9-4b38-a3f3-a1cad6c6aef2@lunn.ch>

On Sun, Nov 02, 2025 at 04:35:30PM +0100, Andrew Lunn wrote:
> On Sun, Nov 02, 2025 at 01:14:42PM +0200, Laurent Pinchart wrote:
> > The RP1 ethernet controller DT node contains a local-mac-address
> > property to pass the MAC address from the boot loader to the kernel. The
> > boot loader does not fill the MAC address as the ethernet0 alias is
> > missing. Add it.
> > 
> > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > ---
> 
> Should this have a Fixes: tag?

I can add

Fixes: 43456fdfc014 ("arm64: dts: broadcom: Enable RP1 ethernet for Raspberry Pi 5")

(or maybe Florian can when picking up this patch, if a v3 is not
needed).

> What MAC address does it currently get?  Random?

The local-mac-address property is not currently filled by the boot
loader, so it's all 0's. The kernel then assigns a random MAC address.

-- 
Regards,

Laurent Pinchart

