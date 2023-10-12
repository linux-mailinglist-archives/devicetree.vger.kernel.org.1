Return-Path: <devicetree+bounces-8296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D27657C7824
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 22:52:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0FF1A1C20F92
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 20:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2BD83D97D;
	Thu, 12 Oct 2023 20:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVBN+IAM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24673D978
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 20:52:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE15DC433C8;
	Thu, 12 Oct 2023 20:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697143920;
	bh=QLs1pQ7YnOXiEEeiGiyU7dSYjD9NCXqhv5FGAzmT5HI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JVBN+IAMIg9EyB1dJcneervIqpzfHli4MH53ttxXxE0EtlW7bklb/57VAlXHHVFMa
	 NE0W4KrMNamD4LfVYR5zGyviIUaSqrD4iEl9u7UA6T+JjwarFR2WCf7yU1OCGWQY8t
	 60Ijpgeq/JQKyJy3J1RwQLQ8LSuTwraLiQ95vhxlRa7MIEzk7uHQQ1a3cavD+/RML3
	 hLwSpd1GRF5GdR6GPqK3zVTFiJgDn3Lkv7dg+PFcLV4M9I8izLZM9CvLRpq/DXq2qw
	 e8fT34ziGMUfe6+pU8FlJ13wZCSt5n3KNe6gnEgxKRB8O767aQ1D/szUG+7MVCJth0
	 q7eEDYgdX1XCg==
Received: (nullmailer pid 1717618 invoked by uid 1000);
	Thu, 12 Oct 2023 20:51:58 -0000
Date: Thu, 12 Oct 2023 15:51:58 -0500
From: Rob Herring <robh@kernel.org>
To: m.brock@vanmierlo.com
Cc: Manikanta Guntupalli <manikanta.guntupalli@amd.com>, git@amd.com, michal.simek@amd.com, gregkh@linuxfoundation.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, linux-serial@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, jirislaby@kernel.org, linux-arm-kernel@lists.infradead.org, radhey.shyam.pandey@amd.com, srinivas.goud@amd.com, shubhrajyoti.datta@amd.com, manion05gk@gmail.com
Subject: Re: [PATCH V2 1/2] dt-bindings: Add optional gpio property to uartps
 node to support rs485
Message-ID: <20231012205158.GA1714449-robh@kernel.org>
References: <20231011145602.3619616-1-manikanta.guntupalli@amd.com>
 <20231011145602.3619616-2-manikanta.guntupalli@amd.com>
 <c4d6ec9a13807866b7dbc7cbed478494@vanmierlo.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c4d6ec9a13807866b7dbc7cbed478494@vanmierlo.com>

On Thu, Oct 12, 2023 at 08:35:59PM +0200, m.brock@vanmierlo.com wrote:
> Manikanta Guntupalli wrote on 2023-10-11 16:56:
> > Add optional gpio property to uartps node and reference to rs485.yaml
> > 
> > On Xilinx/AMD Kria SOM KD240 board rs485 connects via TI ISOW1432
> > Transceiver device, where one GPIO is used for driving DE/RE signals.
> > With rs485 half duplex configuration, DE and RE shorts to each other,
> 
> s/shorts/are connected
> 
> > and at a time, any node acts as either a driver or a receiver.
> > 
> > Here,
> > DE - Driver enable. If pin is floating, driver is disabled.
> > RE - Receiver enable. If pin is floating, receiver buffer is disabled.
> 
> Please use DE and /RE to indicate DE is active high and /RE is active low.
> 
> > xlnx,phy-ctrl-gpios is optional property, because it is not required
> > for uart console node.
> 
> How about introducing an rs485 generic gpios property instead of xlnx
> private one? See also rs485-term-gpios and rs485-rx-during-tx-gpios.
> 
> Also note that every kernel driver expects to use RTS for this purpose.
> So why not give this driver the option to choose a gpio instead of its
> native RTS? And from there on use the rts route?
> What if someone wants to use normal (non-rs485) RTS on a GPIO instead
> of the native pin?
> 
> @Rob Herring
> I am curious to know how the rs485 maintainers look at this.

Ask them.

We already have 'rts-gpios'. If that's what's always used, then perhaps 
we should use that in the RS485 case too?

Rob

