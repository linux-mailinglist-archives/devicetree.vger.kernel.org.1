Return-Path: <devicetree+bounces-47507-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A73A586D6FD
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 23:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ACCC2B221EE
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 22:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE93C446AC;
	Thu, 29 Feb 2024 22:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="GbZrBej1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0557433B6
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 22:48:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709246894; cv=none; b=TiDzfwkGStwRWquVfuPlQCcjM0Xw0R4QUOg+QsCV3xH4qwBlTsIYKLl/YsMY9GbGGxEh6QjLusqvCtDFOd9RX8rs1PenAw98NsN0fE4dSbvvWgGcXCVF6WlTWlVf6DMe/KeUQcglS8sW9rgVP0Hr3J626y13wNB11QTEpLnyzgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709246894; c=relaxed/simple;
	bh=0s+GVCqkwu97BcM0GHnFnZkJCIUQKCkrXRrzspuk9R4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BGi1l21Z+Brl0AygltzY0acqv6bZbdbdSMJpG9SoOdaNu7EnXY5b4jyGnuyQ15neSxp5LbNc2gXSI8E9Z7LmBy/c5E5ky3ViSuaai8rycUrkoOSVavTuLZDl3Cfls0s4aM42R4X8gg9cXZEMuWf/+fFuiBncyNvIVEgwzU15JtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=GbZrBej1; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-42e0b1b11bbso61861cf.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 14:48:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1709246891; x=1709851691; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mdp36PSUcLLH3zL4Laxm43+oLsJqLxMZ/WakBj8Xcj4=;
        b=GbZrBej1MmjiAVNFLWAlpOyBnfUISiUGG81VulV0DlibITQLVZQEoG1y/Yjj8N/FHA
         J3NRWpuArFXZDih6PpkhpqspKYcwX1C6N22M53c8yk18L/gAD4E3vZGpS8Gsqh2Yi6gq
         EbPwG7L8R9X7XhFq7r7D8ihR26lal+D7tp3ru5Txezr/KDpwcihYH+fsFOxYmcjoI1j9
         45LCozVZfi2Z0oQ23kq075NWtsh0GTTAa7+iQeyq3x4sKO0lO96uZkx+MEtdlko3Uekl
         1Qox6ijtl0yrjg55sZh48yn+1z3uD1Ws1C3MY8b48PaZJiXv5rLO74d1j9FiKJ5MkPSD
         XD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709246891; x=1709851691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mdp36PSUcLLH3zL4Laxm43+oLsJqLxMZ/WakBj8Xcj4=;
        b=WwJKnyfmRLmxYLS026WjbzuN+4v3UaBkqKH+iZrmtcDqbEjQBJpZXUw4mbGG5YgXJB
         nKhCm6mpxgx0JKM0Hulgea97THdhD/U3AC3mM4phYjicaolkz3azn5n9v0OenM4tp2DY
         mWajrb+1fQ5Gg1sGmHyLCZQf0ZSult7HSb9ycxxG0YImxsKyMfCO4vP3pRqE25m3LpL5
         0LIgtDIEGCoY09bu3rvBLJT2hY+jvX/Aumq4R61+6U9+yAPrQtlj5omb+iRZxLpCvxHC
         vkRdyEmgvGveR7wA0DLai9hGD8gnqe/T7gzq8/NWBI+juGc2gfc4E9i/edbvaeoYyrNv
         rH1A==
X-Forwarded-Encrypted: i=1; AJvYcCXZXeISJ4COqKb8dbH4Sj5EKbSyd4h8gwyVoLNVY0MZij5DQNPpP0qRcHuPyaJhCpfKdTMIYb31c3YO5B5+EKE51MbtcqP2uTqukg==
X-Gm-Message-State: AOJu0YzQvMIz2tsiAl6vmtnzwWE/EcEw49CrFucbtWxoysKXizomlC5o
	9cAO+f/CKSEy1OcMDJ8cQwPi5k7BQkoNysLqLiKsn5iZeDWYDDa/NqQsQy/GoQdfjsD+Qk+Ohdo
	ico8UVqmO7QzXMAKoDdDsYTdcJx1808793wBo
X-Google-Smtp-Source: AGHT+IEcxzcvLgKmsh7N4l8fdAf8fyIhKG/zY8Ve0Ysw9zFou1n1OO1xh+9pvSmH8EJDwOV0Kc4h9uifpHIt7rcO6vc=
X-Received: by 2002:ac8:4814:0:b0:42e:a2a0:959c with SMTP id
 g20-20020ac84814000000b0042ea2a0959cmr64115qtq.14.1709246891396; Thu, 29 Feb
 2024 14:48:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240224052436.3552333-1-saravanak@google.com>
 <CAMuHMdWhm1WaX3X3P7tyB+e-rX=iwkwm8LxE3=gfHzJ1umhsFg@mail.gmail.com> <CAGETcx-sZXeSxgtYMvgbR4GEpSo2g7hDH1KshEoqZBHf9C42fw@mail.gmail.com>
In-Reply-To: <CAGETcx-sZXeSxgtYMvgbR4GEpSo2g7hDH1KshEoqZBHf9C42fw@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Thu, 29 Feb 2024 14:47:35 -0800
Message-ID: <CAGETcx8hSGNxO9O_0tS+hSkAuTT6ctR_RhvqcJKzgcALL7ohxg@mail.gmail.com>
Subject: Re: [PATCH] of: property: fw_devlink: Fix stupid bug in
 remote-endpoint parsing
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, kernel-team@android.com, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 29, 2024 at 2:45=E2=80=AFPM Saravana Kannan <saravanak@google.c=
om> wrote:
>
> On Thu, Feb 29, 2024 at 2:11=E2=80=AFAM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> >
> > Hi Saravana,
> >
> > On Sat, Feb 24, 2024 at 6:25=E2=80=AFAM Saravana Kannan <saravanak@goog=
le.com> wrote:
> > > Introduced a stupid bug in commit 782bfd03c3ae ("of: property: Improv=
e
> > > finding the supplier of a remote-endpoint property") due to a last mi=
nute
> > > incorrect edit of "index !=3D0" into "!index". This patch fixes it to=
 be
> > > "index > 0" to match the comment right next to it.
> > >
> > > Reported-by: Luca Ceresoli <luca.ceresoli@bootlin.com>
> > > Link: https://lore.kernel.org/lkml/20240223171849.10f9901d@booty/
> > > Fixes: 782bfd03c3ae ("of: property: Improve finding the supplier of a=
 remote-endpoint property")
> > > Signed-off-by: Saravana Kannan <saravanak@google.com>
> >
> > Thanks for your patch!
> >
> > > --- a/drivers/of/property.c
> > > +++ b/drivers/of/property.c
> > > @@ -1304,7 +1304,7 @@ static struct device_node *parse_remote_endpoin=
t(struct device_node *np,
> > >                                                  int index)
> > >  {
> > >         /* Return NULL for index > 0 to signify end of remote-endpoin=
ts. */
> > > -       if (!index || strcmp(prop_name, "remote-endpoint"))
> > > +       if (index > 0 || strcmp(prop_name, "remote-endpoint"))
> > >                 return NULL;
> > >
> > >         return of_graph_get_remote_port_parent(np);
> > > --
> > > 2.44.0.rc0.258.g7320e95886-goog
> >
> > After this, the "Fixed dependency cycle" messages I reported to be
> > gone in [1] are back.
> >
> > In fact, they are slightly different, and there are now even more of th=
em:
> >
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef7000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef6000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef5000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef4000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef3000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef2000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef1000/ports/port@1/endpoint@0
> > -platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef0000/ports/port@1/endpoint@0
> > -platform feaa0000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef3000/ports/port@1/endpoint@2
> > -platform feaa0000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef2000/ports/port@1/endpoint@2
> > -platform feaa0000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef1000/ports/port@1/endpoint@2
> > -platform feaa0000.csi2: Fixed dependency cycle(s) with
> > /soc/video@e6ef0000/ports/port@1/endpoint@2
> > -platform fead0000.hdmi: Fixed dependency cycle(s) with
> > /soc/sound@ec500000/ports/port@1/endpoint
> > -platform feae0000.hdmi: Fixed dependency cycle(s) with
> > /soc/sound@ec500000/ports/port@2/endpoint
> > -platform feb00000.display: Fixed dependency cycle(s) with
> > /soc/hdmi@feae0000/ports/port@0/endpoint
> > -platform feb00000.display: Fixed dependency cycle(s) with
> > /soc/hdmi@fead0000/ports/port@0/endpoint
> > -platform hdmi0-out: Fixed dependency cycle(s) with
> > /soc/hdmi@fead0000/ports/port@1/endpoint
> > -platform hdmi1-out: Fixed dependency cycle(s) with
> > /soc/hdmi@feae0000/ports/port@1/endpoint
> > -platform vga-encoder: Fixed dependency cycle(s) with /vga/port/endpoin=
t
> > -platform vga-encoder: Fixed dependency cycle(s) with
> > /soc/display@feb00000/ports/port@0/endpoint
> > +platform e6ef0000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef0000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef1000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef1000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef2000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef2000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef3000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef3000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef4000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef5000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef6000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef7000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform ec500000.sound: Fixed dependency cycle(s) with /soc/hdmi@feae=
0000
> > +platform ec500000.sound: Fixed dependency cycle(s) with /soc/hdmi@fead=
0000
> > +platform ec500000.sound: Fixed dependency cycle(s) with
> > /soc/i2c@e6510000/codec@10
> > +platform e6ef7000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef6000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef5000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef4000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef3000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef2000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef1000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform e6ef0000.video: Fixed dependency cycle(s) with /soc/csi2@fea8=
0000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
7000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
6000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
5000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
4000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
3000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
2000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
1000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
0000
> > +platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/i2c@e66d8000/video-receiver@70
> > +platform e6ef3000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef2000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef1000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform e6ef0000.video: Fixed dependency cycle(s) with /soc/csi2@feaa=
0000
> > +platform feaa0000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
3000
> > +platform feaa0000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
2000
> > +platform feaa0000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
1000
> > +platform feaa0000.csi2: Fixed dependency cycle(s) with /soc/video@e6ef=
0000
> > +platform feaa0000.csi2: Fixed dependency cycle(s) with
> > /soc/i2c@e66d8000/video-receiver@70
> > +platform ec500000.sound: Fixed dependency cycle(s) with /soc/hdmi@fead=
0000
> > +platform fead0000.hdmi: Fixed dependency cycle(s) with /soc/sound@ec50=
0000
> > +platform fead0000.hdmi: Fixed dependency cycle(s) with /soc/display@fe=
b00000
> > +platform ec500000.sound: Fixed dependency cycle(s) with /soc/hdmi@feae=
0000
> > +platform feae0000.hdmi: Fixed dependency cycle(s) with /soc/sound@ec50=
0000
> > +platform feae0000.hdmi: Fixed dependency cycle(s) with /soc/display@fe=
b00000
> > +platform feae0000.hdmi: Fixed dependency cycle(s) with /soc/display@fe=
b00000
> > +platform fead0000.hdmi: Fixed dependency cycle(s) with /soc/display@fe=
b00000
> > +platform feb00000.display: Fixed dependency cycle(s) with /soc/hdmi@fe=
ae0000
> > +platform feb00000.display: Fixed dependency cycle(s) with /soc/hdmi@fe=
ad0000
> > +platform cvbs-in: Fixed dependency cycle(s) with
> > /soc/i2c@e66d8000/video-receiver@70
> > +platform hdmi-in: Fixed dependency cycle(s) with
> > /soc/i2c@e66d8000/video-receiver@70
> > +platform fead0000.hdmi: Fixed dependency cycle(s) with /hdmi0-out
> > +platform hdmi0-out: Fixed dependency cycle(s) with /soc/hdmi@fead0000
> > +platform feae0000.hdmi: Fixed dependency cycle(s) with /hdmi1-out
> > +platform hdmi1-out: Fixed dependency cycle(s) with /soc/hdmi@feae0000
> > +platform vga: Fixed dependency cycle(s) with /vga-encoder
> > +platform feb00000.display: Fixed dependency cycle(s) with /vga-encoder
> > +platform vga-encoder: Fixed dependency cycle(s) with /vga
> > +platform vga-encoder: Fixed dependency cycle(s) with /soc/display@feb0=
0000
> >
> > -i2c 2-0010: Fixed dependency cycle(s) with
> > /soc/sound@ec500000/ports/port@0/endpoint
> > +platform ec500000.sound: Fixed dependency cycle(s) with
> > /soc/i2c@e6510000/codec@10
> >
> > -i2c 4-0070: Fixed dependency cycle(s) with
> > /soc/csi2@fea80000/ports/port@0/endpoint
> > -i2c 4-0070: Fixed dependency cycle(s) with
> > /soc/csi2@feaa0000/ports/port@0/endpoint
> > -i2c 4-0070: Fixed dependency cycle(s) with /hdmi-in/port/endpoint
> > -i2c 4-0070: Fixed dependency cycle(s) with /cvbs-in/port/endpoint
> > +platform feaa0000.csi2: Fixed dependency cycle(s) with
> > /soc/i2c@e66d8000/video-receiver@70
> > +platform fea80000.csi2: Fixed dependency cycle(s) with
> > /soc/i2c@e66d8000/video-receiver@70
> > +i2c 4-0070: Fixed dependency cycle(s) with /soc/csi2@fea80000
> > +i2c 4-0070: Fixed dependency cycle(s) with /soc/csi2@feaa0000
> >
> > I guess all of that is expected?
>
> I'm assuming all of these cycles are between devices that use
> remote-endpoint/port(s)? If so, yes, these are all expected. It's just
> logging things more accurately now.
>
> Once post-init-providers lands, you can use that property to break the
> cycles and also allow a better probe/suspend/resume ordering between
> these devices.

To be clear, this is just extra and more accurate logging in your case
and it's saying fw_devlink isn't enforcing ordering between these
devices. So, unless there's a bug in the drivers themselves, this
isn't breaking anything.

-Saravana

