Return-Path: <devicetree+bounces-266266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIoLDI68lGm4HQIAu9opvQ
	(envelope-from <devicetree+bounces-266266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:07:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0046714F76F
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 64725300E2AD
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5FED37472F;
	Tue, 17 Feb 2026 19:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LX5bd9+q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D9E374193
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 19:07:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.171
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771355276; cv=pass; b=WMh3TNpboguBAH9DUiscxMaAMpSVBUm/CPQA2ciSkM3dmHi7x5xLGP7zvbRcxrRBAWi6Or2Abg5rtOS2YQrmnPSe2KVCRvJyzgmnOTAEexgcF2oZN7ejxPVRMhE6pvN/GVtAS/knQjT8L4eWeHE6+trTBlSDoY5vzA7b5pjO4Bg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771355276; c=relaxed/simple;
	bh=dyldXXzyBlj2YTsN0PLz1aoLB+RoqNGt55UKA5i9/hI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jGI7CH1JTF+iAI2G4FCa1QNegEiLv6oF/hjZpOukFSLHqcRIcyEaJUYSyOwm+Rv+Uz6R58cMkt8O7Yospag3ejOhYv5Vhuef/eiD8cHqy5Rzs+kipuQReGmTwBebMR7Z1atDR+g3s7/fDL8QCtkw3qPV71AsVlFuTL8qxZSpIDY=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LX5bd9+q; arc=pass smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-5673fd077b4so2015490e0c.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:07:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771355274; cv=none;
        d=google.com; s=arc-20240605;
        b=PKHigWoD0KmxHmYGEbuw62EDRsUIcOXFSxMQkTFbuLmbjyYQuagmerre3EDz48SRHR
         wRkIQ4V3Lp3k1IkDv4yur/zZVWlXVGYy2hsPKWqDLxBQ5kDLvW/RMOQHBobMg2Fl5r8J
         6oxqIwss8yKagXlNi8GWpj5AGHgpN1rYTVlPMLLbYAfzF5mY8Qacccw3KoD6E2ar8O3t
         TsBuLx7I5m3gn6b+3p9GIfjU06OFg5lbjfq3PVHynxRuhfS7K0gYvZLsMqGKG+VIMDv8
         oLyqUXHnG5zxAlSyapQyUI4dBVtVbxNld+s12hDRiGDNZy3TuXM0gUZpdXdOZFgibSWu
         0bGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dyldXXzyBlj2YTsN0PLz1aoLB+RoqNGt55UKA5i9/hI=;
        fh=OsrWPxBUSOKdASsakaZIfBvtQTzGkzXZg3yu4hkiM30=;
        b=URN6TEsA2FnmYxoISViby/U6qzw2rkLJU3lkcZ/MqqksIi9wH/IBvZShRgIItWAYl+
         1v/Dmjrg2aELk4HM6F24lqtIkzBP96QdpVSHBHLS9Eh0JincageMwtYD6OOe8W4fEth8
         qUrAmsrNOlldkjj1g7/tWTIDcbqWUYL8tvpMd94nMGbasnFiVkw6PBjxmufwcTKUvtMp
         WY9KNRm1eMX/8sK3BF85xcFTQ6gxNEjqOwFKMdv0ftLSdRxprjH5yEoP2B/+YpNHS8Ds
         4WoH9Vzhid3s2oBF7ahwYgbuMFc4HS44l6jVAHftQERjjBTR8edTk8c6QiNfC9jdy1dO
         wbxA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771355274; x=1771960074; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dyldXXzyBlj2YTsN0PLz1aoLB+RoqNGt55UKA5i9/hI=;
        b=LX5bd9+qC73X6kHuCXHMD4IjGouNsDS1iCmTABGjNfXLJjgQiLshWLCEDuUNLMrb2W
         Oqa788NhAfKWqDyFV311sH0TJRnQL/resNdzYFNedkT4cHfvoXMvOiYddeMtEUzBygkV
         OuG/5DKswdUA5uk2PyRGtTd98y+6Yb8+ZyRFKQuVsKp/seT9ihlkIqqUEzX88fbsMbhx
         lyUQPX7B1CZ6tXwj16B8GOJnw2+j8Bd0HuUPWkwyLrndsZEvnugGXGf3SOtEG+N/w3FL
         DKl2JbicQgHjVAO/UCWif7wMudVljW3rJILrzPj/gTC8+KexzwIqy/vhridHIcJbH4Le
         cyfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771355274; x=1771960074;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dyldXXzyBlj2YTsN0PLz1aoLB+RoqNGt55UKA5i9/hI=;
        b=XFPUdyo/PVbTBcZpcSlwyhQQGRqf50EE8NiO/0ufnsXK3PIXPhxekFXhUeQg91j1K5
         4SOF456C7EJq1BZBtbnFHD+wOD3crfC4FwZGgCiscXpz9Ya0AAglDIIe9++I6KItQwdj
         pmpwgbYYN9CtMR0edVuAbvm50JaVW9O50YyV+R/WwtGXsdAEIV5CSfZ93fIY3/aua3sf
         8+q3cyGTGMNIvCbnkyx+zkKiNyiIW8e7JehroZrl6sitvqusDNz8Ve+hcsg6qAiIzULT
         8YZqKnlRYAO6D14gw8ezvswc8cWVfiA/p9XhImFoynbr9uumfypWzdlpG5BpFAjRv3SD
         EibA==
X-Forwarded-Encrypted: i=1; AJvYcCUveK+yj3ZOnbwDEzD51mpRc7R6v+BYLkoxEUlld/iCHb0WaAxmwQ0oIPJi40XYVSwJ4mlI5EhnB70C@vger.kernel.org
X-Gm-Message-State: AOJu0YzV9JNHfSZXUctjhl4PF5ORXrFn8XUFN0/YXswawsjlQ5tlSYaX
	KDN1ufTDJrL9VVl8cVXSoiuViQqfvsV8TJ+URw5iUUWeoF/+zSIZK4+QdNkSjrMsSdsE8dvdHvj
	4Q6mdAkptRQJgzLlD0CN28Bf+xhThyNM=
X-Gm-Gg: AZuq6aIymHAksZP2C9MGhCHdMYE1uGMecJsMAoimu07HFp3jAgO5c8Z7+1ltpVrGdMM
	hdps3z14m8oK5qX5YccsAPKieS6e+gUmZjnItE5auIDY76a1YB03E4ZUdLs5hIf4/4674gs0nS9
	VfXw1ZIRdryxNiZu2aWLy6u/GRktbWx9H98yBITTFToQK+wskn8FpqTpEwE2ZKiFXRhp4CDNjDj
	2D1YDXM8JlGWr0Ir/ceQezfpGNLHrDuyp5gkQv20c6OYxfRbo0WTOYS+8IBOyAgLeme9v3uPSa/
	5pktukp/bcl2sF6GV8I3+SGFL4UrtINyQ50YvHGmhDMpfq2icRZONL1VJ3m6+DAwc3Pv
X-Received: by 2002:a05:6122:6588:b0:563:80e6:3b76 with SMTP id
 71dfb90a1353d-567681c291cmr4450342e0c.7.1771355274182; Tue, 17 Feb 2026
 11:07:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260214213239.2546012-1-james.hilliard1@gmail.com>
 <CAMRc=MfK8k88PfQPvP=p1r3KQ40dwcZq4Z4f5fnRFakpYcknvA@mail.gmail.com>
 <CADvTj4r4mR0_HxcOOZFqJTVfoD=YdrGd2AD+hQNw6ciGUC=C1A@mail.gmail.com> <CAMRc=Me6v2E1zKGQzukJmP45cVkRWOGzYoO9=LKh63rPFRqfqA@mail.gmail.com>
In-Reply-To: <CAMRc=Me6v2E1zKGQzukJmP45cVkRWOGzYoO9=LKh63rPFRqfqA@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 17 Feb 2026 12:07:43 -0700
X-Gm-Features: AaiRm52HJ10yrzqkWoEOjyORfgZU1OldI-gXjZc5qft3kUVLQ6_-UhHaFZ-xLy0
Message-ID: <CADvTj4ovM1faNGoUa4HoTCN7avAqwkZfY5v9P8okgx87or8gDA@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] gpiolib: of: add gpio-line node support
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266266-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 0046714F76F
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 6:18=E2=80=AFAM Bartosz Golaszewski <brgl@kernel.or=
g> wrote:
>
> On Mon, 16 Feb 2026 22:20:10 +0100, James Hilliard
> <james.hilliard1@gmail.com> said:
> > On Mon, Feb 16, 2026 at 4:38=E2=80=AFAM Bartosz Golaszewski <brgl@kerne=
l.org> wrote:
> >>
> >> On Sat, 14 Feb 2026 22:32:37 +0100, James Hilliard
> >> <james.hilliard1@gmail.com> said:
> >> > Allow GPIO controller child nodes marked with "gpio-line" to
> >> > configure direction/flags at probe time without hogging the line.
> >> >
> >> > Teach OF gpiochip scanning and OF dynamic reconfiguration handlers t=
o
> >> > process gpio-line nodes in addition to gpio-hog nodes.
> >> >
> >> > Also parse "gpio-line-name" and apply it to desc->name. For gpio-hog
> >> > nodes, keep "line-name" semantics as the hog consumer label.
> >> >
> >>
> >> One important thing that's missing from this commit description is: wh=
at is
> >> the use-case and why do you need this.
> >
> > Added some more use-case details in v3:
> > https://lore.kernel.org/all/20260216211021.3019827-1-james.hilliard1@gm=
ail.com/
> >
> > In my case I'm setting up the GPIO line initial state and names for
> > userspace consumers mostly. I want to be able to configure the
> > individual line names from a combination of the dts file and multiple
> > dtso files for the same gpiochip along with setting up an initial state
> > before userspace consumers operate on the lines.
> >
> >> The DT binding patch should be sent together with this in a single ser=
ies. It
> >> should also be documented in the relevant .rst file.
> >
> > Which file would that be?
> >
>
> Documentation/driver-api/gpio/board.rst would fit best.

Should gpio-hog docs be moved here as well?

>
> > I had previously added docs to gpio.txt but was told here to just
> > drop the docs:
> > https://lore.kernel.org/all/b851bfd4-3c35-489f-a32d-dcd7a37ca99a@kernel=
.org/
> >
>
> There's a difference between device-tree bindings (formal, machine-readab=
le
> definition of the firmware ABI) under Documentation/devicetree/bindings/ =
and
> documentation for humans residing elsewhere in Documentation/. Make sure =
to
> not confuse the two. I would expect both to be supplied with such a chang=
e.

What file under bindings would this go in?

>
> >> I suppose it's another shot at defining what we previously called
> >> "initial-line-state", "default-line-state", etc. What happens when som=
eone
> >> requests the line, reconfigures it and then releases it?
> >
> > This should just provide an initial configuration, subsequent consumers
> > would override whatever is set here AFAIU.
> >
>
> Yeah, that's what I was afraid of. This is not hardware description, this=
 is
> user-convencience and as such I don't think it has place in DT bindings a=
nd -
> by extension - in DTS.

I guess this is more describing a hardware configuration, but is that
not allowed in DT bindings? There seems to be plenty of DT stuff
that's effectively describing the way the hardware should be configured
initially.

For example uart/serial nodes have a current-speed property that
can be used to configure the initial speed, but this can also be
overridden by userspace consumers at runtime as well via
termios configurations AFAIU. That seems to be a pretty similar
case to what I'm trying to do here with gpios.

What's the reason user-convenience hardware configuration stuff
like this shouldn't go in DT bindings?

> I'm afraid I don't have good alternatives to offer, solving this has been
> attempted several times in the past without success. Even gpio-hog would =
likely
> not get past DT maintainer review these days but it's ABI now so will sta=
y
> supported.

What did previous attempts look like? At least this is minimally invasive
and shares most of the code paths with gpio-hog.

> How early do you need to set these settings?

Well, before userspace applications can interact with the gpio lines I
suppose. Essentially so that it acts as a failsafe configuration in case
the userspace app doesn't get started for whatever reason as well as
giving some initial starting configuration for a userspace app to act
upon.

