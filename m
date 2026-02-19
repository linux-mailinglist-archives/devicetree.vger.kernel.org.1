Return-Path: <devicetree+bounces-266702-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLrBDQRVl2lPxAIAu9opvQ
	(envelope-from <devicetree+bounces-266702-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:23:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88133161A29
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 19:22:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DBC23079666
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 18:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 488272D47EF;
	Thu, 19 Feb 2026 18:18:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RCvpyNaH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C74FA2D3EC7
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.180
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771525094; cv=pass; b=OILRQG3DrsYHMRdAYUuFbY0lu9e3W1CjmO+rySU1d3ZV5IA0+IAiU9iJx4Svzrh+c8L0AcdOMS1VaPzJVlUTT8pXf/uQAPEI5n4sJRQi6ZOl8UtW8P/W84FG2wjneEGzkFGDuiN4a83sSPpWLnGKEYG2pYB79V6DX2eD3Mlm6+0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771525094; c=relaxed/simple;
	bh=/hp1y7ibpXSZAU1jyZgA+vA4E0AUAeJaWyX7n5TvGwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IkQJXpE36ofqabHETPQyl4DNUJh0YZDKZ9PfO0zEI0nxYq2uj5uYK3RLNRaU5IPQL9IEoQ1G5k+7YWDmnpVZWyK75p5kOWBiytGvkq2zfSAZGt29IXVcex8QECb61Zdbio0CGVr6rUr/cXqxQxQepb0LYvGuGwpxUVwvdIMWe/k=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RCvpyNaH; arc=pass smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5664848545fso612495e0c.3
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 10:18:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771525092; cv=none;
        d=google.com; s=arc-20240605;
        b=gnfkh2YEts9qYTviZiLoRNLN0aOeJKdiSB4N3/FygVgdUmTSlwzdRRqmFsldN6VBdx
         +Zait46tIB/Ay/eEZ0PUGK46yh6M1QXxdI773BXXLBSjo9bXgzWVCGR5yDliZsCnRyn7
         vMCsBLk3AVEOf1uIZmbw4xd8neXkGk4MX1JUmE+yspGieFO2L2AOOpsMsznfEn3PMfG+
         NfUVz52b4MAEW1IZgF538BUBRlAUo7LwIWOdZp/gV5SCVvVILSDhtDFeZAtGis2PA5lD
         hSVshzD9P196bpel0qd6UiCyxFEy/Y4MNpUwOB6uSBqPNRPyaHTrmyHn1H+cvZuv50LA
         IiNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ITQ+GJLf8Fq8a87zdUiSnabLp+dteo4o4FI2FGSkzq4=;
        fh=CQtWbH09blPajcaLbUO+GDx1FjM71V7q4cbb8vaV8b4=;
        b=IW+rlqnT+7cKD9XCG1J6G9Bu17FHnAFb8ZG7RmS5Z1ZvzACjV9jU6Mu2dM6P3E6BAa
         L+b2wYF3TRkCNsFpsko/Cl+2MyxpBdQzLgW31BbpR02tkaBYmBpOAXomZLrIc1JGCtvd
         85czXxUcotdRKoiTi+rveo4mnzdX6uaB53KQ+uRNgq0c0Zz41OdQqWac8OfCZd9IMAFf
         RaBFavaldEpfL6E4cEtvUF0yGxjlnoD5xaqExTEH6Npwme7NgbfNKg4uvRTC5TJfm+4d
         7mEIu2hmqcJiGEY2ZsLt4I95u/ubO6jS+Ps3fCqDFJj86Y3MGATaAhowfmki60GJqH2Y
         uJdg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771525092; x=1772129892; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITQ+GJLf8Fq8a87zdUiSnabLp+dteo4o4FI2FGSkzq4=;
        b=RCvpyNaHBPq2ukZQJ351EwK0FyxGUze6Pg66B+fpeqEKKgFFSvLHytNprqm+ZHRQLI
         SafhIgNf/rzsXAFrDlWnHbkJmQ1LS8ho468VtPnANBfJt7rNsgfQdhW/XE1IbfXtsGh7
         z6Y+dbkWQeXcl8Vcy1jshmHFe8XuJHsJHl1FbH0WiNF6gxuauPhvZh9xkJoaDr86GmmT
         pgPEl12xIDPnAKtUr8FYUN82f+XA/VwfcU97PF2HlwtAc1nY9zN8bo63ZrNA9Zo8aLqU
         qmVnNpab1luj8BMA50sZz/SmvejMUqiE0Waz2Rit7LZOi+lvNl86YBOkj1ud+WzHAL24
         QQBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771525092; x=1772129892;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ITQ+GJLf8Fq8a87zdUiSnabLp+dteo4o4FI2FGSkzq4=;
        b=kQXs6vNCGLvuWFlecFCwZ/cnpDE/NCaRRyZD+TA2hHyGWXoOgoel5Fs1lwSDIJfalv
         Slu54w48UHwCsN75PotCw4Upkk2D1ROOdUi6rRhXi049mOml0Y4FNdfR8uQX9btFSRAW
         t+qrve9EOT+CjpR4s1Plj06/xGMknIPRoJZfnGXzUH6iwMj3F7cgQO+BAh3SJFSyL9X+
         Q6RTy3ztM6iMX9q0EaPxR2Plb9LNOl90giSpZt1gRUOIizB5rOHWa+lVoB5XSun2SZ10
         fWMkGZqnbdbLZldACYnufpydZwF2nm6sjLbauXMtVjYTeJutiup+27Lp40PH5lFV6hvu
         FidA==
X-Forwarded-Encrypted: i=1; AJvYcCVlYnPXnn4scsGcGeeFqpKnDS8txE1878CYRu/g9az6LeLsrh/RhYpmekY69NueKtAk5PYV4hCo3/+M@vger.kernel.org
X-Gm-Message-State: AOJu0Yztrs489p8vKZVMSSrGOucz/QCufuhYK6GVcC/5fED71jbpFIah
	nxvC0lr+WWGNeYSBFEQdK33iL5/S4AlFQVSul4T2gbbEShQpFivZ4mccDs3K1sGBHwqgX4NwEpQ
	RcMcsefkA20mqP9xDI8CZlrRwBIrfFPQ=
X-Gm-Gg: AZuq6aLWjqPZK0g8wgmSwh87KkRciouxAzldgIKAn3dijvBsPLd8V8xLvaSaweXtyO6
	gPNLX1rZ60owlq89uo3MkcaXvAG+yN4b3ZH0vqytPI/2bWhmOYYdyimIwaSqlWcQVPifhnPGqy2
	hcpa6V0xuRBBnwU9VjpDXh+vu8Y5C3z+ehgdCVG6G2AIRXgcd4Mwt1aBbsb9sQCzJVehTkMJgwL
	ZLNVsjrmHxCafEWE1LRm6KsPz5RTHGm93Yf7gXObvT0m3/QvTkuYrUdqPDC8E932SEVzk9XXlQp
	ctRzUjeJvDmhV7j2mxmaTBR7qSbmeeJywGDC1AyY3wIaYezgwaPhu3UbvgZxflZsEIU=
X-Received: by 2002:a05:6122:1819:b0:563:6df6:1b8 with SMTP id
 71dfb90a1353d-5676817b9efmr8149358e0c.1.1771525091490; Thu, 19 Feb 2026
 10:18:11 -0800 (PST)
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
 <CAMRc=McR613nBkUehva0bidxrUz2eQ1Ud9g1m4gKdXyGzHo_PA@mail.gmail.com>
 <CAL_JsqLEKr6G4qZe=vvJzP+KC_WWh0SHOjg14rxQvAvxV7wNUA@mail.gmail.com>
 <CADvTj4pfuV1s7VzS-cw+66N9HxijZ8x4Gr_jgTqPEqDvpz-hqg@mail.gmail.com> <CAMRc=MfBt3ae2tdRKQT-AvjocN9OmC-jAtw0206rT3qGmSJDig@mail.gmail.com>
In-Reply-To: <CAMRc=MfBt3ae2tdRKQT-AvjocN9OmC-jAtw0206rT3qGmSJDig@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Thu, 19 Feb 2026 11:18:00 -0700
X-Gm-Features: AaiRm53T_wYk-ofX8_WOlEoFF6DbfkPcGUjxarPmHryolQRltHZlJs3AJkTuWGQ
Message-ID: <CADvTj4qR9uq_uPmH0bwRxAsmYDxb0TKOfQow9DPTUbG_wqTAbg@mail.gmail.com>
Subject: Re: [PATCH v2 1/1] gpiolib: of: add gpio-line node support
To: Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-266702-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	RCPT_COUNT_SEVEN(0.00)[8];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 88133161A29
X-Rspamd-Action: no action

On Thu, Feb 19, 2026 at 2:15=E2=80=AFAM Bartosz Golaszewski <brgl@kernel.or=
g> wrote:
>
> On Thu, Feb 19, 2026 at 12:56=E2=80=AFAM James Hilliard
> <james.hilliard1@gmail.com> wrote:
> >
> > Well the gpio-line-name property for the individual lines is a way of
> > describing what the GPIOs are connected to in a way that userspace
>
> That is hardware description plain and simple.
>
> > can understand, at least that's one of the motivations for this change
> > along with setting up the initial line state. I would probably also add
>
> That is not.
>
> > gpio-line support to u-boot so that initial state is configured prior t=
o
> > the kernel taking over as well.
> >
>
> The problem here is that the state of a GPIO that's not requested is cons=
idered
> "undefined" and controlled by the GPIO chip driver. The whole "initial st=
ate"
> sounds very hacky. You would have a much better case if you instead worke=
d on
> a "default state". It seems Rob is not entirely against it. Neither am I.=
 It
> would make sense to tell the GPIO driver: "if nobody's using it, do this"=
.

Other than the name would the existing code here be essentially the
same for setting default state vs the initial state? If a userspace
consumer attaches then detaches from the line would the state retain
the last state set by the userspace consumer or would it revert to the
default state somehow?

I'm not sure calling it "default-state" is the best option however as this
was also designed to be able to usable for simply setting individual
line "gpio-line-names" name equivalents without altering the default line
state at all.

For example it should allow for simply naming individual lines by doing
something like this(i.e. not setting the line "output-high" or similar
properties) without affecting initial/default line state:
line_c-init {
    gpio-line;
    gpios =3D <7 0>;
    gpio-line-name =3D "foo-baz-gpio";
};

>
> To that end: we need DT bindings and I'd say: start with an RFC bindings =
patch
> even without code, see where it gets us.
>
> > Some of the GPIOs have kernel driver consumers and some have
> > userspace consumers but it would be kinda nice to have a way to
> > name them all without the limitations of the gpio-line-names which
> > isn't really capable of operating on individual lines.
>
> Please don't use a property called "gpio-line-name" to define a state of
> a GPIO, it makes no sense. The line-name property of a GPIO hog is the
> label we assign to the line when requesting it. There's no requesting her=
e
> so let's just not use any new line names. I'd go with something like:

So "gpio-line-name" is not the consumer, I added it to gpio-hog as well
to allow for configuring "gpio-line-names" equivalent names but for the
individual lines, something that's not currently supported with the array
based "gpio-line-names" property.

>
> gpio@1 {
>         compatible =3D "foo,bar";
>         reg =3D <0x1>;
>         gpio-controller;
>         #gpio-cells =3D <2>;
>
>         gpio-line-names =3D "foo", "bar", "", "xyz";

This way of defining "gpio-line-names" doesn't allow for defining individua=
l
line names, which is problematic for cases where one wants names to
come from multiple dts/dtso files as array properties like these can only
come from one dts/dtso file at a time(i.e. doesn't allow for combining line
names from multiple sources).

>
>         foo-gpio {
>                 default-state;
>                 gpios =3D <3 GPIO_ACTIVE_LOW>;
>                 output-high;
>         };
> };
>
> Bartosz

