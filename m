Return-Path: <devicetree+bounces-25849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC1814C2F
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 16:57:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 545DAB2103E
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 15:57:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3B18381C3;
	Fri, 15 Dec 2023 15:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="N+ZiMM/W"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5048358BD;
	Fri, 15 Dec 2023 15:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=psNE8qmEitSFH28reo79kUb726RgTDQfpJzZ+4hkCl4=; b=N+ZiMM/W4XJeQDDrhvUbhUFdxl
	iIjEtlv28fbklWWbaS/pNq4k1Ps5x8fa/BfxNEB/qPVSqWJQu+yzvpCh28Hgo2UlTRakK0+bJswyr
	gWJYCDc5FNI86h9s97ivlH2ZqX7EMxJcoXPxzRpZIlbdq2NLS4YEXXtNXfimJk/fJFPk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rEAZH-0032ST-Qr; Fri, 15 Dec 2023 16:57:39 +0100
Date: Fri, 15 Dec 2023 16:57:39 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Rob Herring <robh@kernel.org>
Cc: Conor Dooley <conor@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next] dt-bindings: net: marvell,orion-mdio: Drop
 "reg" sizes schema
Message-ID: <3299678e-6faf-4474-9e13-ad082c6628d8@lunn.ch>
References: <20231213232455.2248056-1-robh@kernel.org>
 <20231214-buzz-playlist-2f75095ef2b0@spud>
 <CAL_JsqKaGFfQNwR3HqRnVs3K7SUtevpoG6tEDntM0SNfyyp6AQ@mail.gmail.com>
 <e59ff8c2-caa1-4072-b86f-0446120ac49b@lunn.ch>
 <CAL_JsqJwqQTCJmAfNpM7z+0BjusB33OwUgr7_7AxOpnQ-GwaLQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJwqQTCJmAfNpM7z+0BjusB33OwUgr7_7AxOpnQ-GwaLQ@mail.gmail.com>

> Is that an Ack? I almost read your double negative as a Nak and that's
> what the maintainers read because it is now "Rejected" in PW.

I don't know if this will work, but we can give it a try.

pw-bot: new

	Andrew

