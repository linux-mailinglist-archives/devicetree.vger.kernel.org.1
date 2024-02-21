Return-Path: <devicetree+bounces-44128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E73F85CCD3
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 01:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15AC31F22B1F
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 00:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A19C1396;
	Wed, 21 Feb 2024 00:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="tUSxyhP4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED9F10E6
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 00:40:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708476005; cv=none; b=N360Q5bmhjQw2rcg8Nnth/8IvrrhydX7bkVQSwDT49Qrh1R7iCIDk0NKoFzZgOutgOx8SuKbtHKcSW8Y5/wZKyHiBm5NKYznYTP9umTdHf5nwQRl7R1GdSfaPxsJFoCCYbKVtXTy4jpwt9brt45V77cjOkau3oevk4Sn6jSE8ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708476005; c=relaxed/simple;
	bh=uAI3HK7f/g/nDyL9G7/XMvECnHYq47zYhoOD5T7jc/I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fexwO0TgBLW5c7/FiTqohbBr872iYBRp6aoNhh1PvD59CC0xVARolpU0eBfvhwFJUKmmEvpW+3bWs4CwURLI/09bnvPEoc5WvAJBwVI8ddgBbBtQsuK4II8/7ci4eCMKy0BD8BJm1LFVRTuf5/Gh1OAJR4q8lfV7B442zzwLDrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=tUSxyhP4; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-42e0b1b11bbso37761cf.0
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 16:40:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1708476003; x=1709080803; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LfssETidi6wFDF+vACF5kMe/yeNOLjDvgf0E4IOPBTg=;
        b=tUSxyhP4eJ6PVCiwAyOXFcB7ipaVcXd6mWx0nPkZhjG4jwRf4Sm3lcdFJnAAQHGY+d
         EXu70IwXsGAV69vq7nwTRgdMAKxdGhFvz8IMg85aBvNkxQzMfOsgvs/9iV27/ET5o0CZ
         r5ibk59mDgN7TjkYSoe7yTe6OZjGoOSpi/zUxR4D8RycXXkAibqQvW3ujESKd+fEyazV
         /bB0xFAQWSi6hGJn0GieiUVdJmKbheZ1IZ4PxnmRYe024vBzSgk2tuHdqWEszATbMkfD
         JatPoe6iKeLt5D9hpLHJxaFKVvhFeuk5rdKX/ZOght43qU+YY4rxq88CLJuKY86Ibyyf
         SOjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708476003; x=1709080803;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LfssETidi6wFDF+vACF5kMe/yeNOLjDvgf0E4IOPBTg=;
        b=XJJa+Lg1PMEqBTz0JifIBDX/gpvg8YJ2TXtzeDi+msE1lV9NRIRSBZjyFoAGAiTYC2
         S+WpGwwCFfUSW9+XivIYJO0Ue9ZBRxxJw8r8zaFelqtqpZv+2lsf5JbQJbNjq5vPD6nW
         s9r/Kdxn+W3duzJSnLqT6mms0pMxWbPyb9J5PE/+xHeDFNue/N6iytnrt2H2i8YVYAgE
         jJNwjxyNGuuHOAdUBGpSzkuBXL43x0AKQwDbCRknVa7RHv7LUpufQd2ko1+G7DQ8Tf6X
         OziYiGOIr8vBsn9sMLNOb5kBOU61doag1QOTfLxkVY0Ibfz4vkkczME1+AeeduyzAnBN
         zV+w==
X-Forwarded-Encrypted: i=1; AJvYcCVuwDJPfa1IbfMCsxOu5HkDBAblGUk2lJewqHrgC1ZUEA3rv29h5tsx2UlQPDVSVL2V3NjRCg74Ur6Wvt4o4A/B5vXkVi/Q56Q1Vw==
X-Gm-Message-State: AOJu0Yz8PgYgIG6JNYfHR899pL4I1o0956/p0gEhoh/TvenyB3xGdjRU
	W/ZJCzOGNE7c7FaxNi/dkA5+rC2tb5n5DVF4poNX0i1L/6xRsDTzh6j45n59HVEEinAwqNBOSY+
	v7dRBzanlDzZgY7YaASEelk8xf1J34IuxaKPi
X-Google-Smtp-Source: AGHT+IFvq0Bv6289NmhdlxMMHgyeloDU/i+PDnJAE9VTBvimqT3m377ERyyEEF5Bs5DKJqH2k1zgEUe+msRDZaq+LRM=
X-Received: by 2002:ac8:7c47:0:b0:42e:36fe:df90 with SMTP id
 o7-20020ac87c47000000b0042e36fedf90mr43088qtv.1.1708476002994; Tue, 20 Feb
 2024 16:40:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240205-fix-device-links-overlays-v2-0-5344f8c79d57@analog.com>
 <20240205-fix-device-links-overlays-v2-2-5344f8c79d57@analog.com>
 <aed988a09cb4347ec7ac1b682c4ee53b7d2a840b.camel@gmail.com>
 <20240213145131.GA1180152-robh@kernel.org> <48a86fa6908a2a7a38a45dc6dbb5574c4a9d7400.camel@gmail.com>
 <CAGETcx9xgLykm7Ti-A4+sYxQkn=KTUptW9fbFxgTcceihutwRQ@mail.gmail.com> <71fa22870246c4ed6ae9cbb2cb93db557dd855f7.camel@gmail.com>
In-Reply-To: <71fa22870246c4ed6ae9cbb2cb93db557dd855f7.camel@gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 20 Feb 2024 16:39:24 -0800
Message-ID: <CAGETcx_kjmZypvhjGED5V3C4E=NzffD2=8cn5Hh-tEHTMVKsiQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] of: dynamic: flush devlinks workqueue before
 destroying the changeset
To: =?UTF-8?B?TnVubyBTw6E=?= <noname.nuno@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Nuno Sa <nuno.sa@analog.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Len Brown <lenb@kernel.org>, 
	linux-acpi@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Android Kernel Team <kernel-team@android.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 4:48=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail.com=
> wrote:
>
> On Tue, 2024-02-13 at 19:44 -0800, Saravana Kannan wrote:
> > On Tue, Feb 13, 2024 at 6:57=E2=80=AFAM Nuno S=C3=A1 <noname.nuno@gmail=
.com> wrote:
> > >
> > > On Tue, 2024-02-13 at 08:51 -0600, Rob Herring wrote:
> > > > On Mon, Feb 12, 2024 at 01:10:27PM +0100, Nuno S=C3=A1 wrote:
> > > > > On Mon, 2024-02-05 at 13:09 +0100, Nuno Sa wrote:
> > > > > > Device links will drop their supplier + consumer refcounts
> > > > > > asynchronously. That means that the refcount of the of_node att=
ached
> > > > > > to
> > > > > > these devices will also be dropped asynchronously and so we can=
not
> > > > > > guarantee the DT overlay assumption that the of_node refcount m=
ust be
> > > > > > 1 in
> > > > > > __of_changeset_entry_destroy().
> > > > > >
> > > > > > Given the above, call the new fwnode_links_flush_queue() helper=
 to
> > > > > > flush
> > > > > > the devlink workqueue so we can be sure that all links are drop=
ped
> > > > > > before
> > > > > > doing the proper checks.
> > > > > >
> > > > > > Signed-off-by: Nuno Sa <nuno.sa@analog.com>
> > > > > > ---
> > > > > >  drivers/of/dynamic.c | 8 ++++++++
> > > > > >  1 file changed, 8 insertions(+)
> > > > > >
> > > > > > diff --git a/drivers/of/dynamic.c b/drivers/of/dynamic.c
> > > > > > index 3bf27052832f..b7153c72c9c9 100644
> > > > > > --- a/drivers/of/dynamic.c
> > > > > > +++ b/drivers/of/dynamic.c
> > > > > > @@ -14,6 +14,7 @@
> > > > > >  #include <linux/slab.h>
> > > > > >  #include <linux/string.h>
> > > > > >  #include <linux/proc_fs.h>
> > > > > > +#include <linux/fwnode.h>
> > > > > >
> > > > > >  #include "of_private.h"
> > > > > >
> > > > > > @@ -518,6 +519,13 @@ EXPORT_SYMBOL(of_changeset_create_node);
> > > > > >
> > > > > >  static void __of_changeset_entry_destroy(struct of_changeset_e=
ntry
> > > > > > *ce)
> > > > > >  {
> > > > > > + /*
> > > > > > +  * device links drop their device references (and hence their
> > > > > > of_node
> > > > > > +  * references) asynchronously on a dedicated workqueue. Hence=
 we
> > > > > > need
> > > > > > +  * to flush it to make sure everything is done before doing t=
he
> > > > > > below
> > > > > > +  * checks.
> > > > > > +  */
> > > > > > + fwnode_links_flush_queue();
> > > > > >   if (ce->action =3D=3D OF_RECONFIG_ATTACH_NODE &&
> > > > > >       of_node_check_flag(ce->np, OF_OVERLAY)) {
> > > > > >           if (kref_read(&ce->np->kobj.kref) > 1) {
> > > > > >
> > > > >
> > > > > Hi Rob and Frank,
> > > > >
> > > > > Any way you could take a look at this and see if you're ok with t=
he
> > > > > change
> > > > > in the
> > > > > overlay code?
> > > > >
> > > > > On the devlink side , we already got the ok from Rafael.
> > > >
> > > > Didn't Saravana say he was going to look at this? As of yesterday, =
he's
> > > > also a DT maintainer so deferring to him.
> > > >
> > >
> > > Yeah, I did asked him but I guess he never had the time for it... Sar=
avana,
> > > could you please give some feedback on this? I think the most sensibl=
e part
> > > is
> > > on the devlink side but I assume this is not going to be merged witho=
ut an
> > > ack
> > > from a DT maintainer...
> >
> > Sorry for the delay Nuno. I'll get to this. I promise. This week is a b=
it
> > busy.
> >
>
> No worries. Just making sure it's not forgotten :)

Hi Nuno,

Thanks for nudging me about this issue.

I replied to a similar patch series that Herve sent out last year.
Chose to reply to that because it had fewer issues to fix and Herve
sent it out a while ago.
https://lore.kernel.org/all/20231130174126.688486-1-herve.codina@bootlin.co=
m/

Can you please chime in there?

Thanks,
Saravana

