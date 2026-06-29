Return-Path: <devicetree+bounces-316683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OrITImAVQmp/zwkAu9opvQ
	(envelope-from <devicetree+bounces-316683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:49:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB0B6D6828
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:49:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b="Q/wPAOgr";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316683-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316683-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 218BB3014355
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:46:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F193A6B67;
	Mon, 29 Jun 2026 06:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f50.google.com (mail-yx1-f50.google.com [74.125.224.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B469D3A5423
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:46:54 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782715616; cv=pass; b=Z7UKfKZIs3cuR9NPmoW1WdJsRO5SLH0QA+UsP6Aeq/kJd1cAChPl2Q+Hb+FlVq9igYPIVLDL9Zq5pdTypsYQXCGHO/bGBFF7iM6mnZKdan3xwDX+VKHADmazuXGye1udQhXYR/Hi+YPgoxCcgzlKv+O6AE6OhupAqU+lseMQDxE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782715616; c=relaxed/simple;
	bh=wtT+R2QEQMbY0+UAKHyPbJ02qh8DU6NUrzght/3Gr+c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J6Y6oU03NjFC+Ul3v7KdoKNlvkD5h1xKTzGburv2XTCrVgw/uYMg/JR4EpjvYnqi7h9fOIF3z0KyyE7n3/uaIh9eQ8WTOtEeBZm611kUaa6WN8KvuP1ebDe7Smg9JJ3L/+B0Rfm614CXIM9VjaNa2yvZz4TJZYk6XbOGy0Ab8H8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Q/wPAOgr; arc=pass smtp.client-ip=74.125.224.50
Received: by mail-yx1-f50.google.com with SMTP id 956f58d0204a3-664d910cc75so577964d50.1
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 23:46:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782715614; cv=none;
        d=google.com; s=arc-20260327;
        b=Rv6P3baTrGcta9VWiDgeWKJw+N3B0qt2sw975f6Pi2IOa5yGxM+12Ct42YvreD4+r1
         18MJnbwhaX2UrZMYxSTwAo8x/8VIJ/J54KsJDks/Rk4O/yPrgyTBwPGEjQLM6ZRZtyET
         K7/brpp2rRimDpuoiRFHzrLYH5FEEnh9alu+8r9H/45ZVOCQYwdOE1uOjsAvpGH+RZUK
         jyOIMeq/m28cAWsTMeRb04go7ZHpqcqXwrhpnQ/BlVl4glWTDiQFA1c0qFcycvKGG9MK
         I9tobS3dnt4sngfTJWSAqQmXYrOJYfhh1kA8SmNgWhLnl34N+GlcAr4g3ca7NJsHx+6u
         MP7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AdLfLl6UogJFWv6j1WTnAMUaWp/TzmRrbHb3NuUWZmc=;
        fh=ymVg0iNCrZ1DzDw28MmB8TUat7QM3tC+GksjKiPmYUQ=;
        b=Y8ULUvR9g2feHQVh80/e9PFvFa6PVxdnedTg8OUJlYjziMdEPz5NbMQ/uZn2L5vz+s
         GkK9fgahal3idkEn8rPcQurdA0uR89LzNW2w+fzlU772v1qsPb8GTOlQQy5mfhRuvq8I
         AfEvgfMnzuhW9+vDEhiGiFCcgdwpkm63c9qEwzy0lGhAUdQGnMtjPvgb3ml74jKSOFLi
         iebDjU9nb32gJ7do2D54CLhj0iPmzLJ43KMlE+X4rKF700cI14Jiq/TLL6i31hHTKiDk
         NROXwg2Nr0luGM6sN7LX/0sV+dKykVg4CV5Hx2Yyk4+EOeMzYOTYnDgY6OWQXPRCbN6a
         Fz6Q==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1782715614; x=1783320414; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AdLfLl6UogJFWv6j1WTnAMUaWp/TzmRrbHb3NuUWZmc=;
        b=Q/wPAOgrjHthVssKFodjWVx3k9XmfpfyW2y3hGXc9wncZljjfv/zuhGIDv24uulgSV
         PavgeIgqEgr14M610VzlDpLik3vcHZsQjbvyHFX63RI03m76M5UmptHzDU63GqPHixBA
         FAe65nc4nXaDvGO0SxZv3c8XYT8RekIJlN9Do=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782715614; x=1783320414;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AdLfLl6UogJFWv6j1WTnAMUaWp/TzmRrbHb3NuUWZmc=;
        b=iDFce7MG3DLckIndn7youSOd58JwED3NF4yOG8t7Hsx2ZYiun8Me2KhZtJgfZIxiRf
         g1MZmLPnyI/8on/nNPNDFvdx4e33a0TE0HeVpyvDiQJZrlZkDmcdIH1XvOxsgy6Gow7e
         VdCCktQXjB267X9GAQEorGLUxNfOi6Hfsxxeu28hLoA1HLLkM1bYL40+BdbaWdpdJ/I0
         zeSvl/Xp/7x4De4lqJQUciH2eMMTaEa/rcH2kpt2IN6g10cSC48qd8oq0rDFf72jzFiT
         oadxs99MfjpLHCAtS/07/fNiDyyUwRjYC+g7zBjxhwO6hGOitozIfTufkT0+T4yj4QXS
         i9Hw==
X-Forwarded-Encrypted: i=1; AHgh+RrJxfdvMJ+Pd+ctJA2PHi6GkX5fuODuHh42/PoZJVqGb69MdXI9yhrWRxy0qN1F/3MNRovpAaqO4m8y@vger.kernel.org
X-Gm-Message-State: AOJu0YyMo343rHU7HVtMrV2EJyhtko+yCX3UU/adrxANp1vTYr6rvUuv
	YAIg+Q4BsubOxrhA1YX08691g7ehZAfBmx4O+q6GpXe7ph6n/kJ0g5gTd8AlWQevyVinKXqZegF
	AyQAP7QaQVZq22QeTasImv/U5fM1aaZYo9Sfz2jca
X-Gm-Gg: AfdE7cnCW5MfQR1u7rq0+HnOYV1X63DWKD6Xtr30Si5whltZ4LEIbyYdlM2i48fQ3xk
	0tXgmli5LlPQyct16rjYo3IIu1kiKlEwUMSUerD+yECdLMAwCJmWw7hG+s55j/ELMLfySptEZSz
	qYAOruHBZYr0V/eimHM08HadAsFpFjQl7qsg86i8/3sK0oGZLYX9+jRYmJSMW44lsKchD2Jga0Q
	Mku8LIv0HUYPWumGCweWGtCIO+6RmZgbGOZSISIpDILIFWBMIQZYVD4Smz10dYCp1UfLVim5qw9
	br6NEWsGd1qe23ctwsT2xMPRS5g=
X-Received: by 2002:a53:d24b:0:b0:664:ae6a:f07 with SMTP id
 956f58d0204a3-664ae6a108dmr6236222d50.81.1782715613698; Sun, 28 Jun 2026
 23:46:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260610084053.2059858-1-wenst@chromium.org> <20260610084053.2059858-8-wenst@chromium.org>
 <CAMRc=Mc3DqGb2MsvM4tjcqFuRraAO+EftO1UrtNFvR5dMRXmVA@mail.gmail.com> <CAGXv+5HQa9BH5wyVwKNxjXLEZDnE0sbeQjgNxwmAG+OF8bbz=w@mail.gmail.com>
In-Reply-To: <CAGXv+5HQa9BH5wyVwKNxjXLEZDnE0sbeQjgNxwmAG+OF8bbz=w@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 29 Jun 2026 14:46:42 +0800
X-Gm-Features: AVVi8Cf2Jr6SG6fphp7pdwOmuJjdBOlHCbVmzmc43-YAOHTJXjsvshlXzGC6cxU
Message-ID: <CAGXv+5Gbf8+=hMZcK0pYraC1t4qmDx_WVPkr2RhWdm3bq_LZEQ@mail.gmail.com>
Subject: Re: [PATCH v2 07/16] usb: hub: Power on connected M.2 E-key connectors
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-acpi@vger.kernel.org, 
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:brgl@kernel.org,m:stern@rowland.harvard.edu,m:linux-acpi@vger.kernel.org,m:driver-core@lists.linux.dev,m:linux-pm@vger.kernel.org,m:linux-usb@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-mediatek@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:mani@kernel.org,m:gregkh@linuxfoundation.org,m:andriy.shevchenko@linux.intel.com,m:djrscally@gmail.com,m:heikki.krogerus@linux.intel.com,m:sakari.ailus@linux.intel.com,m:rafael@kernel.org,m:dakr@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-316683-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[wenst@chromium.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
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
	FREEMAIL_CC(0.00)[rowland.harvard.edu,vger.kernel.org,lists.linux.dev,lists.infradead.org,kernel.org,linuxfoundation.org,linux.intel.com,gmail.com,collabora.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid,chromium.org:dkim,chromium.org:email,chromium.org:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AB0B6D6828

On Fri, Jun 12, 2026 at 4:55=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Thu, Jun 11, 2026 at 6:11=E2=80=AFPM Bartosz Golaszewski <brgl@kernel.=
org> wrote:
> >
> > On Wed, 10 Jun 2026 10:40:41 +0200, Chen-Yu Tsai <wenst@chromium.org> s=
aid:
> > > The new M.2 E-key connector can have a USB connection. For the USB de=
vice
> > > on this connector to work, its power must be enabled and the W_DISABL=
E2#
> > > signal deasserted. The connector driver handles this and provides a
> > > toggle over the power sequencing API.
> > >
> > > This feature currently only supports a directly connected (no mux in
> > > between) M.2 E-key connector. Existing USB connector types are not
> > > covered. The USB A connector was recently added to the onboard device=
s
> > > driver. USB B connectors have historically been managed by the USB
> > > gadget or dual-role device controller drivers. USB C connectors are
> > > handled by TCPM drivers.
> > >
> > > The power sequencing API does not know whether a power sequence provi=
der
> > > is not needed or not available yet, so we only request it for connect=
ors
> > > that we know need it, which at this time is just the E-key connector.
> > >
> > > On the USB side, the port firmware node (if present) is tied to the
> > > usb_port device. This device is used to acquire the power sequencing
> > > descriptor. This allows the provider to tell the different ports on o=
ne
> > > hub apart.
> > >
> > > This feature is not implemented in the onboard USB devices driver. Th=
e
> > > power sequencing API expects the consumer device to make the request,
> > > but there is no device node to instantiate a platform device to tie
> > > the driver to. The connector is not a child node of the USB host or
> > > hub, and the graph connection is from a USB port to the connector.
> > > And the connector itself already has a driver.
> > >
> > > Power sequencing is not directly enabled in the connector driver as
> > > that would completely decouple the timing of it from the USB subsyste=
m.
> > > It would not be possible for the USB subsystem to toggle the power
> > > for a power cycle or to disable the port.
> > >
> > > This change depends on another change to make the power sequencing
> > > framework bool instead of tristate. The USB core and hub driver are
> > > bool, so if the power sequencing framework is built as a module, the
> > > kernel will fail to link.
> > >
> >
> > That bit needs to go away I suppose?
>
> Yeah, instead we need
>
>     config USB
>         depends on POWER_SEQUENCING && !POWER_SEQUENCING

FTR:

Somehow I remembered this incorrectly. It should be the following instead:

    depends on POWER_SEQUENCING || !POWER_SEQUENCING

and the dependency issue mentioned below then goes away.

ChenYu

> But I ran into a dozen or so drivers that have "select USB", mostly
> input devices:
>
>     config TOUCHSCREEN_USB_COMPOSITE
>         tristate "USB Touchscreen Driver"
>         depends on USB_ARCH_HAS_HCD
>         select USB
>
> Kconfig complains about unmet dependencies.
>
> > I see Andy has some suggestions but in general I like this approach muc=
h better
> > than adding the pwrseq_get_index() function. Thanks!
>
> Thanks!
>
> ChenYu

