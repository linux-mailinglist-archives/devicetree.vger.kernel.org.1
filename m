Return-Path: <devicetree+bounces-265153-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNPHOZ8Fjmlf+gAAu9opvQ
	(envelope-from <devicetree+bounces-265153-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:53:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F52B12FB09
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:53:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 581323028C29
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 16:53:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8299133F37E;
	Thu, 12 Feb 2026 16:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HAz4l6rn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0FA35DD07
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 16:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770915229; cv=pass; b=rK2xhq9h0wjqystL0l1Ab/vnD4V5hBOoc/6+bzDxASPqdbS33alTwSs0smkfbvWdCi27D3J5Exa9WCIdUcO2bPcF/uW7idiK1AzowAcilfdJftoIT7jRGKmqqoGFzmDFXgOgW8y49o35gGhSsM759FVDZFbiz5wnnwgR3JV1W+c=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770915229; c=relaxed/simple;
	bh=KRRuDH186O604x0X4TRhFKVbtELrQs8CvwIYr5dkakI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N5aM0EKw/4wwfSbppw2Ztig12APyKqBPVEvYYvz9P36kbd1R4VCXW6pSe/kZASmVTrpkVsfdyGjs9uBDf9TtS9xpmK6MXp+Oe7Buyyuqql9gbZAsO9I5fWAfJ0gVU9cHnlBVnVivDPUYWhgGi6o3WcOlBS3d5om/zBFjZsH3LA4=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HAz4l6rn; arc=pass smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5fa3f2b8f7dso25254137.0
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:53:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770915227; cv=none;
        d=google.com; s=arc-20240605;
        b=PU6CYlv1CcZ/cyO5JPGn7tHV5Y727c9qn7GevIepvEyjYTM1kmPd8rsQIFWQfbItSw
         Zhq6mpJlxgmENSolbh6fwtu5wnHHY0/UFeEmBvvYL6fHORMHyKGWije75LT6FYh/iYyd
         G/L/ZqbnX1RbMmPber9F4tdpeLksqbln0Fk+6foO/d9x1T5cWhqRdRQCrIKDNxx/yeWD
         4a1eoJ5aeLj/5LhqoHVF1vTPcP4CUdVFjZNogv+TkeVi60X/f76IdjLNjSXCCsLKMEcx
         UUFgaSAUD+9FZygn9gzRUJzyYWEk6KI9HkQ8wEY1pV0QngwE0FWFZfz4+2YD4Jsw8m/W
         G0kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k3NjKRq6iigwgiI1ey9uPZ+chcyfsZLM885ukY9EonI=;
        fh=70j1mcEZ5ZQMYXEN/ZXbe0vBNmkZMYb4/AZzplFBfXY=;
        b=b3fm5rhqACIIZ5ATBltAlvv09JpgO1G1WrZnSkpqHRijuNQnS3HkYJTSqWPngnlMlQ
         Lc4tROrQoqNftMggEPLQml9jha0HzA5DB/orN0sp3hMtmoxPoyoFu0Xt5Rzcgk/lRJuT
         kf3Ij3YOaZFzwtyadXKUZZUyAvHPSNzyVCzKj1ktA0vsAi8l0OarV0kfp/fVjZKXk7Ry
         KNmwmidLreVYc0kNSmGXnsUsSr0YXAzTL0ckHM/Di5gqA6F7ySrSYB+fHHGMeiKLVlF6
         WZrzlRH2O2y7ukVwqx9IdZgf6XrvAhbceUJ1hoyXb0jIBvP05evo12iOfdNWo+62VhU1
         aiDA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770915227; x=1771520027; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3NjKRq6iigwgiI1ey9uPZ+chcyfsZLM885ukY9EonI=;
        b=HAz4l6rntdy/I+RILkSEaM+m4aI+ALbE/gJur+wfAakWe+bNUcIG4ZxxXaoR7bsE9G
         YzHymcqvOGaPGaUwTMCFGw4AH1LVQxHafEmKtgesusxttD6GfsiXw/hDe9JQqE1w2bUn
         gFdDUrFRfX72Uyj3JcKE4kMteX6K2AsldZT6q2pvrcHvjrb/ncSm85EF1CFne6OfotNP
         49nNPMdcUkqs7r0juBrk8EiTG+i2unk7NwENglIJPzcEBO2YkSDgdc7q0G8BU4tttQbF
         24fI0quGFYK8/utmyQlYfDUxIaJVotUDhrSzkRmNL3tmRfrdOt9HtXZ2Rhqrg0XVNXM6
         giNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770915227; x=1771520027;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k3NjKRq6iigwgiI1ey9uPZ+chcyfsZLM885ukY9EonI=;
        b=rSnFf+Io8ry0bEhWCgKswcRxGBk+L66mtm1yWK24C5Mnb/A+hXxOcb9qv5w1zyI5ez
         QH5zSTisnlntypVG08AKe0TkmHWL7qeurevIiS3wsyKR3saDtyZbSfWH+2wAav6uPLOm
         YLs1eGpJCro/bHzGPKU/gR0nUgxXjKt8Mu+Bm1apd6ROSwsITVQSRAYZYCUQSewuwFHw
         yuQdBXlGRbLXmtUs4cDNzTMfaZ4Q9cFBwVbDIpc/u4pGufo6Lj2Qw1+Bntbmf2kzcUJY
         jU3ufzsfKecye20Y14n1TlriOgSqJBjutvJmxzvBDroyaKBa00PGZaMdhrgCiy7yNmXO
         xUvg==
X-Forwarded-Encrypted: i=1; AJvYcCXGnmGH1DLsFznsG7/BL2HHTFdt+rjwexgEOFO3vqHddvt+R3eZmkNnAC+oVBKxHMvNzkUApU3sXp1R@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo04/Oj/jWe7nTABWFetVASjz5JJcz8x6de10X9W4V26j2mAvE
	nsfQokjDL0jnMHhouZi+GE/2uDEBsZv1Et4e7N5WgEYhsDtE+qZARAlEF9an6QvyBahK6ZFW8Ku
	gGedTK3aXLmRj6Og0ORX6Nv89wTp5cQg=
X-Gm-Gg: AZuq6aKgnquhBXiBL77m2/IU9dEgj3/4Ms0VNGboi9udcuLC45+N9i67nM97uSFqA5u
	kGbYJndWO0CijGR3BOuYKBI2D9YvRqGRivakz93WbCf4qQPoUxc/XIBS4i9W02pmhDIXXrmgtOL
	BpgBXWbXg74GqEpashN/7tHA4ggpJMI56uL43lRL3UA8vA0r7adV58REz7Y27gDTtYEmYn3hL/B
	S/SJIehhQyqlgAUvOmzj7SxjkO2BLnwIMG7FcD4CgjXqFgjAdk1mjQQvySw1IGwjA2g1LgPn7py
	n288M/3ZMrrea5Dl4YpufUK4mALMrjstgQwl/PQfMBlnv3duhneQo7B3Xv+VbEGFu5om
X-Received: by 2002:a05:6102:a50:b0:5dd:c53b:75cc with SMTP id
 ada2fe7eead31-5fdfdc3aafamr1210516137.13.1770915226784; Thu, 12 Feb 2026
 08:53:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <338e6575-ec44-4179-94af-9086a7ca79ac@kernel.org> <92359c6d-06ac-4f8d-baa5-6fa45a536455@kernel.org>
 <CADvTj4q74H__JZftOiXkdsY3+E_Xmcx6Y6i70RQDJ0K09=XOHQ@mail.gmail.com>
 <30026ed7-cd19-4be2-adbb-e8bb155a75b8@kernel.org> <CADvTj4oBtO0Yhib1rE8QQwgtJvy-x_hK46C63mjVAydtxHOV8g@mail.gmail.com>
 <CAMuHMdW4oNeGY4VP7zajOS17apnjqS050H5L+Pxqe9bqqt=WNQ@mail.gmail.com>
In-Reply-To: <CAMuHMdW4oNeGY4VP7zajOS17apnjqS050H5L+Pxqe9bqqt=WNQ@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Thu, 12 Feb 2026 09:53:35 -0700
X-Gm-Features: AZwV_QiXDqffKgbN_n4Kb9EWjkuAa84A35C9mQaCYNZwP4RfgXLuGYOv1oTlqC4
Message-ID: <CADvTj4qQii5+tLtVVmBBXqdOmHXwj5T+kuadOAppx=+9rRuy_w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-265153-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 5F52B12FB09
X-Rspamd-Action: no action

On Thu, Feb 12, 2026 at 7:50=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi James,
>
> On Wed, 11 Feb 2026 at 18:01, James Hilliard <james.hilliard1@gmail.com> =
wrote:
> > On Wed, Feb 11, 2026 at 1:44=E2=80=AFAM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> > > On 11/02/2026 09:28, James Hilliard wrote:
> > > > virtual gpio driver though so AFAIU it's not hardware specific.
> > >
> > > You can give example of any hardware where this is useful. You need t=
o
> > > make your case with actual arguments.
> >
> > The sunxi h616 board I have has hundreds of GPIOs, only
> > a few of which are needed, I want to map them in device
> > tree overlays since there's some minor variants with different
> > hardware gpio configurations.
> >
> > Setting the gpio names on the parent controller is not practical
> > since doing so would require setting hundreds of values for
> > gpio-line-names, you also can't really combine sets of pin
> > names across device tree overlays AFAIU.
> >
> > > > Use case is I have a device with something like 300 gpio
> > > > lines...and I want to name/group a small subset of those
> > > > lines for delegation to a userspace app rather than trying
> > > > to set 300 or something gpio-line-names values, also I'm
> > >
> > > So if I change the approach in user-space or use different user-space
> > > app then I change the DTS?
> >
> > The idea is to make it practical to set gpio-line-names for a
> > subset of the GPIOs that are wired to peripheral boards.
> >
> > Say for example I have a control board connected to a few
> > different peripheral boards, there may be different mixtures
> > of peripheral boards, some of which can be used at the same
> > time as they use different GPIOs.
> >
> > The idea is we load device tree overlays for the detected
> > peripheral boards with detection done in uboot based on a
> > GPIO pin strapping based detection.
>
> Sounds like the work being done in "[RFC PATCH 00/77] Add support for
> dtb metadata and addon device-trees" [1] can be helpful for you, too.

I think I came across this as well, it did look potentially useful for
moving hardware variant device detection out of uboot, but doesn't
really seem to help with the gpio-line-names definition problem
that I was trying to solve with the gpio-aggregator.

The hardware I'm working with isn't really designed for runtime
hotplugging but the eeprom based detection could be useful
it seems(currently that's mostly done in userspace logic for the
peripheral boards). The line naming is more for dealing with
control card variant detection so that I can pass line names to
a username application via device tree.

Even defining line names for boards without overlays or any
runtime detection seems to require a ridiculous amount of ""
placeholders at the moment, i.e.:
https://github.com/torvalds/linux/blob/v6.19/arch/arm/boot/dts/allwinner/su=
n7i-a20-bananapi.dts#L227-L276

Is there any work going on to allow offset based gpio-line-names
definitions so that it's not required to set all gpio-line-names at the
same time(essentially making individual line name overrides
in either device tree includes/overlays impossible)?


>
> [1] https://lore.kernel.org/20260112142009.1006236-1-herve.codina@bootlin=
.com
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

