Return-Path: <devicetree+bounces-266550-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAZ7NbhRlmlYdwIAu9opvQ
	(envelope-from <devicetree+bounces-266550-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 00:56:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E6015B0B8
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 00:56:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6A0730221FD
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 23:56:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EC6430C621;
	Wed, 18 Feb 2026 23:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KyOnXJ04"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABA830BB8A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 23:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.46
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771458998; cv=pass; b=EAvXqrS2mh7/q/TCa900dy3Cw4ZGr0h1MHw6EONX1qh3QhRzDsRCRRWTWI0Js+h4Q5ngr/WBTcyLgZmV/MFVzRUouR9GzAeeRQHq9hPbPMoGuz4fUDt1pVXcZ2DsDnc0o8Dym5CWiwdPalzykg6wgmYwXltcK8cPw7Pqsb+uS68=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771458998; c=relaxed/simple;
	bh=AC4pbwC4YLAUywWsIK9CNWjR33nRd2if5qWenTumErQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DGE1B3HPPV7brj65DyD30FUf/4m3OaqZfVkuDPUBWf9Dhvwq/vk269gacVeRpo/AkkYEL+u7O+kXfbi/seceHbVUTcOVJWhh2C/AorX+Dl0Pg97FMC0tI7GgS0cNskaq0gDWk3FkT5ONm9CsCFJmDpLCpCdQEFfnSkWE6PuCkeE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KyOnXJ04; arc=pass smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5f5418c40daso1259353137.0
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 15:56:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771458996; cv=none;
        d=google.com; s=arc-20240605;
        b=lSUBXKnppRGbYVSnighdWiiY8FWUpdwH2I2nUONiGyw8PE7a6g83AUFrc1gmFAAqBq
         5HDlaff2JCl0jH7hyCOMesjhF38kbYQFZHQ+Bt1EfL6BQVAY8AzVmutJSJNfcOGjRPPm
         QDXN8jJT+ez3oRgFqcbEZD6K7vBG+/vYi2q7JNRy0Zpvm/il9XQNCktxUPEFSxS5LZls
         pQZU1F+yXwD5mrfbxsaK4keVPc+f2Y/VkZnHgI/VuaO820+y00EGspgv0cDEGz50BTt2
         Jo2VxflEs/8H8euNs5bdph6Y2eZXt5GSGIYXrjOMLUhVkb3utKQzCfZp/Fq7uq+LTR9/
         i1cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AC4pbwC4YLAUywWsIK9CNWjR33nRd2if5qWenTumErQ=;
        fh=21mdVrG/mhMZYCayGi8hAJ9bcjmj7abeSVstGI2wyB0=;
        b=F1pYKcBRiSGEJbHpVR2YO0JxG/IIWYbPGPb7jiZQLYPYeVyYTphUvdsvBV4H8gKcoi
         Fj8gWOEIwDtnA+j6cU2U9DS+233RYQa+KRfTAAmevqtSUNasTmoRkoGeER0B26JK7+Zc
         xQk+Huprp4KkPBeET3lmx/10CmELCNQbbljKqU9JEfC/ff5DFVSQyP3ZHCcSx5Ccwa3+
         /Fz69aBVlWQq5xUAizJ7YefGiUZY6gn+aFuMOTkvdONjdF/Hoyg/Nbt9lWpYwxJ88FWC
         O6+ImT9k4bRBBAwR6QC38XIqrz4AE5wcfkfx6/0ikw63oqV1B1IbStxWN9tJ53SiiqhI
         zLvQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771458996; x=1772063796; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AC4pbwC4YLAUywWsIK9CNWjR33nRd2if5qWenTumErQ=;
        b=KyOnXJ04ayXH+BrKEdRFAHznDBo8kQ2e51ksJtTaUeg+9dzyVpmduuzBteUgm/pwIy
         0UrYY7Jxdd9cofLr+TBAC7st9oDfdzHU9xKd+yxbrDSoLVJ4AASpWGsXf+lFeV9wxl5N
         52HUJJa1dRgwxiotK8Ai/ApV8Nxvx7xDbt7mmaLk5IJyL5dBGukr/F0FioTDA72hnGbV
         nPoXHRwcLLkog4hXc+gm9mY2ha5Hhet5KZd6bNLWAfNvv9nNzYs+DCnkNj3E2yjrbnOR
         4pALnL4NdMMr5rS72rYHzTwbMvm0/VzF4Sq7FzXX0kInTPIxXRz6d01Ybk/dPHhPTPta
         p32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771458996; x=1772063796;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AC4pbwC4YLAUywWsIK9CNWjR33nRd2if5qWenTumErQ=;
        b=R/bq6Z+qQrFr9A2Lqv8q91tTnWmJMKf5XUINYzRZ8Ri/P6mVnDr7nUgzhAoNPElFoM
         uVSg+zlrGH0GEzUflDPVRVY9YO1uF/O4m1deapSRnxuu7eYM3S9B1xPaBbPH0rrbWwof
         t0LnfFUdf4YZuatF1848AWoMML/xCL+oYMfzurVeTNSE5azUwFzZ41d1rovEPBNEqM6r
         +XrS4XuRYocWCTZOoneUgklrd2T+MAWxnxOAGDlS7CPWi54HBXfKjoo+ZuZVzInfIZ31
         c2IrOGTejVc22Y3fl0zV4Yaag3dS+uPVLYxS/HFj4w16FtbHVh80/zGKeu0OW+7rBYL9
         5k+g==
X-Forwarded-Encrypted: i=1; AJvYcCWg+sH394EqZD6sLz9eoeGGE7Vd2VyYpaf/Bg/imbZREnzxhOMFzyyvVceB0DGIdT5exMWzLVK3qsen@vger.kernel.org
X-Gm-Message-State: AOJu0YyxFyETY7YS33JsyvTwCWTy0gONSOfhy8JxE8RXQKz+g5qESeX4
	HTng4dldkiHLWffjdAcQ4TiVHvhGkJ/Cfd+5XcZx1w4brSNGj80HQXtbGTrs1Q8VpmQ2Itat/uU
	NOtGtnOuONhAOvieXtiQbb+0lPhm2OuA=
X-Gm-Gg: AZuq6aKPPO92JK7TKtnS7vvRzVUlAsooIzp0Msbm91F9GCtqp7gzvdEcc+OtM4ro2RP
	m+pMwzdmLt6dSHjhY1449itv+VEAfP5JE55ozknNRwq+KFZ7e9m4OThbXThA+D2bwruC+gGKY9d
	w0KVcdz79hchfdP1n8Z3E6YV84e18FtCPZEDocwhb2SYQAB9socqUexBRyp7lXXbG1gDaZfee7J
	9FdZk89lXhcQ6btWOeBk9I0dSzgbZF9COx8/sTYOxtnVXVfxBQTjdbpQsrCcmvnDpNCJLqRjLs5
	klt8sc2fap4a8jO3uBdAlWnWoyyNeTO08l01ZJ3em+VEHNL4zU5az7OgHKxfASLOR7k=
X-Received: by 2002:a05:6102:c8a:b0:5fd:fce9:761d with SMTP id
 ada2fe7eead31-5fe90af4167mr9458137.7.1771458995676; Wed, 18 Feb 2026 15:56:35
 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260214213239.2546012-1-james.hilliard1@gmail.com>
 <CAMRc=MfK8k88PfQPvP=p1r3KQ40dwcZq4Z4f5fnRFakpYcknvA@mail.gmail.com>
 <CADvTj4r4mR0_HxcOOZFqJTVfoD=YdrGd2AD+hQNw6ciGUC=C1A@mail.gmail.com>
 <CAMRc=Me6v2E1zKGQzukJmP45cVkRWOGzYoO9=LKh63rPFRqfqA@mail.gmail.com>
 <CADvTj4ovM1faNGoUa4HoTCN7avAqwkZfY5v9P8okgx87or8gDA@mail.gmail.com>
 <CAMRc=McR613nBkUehva0bidxrUz2eQ1Ud9g1m4gKdXyGzHo_PA@mail.gmail.com> <CAL_JsqLEKr6G4qZe=vvJzP+KC_WWh0SHOjg14rxQvAvxV7wNUA@mail.gmail.com>
In-Reply-To: <CAL_JsqLEKr6G4qZe=vvJzP+KC_WWh0SHOjg14rxQvAvxV7wNUA@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 18 Feb 2026 16:56:24 -0700
X-Gm-Features: AaiRm50Fz7sVrjYTGUOqByPlip7HX54I2BXLrvfH_CB3_ZB9kbq90tLPHO525g0
Message-ID: <CADvTj4pfuV1s7VzS-cw+66N9HxijZ8x4Gr_jgTqPEqDvpz-hqg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] gpiolib: of: add gpio-line node support
To: Rob Herring <robh@kernel.org>
Cc: Bartosz Golaszewski <brgl@kernel.org>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266550-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[gmail.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: 38E6015B0B8
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 4:45=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Wed, Feb 18, 2026 at 3:34=E2=80=AFAM Bartosz Golaszewski <brgl@kernel.=
org> wrote:
> >
> > On Tue, Feb 17, 2026 at 8:07=E2=80=AFPM James Hilliard
> > <james.hilliard1@gmail.com> wrote:
> > >
> > > On Tue, Feb 17, 2026 at 6:18=E2=80=AFAM Bartosz Golaszewski <brgl@ker=
nel.org> wrote:
> > > >
> > > > On Mon, 16 Feb 2026 22:20:10 +0100, James Hilliard
> > > > <james.hilliard1@gmail.com> said:
> > > > > On Mon, Feb 16, 2026 at 4:38=E2=80=AFAM Bartosz Golaszewski <brgl=
@kernel.org> wrote:
> > > > >>
> > > > >> On Sat, 14 Feb 2026 22:32:37 +0100, James Hilliard
> > > > >> <james.hilliard1@gmail.com> said:
> > > > >> > Allow GPIO controller child nodes marked with "gpio-line" to
> > > > >> > configure direction/flags at probe time without hogging the li=
ne.
> > > > >> >
> > > > >> > Teach OF gpiochip scanning and OF dynamic reconfiguration hand=
lers to
> > > > >> > process gpio-line nodes in addition to gpio-hog nodes.
> > > > >> >
> > > > >> > Also parse "gpio-line-name" and apply it to desc->name. For gp=
io-hog
> > > > >> > nodes, keep "line-name" semantics as the hog consumer label.
> > > > >> >
> > > > >>
> > > > >> One important thing that's missing from this commit description =
is: what is
> > > > >> the use-case and why do you need this.
> > > > >
> > > > > Added some more use-case details in v3:
> > > > > https://lore.kernel.org/all/20260216211021.3019827-1-james.hillia=
rd1@gmail.com/
> > > > >
> > > > > In my case I'm setting up the GPIO line initial state and names f=
or
> > > > > userspace consumers mostly. I want to be able to configure the
> > > > > individual line names from a combination of the dts file and mult=
iple
> > > > > dtso files for the same gpiochip along with setting up an initial=
 state
> > > > > before userspace consumers operate on the lines.
> > > > >
> > > > >> The DT binding patch should be sent together with this in a sing=
le series. It
> > > > >> should also be documented in the relevant .rst file.
> > > > >
> > > > > Which file would that be?
> > > > >
> > > >
> > > > Documentation/driver-api/gpio/board.rst would fit best.
> > >
> > > Should gpio-hog docs be moved here as well?
> > >
> >
> > Not moved from DT bindings, just added as they are missing.
> >
> > > >
> > > > > I had previously added docs to gpio.txt but was told here to just
> > > > > drop the docs:
> > > > > https://lore.kernel.org/all/b851bfd4-3c35-489f-a32d-dcd7a37ca99a@=
kernel.org/
> > > > >
> > > >
> > > > There's a difference between device-tree bindings (formal, machine-=
readable
> > > > definition of the firmware ABI) under Documentation/devicetree/bind=
ings/ and
> > > > documentation for humans residing elsewhere in Documentation/. Make=
 sure to
> > > > not confuse the two. I would expect both to be supplied with such a=
 change.
> > >
> > > What file under bindings would this go in?
> > >
> >
> > Typically the top-level GPIO bindings document but we don't have it
> > yet. Or rather: we have the old .txt format and not yaml. I need to
> > start chipping away at it at some point...
>
> Most or all of it can be deleted. The same text exists in dtschema
> gpio.yaml already. There might have been some parts not moved yet as I
> didn't have rights to dual license.
>
> > > > >> I suppose it's another shot at defining what we previously calle=
d
> > > > >> "initial-line-state", "default-line-state", etc. What happens wh=
en someone
> > > > >> requests the line, reconfigures it and then releases it?
> > > > >
> > > > > This should just provide an initial configuration, subsequent con=
sumers
> > > > > would override whatever is set here AFAIU.
> > > > >
> > > >
> > > > Yeah, that's what I was afraid of. This is not hardware description=
, this is
> > > > user-convencience and as such I don't think it has place in DT bind=
ings and -
> > > > by extension - in DTS.
> > >
> > > I guess this is more describing a hardware configuration, but is that
> > > not allowed in DT bindings? There seems to be plenty of DT stuff
> > > that's effectively describing the way the hardware should be configur=
ed
> > > initially.
> > >
> > > For example uart/serial nodes have a current-speed property that
> > > can be used to configure the initial speed, but this can also be
> > > overridden by userspace consumers at runtime as well via
> > > termios configurations AFAIU. That seems to be a pretty similar
> > > case to what I'm trying to do here with gpios.
> > >
> > > What's the reason user-convenience hardware configuration stuff
> > > like this shouldn't go in DT bindings?
> > >
> >
> > We do have many cases like that back from before DT schema and
> > validation. Bindings have become much stricter since and it's assumed
> > that DTS should only describe hardware, not its configuration.
>
> No, configuration is allowed. The oldest example is probably uart baud
> rate. pinctrl is completely the configuration of pins. But there is a
> limit and it's a judgment call.
>
> > > > I'm afraid I don't have good alternatives to offer, solving this ha=
s been
> > > > attempted several times in the past without success. Even gpio-hog =
would likely
> > > > not get past DT maintainer review these days but it's ABI now so wi=
ll stay
> > > > supported.
> > >
> > > What did previous attempts look like? At least this is minimally inva=
sive
> > > and shares most of the code paths with gpio-hog.
> > >
> >
> > They focused more on the "default" state of GPIOs. State to which you
> > would revert if not requested. If anything: this makes more sense than
> > "initial" state to me which we forget after the first request.
>
> Agreed.
>
> > Right
> > now this is something driver-specific. I'll let DT maintainers speak
> > if that's something we could put into DT.
>
> If the argument was wanting to do this in early boot firmware, I'd be
> more convinced. But to say it is needed for userspace, I'm not really
> convinced. My main concern is wanting to describe the state, but not
> what the GPIOs are connected to. Is it really nothing and we'd never
> ever possibly want to describe that.

Well the gpio-line-name property for the individual lines is a way of
describing what the GPIOs are connected to in a way that userspace
can understand, at least that's one of the motivations for this change
along with setting up the initial line state. I would probably also add
gpio-line support to u-boot so that initial state is configured prior to
the kernel taking over as well.

Some of the GPIOs have kernel driver consumers and some have
userspace consumers but it would be kinda nice to have a way to
name them all without the limitations of the gpio-line-names which
isn't really capable of operating on individual lines.

>
> Rob

