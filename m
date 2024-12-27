Return-Path: <devicetree+bounces-134449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEB79FD79E
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:09:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BE3D188516D
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 20:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD981F76B9;
	Fri, 27 Dec 2024 20:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="j6E/9czH"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8931713DBB1;
	Fri, 27 Dec 2024 20:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735330144; cv=none; b=u2KqGwcpri6gqPR3nbavcDKbJE1D71/RjFdhlc56Zcq/W3pDZEMkDzrhUPL8q8sIDe3MAzh7/nKrzuqmKghO59TJDDx0kH1RiaTc5/E/X+F8eMRco8w5TbyYmftAm4IFeL5Yl69OjZqeoOt/zIi+O6iyJ8qZRR2280aIL3rJRF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735330144; c=relaxed/simple;
	bh=OIPnd511wChZzj2wQdI7S46efrioAnhTXCMLO41tzv8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qbQvA60OOxyf/vt3+h5UeVVVS4QTqwSyXArTdAo1LP/5QsGmjtIMLAVuZlBgyV70hScmGlRDmLuboNWH+qVKxdyJPIsNSCgaITrPlYY8TLCaH8MGvbJkETCbJIuRg7+1DPLeLxucy0mf+m4S3r/6W2mGx7QbBCwWG8z9P/g5SWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=j6E/9czH; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=rTpmM+N9yTb8Q9bJONsWhH4t0UI7Y+ya/IYjpiMz6Cg=; b=j6E/9czHO7e5hBXHB6GqUWeYO2
	z7aTYMKv1Qgq4Dm3MKG/qG7+b4el3bPiBfDrVTm81uYq1sdKdwM5Wv3XXMFsgVpNC4Hcb/smYIBii
	syYK5lxbtVxSq+V81T0QLB8QH06P3gm2+FIqIjkD/bHBgS4mSziaJ5hU9tZa19D7LCBQAgFXK098Y
	BO96XvGk5zw9olS9eMGKRy0V6hodSgXwuaaJLDiX9R+MdsQPkpV1rxkAJBiF6Lh8sOh0Tl66a7E7p
	PmJpcwCoUaBOabFVDltoSJkH5sx6c1mtZZbbXOtSnmapGGyPSOGEUpcMUpCDjEkTsP6knM9PjK04Z
	0f75DO4w==;
Received: from i5e860d12.versanet.de ([94.134.13.18] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tRGdX-00037B-1A; Fri, 27 Dec 2024 21:08:43 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: cristian.ciocaltea@collabora.com, detlev.casanova@collabora.com,
 krzk+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
 sebastian.reichel@collabora.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] dt-bindings: phy: add rk3576 hdptx phy
Date: Fri, 27 Dec 2024 21:08:41 +0100
Message-ID: <3255768.PYKUYFuaPT@diego>
In-Reply-To: <hh3zowf257dwwp3uo7al5l5ql7hewy7j5rzjqdt3eqvd653mdj@4tgjm6zdsuyi>
References:
 <20241224091919.267698-1-andyshrk@163.com>
 <hh3zowf257dwwp3uo7al5l5ql7hewy7j5rzjqdt3eqvd653mdj@4tgjm6zdsuyi>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Krzysztof, Andy,

Am Freitag, 27. Dezember 2024, 09:55:59 CET schrieb Krzysztof Kozlowski:
> On Tue, Dec 24, 2024 at 05:19:13PM +0800, Andy Yan wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The HDPTX PHY on rk3576 is compatible with it on
> > rk3588.
> > 
> > Add compatible for it.
> > 
> > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > ---
> > 
> >  .../devicetree/bindings/phy/rockchip,rk3588-hdptx-phy.yaml | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> Also: where are any users of this binding?
> 
> We don't take bindings without *UPSTREAM* users.

Andy, can you do a (separate) DTS series that binds all the display stuff
together on one rk3576 board? (iommu, hdptxphy, vop, hdmi)

Depending on how the driver sides go, this may be need to be revised at
the end, but should hopefully satisfy that "show a user" thing.

I guess Kever's EVB-series [0] might be a good base to build upon, with it
being a Rockchip EVB?


For people reading along, that whole display chain consists of:
- iommu [1]
- core display-controller additions for the rk3576 [2]
- this hdptxphy binding
- additions for the dw-hdmi-qp glue [3]

Heiko


[0] https://lore.kernel.org/lkml/20241220101551.3505917-1-kever.yang@rock-chips.com/
[1] https://lore.kernel.org/lkml/20240920094947.7566-1-andyshrk@163.com/
[2] https://lore.kernel.org/lkml/20241214081831.3330714-1-andyshrk@163.com/
[3} https://lore.kernel.org/lkml/20241225103741.364597-1-andyshrk@163.com/




