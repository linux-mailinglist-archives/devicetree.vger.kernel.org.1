Return-Path: <devicetree+bounces-223545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B84FBB72FC
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 16:33:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1CEDE4EC056
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 14:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5A513D2B2;
	Fri,  3 Oct 2025 14:33:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fgtkU7tp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4B214A9B
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 14:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759501981; cv=none; b=YtQZyyByfIAQ4GhlcC1TkH+zdiAfoJszeVhH1Bzj8uNFiAWY2DhFZsqj+T1foywrxNDWhAb79aDJt3Ty136L5/1F3Rk8lurhh9XrcpBFs6MTdVuUMm9FIZpl8uYSmhfXG3h8Zuzblepg9smxb8oIL8n6V/A2mfhu0Dw7yCkEJ+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759501981; c=relaxed/simple;
	bh=ArI0GMic8uk/1kAkM79WN6gznjdosKe4PSqQZ8k9PK0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FXXACoBVGX7/2j63dvnlEB3X25tejJbWfoERfrVNnwR87/qLpOExx1l3X0RvIW26mbCmAonW0vV4o4utPNqAFAbQVvqWFcVmCCbvTAN8WCEIuwR3qhIXFgEZcwuKnnFFe2tfD1sssckkzBg8YMUhMwOsmVy7FFx4kTMysMnsA/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fgtkU7tp; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-373a1ab2081so19409421fa.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 07:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759501978; x=1760106778; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1mxBl+91XREs3rrt+Mm+HGe169ZpfgbUuMF9IKmnb3I=;
        b=fgtkU7tp8t9FJx+n6MdmpSaI96wKnMB946Ia6juEpMapqFaiDzBKU6Myu/l99TPONl
         X5NzYAznh9OzpsvyXuK+O8vHNGlTTUQ1WjUPFWSSi1o3O4pVptvRrU7M0ADp7xg313qo
         Go50Y9Q+75bf4JbHAzc72ujOQu5a5jJUpSrzrR3PA09KstyJbTEkjzZNOvf5fBxYqROX
         5v8IYWSutFofAk1ESXC42mRAIHRn3kXhGopqySi46gJwiXHBTy6/rvHRwNdFwxLx1PN+
         M4zyU0ka9hzeLELILZOgUcgvH3jnrvBJJn/8HxfwzfpX0Iloz7Z9St9zi8x8iRLHF+7d
         r6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759501978; x=1760106778;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1mxBl+91XREs3rrt+Mm+HGe169ZpfgbUuMF9IKmnb3I=;
        b=ldHj1S1jmweoy9H1vSc7xELNlv4W1gRX5D8fZzIS+BfRQWNCqqlzHXP8WVwLTPKQ5B
         zscVGHUVueEHOYt4Vo3qag4+4or1dJDQaWuaGCYGdJYBmD5G1enur6ewcu/nw297Cdyn
         qmKZmtj8w7FQeHLZ3I8J05QDLWeaCxK78ix0hNqdX5JkreLQxo3MqN5Bo13dUND/mK9M
         rDC1D31Y0ynAY79YmBHNQzbuhLNSBQk/HgjpeQjR/o3AF/YA1LSvZkNsOKA7P9h54K+f
         npMZgBjGIWKa02az2zSYYVL0OTcT22vcZPfU97QXk8p8Qn/Cp43PjHEAbQtUDlQHKKfp
         SEAA==
X-Forwarded-Encrypted: i=1; AJvYcCXRUXXVbW54e/xaUdOLa/qlbXuB02dqphGlTw0tZa5RndsVAqBHgHmE8Bum/SdbeuTi9tepFcRn5f1A@vger.kernel.org
X-Gm-Message-State: AOJu0Yxeaq0f6jBeUTfNPIXN91/2Hd1hyFGNS4JryyMIYISx70p3LGSw
	IQgroKJE2hfL1Su2vSog+rLLRwRPopLtcVWymcZRREkpSRPp4BYgG1izVFPlCw3tWCUoqAjtlah
	j86ZybCEd9zMScy0wLYvTffzFO38G5v8=
X-Gm-Gg: ASbGncsBovqn8sIWC1W/eOVvOC0iuoJMZ/AS7SFVQeYt9hx6nEH+b27UjwNBNdzFSL2
	b0CXsUytqUd05Oalk5xbrfSE+3X+QVt4BK3SETbTGivsiHFQ5tYdNbzuiFw3P35leGHAllq9ndd
	NjKtuHrM8NFY458aTrhi0lS2q/KfBePWWj4tdgOl09ar2ATrgjd0MR3NDb+MzNIxp2D7jL1kThr
	DsFakQjuDSY+JvHqHc+0cFSk2+zad0+7rAe1cI4
X-Google-Smtp-Source: AGHT+IHMEYf9LUvT+7M4GPywBvEmEbLwMBFLFIBedNHzqtzmaPYWYwMrkMOiqneX0J3Yyd6PeW5sBlD7r5kNWSSHALo=
X-Received: by 2002:a05:651c:a07:b0:372:950f:2aff with SMTP id
 38308e7fff4ca-374c37eb5d7mr10596021fa.27.1759501977328; Fri, 03 Oct 2025
 07:32:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001183320.83221-1-ariel.dalessandro@collabora.com>
 <175943240204.235529.17735630695826458855.robh@kernel.org>
 <CABBYNZKSFCes1ag0oiEptKpifb=gqLt1LQ+mdvF8tYRj8uDDuQ@mail.gmail.com> <CAL_Jsq+Y6uuyiRo+UV-nz+TyjQzxx4H12auHHy6RdsLtThefhA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+Y6uuyiRo+UV-nz+TyjQzxx4H12auHHy6RdsLtThefhA@mail.gmail.com>
From: Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Date: Fri, 3 Oct 2025 10:32:44 -0400
X-Gm-Features: AS18NWAxN1IhfgHRDQEAVNRk-gv2qRra_zfz_DZsOprYcJI8wwK8KzxwPe_vG4Y
Message-ID: <CABBYNZKxGNXS2m7_VAf1d_Ci3uW4xG2NamXZ0UVaHvKvHi07Jg@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: net: Convert Marvell 8897/8997 bindings
 to DT schema
To: Rob Herring <robh@kernel.org>
Cc: "Ariel D'Alessandro" <ariel.dalessandro@collabora.com>, andrew+netdev@lunn.ch, 
	conor+dt@kernel.org, kernel@collabora.com, krzk+dt@kernel.org, 
	angelogioacchino.delregno@collabora.com, kuba@kernel.org, 
	devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org, 
	davem@davemloft.net, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	pabeni@redhat.com, edumazet@google.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri, Oct 3, 2025 at 9:38=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Oct 2, 2025 at 2:18=E2=80=AFPM Luiz Augusto von Dentz
> <luiz.dentz@gmail.com> wrote:
> >
> > Hi,
> >
> > On Thu, Oct 2, 2025 at 3:14=E2=80=AFPM Rob Herring (Arm) <robh@kernel.o=
rg> wrote:
> > >
> > >
> > > On Wed, 01 Oct 2025 15:33:20 -0300, Ariel D'Alessandro wrote:
> > > > Convert the existing text-based DT bindings for Marvell 8897/8997
> > > > (sd8897/sd8997) bluetooth devices controller to a DT schema.
> > > >
> > > > While here, bindings for "usb1286,204e" (USB interface) are dropped=
 from
> > > > the DT   schema definition as these are currently documented in fil=
e [0].
> > > >
> > > > [0] Documentation/devicetree/bindings/net/btusb.txt
> > > >
> > > > Signed-off-by: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
> > > > ---
> > > >  .../net/bluetooth/marvell,sd8897-bt.yaml      | 79 +++++++++++++++=
+++
> > > >  .../devicetree/bindings/net/btusb.txt         |  2 +-
> > > >  .../bindings/net/marvell-bt-8xxx.txt          | 83 ---------------=
----
> > > >  3 files changed, 80 insertions(+), 84 deletions(-)
> > > >  create mode 100644 Documentation/devicetree/bindings/net/bluetooth=
/marvell,sd8897-bt.yaml
> > > >  delete mode 100644 Documentation/devicetree/bindings/net/marvell-b=
t-8xxx.txt
> > > >
> > >
> > > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> > >
> > > You'll probably have to resend this after rc1.
> >
> > In that case I'd like to have a Fixes tag so I can remember to send it
> > as rc1 is tagged.
>
> A Fixes tag is not appropriate for a conversion to DT schema.

Ok, but then how do you justify merging it for an RC? Or I'm
misunderstanding and that should just be merged to bluetooth-next and
wait for the next merge window? In that case I can just merge it right
away.

> Rob



--=20
Luiz Augusto von Dentz

