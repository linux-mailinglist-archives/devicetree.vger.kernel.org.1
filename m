Return-Path: <devicetree+bounces-27656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DF3C881B2CD
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 10:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C45E285D8E
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 09:43:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1AE2224D3;
	Thu, 21 Dec 2023 09:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="5XZrPvtR"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDD4156D8;
	Thu, 21 Dec 2023 09:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=X16oCJLiTMUjK1QrUQVpZcvDyy1UpSquWsrn1qrLg+g=; b=5XZrPvtR6GcAOFbNOPwM2tjOjl
	zzYANILj6kT/skDTabX6fwwldY3PnWRhJZ9Z8jFisqeCOh23ThbFuFNX9sokUyvxcJ+uqh2dYJmsN
	kbjBVSizUvj3ScpW0IUu+LSslkegJPsqDg9hPB1DHp5IEm1n5WRV/AOkfkCtrlZOLryc=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rGFaH-003Urr-PY; Thu, 21 Dec 2023 10:43:17 +0100
Date: Thu, 21 Dec 2023 10:43:17 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Tobias Waldekranz <tobias@waldekranz.com>
Subject: Re: [net-next PATCH v4 1/4] dt-bindings: net: phy: Document new LEDs
 polarity property
Message-ID: <ce55a08f-ebe0-4e1b-a235-695e71611203@lunn.ch>
References: <20231215212244.1658-1-ansuelsmth@gmail.com>
 <20231215212244.1658-2-ansuelsmth@gmail.com>
 <20231220152209.GA229412-robh@kernel.org>
 <6583705d.050a0220.6e903.083d@mx.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6583705d.050a0220.6e903.083d@mx.google.com>

> On the marvell10g series we are discussing of using tristate or not. We
> notice tristate might be confusing, would it be better to use
> inactive-high-impedance ?

The pincfg-node.yaml binding has:

  drive-open-drain:
    oneOf:
      - type: boolean
      - $ref: /schemas/types.yaml#/definitions/uint32
        const: 1    # No known cases of 0
        deprecated: true
    description: drive with open drain

  drive-open-source:
    type: boolean
    description: drive with open source

I'm not sure what the deprecated means. Is it that a value is
deprecated, not the property as a whole?

	Andrew

