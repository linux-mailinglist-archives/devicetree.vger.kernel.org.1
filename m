Return-Path: <devicetree+bounces-168310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C57A921C7
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 17:38:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14F67463476
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 15:38:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773BB253B78;
	Thu, 17 Apr 2025 15:38:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="gAN3cbpA"
X-Original-To: devicetree@vger.kernel.org
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [217.70.183.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5296253345;
	Thu, 17 Apr 2025 15:38:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744904304; cv=none; b=pWdTQjbd4KTJ0lIVSmai61XrgPDPsFsCfAcmcJLQMXwAYx+/Mpw9ZBzpVoJj1CCN0rzaqoNKrQGCOTUjfQghQk+1TAb3eTWNnyTK1XVu+fLITFOK/zsWmsRj+UzaUST3NAd9nQqqVhPcNMt9jFmyFGGlnxoOrEXC+HcSFjLObXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744904304; c=relaxed/simple;
	bh=yzLDAS6A/GX7McgtGzi2ROyNyZLwH044A8OQupLDivg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FnFpcwqdeOj8MwCSsd7nYNOmDMd2IKSfXHe1ukpc+HIJaV5kkPd/qp3XwtXOJAnb1sZLm3ktkEfIILCUjQNqiRnFnxG7gIUUIRI9fWdOS308cJoD7DBxEW288ZQXr7dinvsSpn89UpyqUZdYYzi9qY078mhNqeAO+rKWU6B47TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=gAN3cbpA; arc=none smtp.client-ip=217.70.183.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E152E43B3C;
	Thu, 17 Apr 2025 15:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744904293;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8pxVZw7n7OixPD/CTbfzF//IsHt1XOo0+mfNj04Rhsg=;
	b=gAN3cbpAlGKvedIP4zxpeZShiRnZKs+WVhYCoRvNqbVP+C54p+fy85ABgf8WGiWZZDbDxG
	VIxqETscqSVvxJeR/JSsRnRzYHDicDz31mgpbxhxyw2tOzbrovCil9Ie6ZG9pm8lx+iZeN
	QI0X/FOJictjZbJnV11q0iBoD901Qt1xU14DoqQAimfTobivJoVi92t6D8+htFLAHJ8KVb
	/Nyxzntr5/mQ/v1HsW5Q7gWl85/39sWCZR9AhRwEzrZ89LvGHLO80yG2UwkNqd4v6IaEgV
	WBUXjJP+tsttBak1oQw7awAc3c2pWEtQVCgUY3VrfETmLz4NvwMwjmNYaBkxmQ==
Date: Thu, 17 Apr 2025 17:38:10 +0200
From: Herve Codina <herve.codina@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, Andi Shyti
 <andi.shyti@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree-spec@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH 2/2] schemas: i2c: Introduce I2C bus extensions
Message-ID: <20250417173810.4697b2b8@bootlin.com>
In-Reply-To: <20250402102123.30391c27@bootlin.com>
References: <20250401081041.114333-1-herve.codina@bootlin.com>
	<20250401081041.114333-3-herve.codina@bootlin.com>
	<CAL_JsqKQdzDzAYHDctP-nmrONBynRfi-qyncnyj10r4xZNrx1A@mail.gmail.com>
	<20250402102123.30391c27@bootlin.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.3.0 (GTK 3.24.43; x86_64-redhat-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvvdelieegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfgjfhhoofggtgfgsehtkeertdertdejnecuhfhrohhmpefjvghrvhgvucevohguihhnrgcuoehhvghrvhgvrdgtohguihhnrgessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepveeiffefgeeitdelleeigefhjeelueeuveekveetgeffheeltdekgeduiefggfdvnecukfhppedvrgdtgeemtggvtgdtmeduvddtvdemfegufedtmedufhdufhemieegjeegmegsgeejrgemieeileelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehinhgvthepvdgrtdegmegtvggttdemuddvtddvmeefugeftdemudhfudhfmeeigeejgeemsgegjegrmeeiieelledphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomhephhgvrhhvvgdrtghoughinhgrsegsohhothhlihhnrdgtohhmpdhnsggprhgtphhtthhopeduuddprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepfihsrgdorhgvnhgvshgrshesshgrnhhgqdgvnhhgihhnvggvrhhinhhgrdgtohhmpdhrtghpthhtoheprghnughirdhshhihthhisehkvghrnhgvlhdrohhrghdprhgtphhtthhop
 ehkrhiikhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhugidqihdvtgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrghdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
X-GND-Sasl: herve.codina@bootlin.com

Hi Rob, device-tree maintainers,

This discussion started a few weeks ago and hasn't reached any conclusion.
I answered questions and comments but didn't receive any feedback.

In order to move forward on that topic, can we revive this discussion?

As a reminder, topics started in the discussion were the following:
 - i2c-bus-extension@0: usage of a subnode with unit address
 - Presence of phandles in both direction (double linked list)

Best regards,
Hervé

On Wed, 2 Apr 2025 10:21:23 +0200
Herve Codina <herve.codina@bootlin.com> wrote:

> Hi Rob,
> 
> On Tue, 1 Apr 2025 09:03:23 -0500
> Rob Herring <robh@kernel.org> wrote:
> 
> > On Tue, Apr 1, 2025 at 3:11 AM Herve Codina <herve.codina@bootlin.com> wrote:  
> > >
> > > An I2C bus can be wired to the connector and allows an add-on board to
> > > connect additional I2C devices to this bus.
> > >
> > > Those additional I2C devices could be described as sub-nodes of the I2C
> > > bus controller node however for hotplug connectors described via device
> > > tree overlays there is additional level of indirection, which is needed
> > > to decouple the overlay and the base tree:
> > >
> > >   --- base device tree ---
> > >
> > >   i2c1: i2c@abcd0000 {
> > >       compatible = "xyz,i2c-ctrl";
> > >       i2c-bus-extension@0 {    
> > 
> > What does 0 represent? Some fake I2C address?
> > 
> > Why do you even need a child node here?  
> 
> 0 represent the extension number. Multiple extensions can be connected
> to a single i2c controller:
>                                       +-------------+
>   +------------+                 .----+ Connector 1 |
>   |   i2c      |                 |    +-------------+
>   | controller +---- i2c bus ----+
>   +------------+                 |    +-------------+
>                                  '----+ Connector 2 |
>                                       +-------------+
> 
> I need a child node because extensions don't modify existing hardware (adding/removing
> a property) but add an entry point, the extension for a new set of devices.
> As it is not a existing hardware modification it is better represented as a node.
> 
> 
> Those extensions can be chained:
>   +-----------------------------------+         +-------------------+
>   | Base board                        |         | addon board       |
>   |                                   |         |    +------------+ |
>   | +------------+                    |         | .--+ i2c device | |
>   | |   i2c      |             +-------------+  | |  +------------+ |
>   | | controller +-- i2c bus --+ connector A +----+                 |
>   | +------------+             +-------------+  | |          +-------------+
>   +-----------------------------------+         | '----------+ connector B |
>                                                 |            +-------------+
>                                                 +-------------------+
> The addon board is described using an overlay.
> 
> In that case, we have:
> - base-board.dts:
>     i2c0: i2c@cafe0000 {
>         compatible = "xyz,i2c-ctrl";
>         #address-cells = <1>;
>         #size-cells = <0>;
> 
>         i2c-bus-extension@0 {
>             reg = <0>;
>             i2c-bus = <&i2c_connector_a>;
>         };
>         ...
>     };
> 
>     connector-a {
>         devices {
>            /* Entry point for devices available on the addon
>             * board that are not connected to a bus such as
>             * fixed-clock, fixed-regulator, connectors, ...
>             */
>         };
>         i2c_connector_a: i2c-connector-a {
>             /* The i2c available at connector */
>             #address-cells = <1>;
>             #size-cells = <0>;
>             i2c_parent <&i2c0>;
>        };
>     };
> 
> - addon-board.dtso
>     __overlay__ { /* This is applied at connector_a node */
>         i2c_connector_a: i2c-connector-a {
>             /* We do not modify the existing device i2c_connector_a
>              * by changing, adding or removing its properties but
>              * we add new devices (sub-nodes)
>              */
> 
>             /* The i2c device available in the addon-board */
>             i2c-device@0x10 {
>                 compatible = "foo,bar";
>                 reg = 0x10;
>             };
> 
>             /* The i2c extension forwarding the i2c bus */
>             i2c-bus-extension@0 {
> 	        reg = <0>;
>                 i2c-bus = <&i2c_connector_b>;
>             };
>        };
>        
>        devices {
>           /* addon-board connector b */
>           connector_b {
>               i2c_connector_b: i2c_connector_b {
>               /* The i2c available at connector */
>               #address-cells = <1>;
>               #size-cells = <0>;
>               i2c_parent = <&i2c_connector_a>;
>           };
>        };
>    };
> 
> Without a child node for i2c-bus-extension, we need to add
> properties on already existing node (i2c-connector-a) to add
> the bus extension and adding/modifying/removing a property
> on a device-tree node correspond to modifying the device
> itself (description changed) whereas adding/removing sub-nodes
> correspond to adding/removing devices handled by the parent
> parent node of those sub-nodes.
> 
> From the controller point of view, an extension is "a collection of
> devices described somewhere else in the device-tree and connected
> to the I2C SDA/SCL pins". Having that described as a sub-node seems
> correct.
> 
> >   
> > >           i2c-bus = <&i2c_ctrl>;
> > >       };
> > >       ...
> > >   };
> > >
> > >   i2c5: i2c@cafe0000 {
> > >       compatible = "xyz,i2c-ctrl";
> > >       i2c-bus-extension@0 {
> > >           i2c-bus = <&i2c-sensors>;
> > >       };
> > >       ...
> > >   };
> > >
> > >   connector {
> > >       i2c_ctrl: i2c-ctrl {
> > >           i2c-parent = <&i2c1>;
> > >           #address-cells = <1>;
> > >           #size-cells = <0>;
> > >       };
> > >
> > >       i2c-sensors {
> > >           i2c-parent = <&i2c5>;
> > >           #address-cells = <1>;
> > >           #size-cells = <0>;
> > >       };
> > >   };
> > >
> > >   --- device tree overlay ---
> > >
> > >   ...
> > >   // This node will overlay on the i2c-ctrl node of the base tree
> > >   i2c-ctrl {
> > >       eeprom@50 { compatible = "atmel,24c64"; ... };
> > >   };
> > >   ...
> > >
> > >   --- resulting device tree ---
> > >
> > >   i2c1: i2c@abcd0000 {
> > >       compatible = "xyz,i2c-ctrl";
> > >       i2c-bus-extension@0 {
> > >           i2c-bus = <&i2c_ctrl>;
> > >       };
> > >       ...
> > >   };
> > >
> > >   i2c5: i2c@cafe0000 {
> > >       compatible = "xyz,i2c-ctrl";
> > >       i2c-bus-extension@0 {
> > >           i2c-bus = <&i2c-sensors>;
> > >       };
> > >       ...
> > >   };
> > >
> > >   connector {
> > >       i2c-ctrl {
> > >           i2c-parent = <&i2c1>;
> > >           #address-cells = <1>;
> > >           #size-cells = <0>;
> > >
> > >           eeprom@50 { compatible = "atmel,24c64"; ... };
> > >       };
> > >
> > >       i2c-sensors {
> > >           i2c-parent = <&i2c5>;
> > >           #address-cells = <1>;
> > >           #size-cells = <0>;
> > >       };
> > >   };
> > >
> > > Here i2c-ctrl (same goes for i2c-sensors) represent the part of I2C bus
> > > that is on the hot-pluggable add-on. On hot-plugging it will physically
> > > connect to the I2C adapter on the base board. Let's call the 'i2c-ctrl'
> > > node an "extension node".
> > >
> > > In order to decouple the overlay from the base tree, the I2C adapter
> > > (i2c@abcd0000) and the extension node (i2c-ctrl) are separate nodes.
> > >
> > > The extension node is linked to the I2C bus controller in two ways. The
> > > first one with the i2c-bus-extension available in I2C controller
> > > sub-node and the second one with the i2c-parent property available in
> > > the extension node itself.
> > >
> > > The purpose of those two links is to provide the link in both direction
> > > from the I2C controller to the I2C extension and from the I2C extension
> > > to the I2C controller.    
> > 
> > Why do you need both directions? An i2c controller can search the tree
> > for i2c-parent and find the one's that belong to it. Or the connector
> > can register with the I2C controller somehow.  
> 
> Yes, but this is sub-optimal compare to the double-link references.
> 
> I discarded any kind of registering from the connector which implies
> extra complexity compared to a simple double-link reference. In the I2C
> path, the connector is really a passive component and fully transparent.
> It should be transparent as well in the implementation.
> 
> Using only i2c-parent (i.e. the reference from extension to i2c controller)
> works when the walk from extension to i2c controller but using it on the
> other direction is not as trivial as it could be.
> 
> Indeed, starting from the i2c controller, we have to search for the entire
> tree any i2c-parent that references the i2c controller.
> Those i2c-parent can exist in node that are not at all related to i2c
> extensions.
> 
> i2c-parent in all cases represents an i2c parent bus but not only for i2c
> extensions. I2C muxes and some other devices use this property.
> 
> Here also, searching the entire tree for i2c-parent and being sure that
> the property found is related to an I2C extension adds extra complexity
> that is simply not present with the double-link references.
> 
> Best regards,
> Hervé


