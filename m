Return-Path: <devicetree+bounces-266704-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PTRHbZWl2lPxAIAu9opvQ
	(envelope-from <devicetree+bounces-266704-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:30:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 00663161B0A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 170F2301BF7F
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 18:29:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 990FA2D94BA;
	Thu, 19 Feb 2026 18:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUZ+/IwZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761C11CEADB
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:29:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771525795; cv=none; b=YRsk7ZJJ3JZNMR2pGj1sD/nfYhSLGxnUmpCIKoXc7O9poJcwbicd8FPm7ofTiU1vuZgz0fkgUkMgHBxGEyjKfivKfon2PNAnaft723jcRRDTY6jww91HGmgkl2cFY0FJ/WprEGBCyOD3TJA44T/8Ll1EsfXodUF2TDyBgXGfxMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771525795; c=relaxed/simple;
	bh=HjvGTTj1d6P5mOjjMnH0eeOyLg9GO1IjKDrHNwPvWOU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JT/qqlMjXKHDPmzcescoo0ZdiXiW9hHVuVRbMaJIljQ/IYtHE0h2uqWL/OnjeM7qrqETreFoIldTsgYbxoFhNV/jfh9goIwoKIWquP4ANEzHnxGZerGYjsO+J977UWI/mZzL1Y/mBUgJHyn4WdxXa0dWsI44QCipIGHVV+Q+cWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUZ+/IwZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3DB62C2BC87
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771525795;
	bh=HjvGTTj1d6P5mOjjMnH0eeOyLg9GO1IjKDrHNwPvWOU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=lUZ+/IwZZ0U8/hEsAEjTaYc0qGTB5dVRDTRqt6rjKj5fcXteRw+Fbv505r19Kfzwg
	 1XhAeAr0sh16VQApEsQxMdVIFH/tcsaxHFt4Je9p8Yhk4+CyNh7ppE3l1Ug86naIwb
	 8Mx5whVT4HPDdiOtG6IBTk9E81likhiq1NVoPqCGD4i+t/zMdZCau803JuivD/YQvm
	 iMdbtrDREbkzFGmbB0FwEhHYP+rtOJWQt6quQbZtr2SKpaWvr6OMGo9QEHXtzX87a9
	 hbrwcHO1oODfgW++ZpumwpN86lkckSGMvJ5mG96L0nA7YflYhIjX+NhAZtHgkHpSOk
	 JX1jQGebMEqeA==
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-65c20dc9577so2190385a12.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:29:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVM3CQMNIN0KSjHbFoGuuZUYRDJrGwJUjrU6wn/zgG1sCahUAq6mw6rmjOOMG3Zp8tC4FXrnKLCD7sl@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3TJEiEe8VsU4VQKPokrRen5z5J9hc9KGqC6yiJcxFWMv5Copn
	aDrt2G6R8CGnPdNWEqvk88fmguRlgr7hy87ONCpk9/+JJZYgYePMqdDwWcL3aPZnH/zRdhHpZVk
	fjpsozUAX8HA7f9DEhW+Jfu94qXD/dw==
X-Received: by 2002:a17:907:72c2:b0:b8f:e98e:fafc with SMTP id
 a640c23a62f3a-b8fe98f00f4mr963160366b.64.1771525793637; Thu, 19 Feb 2026
 10:29:53 -0800 (PST)
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
 <20260212195423.GA787785-robh@kernel.org> <CADvTj4rPq8D5piqEijCdAjkWmZtq3Bi_Kxv-4F0aU4xi_O5WKg@mail.gmail.com>
 <CAMuHMdXmMVgPJv=HhkfttiRnSwFC6c2PnFjYwmL2hu3ikv+t3g@mail.gmail.com>
 <CADvTj4r95E2rLA0ZhOYPeFYpFbj0EXfb=omCN2Mab-Dj4T-cYA@mail.gmail.com>
 <CAMuHMdXTg8w3R1BVq3JO2z=gvTdB=qXY=aXvC7Lb8FtkEqz9ow@mail.gmail.com> <CAD++jLmp+47f-Ah4YdFJ+9dU0OFrnQdOcVyrQ61p0-_P61eBrA@mail.gmail.com>
In-Reply-To: <CAD++jLmp+47f-Ah4YdFJ+9dU0OFrnQdOcVyrQ61p0-_P61eBrA@mail.gmail.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 19 Feb 2026 12:29:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJK7PwyB=NoM+uXOgQk-RT49h4emogvYAfUAbZUpnd6Vg@mail.gmail.com>
X-Gm-Features: AaiRm53egHIM196H85P8aLh-nOYwPtgADgjqYqs3aFRNoZMlpQimoOnw4bS8iFo
Message-ID: <CAL_JsqJK7PwyB=NoM+uXOgQk-RT49h4emogvYAfUAbZUpnd6Vg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Linus Walleij <linusw@kernel.org>
Cc: Geert Uytterhoeven <geert@linux-m68k.org>, James Hilliard <james.hilliard1@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-gpio@vger.kernel.org, 
	Bartosz Golaszewski <brgl@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266704-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[linux-m68k.org,gmail.com,kernel.org,vger.kernel.org,ew.tq-group.com,bootlin.com];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 00663161B0A
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 12:00=E2=80=AFPM Linus Walleij <linusw@kernel.org> =
wrote:
>
> On Mon, Feb 16, 2026 at 10:06=E2=80=AFAM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > On Fri, 13 Feb 2026 at 19:34, James Hilliard <james.hilliard1@gmail.com=
> wrote:
> > > On Fri, Feb 13, 2026 at 1:25=E2=80=AFAM Geert Uytterhoeven <geert@lin=
ux-m68k.org> wrote:
> > > > On Thu, 12 Feb 2026 at 22:22, James Hilliard <james.hilliard1@gmail=
.com> wrote:
> > > > > This gpio-map feature doesn't exist in the mainline kernel does i=
t?
> > > >
> > > > Yes it is.
> > >
> > > Oh, where in the mainline kernel is the code for it? I searched and
> > > couldn't find any references to it.
> >
> > git grep -w of_parse_phandle_with_args_map
> >
> > Note that that does not find interrupt nexi, as that code doesn't use t=
he
> > of_parse_phandle_with_args_map() helper (perhaps it should?).
>
> I doubt interrupts on nexi works. Which may be a reason they
> are not used very much.

interrupt-map should work just fine. It's only existed since the
1990s. And yes, you need both gpio-map and interrupt-map if your GPIOs
also support interrupts. However, it won't work with
of_parse_phandle_with_args_map() because of the tie-in with
#address-cells and other historical quirks, but that would only ever
be an internal implementation detail. The standard interrupt APIs
should be used and will all just work.

>
> And as such it would be pretty half-baked wouldn't it...
>
> Probably Geert's suggestion to use the aggregator is a better
> idea.

I don't know what that is to comment. (Please don't reply with "you
reviewed it" unless it was more recent than last week. :) )

Rob

