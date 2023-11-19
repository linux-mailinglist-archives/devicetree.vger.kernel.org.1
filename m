Return-Path: <devicetree+bounces-16947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0787B7F0786
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 17:31:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E0071F21EC2
	for <lists+devicetree@lfdr.de>; Sun, 19 Nov 2023 16:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B17B163C9;
	Sun, 19 Nov 2023 16:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="bYNPbzGO"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5314194;
	Sun, 19 Nov 2023 08:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=xV0QCJuId5L0XuQj1+jsWP0jiMqso/x74sTpcxg3CiA=; b=bYNPbzGOQCHEZD9EQKIYplYKt3
	Yo+JPOWXWFkRbVJf94ZlTnNAbM8TZFKwlVq0J7tupLBRj6ZRETcf58sg/Cwjx+WF/OO58zuZN8IIZ
	nRNaK0rMVeEkZYO4VNZ0Rxz3omcXomFZVGKQD7WB+C1dUd2tmLyufuvvRPcWCz4aQcAU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r4khD-000Zb6-Cs; Sun, 19 Nov 2023 17:30:55 +0100
Date: Sun, 19 Nov 2023 17:30:55 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Conor Dooley <conor@kernel.org>
Cc: Elad Nachman <enachman@marvell.com>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	gregory.clement@bootlin.com, sebastian.hesselbarth@gmail.com,
	pali@kernel.org, mrkiko.rs@gmail.com,
	chris.packham@alliedtelesis.co.nz, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	cyuval@marvell.com
Subject: Re: [PATCH v5 2/3] dt-bindings: arm64: add Marvell COM Express boards
Message-ID: <1d19b6da-2d16-41d1-8c04-587890dcda52@lunn.ch>
References: <20231119102638.1041978-1-enachman@marvell.com>
 <20231119102638.1041978-3-enachman@marvell.com>
 <20231119-avatar-implicate-75cd2f12dff5@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231119-avatar-implicate-75cd2f12dff5@spud>

> > +      - description:
> > +            Alleycat5X (98DX35xx) Reference Design as COM Express Carrier plus
> > +            Armada CN9131 COM Express CPU module
> > +        items:
> > +          - enum:
> > +              - marvell,ac5x-car-with-cn9131
> 
> Why not just marvell,cn9131-ac5x-carrier or similar? The "with" isn't
> particularly helpful.

As the description says, this is the combination of the SOM plus the
carrier to give a complete RDK.

Elad, do the RDK as a whole have a name? You can use that here for the
compatible.

	Andrew

