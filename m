Return-Path: <devicetree+bounces-156176-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E36A59777
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 15:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E9743AD670
	for <lists+devicetree@lfdr.de>; Mon, 10 Mar 2025 14:21:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B30CB22D78E;
	Mon, 10 Mar 2025 14:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="RkhgdW9P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5B2122B8CD
	for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 14:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741616480; cv=none; b=CHuG4j7Sc7gEtRE8ZmIpou50C6n6fU/Y6I3guouXcSo4o07VkLaUtfjNSlR0w5AtIuMNjU7LcJEvbxFSjtknO2f88CCFC8rxSYV0/9h34q00RSWAwmRZNz9Hw/u8+6RNH7SEFSPGy7qKyrB2KfBVzUkemRsWaLCx+em++Pvm1FA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741616480; c=relaxed/simple;
	bh=hDf2FiSrtEj6EocOxr+BFVJaxfoKsKNjxTKvFI3oJLw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XN+rrCUnW4YbwPOrQO6rAQiv1RGEFWCKzx8Sh85RanMckV9jWuViN8+tDN45lBDxUNXsaL3Z+0I1bQ0Z6ppsjgxyP5OZztBkVA40jmnpdcfOQnqwXIIBsfej9VxpNnrAD4Plxo7n7EmPwFDgNB9Jdt5OImEw6Qe/M0M00W/3LkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=RkhgdW9P; arc=none smtp.client-ip=209.85.216.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2feb867849fso6492239a91.3
        for <devicetree@vger.kernel.org>; Mon, 10 Mar 2025 07:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1741616477; x=1742221277; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0aa0jZ9AchGlp5yWV6WZT3t8mQdLgGg2qOoZKac8GrA=;
        b=RkhgdW9PW/CiOSfkcHyyuL5LTd9HcbgS/g7QGck4GkJ1CE1QttpvcYZJEiYYhtloW/
         s3viIj/egQufHUyLb/24K7rwZ8+KDiGcJTjvCWoWGQD05NMg/llWCh81tv7Xdani0FG5
         BCMzv0AM1jRJj+NvaYzJPI578x1+fu5ifmhEiG40QkkAZG7NSlmIB3X6EfSYwZ77nC52
         Fe71mnj68zxldPp+QS6jep9qk0pJIW36wLnqdF25ge1utdxpXu6huvLua6YXWmFmimTW
         NY0lcvb23JmRJbuZ3unOBIKxCohnpz7cxp625HMJZj7SLrQZfa6S/YXoN3Nspz0FBd9C
         ryRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741616477; x=1742221277;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0aa0jZ9AchGlp5yWV6WZT3t8mQdLgGg2qOoZKac8GrA=;
        b=pexEv1TVz9wdrQvaWHEC3kJpd/ky9Bcg1Gncz+j0tixnRQBkQeuCxjxfZgEHQOs3TZ
         77msX+G6Cg6SUFYUFqfyR1sWQOhmI1Z84YnEU+2XoLwq3cMltK8kZyVzVWzAz7/LywSu
         drrw+Yw1UmUIVhAyQsM0pAZiqd/uDhmaLgwfKvf0QrVX7sPdBmaK0g14mUeam0m5teoh
         ELVeF9D0UWhRZLdADKmjN8BDXFBnPtv7jnvCVajcjlW9Th+BNWpLlyzwo+c3FSOS7GkA
         byXrdU9g9pgozUcF1JmdA/0Y0qPIVPdGaw8vNbKcrQhDX6o8JMYq9fdfvKgyKHgLLy44
         6row==
X-Forwarded-Encrypted: i=1; AJvYcCW8GvD2PTA/ihHOJH5mqKyChOSOx2bSCx0bPJdK2vll4QdaGpbkZkgakqsu6n26p8a92BSQq1pqANc2@vger.kernel.org
X-Gm-Message-State: AOJu0YzfJ05NBwT/Vr2kPs5o1RFVHvIMfyDBWjc+aNTk1pRy7P7PkKoz
	pDjJMvjgW7dqQbxLnOfSrjHD3Et20xxY2iuN9OAtjzz5twKPVfbCuoTUa4V3YnT5JjAPN/VBmrK
	8hH5cndqJB/srC0Q4lgEwAB8SSyGEOm8lBH95zg==
X-Gm-Gg: ASbGnctsio9A/yQw5CIgTX+OqvbYcTL+r8hw8IlC8xtraW+f4nsVWxD7sCfDeD1V3ax
	6GKjEu1DkgSg/VrwQO9rLp+sY7fcDSGPivEtDPNwy1oVYQ9twEnkI2rX0o7vclySa9hnJbDomPG
	Hn3YCpuPE+35ExmlZUm6gEgFUqDPADu4B6jBgjiF0AksT3puL0rcB7op8BkQ==
X-Google-Smtp-Source: AGHT+IHzhHPEKiwQV8/xTAzjm8IBmtIaoF+M1g5Rq1eq3z20HMMIT/cwN5htca9XmOSUGb0vkHd2gBWPFVvEM90AB+Y=
X-Received: by 2002:a17:90b:2e90:b0:2ee:d7d3:3019 with SMTP id
 98e67ed59e1d1-2ff7ce8e50amr26081042a91.12.1741616476890; Mon, 10 Mar 2025
 07:21:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com>
 <20250213171435.1c2ce376@bootlin.com> <CAMEGJJ1++aeE7WWLVVesbujME+r2WicEkK+CQgigRRp2grYf=A@mail.gmail.com>
 <Z87wTfChRC5Ruwc0@apocalypse>
In-Reply-To: <Z87wTfChRC5Ruwc0@apocalypse>
From: Phil Elwell <phil@raspberrypi.com>
Date: Mon, 10 Mar 2025 14:21:05 +0000
X-Gm-Features: AQ5f1JpdsttO77vWem7lsOAk9ydjGfL3diQWsedrl91N1zA3FWs-hfYV843PSmU
Message-ID: <CAMEGJJ0f4YUgdWBhxvQ_dquZHztve9KO7pvQjoDWJ3=zd3cgcg@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Add support for RaspberryPi RP1 PCI device using
 a DT overlay
To: Andrea della Porta <andrea.porta@suse.com>
Cc: Herve Codina <herve.codina@bootlin.com>, andrew@lunn.ch, Arnd Bergmann <arnd@arndb.de>, 
	"maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" <bcm-kernel-feedback-list@broadcom.com>, bhelgaas@google.com, brgl@bgdev.pl, 
	Catalin Marinas <catalin.marinas@arm.com>, Conor Dooley <conor+dt@kernel.org>, derek.kiernan@amd.com, 
	devicetree@vger.kernel.org, dragan.cvetic@amd.com, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, krzk+dt@kernel.org, kw@linux.com, 
	Linus Walleij <linus.walleij@linaro.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-clk@vger.kernel.org, 
	linux-gpio@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	"open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS" <linux-pci@vger.kernel.org>, 
	"moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE" <linux-rpi-kernel@lists.infradead.org>, lpieralisi@kernel.org, 
	luca.ceresoli@bootlin.com, manivannan.sadhasivam@linaro.org, 
	masahiroy@kernel.org, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, saravanak@google.com, Stephen Boyd <sboyd@kernel.org>, 
	thomas.petazzoni@bootlin.com, Stefan Wahren <wahrenst@gmx.net>, 
	Will Deacon <will@kernel.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrea,

On Mon, 10 Mar 2025 at 13:58, Andrea della Porta <andrea.porta@suse.com> wr=
ote:
>
> Hi,
>
> On 16:27 Thu 13 Feb     , Phil Elwell wrote:
> > Hi Herv=C3=A9,
> >
> > On Thu, 13 Feb 2025 at 16:14, Herve Codina <herve.codina@bootlin.com> w=
rote:
> > >
> > > Hi Phil,
> > >
> > > On Thu, 13 Feb 2025 15:18:45 +0000
> > > Phil Elwell <phil@raspberrypi.com> wrote:
> > >
> > > > Hi Andrea,
> > > >
> > > > The problem with this approach (loading an overlay from the RP1 PCI=
e
> > > > driver), and it's one that I have raised with you offline, is that
> > > > (unless anyone can prove otherwise) it becomes impossible to create=
 a
> > > > Pi 5 DTS file which makes use of the RP1's resources. How do you
> > > > declare something as simple as a button wired to an RP1 GPIO, or fa=
n
> > > > connected to a PWM output?
> > >
> > > The driver could be improved in a second step.
> > > For instance, it could load the dtbo from user-space using request_fi=
rmare()
> > > instead of loading the embedded dtbo.
> > >
> > > >
> > > > If this is the preferred route to upstream adoption, I would prefer=
 it
> > > > if rp1.dtso could be split in two - an rp1.dtsi similar to what we
> > > > have downstream, and an rp1.dtso that #includes it. In this way we =
can
> > > > keep the patching and duplication to a minimum.
> > >
> > > Indeed, having a rp1.dtsi avoid duplication but how the rp1.dtso in
> > > the the kernel sources could include user customization (button, fan,=
 ...)
> > > without being modified ?
> > > At least we have to '#include <my_rp1_customizations.dtsi>'.
> > >
> > > Requesting the dtbo from user-space allows to let the user to create
> > > its own dtso without the need to modify the one in kernel sources.
> > >
> > > Does it make sense ?
> >
> > I think I understand what you are saying, but at this point the RP1
> > overlay would no longer be an RP1 overlay - it would be an
> > RP1-and-everything-connected-to-it overlay, which is inherently
> > board-specific. Which user-space process do you think would be
> > responsible for loading this alternative overlay, choosing carefully
> > based on the platform it is running on? Doesn't that place quite a
> > burden on all the OS maintainers who up to now have just needed a
> > kernel and a bunch of dtb files?
> >
> > If it is considered essential that the upstream Pi 5 dts file does not
> > include RP1 and its children, then Raspberry Pi are going to have to
> > walk a different path until we've seen how that can work. By splitting
> > rp1.dtso as I suggested, and perhaps providing an alternative helper
> > function that only applies the built-in overlay if the device node
> > doesn't already exist, we get to stay as close to upstream as
> > possible.
> >
> > Phil
>
> So, the problem is twofold: the first is due to the fact that downstream
> expects the dtb to be fully declared at fw load time (I'll call that
> *monolithic* dtb from now on), the second is about how to represent depen=
dencies
> between board dtb and rp1 overlay which arises only when using overlays i=
nstead
> of a monolithic dtb.
>
> The former issue must be solved first in order for the latter to even exi=
sts
> (if we don't use overlay, the dependencies are fully exposed in the dtb s=
ince
> the beginning), so I'll concentrate on the former for now.
>
> There are 3 possible scenarios to be reconciled:
>
>
> 1 - MONOLITHIC DTB
>
> This is the downstream case, where it's advisable to have only one dtb bl=
ob
> containing everything (rp1 included) loaded by the fw. In this case the
> resulting devicetree would looks like:
>
>   axi {
>     pcie@120000 {
>       rp1_nexus {
>         pci-ep-bus@1 {
>              ...
>         }
>       }
>     }
>   }

This is indeed our current DT usage for the Pi 5 family - a single DTB
describing each board - although I would like to make it clear that
overlays can then be applied on top of it describing the attached
peripherals.

> 2 - RP1 LOADED FROM OVERLAY BY THE FW
>
> In this case the rp1 dt node is loaded from overlay directly by the fw an=
d the
> resulting devicetree is exactly equal to the monolithic dtb scenario.
> In order for that overlay to be loaded by fw, just add 'dtoverlay=3Drp1' =
in
> 'config.txt'.

This halfway house combines the advantages and disadvantages of
scenarios 1 and 3. Compared to scenario 3 it gains support for
applying overlays that make use of interfaces provided by RP1 - I2C,
SPI, UARTs etc. Compared to scenario 1 it loses the ability for the
base DTB to refer to elements of RP1, other than by replacing these
DTB elements with overlays that must be loaded after the RP1 overlay.
As such, we would see that as a backwards step and not use it.

> 3 - RP1 LOADED FROM OVERLAY AT RUNTIME
>
> Here it's the rp1 driver that loads the overlay at runtime, which is the =
case
> that this patchset originally proposed. The devicetree ends up like this:
>
>   axi {
>     pcie@120000 {
>       pci@0,0 {
>         dev@0,0 {
>           pci-ep-bus@1 {
>                ...
>           }
>         }
>       }
>     }
>   }
>
> and this is exepcially useful to cope with the case in which there's no D=
T
> natively used, e.g. on ACPI systems.
>
>
> In order for all those 3 mentioned scenatios to work, I propose the follo=
wing
> inclusion scheme for for the dts files (the arrow points to the includer)=
:
>
>
>  rp1-pci.dtso         rp1.dtso
>      ^                    ^
>      |                    |
> rp1-common.dtsi ----> rp1-nexus.dtsi ----> bcm2712-rpi-5-b-MONOLITHIC.dts
>
>
> where those dts are defined as follows (omitting the internal properties =
for
> clarity sake):
>
>
> - rp1-common.dtsi ------- // definition of core rp1 and its peripherals, =
common
>                           // for all cases
>
>         pci_ep_bus: pci-ep-bus@1
>         {
>                 rp1_clocks { };
>
>                 rp1_gpio { };
>
>                 rp1_eth { };
>         };
>
> - rp1-pci.dtso ---------- // ovl linked in the rp1 driver code to be load=
ed at
>                           // runtime from rp1 driver. Only for case 3
>
>         /plugin/;
>         fragment@0 {
>                 target-path=3D"";
>                 __overlay__ {
>                         #include "rp1-common.dtsi"
>                 };
>         }
>
> - rp1-nexus.dtsi ------- // adapter to decouple rp1 ranges for non runtim=
e-loaded
>                          // overlay case (i.e. only for case 1 and 2)
>
>         rp1_nexus {
>                 ranges =3D ...
>
>                  #include "rp1-common.dtsi"
>         };
>
> - rp1.dtso ------------ // overlay to be loaded by fw (case 2)
>
>         /plugin/;
>         &pcie2 {
>                 #include "rp1-nexus.dtsi"
>         };
>
> - bcm2712-rpi-5-b-MONOLITHIC.dts --- // monolithic dtb to avoid any overl=
ay use
>                                      // (case 1)
>
>         / {
>                 ... all rpi5 board dts ...
>                 &pcie2 {
>                         #include "rp1-nexus.dtsi"
>                 };
>         };
>
>
> with only minimal changes to the rp1 driver code, I can confirm that all =
those
> scenarios can coexits and are working fine. Before processding with a new=
 patchset
> I'd like to have some thoughts about that, do you think this is a viable =
approach?

Thank you for this - the creation of a core RP1 declaration that can
be tailored to multiple applications using different wrappers is
exactly what I had in mind. I agree that your partitioning scheme can
cater for the 3 usage scenarios, but for the reasons outlined above I
think scenario 2 is not useful to us, although it isn't impossible
that U-boot might see things differently; I see no harm in having it
supported, but I wouldn't want anyone to go to unnecessary effort to
make it work.

Phil

