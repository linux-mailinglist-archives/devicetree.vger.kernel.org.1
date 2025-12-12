Return-Path: <devicetree+bounces-246004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D122DCB7AF2
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 03:38:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 125583020C41
	for <lists+devicetree@lfdr.de>; Fri, 12 Dec 2025 02:38:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C02029A9E9;
	Fri, 12 Dec 2025 02:38:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="V/l3PVm7"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B894298CC9
	for <devicetree@vger.kernel.org>; Fri, 12 Dec 2025 02:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765507095; cv=none; b=ELXSrGrZqEUMHKM0H+86OTsqdAw7NLzmIeTz5Sgy+mjHzWiJh7eh/vQWvE+BF1wle7E2MMWNYwqfEZyq5h6bBOeYIc53zDwIia6qWyK2YRs9vstKMTwm+Cnbw6hoojyURq0i5uGcJmK82sOROg/RtsIYV2gPriSvHNdIlPvRkK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765507095; c=relaxed/simple;
	bh=T5ZdSh49BDJDiP4MenDdFaFjtjBDzQhBDclBlvx5ahA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IYlwU0mkte4VZoAoccRLagCHYjjTSOzZefL9MgiPWkbdVifuUa7vvq/g4QIxKaNkeU/5RM/FdbzgrCVTKUtIMme0J/kb3tL8zJiniQQaUbx2ef7s3AjDk41T9dhZmpSuOT8lZn4OACfNLbSG9rzmp83y21nKAQNeQFKDXnU1HHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=V/l3PVm7; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (p99249-ipoefx.ipoe.ocn.ne.jp [153.246.134.248])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 8DD0713BA;
	Fri, 12 Dec 2025 03:38:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1765507086;
	bh=T5ZdSh49BDJDiP4MenDdFaFjtjBDzQhBDclBlvx5ahA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V/l3PVm7iJ6QTUcRxiMZcb3ecV8ocLKO9p1AgMesmB29uhJiZ7vcENd/w2SejKjdy
	 bqjHr5yL6PqeLjKQts8d4lfrG9TWj9+ub7tkSWvT06k3b4MzWj08lDZEJp+94nsjXR
	 amQ/JxtEyNKKQw/Y4VfpY/eB3wFxKP9acKcuKPOU=
Date: Fri, 12 Dec 2025 11:37:49 +0900
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rob Herring <robh@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Andrew Lunn <andrew@lunn.ch>, Conor Dooley <conor+dt@kernel.org>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	"Ivan T. Ivanov" <iivanov@suse.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Phil Elwell <phil@raspberrypi.com>,
	Stanimir Varbanov <svarbanov@suse.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rpi-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: broadcom: bcm2712: rpi-5: Add ethernet0
 alias
Message-ID: <20251212023749.GF28411@pendragon.ideasonboard.com>
References: <20251102111443.18206-1-laurent.pinchart@ideasonboard.com>
 <CAL_JsqJg4aYGyd49UAAPBw+FGpmGxV5JkdkXp2FK_7Gt+7DLZA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqJg4aYGyd49UAAPBw+FGpmGxV5JkdkXp2FK_7Gt+7DLZA@mail.gmail.com>

Hi Rob,

On Thu, Dec 11, 2025 at 12:42:40PM -0600, Rob Herring wrote:
> On Sun, Nov 2, 2025 at 5:15 AM Laurent Pinchart wrote:
> >
> > The RP1 ethernet controller DT node contains a local-mac-address
> > property to pass the MAC address from the boot loader to the kernel. The
> > boot loader does not fill the MAC address as the ethernet0 alias is
> > missing. Add it.
> 
> My change here[1] is going to effectively revert this.

:-(

> The RP1 stuff
> needs to either be an overlay or not. We don't need both ways.
> /aliases don't work for overlays. I suppose that could be added as a
> fixup when applying. The kernel also assumes aliases are not dynamic
> and uses indexes which aren't present, so even if it did work there
> would still be problems. OTOH, if the bootloader might use the
> ethernet controller, then why would this ever be an overlay in the
> first place?
> 
> Turns out digging into RP1 stuff, it is a mess and needs reworking[2].

I don't have a strong opinion personally. As far as I understand from
https://lore.kernel.org/all/cover.1748526284.git.andrea.porta@suse.com/,
non-overlay support was added for compatibility with downstream. I don't
know why the overlay option was considered better for upstream. Andrea,
could you comment on this ?

> Right now, I just want the warning gone so I don't get further complaints[3].
> 
> Rob
> 
> [1] https://lore.kernel.org/all/20251117211503.728354-2-robh@kernel.org/
> [2] https://lore.kernel.org/all/CAL_JsqJUzB71QdMcxJtNZ7raoPcK+SfTh7EVzGmk=syo8xLKQw@mail.gmail.com/
> [3] https://lore.kernel.org/all/CAHk-=wi+ge-gtCg+iLd6dgjisGchjtsKY8AXG9tXGOxqVv8Fkw@mail.gmail.com/

-- 
Regards,

Laurent Pinchart

