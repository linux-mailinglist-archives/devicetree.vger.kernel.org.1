Return-Path: <devicetree+bounces-238283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E608DC599DC
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 20:07:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 151CC3A73D2
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 19:06:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B4F31987D;
	Thu, 13 Nov 2025 19:06:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OjYyrZb7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DB731986C
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763060776; cv=none; b=rfWdFAigEW0vltEwJAGocm5cCst24SA4T/Ey9KtILCllFz/vWhHFCML+LYDlLm0kabqXDmxxJSg/v7GIdNc6rYRXriIBVCBrWX8NeYh3K/wh2S74UpQiAxdexu9kWI6BlvUDvqO0DQpwV+B/qnEeloLeSsNxV6PdhagpdEwOXvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763060776; c=relaxed/simple;
	bh=Y/qJDae0edO4k+K0dyTsN5JAW0+9oSUkTYBUhCrJFqI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Xci/hU3VCzK15yj5fMs/HixBOyp9Fj2Gos+jaDZz3UGD4SUkob+ecZZlvEDcgo5YIT33LKxLF8l9eK/b/JIq+6jJxSH9U6ikwipGzDM34oXUKAXWFPB4Cm0YjrtGurzim7v+yFV68a7/KEQgOZvWP+a7WkjOt/ls1Q0uetB1R7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OjYyrZb7; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-471191ac79dso12954655e9.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 11:06:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763060773; x=1763665573; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XGdekgpTt91UdIPWzrNbb4Nq2jZCMcOWPkFjac+/WoA=;
        b=OjYyrZb7XdIQPB2lobb6PmX5xQTJplSMLp02Px8NSOUp3qzf153ulpvVTMvSV/hmDG
         dT5vJzJ8l1P4UWWNciofdomLeStetXYZ7S8z3a80CBYk5sHI6lMLc91/MnTXuXEz8DqO
         KnHkbLMxF/B/w0A1+FE3kvA6VNczt+VSylRQiJL7And0eTCKpuvzXkW1KM1/GfuhuVqi
         xmF50hnLQzEBOJONGPOp5OTMB2esuXn0ZpTEvNZ6h95yoLmNPRBekdbUb0Z5sQQYHO28
         Hert3tTIY3zFQ12epddIgqBiMvVsjiy6eR6InDiAFqQ4Fj5mw8FBCZ7Ld0dsQiR5OQq1
         iuWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763060773; x=1763665573;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XGdekgpTt91UdIPWzrNbb4Nq2jZCMcOWPkFjac+/WoA=;
        b=rYRl3mhzhJISi1TVdOomoshj8PUE9Dt6CXjT6geGhNFKKN3wEwhR4twyglfUCSBsPj
         i8Dwt92VLDMdqa1zvg4YwA7Qv5udQbHDfepOkdi5yie17tjn3dOHLrl3BOnrEZohmKZ3
         t/0FJRgA1pnjuI4atIN0ebn/rvhHAgK6gyWitFCFD2SpdUPCDkYSSzaN05AGQ7l0H/tL
         W21OP7mm594mhVIipMUAOsGTXkVQR1d/M9VihO6IkeJdzSqF3cQhdq6TdyiybftLV58t
         JamG3n2JQfk0ihiOpimcreMVBvQXCpgkG9bfLrgVvJfl+/f5JjnuA0OPPiPN4LVK/bEa
         9gCw==
X-Forwarded-Encrypted: i=1; AJvYcCXjng6I5rm/hgU61qAolhaZ/G9VNxJMGwQutpnJNboTGUJgY9EpWUSw0eM6zixs07XLDoFLwWs5NSAg@vger.kernel.org
X-Gm-Message-State: AOJu0YyAIgKteVjd1+k4/x58EVKFrFIoBJm6cRCJz4AM1ctehSLh1mP1
	vEzTb3ht2ZhpmxS2mG9YxMw/Fw2zwf4+5TaHjVm6RG0HtK/kZsd/DHRbyHkZiculbOAL1uIcEgV
	eZaHDRSnaWWZZ4+rOdQeBeGGX6RdS5Ko=
X-Gm-Gg: ASbGncs0XiRjYNAxVMTVfGmJTnHvWt/qKBOML2Uf329U7/NXmhGis8aGUOOnd5zsWJr
	+Uu2yFFZi91pU6zqSOy8H3Ni7jBdtcJ/UKRrkorftaChEm6qj5b7tL7EixoShAlOWqQVVmtIRDM
	W+EBPCoERCfYark/VyKhoHpMRbleLBnT2l9KrwXJbNJQ4Tc7HY3249MxYasL/YjFn9s573gYTKf
	TMT4zUOFVRzsI7I7dggbPHUMRCEgM/pO36xvYA5eQdG7nTUbGj2G043hyl45OnMC/UoEMV4
X-Google-Smtp-Source: AGHT+IF6MyIJ6Ct3vYie0mDdjIrWxMn1NXyXarf1sD9pNdCcqDD+1yiJFDboSyiz7L7VDp5ccWLVd8RwNMQc/PomeEU=
X-Received: by 2002:a05:6000:2087:b0:42b:30d4:e401 with SMTP id
 ffacd0b85a97d-42b5933e396mr480118f8f.12.1763060772779; Thu, 13 Nov 2025
 11:06:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251112201937.1336854-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251112201937.1336854-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <aRTwz5QHq9U5QbQ-@ninjato> <CA+V-a8s5fg02ZQT4tubJ46iBFtNXJRvTPp2DLJgeFnb3eMQPfg@mail.gmail.com>
 <aRYADfD8QkIw9Fnd@shell.armlinux.org.uk>
In-Reply-To: <aRYADfD8QkIw9Fnd@shell.armlinux.org.uk>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 13 Nov 2025 19:05:45 +0000
X-Gm-Features: AWmQ_bn_G7lk2p9_nHrGT-XISutiTcxO1n02vyZX182hP0iieQna-qPlaVUCc6Y
Message-ID: <CA+V-a8u5QAY2WheMxXhoHd09KTi31ZnVO2T0FmXiVWdH8x=rxA@mail.gmail.com>
Subject: Re: [PATCH net-next 1/2] dt-bindings: net: pcs: renesas,rzn1-miic:
 Add renesas,miic-phylink-active-low property
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	=?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Russell,

On Thu, Nov 13, 2025 at 3:58=E2=80=AFPM Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Thu, Nov 13, 2025 at 02:45:18PM +0000, Lad, Prabhakar wrote:
> > Hi Wolfram,
> >
> > On Wed, Nov 12, 2025 at 8:40=E2=80=AFPM Wolfram Sang
> > <wsa+renesas@sang-engineering.com> wrote:
> > >
> > > Hi Prabhakar,
> > >
> > > > Add the boolean DT property `renesas,miic-phylink-active-low` to th=
e RZN1
> > >
> > > Hmm, we already have "renesas,ether-link-active-low" in
> > > renesas,ether.yaml and renesas,etheravb.yaml. Can't we reuse that?
> > >
> > On the RZ/N1x we have the below architecture
> >
> >                                                       +----> Ethernet S=
witch
> >                                                       |           |
> >                                                       |           v
> >     MII Converter ----------------------+      GMAC (Synopsys IP)
> >                                                       |
> >                                                       +----> EtherCAT
> > Slave Controller
> >                                                       |
> >                                                       +----> SERCOS
> > Controller
>
> I'm not sure that diagram has come out correctly. If you're going to
> draw diagrams, make sure you do it using a fixed-width font. To me,
> it looks like the MII Converter is bolted to GMAC and only has one
> connection, and the GMAC has what seems to be maybe five connections.
>
Sorry when typing the diagram the mail client showed the diagram OK
but when sent everything was messed up. Ive represented now in a
different way.

                                    +-----------------------+
                                    |   MII Converter     |
                                    +-----------+-----------+
                                                    |
           +-----------------------------------------+---------------------=
----------------------+
            |                                                  |
                                               |
            v                                                 v
                                             v
 +---------------------+
+---------------------------+
+------------------------------+
 | Ethernet Switch  |                   |  EtherCAT Slave      |
            |  SERCOS Controller   |
 +---------+------------+                  |  Controller
|                   +------------------------------+
               |                                  +------------------------=
---+
               |
               v
  +-------------------------+
 |  GMAC (Synopsys  |
 |       IP)                     |
 +--------------------------+

Cheers,
Prabhakar

