Return-Path: <devicetree+bounces-251619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5549CF4F51
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 18:18:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5A097301AE37
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 17:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6AA028CF6F;
	Mon,  5 Jan 2026 17:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="pbz9pPZv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC7F33ADA9
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 17:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767633532; cv=none; b=L1N9C4UD1v07NW7x5s+ds56uJ7HpdrDdpHDBDe2c2CAj1ti9xPM9nzuQjF8IPI6winjw2qRp/avm46oOP73F2OLx/cVZts61mSRU+eGlmaoFNjzFwKUAnYvFDuuyWPMCfXkZmE43d8LFNN8Nf5jpEhq4OGVDl5NPes7L5PRYTGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767633532; c=relaxed/simple;
	bh=kmlpie7uPacLuriWKrsHoYzxNI/2YimRo50QTr6xE4I=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=TbVmfLuk+RnoPM//qqJ1B0HiGpBj3HrT1xnuXf3buuxMDwAxVd7clyCn1x5+V1S+xWoamL7l9t5NgyLgfKg3cLPDwN4xZDY+pSyl83tjNEEkKTAP0nsS8oVTqQkiu9Nu57R9W4n8rXM5+CtWagISnRwNkHxhPSTd0rABkBLKIIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=pbz9pPZv; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id ED71D4E41F81;
	Mon,  5 Jan 2026 17:18:43 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id AE7C060726;
	Mon,  5 Jan 2026 17:18:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 34754103C8570;
	Mon,  5 Jan 2026 18:18:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767633521; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=jJBDd1lBnsLLVQ+v5uRZrldoZU9HJRYkyBCUB5ieka0=;
	b=pbz9pPZvL1ZahfDLn46OeQ5DP15RMcsamsRlCdxFLSVe1OoIsY++I543gAavhbvRpmauuI
	YKHc3yuyAQcEtpSquPFG+U68vJAt4jCkftgv8nMZ7F4KhijQDkIZXPhO9X6tTdCWRNtuUt
	o0ZvvgsnKl5d6RByNX1h7+4Rjh6S3pmwRBZLq0FDC5ha4YirVoIIsT/dKlIMwjJIkW48Fg
	gQAbTMhubNlNcRj9E35TJyR67vr96yhZTyKr0nZvRfIazM53pNemdtDM4qM2tb1quywmXL
	apq5cndky1UIlAzOly5WykcD0qFOTDIg9nEBHcKj+ZrAE4IDL0p8v/lTI7nLxA==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 05 Jan 2026 18:18:32 +0100
Message-Id: <DFGTS953Y2YJ.1SUIIDRMKUGQJ@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v2 05/20] drm/tilcdc: Convert legacy panel binding via
 DT overlay at boot time
Cc: "Jyri Sarha" <jyri.sarha@iki.fi>, "Tomi Valkeinen"
 <tomi.valkeinen@ideasonboard.com>, "Maarten Lankhorst"
 <maarten.lankhorst@linux.intel.com>, "Maxime Ripard" <mripard@kernel.org>,
 "Thomas Zimmermann" <tzimmermann@suse.de>, "David Airlie"
 <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Russell King" <linux@armlinux.org.uk>,
 "Bartosz Golaszewski" <brgl@bgdev.pl>, "Tony Lindgren" <tony@atomide.com>,
 "Andrzej Hajda" <andrzej.hajda@intel.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>, "Laurent
 Pinchart" <Laurent.pinchart@ideasonboard.com>, "Jonas Karlman"
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Markus
 Schneider-Pargmann" <msp@baylibre.com>, "Bajjuri Praneeth"
 <praneeth@ti.com>, "Louis Chauvet" <louis.chauvet@bootlin.com>, "Thomas
 Petazzoni" <thomas.petazzoni@bootlin.com>, "Miguel Gazquez"
 <miguel.gazquez@bootlin.com>, <dri-devel@lists.freedesktop.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>
To: "Kory Maincent" <kory.maincent@bootlin.com>
X-Mailer: aerc 0.20.1
References: <20251211-feature_tilcdc-v2-0-f48bac3cd33e@bootlin.com>
 <20251211-feature_tilcdc-v2-5-f48bac3cd33e@bootlin.com>
 <DF0K5UFX46JA.OH85T6IPC5MW@bootlin.com>
 <20260105152939.49642d0a@kmaincent-XPS-13-7390>
In-Reply-To: <20260105152939.49642d0a@kmaincent-XPS-13-7390>
X-Last-TLS-Session-Version: TLSv1.3

Hi K=C3=B6ry,

On Mon Jan 5, 2026 at 3:29 PM CET, Kory Maincent wrote:
>> > +static int __init tilcdc_panel_copy_props(struct device_node *old_pan=
el,
>> > +					  struct device_node *new_panel)
>> > +{
>> > +	struct device_node *child, *old_timing, *new_timing, *panel_info;
>> > +	u32 invert_pxl_clk =3D 0, sync_edge =3D 0;
>> > +	struct property *prop;
>> > +
>> > +	/* Copy all panel properties to the new panel node */
>> > +	for_each_property_of_node(old_panel, prop) {
>> > +		if (!strncmp(prop->name, "compatible",
>> > sizeof("compatible")))
>> > +			continue;
>> > +
>> > +		tilcdc_panel_update_prop(new_panel, prop->name,
>> > +					 prop->value, prop->length);
>> > +	}
>> > +
>> > +	child =3D of_get_child_by_name(old_panel, "display-timings");
>>
>> There's some housekeeping code in this function to ensure you put all th=
e
>> device_node refs. It would be simpler and less error prone to use a clea=
nup
>> action. E.g.:
>>
>> -	struct device_node *child, *old_timing, *new_timing, *panel_info;
>>
>> -	child =3D of_get_child_by_name(old_panel, "display-timings");
>> +	struct device_node *child __free(device_node) =3D
>> of_get_child_by_name(old_panel, "display-timings");
>
> I am not used to this __free() macro and even some subsystem (net) are av=
oiding
> it but ok I will move to it. I don't know what are the pros and cons.

I don't see drawbacks from a technical point of view. Only potentially a
matter of taste.

The pro is that with a cleanup action the compiler will put the cleanup
code at scope exit, whichever exit point is taken. Example:

int myfunc()
{
    struct device_node *node1, *node2, *node3;

    struct device_node *node1 =3D of_get_child_by_name();
    ...
    if (foo) {
        of_node_put(node1);
        return -E...;
    }

    struct device_node *node2 =3D of_get_child_by_name();
    ...
    if (bar) {
        of_node_put(node2);
        of_node_put(node1);
        return -E...;
    }

    struct device_node *node3 =3D of_get_child_by_name();
    ...
    if (foo) {
        of_node_put(node3);
        of_node_put(node2);
        of_node_put(node1);
        return -E...;
    }
}

Here the of_node_put() list grows at every return point. Of course you can
use gotos to do all the of_node_put()s in a single place, but still with
some code to maintain, potential bugs, and take care of corner cases in
case of a complex code path.

Same example with a cleanup action:

int myfunc()
{
    struct device_node *node1 __free(of_node_put) =3D of_get_child_by_name(=
);
    ...
    if (foo)
        return -E...;

    struct device_node *node2 __free(of_node_put) =3D of_get_child_by_name(=
);
    ...
    if (bar)
        return -E...;

    struct device_node *node3 __free(of_node_put) =3D of_get_child_by_name(=
);
    ...
    if (foo)
        return -E...;
}

The compiler will insert the of_node_put() calls at scope exit (the scope
is the entire function in the above example), so they are called whichever
'return' statement happens. Pros: less code to write and maintain, code is
cleaner, less potential mistakes.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

