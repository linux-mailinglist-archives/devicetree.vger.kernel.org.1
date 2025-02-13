Return-Path: <devicetree+bounces-146468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D065A3505E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 22:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C60F67A42A9
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 21:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99A9226980A;
	Thu, 13 Feb 2025 21:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="n5WZaoDY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7651D266B56
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 21:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739481179; cv=none; b=qMW21hOLfBrQJ6eNxod+IlQhZbMbOrrQmLi6CB3AGFFZgABHZ6Cv9Z/BnqDhJk7y8hkxV7JdCfagHlfym9M4J8HTvNt2VBPMlDWlEENO0ZLFwZFLtGjjkVcBg+FqzNUqMrlj5H8pzPr0nKYz6O6vpzHibGF04WiMUxI+PhnQAwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739481179; c=relaxed/simple;
	bh=GU5EKBsXZ0eJtx8gWdltsHJFmXYyKXIQbjJRo0aYZgw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S9P2LTu7kW8lTqnRYNDY5HH+Eriwzsq3R8W0/Redcn1siWe7qoZJvN/wDpAU9zPjotrKqDEascmxhiho1JzSCC7vYEJj/rm4oN0JaPrmoDW1i7IV+n4DuQeD7dhpI4m5QqWKs4v+ci39P37hCGkRrel56n07uz19V0kOdttVR2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=n5WZaoDY; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5ded6c31344so1056954a12.1
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 13:12:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1739481176; x=1740085976; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GU5EKBsXZ0eJtx8gWdltsHJFmXYyKXIQbjJRo0aYZgw=;
        b=n5WZaoDYrcDOTqhAY7PALPZuAM5RX0e4cy30yr6wfMN4BjCPFODmZhgxqi6MQxLXIt
         0h8pSgbD3iG9ZsErIu6HYiptUXJbWP4uiUj/oV+wQAm1JNS644Jhmw7GL5K0OrmMoygH
         twh8l1w3yBDVdTpyii2Okp/NT9SiYO3lrFMrPLVuv1wR7ZB0xB7fiuTpMDaTeCbxx2r+
         WKngoFZ1/o/4SJbe9LnFvuxeiiZiUAIZu+dM/TAqoDoRXMs+bNMmnl/coBHDQ6FvVgtK
         VZBI+KJZ1bSU2eGfy16zitK8fauY2Gee1qdMJvkVy5lIYcu4N4Fo16QhqaVnkieHp8qs
         Qa+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739481176; x=1740085976;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GU5EKBsXZ0eJtx8gWdltsHJFmXYyKXIQbjJRo0aYZgw=;
        b=YKWKBU8TvKBgZ4U3fFkvarePYCWfogJeknzqPXYucgh3ZTf8UosVc1fcq5rveOMi5g
         1F0uw2HM5NUq6XeG3FsKCDiEHzxfgg+HVKrRFak+p8HI7yzd/TgsEaH6QEjtNMqTNuh0
         1tb1mpqGkBLrqAW5lnp6SRv95ApqhjRR1Q7VQdQjbh2VvQx7LNG9/4c1cUxvIG5TlcnD
         EbIjTiGDuIfC59xlk7LWGW7wzXwZq7koilTMBJzBzyWws/oPcR7IpD4YVIPOFvOZQcnx
         U8d70aYQGr7RNUNRItCJVweuEZNbFcuStTYqjo+buRAr1LKeq5OJ6DCr+VPLUIMmdtGb
         4FWA==
X-Forwarded-Encrypted: i=1; AJvYcCUpvnEvL6zdchloDm6ozyDSGEz3ZgJiotlYaR4DauQQpSgbwDg2knQv9PpgwWy3u6A17y/R7yK5IGzF@vger.kernel.org
X-Gm-Message-State: AOJu0YwniF6/Qsde/E6/bdPWfSzqitQRltz3mV97WUamNCN38zLD6C2F
	Wc1F5HcJ4tr8D4wbvUQbXjaFY9hIJ1ISH79b0emZO/jzDANosLciQhRluzzSOjd0FFDFbvyTj6k
	szsuMNcVraPzpBcPq5fbXe0bnhouC+qZ9s/C87w==
X-Gm-Gg: ASbGnctztQxQ/dvx11aNUP42PM2iHq9Synul9nqAM/QicKgZSnF7YOKANLHnFaMWyHr
	XJaiHMqKBhkg3C9cq3KuM2AbHla+BgjML+3sLUK4uJaitK/qQinIC1x6vfLmq+kAco8oRSUga
X-Google-Smtp-Source: AGHT+IFLkOYux/AZD1CsLOqigpm7V6aZfKxqg/U6JY+qfqXEvwuM2AidB1/2uIOCxn6vFgt7OscVy95MylrJ55QfbDA=
X-Received: by 2002:a05:6402:540a:b0:5dc:d8d2:e38f with SMTP id
 4fb4d7f45d1cf-5dec9faaeebmr12089446a12.31.1739481175796; Thu, 13 Feb 2025
 13:12:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAMEGJJ3=W8_R0xBvm8r+Q7iExZx8xPBHEWWGAT9ngpGWDSKCaQ@mail.gmail.com>
 <20250213171435.1c2ce376@bootlin.com> <a3c5103c-829a-4301-ba53-6ef9bd1e74e7@lunn.ch>
 <CAMEGJJ3-JXhin_Ht76EqUNAwLiNisa9PrCrdUzCgj=msGZfb5A@mail.gmail.com>
 <821d4c74-09b0-4c1b-b8ef-f8c08d0f6b5b@lunn.ch> <CAMEGJJ0QbzCScfTRA_pw_8A=iMYMAAFs69zFNLwcOxF5Syugpw@mail.gmail.com>
 <20250213195304.3a2df02c@bootlin.com> <CAMEGJJ0kGCj=tjM6KswbG_+ZFkzMwPY+06BXCU0qSnbBKz0=ug@mail.gmail.com>
 <20250213220639.373da07b@bootlin.com>
In-Reply-To: <20250213220639.373da07b@bootlin.com>
From: Phil Elwell <phil@raspberrypi.com>
Date: Thu, 13 Feb 2025 21:12:43 +0000
X-Gm-Features: AWEUYZlVo_apDuZYuyVu1Lfe1LA9oZG5SHRyZ3oyNNk68YQAzKqOxyiz3nLno9I
Message-ID: <CAMEGJJ2_HVKfsE3P22baadbzxSDAX=yTr=m76YuXa5A2cJsJig@mail.gmail.com>
Subject: Re: [PATCH v6 00/10] Add support for RaspberryPi RP1 PCI device using
 a DT overlay
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Andrea della Porta <andrea.porta@suse.com>, Arnd Bergmann <arnd@arndb.de>, 
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

On Thu, 13 Feb 2025, 21:06 Herve Codina, <herve.codina@bootlin.com> wrote:
>
> Hi Phil,
>
> On Thu, 13 Feb 2025 20:15:06 +0000
> Phil Elwell <phil@raspberrypi.com> wrote:
>
> > Once more, with plain text, which I'd hoped the Android GMail client
> > would work out for itself.
> >
> > On Thu, 13 Feb 2025, 18:53 Herve Codina, <herve.codina@bootlin.com> wrote:
> > >
> > > Hi Phil,
> > >
> > > On Thu, 13 Feb 2025 17:57:37 +0000
> > > Phil Elwell <phil@raspberrypi.com> wrote:
> > >
> > > > On Thu, 13 Feb 2025 at 17:45, Andrew Lunn <andrew@lunn.ch> wrote:
> > > > >
> > > > > > > Or do you mean a custom board, which has a CPU, RP1 and the button and
> > > > > > > fan are directly on this custom board? You then want a board DTS which
> > > > > > > includes all these pieces?
> > > > > >
> > > > > > That depends on whether you count the Raspberry Pi 5 as a custom board.
> > > > >
> > > > > So you mean the Pi 5 board would itself make use of the resources the
> > > > > RP1 device has? They are not simply connected to headers for plugin
> > > > > boards, but used by the main board? Hence you want to describe them in
> > > > > the board .DTS file.
> > > >
> > > > That's correct. But even for plug-in devices, those which are on
> > > > non-discoverable buses need overlays to declare them, which causes a
> > > > problem when the overlay application happens before the kernel is
> > > > started.
> > > >
> > >
> > > Hum, I see.
> > >
> > > We worked on overlay usage on non-discoverable buses wired to a connector
> > > and we did a talk about issues we are facing on at Plumber [0].
> > >
> > > You can also find our big picture in [1] and a last contribution introducing
> > > export-symbols feature in [2]. export-symbols is also under discussion on
> > > some other threads.
> > >
> > > Also, we proposed the i2c bus extensions feature [3] whose goal is to allow
> > > an addon board to add devices on an i2c bus provided by a base board and
> > > wired to an connector the addon board is connected to.
> > >
> > > Maybe in your case, you can decouple resources (gpio, pwm) provided by the
> > > addon board and used by the base board using also nexus node.
> > >
> > > We use a nexus node [4] (not presented at the Plumbers talk because the idea
> > > came during 'out of talk' discussions in Plumbers) in order to allow our
> > > addon board to use resources provided by the base board.
> > >
> > > In your case, if I understood, you are in the other direction but why not
> > > using also a nexus node to decouple and translate resources in this other
> > > direction ?
> > >
> > > Don't know if this idea can help but feel free to ask for some more
> > > information if needed.
> >
> > Nexus nodes look interesting - I see them as adding a layer of
> > abstraction such that, for example, boards can declare which of their
> > specific resources performs a common function so that clients can
> > treat them all the same. We do the same thing in a limited way by
> > using common labels on nodes, but this goes much further.
> >
> > In the case of Pi 5 and RP1, I imagine you are proposing that the Pi 5
> > dtb declares the connector node and the overlay fills in the content
> > with references to its GPIO controller, PWM controller etc. However, I
> > think the overlay would also have to be board specific because it's
> > not possible to patch part of a property from an overlay, so you'd end
> > up overwriting the GPIO number as well as the controller reference.
> >
> > What is needed to make this work is the ability to cope with
> > unresolved references in the base dtb, to be resolved as each overlay
> > is applied, with runtime checking that each reference is resolved
> > before it is used, all of which sounds like a nightmare. Plus, we
> > really don't want to have to change the way all our camera and display
> > overlays work on all Raspberry Pis just to accommodate somebody's idea
> > of how RP1 should be handled.
>
> Just to be clear, my comments were not there to tell you how RP1 should
> work. I just proposed ideas without trying to force anything and I can
> fully understand that ideas proposed don't feed your needs.
>
> Sorry if my approach was misunderstood.

I feel I've been misunderstood - I appreciate your ideas.

Perhaps it would help if you could outline how you think we could
apply your suggestions?

Thanks,

Phil

