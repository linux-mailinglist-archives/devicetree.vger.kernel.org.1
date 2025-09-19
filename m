Return-Path: <devicetree+bounces-219390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9066B8A962
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:33:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BD1481CC32EA
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:33:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C8E8273803;
	Fri, 19 Sep 2025 16:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z9HJq6pE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C3723815B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758299545; cv=none; b=JNX+OoFOK4c9aVfoVVXmdjNsCkEQQXi4SKnTvaM2G2BTdixKKg/ekjbZlTci1gzYREAV/kNDmJ54cs3n++NFWeHgPwiGfvlWgf/A+M4FfAvfTE5MqwcxsVSHRyqmX3tr6ByDqPmXGxAbCAkZk8gWH7JIQ4Kr9yXMhLG1BjIRZJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758299545; c=relaxed/simple;
	bh=q0U4ilsfjuKLN+gy98piS8oaNup5AI/CSR60fz5lJic=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fvMiBNjuCSwxx6mGmK3IS2iQRUUQoaTgSzeRUTqf+oQ4KmuwWCmnT+4hqlOa50dDgy2V30CgWy2V2/RnOpspkF4s5WVu+jGCKsHzaIG2hJQwnma5F0kZq12wTk5c20ei/kr+qQ+4yvOPlLlE24Tu0NbI1S5uDYXA74mSuECpOPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z9HJq6pE; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-30ccec59b4bso1666336fac.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758299543; x=1758904343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5T/xS++I1bJomI4Kci5V1It9kyGfSsYpAletpMKbjaU=;
        b=Z9HJq6pEQgKTIZST8qJ2DoRy67+UsdNOPUX3lH92AHXqrjzG0fVNPvhVHEZbk+6uxt
         A9kfiQKVUGNHvNu2Ab+PIfeSdyQJhrFzmG08ILazJCwYNBW3pxSeDsMcP3zf46RPeU08
         l09FRC5Q7u5AY002/cuvXGsn/dMcaJXpH4ZrCiyV2RHVj2Xyri2m6jhvF1ae4vqkIoz6
         Fp4gpCnuSPK/Fc1EvvvTnMlYX4FtWqe/T576u0cete5EV4gscFTmFHJ3SZlpYdFjUqK2
         j9CLC0xC4xmsdMA2PmZLeJad8IQ6oDwy43CLS0R+iyjq6RV3j8XfhpjCYQ9h5AwdOcYr
         ptrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758299543; x=1758904343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5T/xS++I1bJomI4Kci5V1It9kyGfSsYpAletpMKbjaU=;
        b=r4Z2b7JwXGgyvsaSyJ01quJ3z4hyKpBW37QdpP+DYRCLFfjnLKkQHafxhFcZNG8qgs
         lC/0Pw9HbVxxq2WjXeyGAieG8gyVFm71tMB2Zc7yT3iYC+lbo6500CwXM+bObuPSbGbH
         +Pnox08TV8aBcWpoLEEgwhidqidIrlGIRb/YVdTdYugnJ2m9XVQ//70JBfuecad7mXaS
         m73LXq2vNnHzlFt5qbp4nm27dnfuq9AIjlO6CQiik5HLyl+/pL7GdDlLIiAW6IcxEWns
         SYDnADFhWmBLbS4G43YoKRMKwLKkMvjD8mOzTk4NwnR+W/rV8D8p14iJ6+thN2XcW4v0
         2e3w==
X-Forwarded-Encrypted: i=1; AJvYcCXn8CK6P8HjMS4xZD5WL5x9nFezcJ2zbgBMDwiFKwIv1ucQVouJkHdcFM0TjfIwjl+Pf1BPM80dRI7K@vger.kernel.org
X-Gm-Message-State: AOJu0YzRPU36DevAxUBYFmVnCZfgyrcb5W/miOgN0Lkpzezt7uYcnbvC
	l94HE95yhn5IUPvQG7Sdo9Z1RKEa55C5FiDGvLsrt7DYiHVucGscs7Uk2ikhO/XO8ZQM4fdeOLX
	OTdoxziJxd1ppzdx6Iy+Mr6t4TjEmEL4=
X-Gm-Gg: ASbGncuGgpVpvpmKGNPaLCCpmPWfp/9L5Kvzt5/oxG9qRm3UQAPPgXKkqUW35P9rBKH
	D/Y7vblXqI89X+nr6oyR98qaqTMk116Zmk5mALrEebfI39jgykKlTu3E2pBD2Xc+9A659seiSQH
	1m3y4s3JE/3vhwBRiucKZCtxBUOppGDeNpFFJI32IDp/O6P+7pniLJwXCzKJx7dlSz8cwo/bTMY
	K2NYLw6
X-Google-Smtp-Source: AGHT+IFHybkxatf8JRVHGLWr4iZSJNFbs5kTvlDX9vCOD89cpbWHtSqK9/IcGzh8ZYPusuoWrz8jW9C/VxhnLM40hC8=
X-Received: by 2002:a05:6870:d60f:b0:31d:63f9:b247 with SMTP id
 586e51a60fabf-33bb5c70d83mr2082379fac.25.1758299543310; Fri, 19 Sep 2025
 09:32:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822021217.1598-1-jjian.zhou@mediatek.com>
 <20250822021217.1598-3-jjian.zhou@mediatek.com> <CABb+yY16DPJwVTHap4F6n5YJoOJzQLtqKiCQ-2MUm67pzF8uXg@mail.gmail.com>
 <CAGXv+5F-L2+4PGixx7OG2+vp2yXc_2885yMzqWtkQDwhxVAPxw@mail.gmail.com>
In-Reply-To: <CAGXv+5F-L2+4PGixx7OG2+vp2yXc_2885yMzqWtkQDwhxVAPxw@mail.gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Fri, 19 Sep 2025 11:32:12 -0500
X-Gm-Features: AS18NWAefeyCXylp5yJszotuZguszwXnzyqYVpM1xMwzFsIBtdJ2c5oL63b9Kvw
Message-ID: <CABb+yY3N2=01yKJon25_6_vmihj09H=T9pLwzdGPrqY5h=hRFQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mailbox: mediatek: Add mtk-vcp-mailbox driver
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Jjian Zhou <jjian.zhou@mediatek.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 3:31=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Fri, Sep 19, 2025 at 7:50=E2=80=AFAM Jassi Brar <jassisinghbrar@gmail.=
com> wrote:
> >
> > On Thu, Aug 21, 2025 at 9:12=E2=80=AFPM Jjian Zhou <jjian.zhou@mediatek=
.com> wrote:
> >
> > .....
> >
> > > +#include <linux/module.h>
> > > +#include <linux/of.h>
> > > +#include <linux/platform_device.h>
> > > +#include <linux/slab.h>
> > > +
> > > +struct mtk_vcp_mbox_priv {
> > Maybe 'mtk_vcp_mbox' is a more appropriate name ?
> >
> > > +       void __iomem *base;
> > > +       struct device *dev;
> > > +       struct mbox_controller mbox;
> > > +       const struct mtk_vcp_mbox_cfg *cfg;
> > > +       struct mtk_ipi_info ipi_recv;
> >
> > Maybe also have "struct mbox_chan chan[1]; " so that you don't have to
> > allocate one during the probe.
>
> > Also if you have  "struct mbox_controller mbox;" as the first member,
> > you could simply typecast that to get this structure.
> > Something like "struct mpfs_mbox" in mailbox-mpfs.c
>
> I read somewhere that this way of subclassing is not recommended.
> Instead the base class should explicitly not be the first member.
> And then container_of() should be used.
>
> I don't remember where I read this though. But I think the explicit
> container_of() is easier for understanding the intent.
>
And how does container_of() work ? :)
typcasting the first member to its parent is the simplest form of container=
_of.

-j

