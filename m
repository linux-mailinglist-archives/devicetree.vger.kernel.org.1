Return-Path: <devicetree+bounces-276314-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Id8FugvuGmvaAEAu9opvQ
	(envelope-from <devicetree+bounces-276314-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:29:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C082129D64E
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 17:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00C2630838D8
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 16:24:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF2C6337BB0;
	Mon, 16 Mar 2026 16:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+2tcJIm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E6B3368B1
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 16:24:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773678278; cv=none; b=kCQQetpeJYasDGhGGx4BF0+Eo0DzS7KznEZKjXVEIwAMZAqXY/YsDEpM93/uuN8WvKM7CcHB64xTKTmKgsLSbjpLHuMnirpW2sadTYKBNfsyz9hO0TOVFf+J8dAqujG0gnu+D1/w+QTbO+H7g1ne8RHgABGyGmNn1J0zCgqKaKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773678278; c=relaxed/simple;
	bh=FI+pEJOl+xfO28oSXW6gg09R5wZ6B4Wats0lJ39KDRw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ScUISZdUbeWqLRUaDmMrbAS7UiJHJhk7pyAR7PhSV5YiDxBFnOs6qTNLj4F3GKuC+u6QOAiofMm1OA7NiySmq++7m1D+qMX+lbSJS/TkqP71QJI80GcHXOpf+9GIkMkOdNzVwgzdAkvl3uLpJLiyMGQ8fTbI9976luP7p1ilJdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+2tcJIm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70308C2BCB2
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 16:24:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773678278;
	bh=FI+pEJOl+xfO28oSXW6gg09R5wZ6B4Wats0lJ39KDRw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Z+2tcJImXtkYeNcZSosHOCTo6NjAjMeei2Ddq3BB5KjdCf6w62GGNVATGDe4rTr4I
	 ODSYaddfodEEZZ063e2UxJkV7xZLwEobxGqz0m1IiOYz2UEXDDMh78p0Kz/CAPcowK
	 cGRU0uk0cVRD32okUxpFvvHHM3YvsxCwLcz5F3kKCgHLhREO3q1RAgfTD44ve15t8z
	 Oz/+bQSFQhr3ULHRmtX6aY5ZXw8XysQOciDO45yBVShI6Fwvi7o2cYGkldMT0Ojax4
	 RS6/DuuaNRXwKotemX4AgQYRY3RZw62729x8z2N9yoqmOOfrjY97AMeLoExocJHcPh
	 e0RBvixgM5sJg==
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-666f73217baso411907a12.1
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:24:38 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV391iXxy7ZfmDhn0CQ92eD2V8+K/cVI2oyMhhPVKj7q8mtmtbjDQ36OzkWDRyYuUQ8cbo667D5RDDI@vger.kernel.org
X-Gm-Message-State: AOJu0YwiQXYnfGIukHkZ6hoEN3scETZc7gOdE5JHldS5bZJfgTcBiJ6Y
	hhK1EVKz6RQCUrnEZ9wBpGIUzAdain3/54uaTZwC8ovLblMMCpbMnocZgyHor8tubzNIyI5XqQP
	bQ7esxFcbh7X+30evCocZ5rhANODVFw==
X-Received: by 2002:a05:6402:13d4:b0:665:57bf:7de6 with SMTP id
 4fb4d7f45d1cf-66706eea380mr157610a12.0.1773678276885; Mon, 16 Mar 2026
 09:24:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260309200351.1791162-1-Frank.Li@nxp.com> <20260313233450.GA3632753-robh@kernel.org>
 <PA4PR04MB93666895F0D685181FFAF5DA8840A@PA4PR04MB9366.eurprd04.prod.outlook.com>
In-Reply-To: <PA4PR04MB93666895F0D685181FFAF5DA8840A@PA4PR04MB9366.eurprd04.prod.outlook.com>
From: Rob Herring <robh@kernel.org>
Date: Mon, 16 Mar 2026 11:24:24 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+Nw38mPHgZTTDMRY3zQ6NeOhp3PDvZobqwjdFy2HMitw@mail.gmail.com>
X-Gm-Features: AaiRm515QMiZFlZBbgAHua2Ztin7i7yfV9IvbR3MOhE5nRKlwuLZWSOHLGO-dh8
Message-ID: <CAL_Jsq+Nw38mPHgZTTDMRY3zQ6NeOhp3PDvZobqwjdFy2HMitw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: mtd: refactor NAND bindings and add nand-controller-legacy.yaml
To: Frank Li <frank.li@nxp.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:MEMORY TECHNOLOGY DEVICES (MTD)" <linux-mtd@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276314-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1.19.21.224:email,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C082129D64E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 9:37=E2=80=AFAM Frank Li <frank.li@nxp.com> wrote:
>
> > > +select:
> > > +  allOf:
> > > +    - properties:
> > > +        $nodename:
> > > +          pattern: "^nand-controller(@.*)?"
> > > +    - not:
> > > +        properties:
> > > +          compatible:
> > > +            contains:
> > > +              pattern: "^fsl,"
> >
> > I would just do 'select: false' and make sure all non-legacy
> > controller bindings reference nand-controller.yaml.
>
> I found some controller have not compatible string, such as
> arch/arm/boot/dts/broadcom/bcm4708-luxul-xwc-1000.dts

It's there somewhere though the source structure makes it hard to
find. Converting the dtb back to flat dts gives this:

        nand-controller@18028000 {
                compatible =3D "brcm,nand-iproc", "brcm,brcmnand-v6.1",
"brcm,brcmnand";
                reg =3D <0x18028000 0x600 0x1811a408 0x600 0x18028f00 0x20>=
;
                reg-names =3D "nand", "iproc-idm", "iproc-ext";
                interrupts =3D <0x00 0x44 0x04>;
                #address-cells =3D <0x01>;
                #size-cells =3D <0x00>;
                brcm,nand-has-wp;

                nand@0 {
                        compatible =3D "brcm,nandcs";
                        reg =3D <0x00>;
                        #address-cells =3D <0x01>;
                        #size-cells =3D <0x01>;
                        nand-ecc-algo =3D "bch";
                        nand-ecc-strength =3D <0x08>;
                        nand-ecc-step-size =3D <0x200>;

                        partitions {
                                compatible =3D "fixed-partitions";
                                #address-cells =3D <0x01>;
                                #size-cells =3D <0x01>;

                                partition@0 {
                                        label =3D "ubi";
                                        reg =3D <0x00 0x8000000>;
                                };
                        };
                };
        };


>
> I am not sure if it is wrong. So I have not direct use "select false".
>
> Is it okay omit these dts?

Even if there are cases, yes.

Rob

