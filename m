Return-Path: <devicetree+bounces-56060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FE2897908
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 21:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C38F9B224FF
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 19:33:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E9D154BE2;
	Wed,  3 Apr 2024 19:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="MZdja+Qh"
X-Original-To: devicetree@vger.kernel.org
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [217.70.183.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB0C1E519;
	Wed,  3 Apr 2024 19:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712172821; cv=none; b=HH8uAW0BaqB/06e8uPiJzxkLKZo+xHbyJSSZiNpl3qBbejHK4gx0bAFByyx5Q+QJBr4mfIBXvilDF5MABQFEAGIHsoV8vu7WJ9mSVYDTaUMW1xtGXWgAEhuMtNBttBEOLlbsA27J6WAh7Cvs0O7AibG3aIhf4WppkYyzU8jbOqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712172821; c=relaxed/simple;
	bh=bwxAw8xy5CuzSKc1rt7n2WnX25WpY0kmCbzpFFhVl2w=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DBkQmHtcidrtpAq6zYxk1qUzsTSe5kRoIg1i5iizl/F4Bl9i3DSa2q+ZlZ0LaevFxhyj2uLRfRYAc9jzIpw15NvUFTcXssq/bZZ742GSQngifhxNxGK9fOxrpUgIrAO5F3a+99CmCCY+BEgmbgv+2o3IRjHLGGKpUXT7tvC8hnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=MZdja+Qh; arc=none smtp.client-ip=217.70.183.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1A05940005;
	Wed,  3 Apr 2024 19:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1712172811;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oMwIM3iS1Wr2qEyOteiCCx7My78Vi2HoQJ/8gT3PDXc=;
	b=MZdja+QhH8r8VNjLMWGAoKEvLM/il+KgiXOUgiLOOWH41Gm1A8/BYtVYRjy+6cOURWuv/z
	tXcxdc04QjbvoSZW1DJpMXGqY7pQ7Ieh6CL3vZ3hCNbpnN+oxIxkAPYBLYxJ6ZA5TJ/YY+
	LHfGcVEbp26r8ly+oisqjXD3dm/ubX2dRVQ79noASVCCw3seVN/RLvveapfMP5//2YBhwo
	pRtog3sNKcVdMnhFh0MR8KboyAEU80lgdzK2i4DZ+eHtBXoFESaFJk94qdpDn2496xRKZt
	4y87NfprfVu0zAfNYaY1BL+Aitj/Er9vAmFv9xgt+VWefar74mGylvuuj4SyVw==
Date: Wed, 3 Apr 2024 21:33:27 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Rob Herring <robh@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Paul Kocialkowski <contact@paulk.fr>, =?UTF-8?Q?Herv=C3=A9?= Codina
 <herve.codina@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Wolfram Sang <wsa@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: display: bridge: add the Hot-plug MIPI
 DSI connector
Message-ID: <20240403213327.36d731ec@booty>
In-Reply-To: <20240327160908.GA3460963-robh@kernel.org>
References: <20240326-hotplug-drm-bridge-v1-0-4b51b5eb75d5@bootlin.com>
 <20240326-hotplug-drm-bridge-v1-1-4b51b5eb75d5@bootlin.com>
 <20240327160908.GA3460963-robh@kernel.org>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: luca.ceresoli@bootlin.com

Hello Rob,

[+Cc Wolfram for the I2C discussion below]

thanks for your feedback.

On Wed, 27 Mar 2024 11:09:08 -0500
Rob Herring <robh@kernel.org> wrote:

> On Tue, Mar 26, 2024 at 05:28:11PM +0100, Luca Ceresoli wrote:
> > Add bindings for a physical, hot-pluggable connector allowing the far e=
nd
> > of a MIPI DSI bus to be connected and disconnected at runtime.
> >=20
> > Signed-off-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> > ---
> >  .../bridge/hotplug-video-connector-dsi.yaml        | 87 ++++++++++++++=
++++++++
> >  MAINTAINERS                                        |  5 ++
> >  2 files changed, 92 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/display/bridge/hotplug-v=
ideo-connector-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/=
hotplug-video-connector-dsi.yaml
> > new file mode 100644
> > index 000000000000..05beb8aa9ab4
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/hotplug-video-co=
nnector-dsi.yaml
> > @@ -0,0 +1,87 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/hotplug-video-connec=
tor-dsi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Hot-pluggable connector on a MIPI DSI bus
> > +
> > +maintainers:
> > +  - Luca Ceresoli <luca.ceresoli@bootlin.com>
> > +
> > +description:
> > +  A bridge representing a physical, hot-pluggable connector on a MIPI =
DSI
> > +  video bus. The connector splits the video pipeline in a fixed part a=
nd a
> > +  removable part.
> > +
> > +  The fixed part of the video pipeline includes all components up to t=
he
> > +  display controller and 0 or more bridges. The removable part include=
s one
> > +  or more bridges and any other components up to the panel.
> > +
> > +  The removable part of the pipeline can be physically disconnected at=
 any
> > +  moment, making all of its components not usable anymore. The same or=
 a
> > +  different removable part of the pipeline can be reconnected later on.
> > +
> > +  Note that the hotplug-video-connector does not describe video busses
> > +  having native hotplug capabilities in the hardware, such as HDMI.
> > +
> > +properties:
> > +  compatible:
> > +    const: hotplug-video-connector-dsi =20
>=20
> Got a spec for this connector? How do I know if I have one or not?
>=20
> The problem here is what else is on this connector? GPIO controls,=20
> power rails, etc.?
>=20
> If this is some kind of standard connector, then we need to be able to=20
> remap everything on the connector not just DSI signals. And for that,=20
> it's not just DSI signals, so I'd say we would need some sort of generic=
=20
> graph remapping that the core graph code handles transparently.
>=20
>  If it is not standard, then you don't need any remapping and can just=20
> use an overlay that connects the ports directly.

This is not a standardized connector. And it couldn't be: to the best of
my knowledge no standard removable MIPI DSI connector exists at all.

This whole work is unavoidably breaking some long-standing assumptions
and opening some new challenges: giving a proper DT description to
runtime-pluggable hardware and breaking the dogma that a DRM pipeline
is not removable, to name some. So I think it's better to take a step
back and describe the big picture.

As mentioned in the cover letter ("Development roadmap" section),
together with Herv=C3=A9 we are working on a set of patches to allow this
sort of removable hardware to be handled properly by the Linux kernel.

=46rom the cover letter:

> The use case we are working on is to support professional products that
> have a portable "main" part running on battery, with the main SoC and able
> to work autonomously with limited features, and that can be connected to =
an
> "add-on" part that is not portable and adds more features.

The add-on gets connected via a connector that is not standardized.
There is a well-defined part number for the mechanical connector, but
the pin usage is custom for the product. Connector pins include:

 * I2C lines to access various chips on the add-on
   - one of these chips is an EEPROM with the add-on product ID
 * Some pins to report to the CPU whether the add-on is connected and
   add-on power rails are stable (these are wired to SoC GPIOs)
 * An interrupt line collecting IRQs from the add-on chips
 * MIPI DSI to drive a panel on the add-on
 * Gigabit Ethernet (4 pairs)
 * USB lines
 * A few more accessory pins

Some of these are not problematic: USB is hot-pluggable and
auto-discoverable by nature, Ethernet pins are just connected directly
to the RJ-45 connector so the add-on acts as an Ethernet or USB cable.

For everything else there is going to be a separate patch series
with code to detect add-on connection, read the ID, identify the
appropriate DT overlay and load it, and unload it on disconnection.
Before that, it's good to discuss how the device tree should describe
the whole hardware described above, in these terms:

 1. Should device tree describe the connector?
 2. If it does, how should the various busses on the connector
    (especially I2C and MIPI DSI) be described and associated to the
    connector?

To address question 1, I think we _do_ need to describe the connector
itself, because it is a part of the non-discoverable hardware that the
software needs to manage. Among others we need software to know which
GPIOs report the connection and power good statuses, and to know how to
locate the ID EEPROM.

Regarding question 2 I think there are a few open possibilities, and
I must admit the example provided in this series is just too simplistic
to be adequate. Apologies, this series is mostly aiming at discussing
the DRM implementation aspects.

Let me try a more realistic DT description that allows to:

 1. associate the various busses to the connector they go through
 2. map components of different base board models to the connector pins
 3. map components of different add-on models to the connector pins

The 2nd and 3rd items allow decoupling the base and add-on hardware so
that different base board models and different add-on models can be
mixed in all combinations if they use the same connector pinout. This
obviously resembles the Beaglebone capes and RPi hats use case.

My draft proposal is as follows:

---------------------- [my-product.dts] ----------------------
/ {
    // [0]
    my_hotplug_connector: my-hotplug-connector {
        compatible =3D "vendor-abc,product-xyz-connector";

        // [1]
        plugged-gpios   =3D <&gpio4 2 GPIO_ACTIVE_LOW>;
        powergood-gpios =3D <&gpio2 4 GPIO_ACTIVE_HIGH>;

        // [5]
        hotplug_dsi_bus: hotplug-dsi-video-bus@0 {=20
            port@0 {
                reg =3D <0>;

                hotplug_dsi_in: endpoint {
                    remote-endpoint =3D <&bridge1>;
                };
            };

            port@1 {
                reg =3D <1>;

                hotplug_dsi_out: endpoint {
                    // remote-endpoint to be added by overlay
                };
            };
        };

        // [3]
        // Map "placeholder" i2cA to "physical" i2c3
        i2cA: hotplug-i2c-bus@A {
            hotplug-connector,base-bus =3D <&i2c3>;
        };

        i2cB: hotplug-i2c-bus@B {
            hotplug-connector,base-bus =3D <&i2c5>;
        };
    };
};

// Video bridge or display controller on the base board
&bridge1 {
    ports {
        port@1 {
            bridge1_out: endpoint {
                    remote-endpoint =3D <&hotplug_dsi_in>;
            };
        };
    };
};
--------------------------------------------------------------

------------------- [my-add-on-common.dtso] ------------------
// [2]
&my_hotplug_connector {
    nvmem-cells =3D <addon_id>;
    nvmem-cell-names =3D "id";
};

// [4]
// i2cA is a "placeholder" name, mapped by the connector
// definition on the base dts to a physical bus on the base board
&i2cA {
    eeprom@50 {
        compatible =3D "atmel,24c02";
        reg =3D <0x50>;

        nvmem-layout {
            compatible =3D "fixed-layout";
            #address-cells =3D <1>;
            #size-cells =3D <1>;

            addon_id: addon-id@10 {
                reg =3D <0x10 0x4>;
            };
        };
    };
};
--------------------------------------------------------------

----------------- [my-add-on-model-xyz.dtso] -----------------
// [6]
&hotplug_dsi_out {
    remote-endpoint =3D <&bridge2_in>; // Fill in the missing piece
};

&{/}
{
    panel {
        compatible =3D ...;

        ports {
            port@0 {
                reg =3D <0>;

                panel_in: endpoint {
                    remote-endpoint =3D <&bridge2_out>;
                };
            };
        };
    };
};

&i2cB {
    // Video bridge chip on the add-on
    bridge@22 {
        // ... compatible, other props/nodes ...

        ports {
            port@0 {
                bridge2_in: endpoint {
                    remote-endpoint =3D <&hotplug_dsi_out>;
                };
            };
            port@1 {
                bridge2_out: endpoint {
                    remote-endpoint =3D <&panel_in>;
                };
            };
        };
    };
};
--------------------------------------------------------------

The connector itself [0] is described under the root node because it is
not on any addressable bus, similarly to "sound" and "panel" nodes. I
don't think connectors addressable over I2C or other addressable busses
are going to appear in the forseeable future, but if they did they
could be represented as such in the device tree as well.

The connector GPIOs [1] allow the CPU to know the connection and "power
good" status of the connector. On the implementation side, those are the
inputs triggering overlay loading and unloading.

There is a "common" overlay which describes the common components of
all add-ons at least up to the NVMEM cell [2] holding the add-on ID
that is needed to load the model-specific overlay. This overlay adds
nvmem properties to the hotplug connector node to point to the specific
NVMEM cell. The nvmem-cells and nvmem-cell-names =3D "id" properties need
to be part of the hotplug-connector bindings.

The "placeholder" hotplug-i2c-bus nodes in the connector node [3] allow
decoupling the I2C bus segment on the base board from the segment on
the add-on. They point to the base bus controller phandle via
hotplug-connector,base-bus, and allow the overlay to use the
"placeholder" [4] instead of naming the "base" I2C bus name. This
allows using the same add-on and overlay on a different base board,
which could even have a totally different SoC, and where the same
connector pins are not wired to the SoC i2c3 but to e.g. i2c4.

In other words:

 * [3] means connector pins X and Y are wired to i2c3 on this base board
 * [4] means connector pins X and Y are wired to i2cA on this add-on

The specific pins X and Y are not described. Only the bus going through
the connector is.

This can be implemented in the I2C code similarly to a 1-port i2c-mux,
even though it might have an even better ad-hoc implementation that
avoids any unneeded overhead from the mux code, as we are not muxing
anything here, just "connecting wires". Whatever the implementation,
what it needs to do is ensure that i2cA and i2cB appear as regular I2C
busses to their subnodes (e.g. eeprom@50), and when drivers for those
subnodes try to probe they attach to the correct bus (i2c3, i2c5) in
some way -- anything else is an implementation detail. Let's call this
the "I2C decoupler driver".

Once the "common" overlay is loaded, software can read the add-on ID
from NVMEM and find out the overlay that describes the specific add-on
model, see my-add-on-model-xyz.dtso above. This other overlay needs to
be loaded and will populate all the remaining add-on hardware, possibly
using nodes from the first overlay (e.g. a regulator that is used both
by the eeprom@50 and by nodes in the 2nd overlay).

Now to the video bus. Back to the main dts, the hotplug-dsi-video-bus@0
node [5] describes the video pipeline up to the "main" board side of
the connector, represented by port@0. port@1 represents the beginning
of the add-on side of the pipeline, and as such it has no
remote-endpoint because no hardware is present before hotplug and anyway
which hardware will be connected is unknown.

Note DSI is used in the example, but it could as well be LVDS or
parallel video.

The model-specific overlay describes the continuation of the pipeline
up to the panel _and_ fills in the remote-endpoint of &hotplug_dsi_out
to connect the two segments. Just like the i2c example, the overlays
never refer to base board components: it only refers to what appears in
the hotplug connector definition node [0].

An alternative design is that the entire port@1 node is missing from the
hotplug-dsi-video-bus@0 node and is entirely added by the overlay. No
strong opinion on this, the example shows what is tested, but I think
either will be fine.

On the implementation side, the hotplug-dsi-video-bus@0 node does
materialize as the hotplug-bridge driver (patch 4 of this series). The
hotplug-bridge sits in the middle of a previous bridge and the first
bridge in the add-on to let each of them probe normally, and then
passes calls through as transparently as possible.

Still about the implementation, in this example there are 3 main
components that need an implementation:

 1. the hotplug-connector driver for /my-hotplug-connector [0]
 2. the I2C decoupler driver (possibly based on i2c-mux)
 3. the hotplug-bridge driver (this series)

The hotplug-connector driver is responsible for monitoring the
status GPIOs, load the 1st overlay, read the NVMEM ID, load the 2nd
overlay. But it is also in charge of instantiating the "decoupling"
driver for hotplug-i2c-bus nodes [1] and hotplug-dsi-video-bus nodes
[3].

Generalizing the idea to other busses such as SPI should be quite
trivial.

This device tree representation is possibly complicated and verbose.
However I cannot think of a simpler one that can describe a connector
to a removable hardware without losing the ability of decoupling the
base hardware from the add-on hardware.

Your opinion on this will be very appreciated.

Best regards,
Luca

--=20
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

