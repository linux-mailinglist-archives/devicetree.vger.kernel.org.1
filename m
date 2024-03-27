Return-Path: <devicetree+bounces-53890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A24088EAD2
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 17:14:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2B8F72A607B
	for <lists+devicetree@lfdr.de>; Wed, 27 Mar 2024 16:14:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CA611384A6;
	Wed, 27 Mar 2024 16:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="YBhZXN0X"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214E212EBEE;
	Wed, 27 Mar 2024 16:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711555743; cv=none; b=W7LK3QSbGdSphhIQocJFXOPfqcGQsGzMG23QaIA+VL4ALgkPaAd1Ii5xkOHVf8mvcsRdLZaWrCKls5LxR15NIjjyDP21KvLYmF9cefEGAWAUeu1gQvf9TipckXkLXVgMEwRZ/kajf+ZKu2We7I7lJDHHtQrvU4iF5umUHGiTyNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711555743; c=relaxed/simple;
	bh=pIKy0yRJNmC01jlpaPcy+yx7OvUQitqodXWNKqAcoAc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=meg2ZzhaLw2mRBP892Tka3gvt8nCFK4EYrrQAjtZOuTyB6cKLyqkmTDcrbSa2kd9nxbYiboq1lyolXV0OB26sZPvWFCq074/7yG7Bzlklmy5UkgVQeEHJzujhjeAAiJb+oOZ1sk1w+JLEM3BTHYaGptufCLm7Ogqs0ZDifHPUIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=YBhZXN0X; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9FDCE240006;
	Wed, 27 Mar 2024 16:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1711555732;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+jkgAP/v9+Siqc6CqYICxsZyvqgYRhV+/aIoRxwwyJA=;
	b=YBhZXN0X1RSLgvcjwuVb2D5YFbir3khOoiv0JlScOddWzHqPe3coFTrCBu3ckJmeyOwf2m
	+RCA1J0jjJRKs+xjX0Zr9GVgKiYqVeFZFbk3oZjTx5mhVKFdiLn8+QhZD3YY1iwDLxcXHa
	1HnWPkcxFDVWnaTilsWQt8AB8lAu4/ezIjbqKDuGJL0kJEuaswR0DRlqs9DRpEQUND45Ex
	fWiaYVs2SeuZ1pUczBvfolCeW+X09cx/mF5ii90VwCa90N3Lm4Nn+a3+0W9cR8WO6YMDfS
	1e6nnWayhRdg0usnfv2MxVUyBD0F3K5FFVigceI9VAsg/KAz1lFDO7Ic2XBvWw==
Date: Wed, 27 Mar 2024 17:08:49 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Maxime Ripard <mripard@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie
 <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Kocialkowski <contact@paulk.fr>, =?UTF-8?Q?He?=
 =?UTF-8?Q?rv=C3=A9?= Codina <herve.codina@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 4/4] drm/bridge: hotplug-bridge: add driver to support
 hot-pluggable DSI bridges
Message-ID: <20240327170849.0c14728d@booty>
In-Reply-To: <20240327-radiant-cherry-myna-25afc4@houat>
References: <20240326-hotplug-drm-bridge-v1-0-4b51b5eb75d5@bootlin.com>
	<20240326-hotplug-drm-bridge-v1-4-4b51b5eb75d5@bootlin.com>
	<20240327-radiant-cherry-myna-25afc4@houat>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-GND-Sasl: luca.ceresoli@bootlin.com

Hi Maxime,

On Wed, 27 Mar 2024 13:42:40 +0100
Maxime Ripard <mripard@kernel.org> wrote:

> On Tue, Mar 26, 2024 at 05:28:14PM +0100, Luca Ceresoli wrote:
> > This driver implements the point of a DRM pipeline where a connector allows
> > removal of all the following bridges up to the panel.
> > 
> > The DRM subsystem currently allows hotplug of the monitor but not preceding
> > components. However there are embedded devices where the "tail" of the DRM
> > pipeline, including one or more bridges, can be physically removed:
> > 
> >  .------------------------.
> >  |   DISPLAY CONTROLLER   |
> >  | .---------.   .------. |
> >  | | ENCODER |<--| CRTC | |
> >  | '---------'   '------' |
> >  '------|-----------------'
> >         |
> >         |               HOTPLUG
> >         V              CONNECTOR
> >    .---------.        .--.    .-.        .---------.         .-------.
> >    | 0 to N  |        | _|   _| |        | 1 to N  |         |       |
> >    | BRIDGES |--DSI-->||_   |_  |--DSI-->| BRIDGES |--LVDS-->| PANEL |
> >    |         |        |  |    | |        |         |         |       |
> >    '---------'        '--'    '-'        '---------'         '-------'
> > 
> >  [--- fixed components --]  [----------- removable add-on -----------]
> > 
> > This driver supports such devices, where the final segment of a MIPI DSI
> > bus, including one or more bridges, can be physically disconnected and
> > reconnected at runtime, possibly with a different model.
> > 
> > This implementation supports a MIPI DSI bus only, but it is designed to be
> > as far as possible generic and extendable to other busses that have no
> > native hotplug and model ID discovery.
> >
> > This driver does not provide facilities to add and remove the hot-pluggable
> > components from the kernel: this needs to be done by other means
> > (e.g. device tree overlay runtime insertion and removal). The
> > hotplug-bridge gets notified of hot-plugging by the DRM bridge notifier
> > callbacks after they get added or before they get removed.
> > 
> > The hotplug-bridge role is to implement the "hot-pluggable connector" in
> > the bridge chain. In this position, what the hotplug-bridge should ideally
> > do is:
> > 
> >  * communicate with the previous component (bridge or encoder) so that it
> >    believes it always has a connected bridge following it and the DRM card
> >    is always present
> >  * be notified of the addition and removal of the following bridge and
> >    attach/detach to/from it
> >  * communicate with the following bridge so that it will attach and detach
> >    using the normal procedure (as if the entire pipeline were being created
> >    or destroyed, not only the tail)
> >  * expose the "add-on connected/disconnected" status via the DRM connector
> >    connected/disconnected status, so that users of the DRM pipeline know
> >    when they can render output on the display
> > 
> > However some aspects make it a bit more complex than that. Most notably:
> > 
> >  * the next bridge can be probed and removed at any moment and all probing
> >    sequences need to be handled
> >  * the DSI host/device registration process, which adds to the DRM bridge
> >    attach process, makes the initial card registration tricky
> >  * the need to register and deregister the following bridges at runtime
> >    without tearing down the whole DRM card prevents using the functions
> >    that are normally recommended
> >  * the automatic mechanism to call the appropriate .get_modes operation
> >    (typically provided by the panel bridge) cannot work as the panel can
> >    disappear and reappear as a different model, so an ad-hoc lookup is
> >    needed  
> 
> There's several additional hurdles there:
> 
>  - You mentioned the connector in your ideal scenario. But as soon as
>    you remove the last bridge, the connector will probably go away too.
>    There's two scenarii here then:
> 
>    - The driver is ok, and it will stay there until the last user its to
>      the main DRM device. Which means that if you create a new one,
>      you'll have the old one and the new one together, but you can't
>      tell which one you're supposed to use.
> 
>    - If the driver isn't ok, the connector will be freed immediately.
>      There's plenty of lingering pointers in the framework, and
>      especially the states though, leading to use-after-free errors.
> 
>  - So far, we told everyone that the graphics pipeline wasn't going to
>    change. How do you expect applications to deal with a connector going
>    away without any regression? I guess the natural thing here would be
>    to emit a uevent just like we do when the connection status change,
>    but the thing is: we're doing that for the connector, and the
>    connector is gone.

Thanks for your feedback. I probably should have discussed this aspect
in my cover letter, sorry about that, let me amend now.

I think there are two possible approaches.

The first approach is based on removing the drm_connector. My laptop
uses the i915 driver, and I have observed that attaching/removing a
USB-C dock with an HDMI connector connected to a monitor, a new
drm_connector appears/disappears for the card. User space gets notified
and the external monitor is enabled/disabled, just the way a desktop
user would expect, so this is possible. I had a look at the driver but
how this magic happens was not clear to me honestly.

The second approach is simpler and based on keeping the drm_connector
always instantiated, and it is what this driver does. The drm_connector
is added by the hotplug-bridge driver in the drm_bridge_funcs.attach op,
which happens initially, and only removed by drm_bridge_funcs.detach,
so it is never removed when detaching the _following_ part of the
pipeline (which the card is unaware of). So the encoder always has a
drm_connector.

Note when attaching to the downstream bridge we pass the
DRM_BRIDGE_ATTACH_NO_CONNECTOR flag, which _should_ prevent creation of a
second connector. I'd expect some drivers to not honour that flag, but
they can be fixed if needed.

When the tail of the pipeline is connected/removed, the
hpb->next_bridge pointer becomes valid/NULL. And
hotplug_bridge_detect() looks at exactly that pointer to return a
connected or disconnected status.

The result is that when the add-on is connected, 'modetest -c' shows:

  Connectors:
  id      encoder status          name            size (mm)       modes   encoders
  37      0       connected       DSI-1           293x165         1       36
    modes:
          index name refresh (Hz) hdisp hss hse htot vdisp vss vse vtot
    #0 1920x1080 60.00 1920 1978 2020 2108 1080 1088 1102 1116 141140 flags: ; type: preferred, driver
    props:
  ...

and when it is disconnected, it shows:

  Connectors:
  id      encoder status          name            size (mm)       modes   encoders
  37      0       disconnected    DSI-1           0x0             0       36
    props:
  ...

weston detects the HPD events from the connector and starts/stops using
the removable display correctly.

Does this clarify the approach?

I could be missing some aspects of course, especially in case of more
complex hardware setups than the one I have. However the code in this
series has been tested for a long time and no memory-safety issue has
appeared.

> Between the userspace expectations and the memory-safety issue plaguing
> way too many drivers, I'm not sure this approach can work.
> 
> I guess one way to somewhat achieve what you're trying to do would be to
> introduce the connection status at the bridge level, reflect the
> aggregate connection status of all bridges on the connector, and make
> each bridge driver probe its device in the connect hook through DCS or
> I2C.

I think you mean: keeping all the bridge drivers instantiated, even
when the physical chip is removed.

This is of course another possible approach. However it would be more
invasive, forcing bridge drivers to change their current behaviour. And
it would violate the design that a driver is probed when a device is
there, and removed when the hardware goes away.

The approach I took firstly allows to have zero modifications to
existing bridge drivers -- not necessarily the right thing to do, but I
didn't find any good reason to require that.

Additionally, it is designed to allow removing an add-on having bridge
XYZ and then plugging in another add-on with bridge ABC, having a
different driver. Keeping alive the XYZ driver on unplug would not make
sense in such a case. This is not a tested scenario as I have no
hardware allowing that, but it is part of the design goals and I see no
obvious reason it wouldn't work with this patch as is, since the
downstream bridge driver is removed on disconnect and probed on connect
for whatever bridge will be connected.

Best regards,
Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

