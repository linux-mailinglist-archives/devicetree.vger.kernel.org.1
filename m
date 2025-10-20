Return-Path: <devicetree+bounces-228928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 244CEBF2330
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 17:47:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1A6804E5698
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE6B272811;
	Mon, 20 Oct 2025 15:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="EUmFc3rr"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D12F92472A8
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 15:46:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760975201; cv=none; b=VbKtjR5bBGJeDFkaX7M1/gf/9gfX5QPhLi1r8uVX6HWy/m6NLpTpHzrKAj0J6eVXPaT+dbgF6Jmr62xisHfcxTvdNdiOzkXvlIJfMV/mxeMZIRJMXfJb5diY8z5Ps2avdIBQbYnKZgSyHmTH6uVxt6I4WvQ4yYlYgHKHpQky67s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760975201; c=relaxed/simple;
	bh=sNxXee+W1+T0QQqYoZjUQPLYVU/MxS9aOZB5QdQS9ek=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lpqfCHtYWVkIqNS8nmF7PYkEtsdsWczn7gxKp50UnSla8pNyjgm5tcTuP0xmtiYpCfZCh47/l4hwZqiILe6ls6oBEWvwTabKFEoRQPnJnZT4yXhsrHLUnFc6z/YZWQ+ljMYYtru4jujwI7biUNkDjjeesxZSAl3Hcl3V4C+vAg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=EUmFc3rr; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from pendragon.ideasonboard.com (87-94-110-32.bb.dnainternet.fi [87.94.110.32])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id A5C8782E;
	Mon, 20 Oct 2025 17:44:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1760975093;
	bh=sNxXee+W1+T0QQqYoZjUQPLYVU/MxS9aOZB5QdQS9ek=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EUmFc3rrfBxKRn2+DXvEc1xUEtm8JTz1bNCs9ssWuUL1dWVnQywDAlGX2ql3aBA1U
	 SNSkDg/T6rRFd/A8NI4HjvZ6yjfafbIPjhU3J41NHmMcHDuVnBtaNXDvuVB74UxgQH
	 sNLxo2Fk+KZB6IHjDVZbRrKQX6I+Oo/yyGq7T8rA=
Date: Mon, 20 Oct 2025 18:46:25 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Alexey Charkov <alchark@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Cenk Uluisik <cenk.uluisik@googlemail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Muhammed Efe Cetin <efectn@6tel.net>, Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: Add device tree for the
 Orange Pi CM5 Base board
Message-ID: <20251020154625.GB6159@pendragon.ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
 <2328202.iZASKD2KPV@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2328202.iZASKD2KPV@phil>

On Mon, Oct 20, 2025 at 04:44:21PM +0200, Heiko Stuebner wrote:
> Am Montag, 6. Oktober 2025, 01:55:36 Mitteleuropäische Sommerzeit schrieb Laurent Pinchart:
> > Hello,
> > 
> > This patch series adds a device tree for the Orange Pi CM5 Base board
> > from Xunlong. This is a combination of a compute module and a carrier
> > board, so the device tree is split in two files.
> > 
> > The work is based on a combination of upstream device trees for other
> > RK3588-based Orange Pi boards and the downstream device tree, all
> > checked against the available schematics for the carrier board. The
> > compute module schematics is unfortunately not available.
> > 
> > The series starts with three patches that add a new tmds-enable-gpios
> > property to the rk3588-dw-hdmi-qp DT binding (1/5) and update the driver
> > accordingly (2/5 and 3/5). Those patches have been authored by Cristian
> > Ciocaltea as part of a larger series, I have incorporated them here
> > as-is.
> > 
> > Patch 4/5 then add a new compatible for the board to arm/rockchip.yaml.
> > The last patch (5/5) adds the device tree for the board.
> > 
> > Patches 2/5 and 3/5 could be merged separately through the DRM tree,
> > but patch 1/5 needs to be merged with the device tree in 5/5 to avoid
> > introducing DT validation warnings. I'd appreciate advice from the DT
> > maintainers regarding how to handle this, as I have been told before
> > that DT bindings and DT sources can't be merged through the same tree.
> 
> I think we generally only care about binding warnings happening
> in linux-next.
> 
> I.e. in most cases, the binding is merged with the driver and
> the dts then into a separate tree - sort of ignoring the local
> binding error, because everything will be fine once stuff comes
> together in linux-next.

Assuming they get merged together in linux-next. If there's a delay,
linux-next will exhibit warnings for some time. I don't know what the
rule is regarding that.

> Speaking of bindings, does your board _need_ the frl-gpio to produce
> any hdmi output? Like could we merge the board without the (optional)
> gpio and then add it later, once the binding+driver have made it in?

With a suitable pull-up I think so. I can submit a v3 with that.

> Just me trying to grab the big chunks earlier in the cycle.

-- 
Regards,

Laurent Pinchart

