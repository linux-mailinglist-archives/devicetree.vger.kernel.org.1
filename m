Return-Path: <devicetree+bounces-321102-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o/obNSqhS2pVXQEAu9opvQ
	(envelope-from <devicetree+bounces-321102-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:35:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3177109A5
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 14:35:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=VK26Hj31;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321102-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321102-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDB743280607
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 11:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B5EB3F8237;
	Mon,  6 Jul 2026 11:08:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC9D3EFD0F
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 11:08:20 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783336102; cv=pass; b=OGIJcpOeXmVsurzE/2wS4reyHaW1DySXGAR/J5NtTuW9ds66Tsgna/dkW1tezWvOwj9vQJkj+6lB+pLPCA+4qziszvi6zZ7XAbYfeucfXO2RBJp3ZkYA2QSwx7Dj6EeinJ9odi75NcY5IX2vIeVlhwjIj4IFnQgHxRtMe2TWAjY=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783336102; c=relaxed/simple;
	bh=4F/mamksgE6M36asyjHLz+r3WuYlAy4EjSD04V58GmU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qkadgPpFOslO06UEN8Nv2svMW0HSiZ9HVyVzAnJhQOo06X+sCZevQujYJSenZDvxPcSFYYyXUyRZJvwi77x1+FBFmJZF/CNBMpFqBUo/TvKs+ogX0E9sgCt2tNUOlX7vJ9g8+OJyT9IH+JsvgA0PsgiSZyksNsB4oj86TiuK6EA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VK26Hj31; arc=pass smtp.client-ip=74.125.224.50
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-6651bc57458so1746944d50.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 04:08:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783336099; cv=none;
        d=google.com; s=arc-20260327;
        b=eJWNA0p7vbFC7dE/CB3cdTSyuFu10/SLzREk03hkrESXmQWqNR8WeqmGe0VSqMbFLe
         930LCFisftKvY4C/18vTiKIBm1wJ+9Tm9xw0U62EQv0nZNy0KD5BnOiEIwvv4u1nR61G
         vPMmTri0oEopOCVCHIU7ZNGqXf1i1I3X1g9WBYviuJU5OPRYzMnqKq4dCAW3q7k1X77n
         riHyghXMdzpsirFYbMPrjm/d9qdjBFiemfW0z0fC7Kl4t9oLwXj4B54+uzD3WGAZIAQa
         XlsfGd4fHgw0I4wy2DbON8yiivQD7ndyctIispSBajLGHiD+SfJ7Pv2XnFbIROVPu0SJ
         UdFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SIs5mr1YlXuHrRAWD0Cvvhp1KPf82E28pNtyAHr0i7A=;
        fh=8CsyeA2eUoi61AODu7Ia1B9gIzkgRPHC4syMB2U5/zA=;
        b=XVQgr87AL9sIg8qXBB8P49gWhqu8p0zNwPp5WxkDGOV3XK4CftirWPKfJCjW8kIt59
         nKDz74loW/jITnwTvJ+LQVcEU8COV8TSugccfcuQinfICVqlkiBfgshE442KNWDlZZgr
         /Quxz2c9mK+Jlr/bO/XV5va7mVqzPnL7+t+mB3I/8dZioMpnqQ0G6Rt/cDqwKcrYwas/
         gTyGDmPhkcG+6+QtaxDX3+gldJxRqnCXqzAMuAZb0P5M7lHaqvfuWiVbmC2Ce35yg+v8
         vlMGy7IQpAFrDxHqCc2yKL1svt9dGgEsAZDXIRUzNsPwp58/t4l/FyDMiHRqCIkLptDp
         q2Rw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783336099; x=1783940899; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SIs5mr1YlXuHrRAWD0Cvvhp1KPf82E28pNtyAHr0i7A=;
        b=VK26Hj31UayrVs/4ulgCbhVpWYBWmOwQVZ1cZulYxavWOit5dV5tCoKEG/g9vtbHcq
         jhq50FZ57MBVX950hnpmnOE0FU+iWtFgnmz5tmrHk7jVAY81/sx7woV1a6TxIltEifKE
         kYm0CCbgjBlkFhMAdJOKvmmF1T8y4EHhE9Dcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783336099; x=1783940899;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SIs5mr1YlXuHrRAWD0Cvvhp1KPf82E28pNtyAHr0i7A=;
        b=LJun420GQCj7Pl1EV8k6w6oHqz+CcW70t7wySvK4DEWltzngd+bpz7liKogrDDRUXB
         HnEfOIvjkvhCSEHjdNB3ZNwiuCSjvvsx8yrszIOt5ldib+j4Zy/BNey+HmocmiaKogjr
         ErBOScEH7pxvj6GnfPvdf6xBvrvlvY5lLoHvvBKcZECSbh0INJSZRR1Cp+c/4wQ1fnCr
         6Jgbe8+q739d7EN1wxMlhUhqlgPX28gvRNLRfWcu0LLsvhjpwIHyp+nrD72MGoKq8Q8f
         Dv7w4U9QoI/3323FLJMzj/r4g0TrBHicMqLD+Y4bwgI2e/KDYK/HOGwQ4LVOhkeOauRm
         LWNw==
X-Forwarded-Encrypted: i=1; AHgh+RqniC1IyyksPDFkpZ3UWAsjrfg0FXCXknPhiTPTqgfcLLFlgSyMk33PClkeSsyTTQSwVYFlqJO+eWCs@vger.kernel.org
X-Gm-Message-State: AOJu0YzkjFf0Uc1HUyQm9FVIiUtwB9lzXJovyl7mez+nmBpBJjD+Obhm
	1RA5AyquqZ7shc9TwKcCqE4yaglr7cwjQivJJSv+JI5QiJfSSBi9+02T7LM3UliftS2CyEIgTM4
	tHw572nbsYOS3zq/wfNQ7J0CWJQ9XVXmL1xcGn1P7
X-Gm-Gg: AfdE7cnjOp4W9SG9plW0j0KdWNZWJHelsz9NnmF9ghw/pi00WLCHzlEJuQZmNhJbV5O
	KQBvRRUKKC6pbujy/HViAbjpc3dp6f1Q8aPpQAPwuPctzbjpvIYJOmnh1n4B3gE+hC2YN7wdoql
	XGcTWIVlfFkffxadl3YF/XuZRCcgRx+oxDfdouFKz+xT0kY6iWmmSvAXUI3i51LsWTq2Xs5B86x
	S7n/vEGmn2sUg0R3EErFyMEC2uDyy+nW/Qr/NL3+E7CG1cpKXAIKOAOE8jxWgpgkcQdxm2dcYd2
	OoUF+bV+zkpaTr8+V2JaRtYYHm4=
X-Received: by 2002:a53:d016:0:b0:664:c436:e525 with SMTP id
 956f58d0204a3-6677fd49ec4mr103596d50.58.1783336099517; Mon, 06 Jul 2026
 04:08:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260703110317.1283411-1-wenst@chromium.org> <20260703110317.1283411-7-wenst@chromium.org>
 <ake09vk4fEv1D9QC@ashevche-desk.local> <CAGXv+5GNucSXrhL=YxarSJHD2ezzYDK3EovFu-zy012KgZ+ZBg@mail.gmail.com>
 <ake6FNy83LLtCs3b@ashevche-desk.local>
In-Reply-To: <ake6FNy83LLtCs3b@ashevche-desk.local>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 6 Jul 2026 19:08:07 +0800
X-Gm-Features: AVVi8CcaHXwr5vK-Mk50Hl5ytWXCTbNUaYqO2byI6p2Q5_6clKTL9yyyDNsH5MY
Message-ID: <CAGXv+5EgpizA3Pc8ScNuChPhvFKWd5F6dxB-wT4-7EwabE-9dQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/13] usb: hub: Pass |struct usb_port*| to usb_port_is_power_on()
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Daniel Scally <djrscally@gmail.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-acpi@vger.kernel.org, 
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Alan Stern <stern@rowland.harvard.edu>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:brgl@kernel.org,m:gregkh@linuxfoundation.org,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:stern@rowland.harvard.edu,m:bartosz.golaszewski@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-321102-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linuxfoundation.org,gmail.com,linux.intel.com,collabora.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,rowland.harvard.edu,oss.qualcomm.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,chromium.org:from_mime,chromium.org:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A3177109A5

On Fri, Jul 3, 2026 at 9:33=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Fri, Jul 03, 2026 at 09:17:16PM +0800, Chen-Yu Tsai wrote:
> > On Fri, Jul 3, 2026 at 9:11=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > >
> > > On Fri, Jul 03, 2026 at 07:03:07PM +0800, Chen-Yu Tsai wrote:
> > > > usb_port_is_power_on() currently takes |struct usb_hub*|, but only =
needs
> > > > it to tell if the hub/port is SuperSpeed or not.
> > > >
> > > > In a subsequent change, usb_port_is_power_on() needs access to a pw=
rseq
> > > > state tracking field in |struct usb_port|. Either structure can be =
used
> > > > to identify whether a port/hub is SuperSpeed or not, as the field i=
n
> > > > |struct usb_port| is inherited from the hub:
> > > >
> > > >     port->is_superspeed =3D hub_is_superspeed(hub)
> > > >
> > > > Replace usb_port_is_power_on()'s |struct usb_hub*| parameter with
> > > > |struct usb_port*| so a subsequent change can use it.
> > >
> > > At a brief look this will be the only function that takes usb_port
> > > instead of usb_hub in the entire hub.h (I don't count container_of()
> > > as a function). With that being said I would rather see it to be move=
d
> > > to port.c altogether (yes, it's more invasive change, but looks more
> > > consistent).  I would even dare to move struct usb_port (and containe=
r_of()
> > > accompanied with that) and this function to port.h. This might requir=
e
> > > a separate patch, though.
> >
> > I agree with the reasoning, especially given the function name. However
> > I wonder if it would cause problems given the linking order. I'll give
> > it a try nevertheless and report back.
>
> Thanks!
>
> In case it won't fly (but I still think it's better to split), can you at=
 least
> group usb_port APIs and struct? Means moving the proto closer to that str=
uct
> usb_port followed by container_of().

Looks like it works out fine. port.o is linked in after hub.o, so moving
the function from the latter to the former doesn't cause issues. One might
even say that it is the correct thing to do.

> > > Perhaps something like: 1) "move struct usb_port and associated APIs =
to port.h";
> > > 2) "...this patch...".

There are still some left in hub.c:

static void usb_lock_port(struct usb_port *port_dev)
static void usb_unlock_port(struct usb_port *port_dev)
static void port_over_current_notify(struct usb_port *port_dev)
static void hub_usb3_port_prepare_disable(struct usb_hub *hub,
                                          struct usb_port *port_dev)

These are used only in hub.c and moving them probably makes things
messier?

OOTH, the following bits are in port.c but declared in hub.h:

int usb_hub_create_port_device(struct usb_hub *hub,
         int port1);
void usb_hub_remove_port_device(struct usb_hub *hub,
         int port1);

Any preferences for these while we're reorganizing the code?


ChenYu

