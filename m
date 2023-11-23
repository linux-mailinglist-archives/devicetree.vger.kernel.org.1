Return-Path: <devicetree+bounces-18240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F5207F5C83
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 11:38:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F5401F20EFE
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 10:38:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75D50EAD2;
	Thu, 23 Nov 2023 10:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from bmailout1.hostsharing.net (bmailout1.hostsharing.net [IPv6:2a01:37:1000::53df:5f64:0])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B49631BF;
	Thu, 23 Nov 2023 02:38:04 -0800 (PST)
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
	 client-signature RSA-PSS (4096 bits) client-digest SHA256)
	(Client CN "*.hostsharing.net", Issuer "RapidSSL Global TLS RSA4096 SHA256 2022 CA1" (verified OK))
	by bmailout1.hostsharing.net (Postfix) with ESMTPS id C2F8730000D0B;
	Thu, 23 Nov 2023 11:38:02 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
	id B3F4C3E732; Thu, 23 Nov 2023 11:38:02 +0100 (CET)
Date: Thu, 23 Nov 2023 11:38:02 +0100
From: Lukas Wunner <lukas@wunner.de>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	Crescent CY Hsieh <crescentcy.hsieh@moxa.com>,
	Lino Sanfilippo <LinoSanfilippo@gmx.de>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Subject: Re: [PATCH 1/2] dt-bindings: serial: rs485: add rs485-mux-gpios
 binding
Message-ID: <20231123103802.GA30056@wunner.de>
References: <20231120151056.148450-1-linux@rasmusvillemoes.dk>
 <20231120151056.148450-2-linux@rasmusvillemoes.dk>
 <20231122145344.GA18949@wunner.de>
 <e731c0a9-7a5c-41c3-87aa-d6937b99d01a@rasmusvillemoes.dk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e731c0a9-7a5c-41c3-87aa-d6937b99d01a@rasmusvillemoes.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Nov 23, 2023 at 11:07:16AM +0100, Rasmus Villemoes wrote:
> On 22/11/2023 15.53, Lukas Wunner wrote:
> > But if that patch gets accepted, we'd have *three* different modes:
> > RS-232, RS-485, RS-422.  A single GPIO seems insufficient to handle that.
> > You'd need at least two GPIOs.
> 
> I don't see Crescent introducing any new gpio that needs to be handled.
> In fact, I can't even see why from the perspective of the software that
> rs422 isn't just rs232; there's no transmit enable pin that needs to be
> handled. But maybe the uart driver does something different in rs422
> mode; I assume he must have some update of some driver, since otherwise
> the new rs422 bit should be rejected by the core. So I can't really see
> the whole picture of that rs422 story.

The question is, could we conceivably have the need to support
switching between the three modes RS-232, RS-485, RS-422.
If yes, then the GPIO mux interface should probably allow for that.

As a case in point, the Siemens IOT 2040 has two serial ports
which can be set to either of those three modes.  The signals
are routed to the same D-sub socket, but the pins used are
different.  See page 46 and 47 of this document:

https://cache.industry.siemens.com/dl/files/658/109741658/att_899623/v1/iot2000_operating_instructions_enUS_en-US.pdf

The driver for this product is 8250_exar.c.  It's an Intel-based
product, so no devicetree, but it shows that such use cases exist.

Thanks,

Lukas

