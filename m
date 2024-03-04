Return-Path: <devicetree+bounces-48094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D0587024B
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 14:10:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00ACD288A82
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 13:10:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DA4C3D575;
	Mon,  4 Mar 2024 13:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="dcx6p8Dt"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEB53D967
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 13:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709557740; cv=none; b=U42UlbXhuJMRf4CEoHk1zINUFZwzOLdqrSzct+QEhoHUes0l/bhhKKrfWlHp2hmxpxrFAo2fxz01987xEdtiPErHJzl1X1nzFdCs7ie3PwtonUdlhVVFQ3oI/4UK/pQWCQbcyx7eEIg6p/SOm5Tn3rjnYomJM1I6xLLOvYKywMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709557740; c=relaxed/simple;
	bh=MQzXyrp30ayzNFr9b8t21q7K9Qj8xp3ki4sTIxcnAcY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UdXWPEmtoACqR/6XkII21N+aa49F3aK0a77/Jbwh8Pbknw56qgqh9hXWlxR4xSHIvetXpOPQra6AKh2kQqnqNK0vOLMoKmKve6xSF0XpzKVfCiXwSOadrOlbUEibJPG7Vquj/ElIIRn2irujVOkcqrfHpQVwH+DecSn16mVKpJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=dcx6p8Dt; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=ntM3uHxRjzQ+a85JmcdPhuNDbTOvT+BdKRtXjZ66nIU=; b=dc
	x6p8Dt/mT5e3kYST+11OqrzZTXyJv76VQ4AJHhbmoZrPDhnYBnhipz4IkorDaymU247CExHN0TmSx
	IYYbgJ+90XYrBWPiEZWx47L4TCjwVT3+7BAhCE/EKQQ+2d2v6dij4RkNtW8grqMNo8n+YZZXD+bUt
	8hW56F2SGHBGyfk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rh84B-009K8q-DH; Mon, 04 Mar 2024 14:09:15 +0100
Date: Mon, 4 Mar 2024 14:09:15 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
Message-ID: <0ed81fbf-cc25-4582-899e-4270932e897c@lunn.ch>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGb2v67xA0z3KWBo=ierkK9qxBAnaLuVkta05qEaFmMciB1-ng@mail.gmail.com>

On Mon, Mar 04, 2024 at 06:07:54PM +0800, Chen-Yu Tsai wrote:
> On Mon, Mar 4, 2024 at 4:47 PM Uwe Kleine-König <ukleinek@debian.org> wrote:
> >
> > While it requires to have the right phy driver loaded (i.e. motorcomm)
> > to make the phy asserting the right delays, this is generally the
> > preferred way to define the MAC <-> PHY connection.
> >
> > Signed-off-by: Uwe Kleine-König <ukleinek@debian.org>
> > ---
> > Hello,
> >
> > Andrew already pointed out when I posted the patch introducing the gmac0 node
> > that rgmii-id would be the preferred way to setup things. Back then this didn't
> > happen because this change broke reception of network packets. However this
> > only happend because I didn't have the right phy driver loaded.
> 
> It could be that the PHY is strapped to not use its internal RX delay.
> And the PHY has some weird default TX delay, so having the driver
> put some sensible values in is probably better.

It could also be the bootloader putting odd values into the PHY.

Anyway, it will work better with the correct PHY, and enable WoL
support.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

