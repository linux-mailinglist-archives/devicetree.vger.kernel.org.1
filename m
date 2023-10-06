Return-Path: <devicetree+bounces-6417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F0D7BB44D
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 11:34:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 12C86282128
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 09:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54699134A1;
	Fri,  6 Oct 2023 09:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="igTTThiD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21274F9D9
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 09:34:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE02AC433C7;
	Fri,  6 Oct 2023 09:34:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1696584880;
	bh=eaiC0m6KCNQ8eqoSmmSKhQnpzSwu4dXMIdrsEkhuAkA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=igTTThiDiH1azZasoPr+f2LT1JZ9Acj6Hk4H1OeXOrInDYVUm1wdUNrhMepDSVDC1
	 6TDWEdfBz9VF4Pfrd0YwPPoG8h4neb4dRPJ12dMwGVkBoJvPAub/FmTF2quQ5+ije1
	 0Ojsqff3B2EB65yX4MfYr3eVo45dODyQBkRutqAI=
Date: Fri, 6 Oct 2023 11:34:37 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilpo =?iso-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen@linux.intel.com>
Subject: Re: [PATCH v4 5/5] drivers/tty/serial: add ESP32S3 ACM device driver
Message-ID: <2023100625-water-molehill-4a8f@gregkh>
References: <20230928151631.149333-1-jcmvbkbc@gmail.com>
 <20230928151631.149333-6-jcmvbkbc@gmail.com>
 <2023100326-crushing-septic-4856@gregkh>
 <CAMo8BfJgpP-=tNEChcyR3z6i_QeJ9Ywq7EOjjC5i7Uq4OrgXNA@mail.gmail.com>
 <2023100544-rendering-identify-e0ad@gregkh>
 <CAMo8Bf+wS+qiX2mMZm0i8dt7xkDO8RvroP8RF=78zxgFj-zwaA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMo8Bf+wS+qiX2mMZm0i8dt7xkDO8RvroP8RF=78zxgFj-zwaA@mail.gmail.com>

On Thu, Oct 05, 2023 at 02:21:55PM -0700, Max Filippov wrote:
> On Thu, Oct 5, 2023 at 11:57 AM Greg Kroah-Hartman
> > > > > --- /dev/null
> > > > > +++ b/drivers/tty/serial/esp32_acm.c
> > > > > @@ -0,0 +1,459 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0-or-later
> > > >
> > > > Why "or later"?  I have to ask, sorry.
> > >
> > > I don't really have a preference here. Is there a reason to choose
> > > GPL-2.0 only for a new code?
> >
> > It's your call, you need to pick that, but I can provide recommendations
> > if you want :)
> 
> Please do?

If you only want your code being used in Linux, then stick with
"GPL-2.0".  If you want your code to be able to be copied into other
GPLv3 licensed code bodies (like Hurd and others), then license it as
"GPL-2.0-or-later".  Your call.

> > > > And no copyright information?  That's fine, but be sure your company's
> > > > lawyers are ok with it...
> > >
> > > There's no company behind this, just myself.
> >
> > Great, it's your copyright, be proud, put it on there!
> 
> If I don't have to I'd rather not. This is just a piece of meaningless noise.

You already own the copyright by virtue of creating the code (you can't
give it away), so might as well put your mark on it to make it more
noticable.  But it's not required, if you don't want to, no one can
force you, again, your call.

> > > > > --- a/include/uapi/linux/serial_core.h
> > > > > +++ b/include/uapi/linux/serial_core.h
> > > > > @@ -248,4 +248,7 @@
> > > > >  /* Espressif ESP32 UART */
> > > > >  #define PORT_ESP32UART       124
> > > > >
> > > > > +/* Espressif ESP32 ACM */
> > > > > +#define PORT_ESP32ACM        125
> > > >
> > > > Why are these defines needed?  What in userspace is going to require
> > > > them?  If nothing, please do not add them.
> > >
> > > I don't understand what the alternatives are. The comment for the
> > > uart_ops::config_port() callback says that port->type should be set
> > > to the type of the port found, and I see that almost every serial driver
> > > defines a unique PORT_* for that.
> >
> > Yes, but not all do.  If you don't need to do anything special, it can
> > just claim to be a normal device, we've had threads about this on the
> > list before.  If you don't need to determine in userspace from the tty
> > connection what device it is, just use the default one instead.
> 
> Ok, it looks like having
> 
> #define PORT_ESP32ACM (-1)
> 
> in the driver source should be ok? I've tested that it works.

Hah, I like that hack.  But why not just use PORT_UNKNOWN?

thanks,

greg k-h

