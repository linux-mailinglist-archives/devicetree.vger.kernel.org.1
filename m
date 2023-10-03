Return-Path: <devicetree+bounces-5649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C773B7B7204
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 21:47:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7E4AC28127B
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 19:47:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 478B03CD0C;
	Tue,  3 Oct 2023 19:47:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC5F5D2EB
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 19:46:59 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62ED693;
	Tue,  3 Oct 2023 12:46:58 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3aec067556dso816926b6e.2;
        Tue, 03 Oct 2023 12:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696362417; x=1696967217; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pY2LDZHNDqV7zpWUtoTSx1wThf0F8639D8i3IHWrzhs=;
        b=IpiZbxeXw6R5bvJxkjN9CdFb2Z0SMyXpb3ZyfgtiYQhFdqjVRkyJ0NF4lHtwLebXMu
         nbTIxbLA5HJHcDjDtXqdlrXz93j3my+YzJWRr8y/PYGj7kWHjJXCQEleGjLtdCNJPCre
         aVTCFgNwRwi8fDJ+LJcm9cWyxRBLVFa+qwVd0lPswVcSd/yXTZa4YOvwGx5ugwjdIOQd
         wiNzoOxJwB+JZ/LKB0CgGcrXm19Xf3bXXTY3hHSwzVjqUn/0BSWYhmAIkKCNZi12dI8t
         tRkt1r9/9KaqiAjHj7zBPm52+/DvfT6/wFdBeBwDZBvBjdHopv8U+DC/AuibgJN2kvP2
         lDKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696362417; x=1696967217;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pY2LDZHNDqV7zpWUtoTSx1wThf0F8639D8i3IHWrzhs=;
        b=iiEwF03j2QgFvFf10PMW1FjOrRQGLPDS9sfVkj7+w7PY+1JWXdiZGCPIb6jjM0VVS3
         hVRzgNZZVKQAcw1fDrMnTAUElKXvdKh9ZuBSj9QlbxkVGC6qMygTA/focABdhRdtmoOR
         fgUp29Wm0YMcLmFOdc/umJEcHrDVydKXKk9CILXuNZ1tQ4c8bk3ExBR5UYZz82KwCmeJ
         WTaREV2fKVcntqTjgZoKGD2OBKiQrrE/YVQ9/Yn+Uymi7/p+ia7MNax/9ilfFYE0V5na
         sQaZwbN5m+2ZQjqSjeOx/Fe/GMuECdZVe8UJ+8gB7ZWTz1RcTa9Sk8CO0NCVSNg9Wmkq
         9Xog==
X-Gm-Message-State: AOJu0YxVG1/LY0lOReOlbB03r6A1KQzY+CTC6gSPiAWcpMdgOPjHW13X
	l4ipDD5lHF1FNA8qiCJjYxqMNBVoIcbOh4YLXc4=
X-Google-Smtp-Source: AGHT+IFPbj9xPn7d7oWYbjF2MkTvfQjOn7EaNQAKqYjhsPrdfO2VPAp2ZoEYA2CjApca+d14W6rDVw4WitfCqcHXAq8=
X-Received: by 2002:aca:170a:0:b0:3a8:29a9:e4d0 with SMTP id
 j10-20020aca170a000000b003a829a9e4d0mr500620oii.34.1696362417592; Tue, 03 Oct
 2023 12:46:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928151631.149333-1-jcmvbkbc@gmail.com> <20230928151631.149333-6-jcmvbkbc@gmail.com>
 <2023100326-crushing-septic-4856@gregkh>
In-Reply-To: <2023100326-crushing-septic-4856@gregkh>
From: Max Filippov <jcmvbkbc@gmail.com>
Date: Tue, 3 Oct 2023 12:46:46 -0700
Message-ID: <CAMo8BfJgpP-=tNEChcyR3z6i_QeJ9Ywq7EOjjC5i7Uq4OrgXNA@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] drivers/tty/serial: add ESP32S3 ACM device driver
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org, 
	devicetree@vger.kernel.org, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	FROM_LOCAL_NOVOWEL,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 3, 2023 at 5:55=E2=80=AFAM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Thu, Sep 28, 2023 at 08:16:31AM -0700, Max Filippov wrote:
> > Add driver for the ACM  controller of the Espressif ESP32S3 Soc.
>
> Odd extra space :(

Ok.

> > Hardware specification is available at the following URL:
> >
> >   https://www.espressif.com/sites/default/files/documentation/esp32-s3_=
technical_reference_manual_en.pdf
> >   (Chapter 33 USB Serial/JTAG Controller)
>
> I don't understand this driver, "ACM" is a USB host <-> gadget protocol,
> why do you need a platform serial driver for this?

The USB part of this piece of hardware is fixed and not controllable, so
all we have is a very limited UART interface. But to the outside world
it's a USB device with the CDC-ACM interface.

> > diff --git a/drivers/tty/serial/esp32_acm.c b/drivers/tty/serial/esp32_=
acm.c
> > new file mode 100644
> > index 000000000000..f02abd2ac65e
> > --- /dev/null
> > +++ b/drivers/tty/serial/esp32_acm.c
> > @@ -0,0 +1,459 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
>
> Why "or later"?  I have to ask, sorry.

I don't really have a preference here. Is there a reason to choose
GPL-2.0 only for a new code?

> And no copyright information?  That's fine, but be sure your company's
> lawyers are ok with it...

There's no company behind this, just myself.

> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/bits.h>
> > +#include <linux/console.h>
> > +#include <linux/delay.h>
> > +#include <linux/io.h>
> > +#include <linux/irq.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
> > +#include <linux/serial_core.h>
> > +#include <linux/slab.h>
> > +#include <linux/tty_flip.h>
> > +#include <asm/serial.h>
> > +
> > +#define DRIVER_NAME  "esp32s3-acm"
> > +#define DEV_NAME     "ttyACM"
>
> There is already a ttyACM driver in the kernel, will this conflict with
> that one?  And are you using the same major/minor numbers for it as
> well?  If so, how is this going to work?

I'll rename it to ttyS. I see that it coexists with the other driver that c=
alls
its devices ttyS just fine.

> > +static void esp32s3_acm_set_mctrl(struct uart_port *port, unsigned int=
 mctrl)
> > +{
> > +}
>
> Do you have to have empty functions for callbacks that do nothing?

The serial core has unconditional calls to these callbacks.

> > --- a/include/uapi/linux/serial_core.h
> > +++ b/include/uapi/linux/serial_core.h
> > @@ -248,4 +248,7 @@
> >  /* Espressif ESP32 UART */
> >  #define PORT_ESP32UART       124
> >
> > +/* Espressif ESP32 ACM */
> > +#define PORT_ESP32ACM        125
>
> Why are these defines needed?  What in userspace is going to require
> them?  If nothing, please do not add them.

I don't understand what the alternatives are. The comment for the
uart_ops::config_port() callback says that port->type should be set
to the type of the port found, and I see that almost every serial driver
defines a unique PORT_* for that.

--=20
Thanks.
-- Max

