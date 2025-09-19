Return-Path: <devicetree+bounces-219197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B22B886DA
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 10:32:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 100D33B81C4
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 08:32:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B5DA2E0937;
	Fri, 19 Sep 2025 08:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="kGmA7/ph"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84BDB1DF26B
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758270720; cv=none; b=rrf+UrkR4AA0rI1RsoO6pCxd9bEufuaPv2edZH3BORjWVxsbNenqyq6JlJlnmZCI8Y+Qm/AhWwyORwOzEk0PBOFAfADiUU/9T/YQvDLmjJuggSEsxsvCICGTQs1xSzY8BsQwtyaF0HZwQe5TcqusdE8jadNnPzg+nYjwEFnXu0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758270720; c=relaxed/simple;
	bh=s0STqFEhMnCX09Owud8Ryjp6X1y64rjHZvKfQlkmEbQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jxqXc+T2Jv5KikdJ0zKzralaxLwd9bhHRkLlnchPZEQvs0lM1UEFo9usk9Z3XfDYH6d1gmAome5VTddQgWzH/P2ndt6rlTuv5zA5cG7L4gqKfY4pceezy6n3kycCUCJSYxSHbFP/SxfMjFJtHzh1/uV2ircoy8HAWfK57quw3C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=kGmA7/ph; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-57933d3e498so1762463e87.3
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 01:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1758270717; x=1758875517; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1vCBrNiEKTyi9Q3k3Ml4hn7pfySJO9AiRtZz93HFOeM=;
        b=kGmA7/phuBDXznJkxPttNQDieRDrIeG5bwWuNzUGbguAmwOqpgND+qoa9psz7CqmDI
         pSl37boBvyo1F1TPdiOeQV2AcTES64ovuhNGxkrP3mJtS0F0l2MW2kve4DL8mXhzvXWo
         +Cxz4N9rFJrUJ7R0wGP/9gzAyeJ4uf62/fm0g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758270717; x=1758875517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1vCBrNiEKTyi9Q3k3Ml4hn7pfySJO9AiRtZz93HFOeM=;
        b=nl2f+XxS3UpV4a0fPmNbma+HRsce27aOgGkJ8oYV5GsNQGErz4MvrTWsEUVCYgKaGW
         JyZzMn3n9VsklAR/2Nu4irxf1DAjndqo3lGOXE6ABznIIOCcR1lg+HD/Adj2pXkiaksV
         laGnLUpkJdr12SG3lTIRL57/1TC876qQdZv0VGm2oI3Il9uuJe+RJE4zufoqHCz8HLvw
         QZA8b29Y/2mJZ73JQkNDF4GT2Xv0HhZPcKlzN/iJX0A0c+nUoZQ+/q0hRZ+fJ4ljYbFe
         Nd796bxd2KkYwIQzQGtr0Q8O5cDiRbSKj5qrkpYSZ8ChrG1Deld+5jKJxjBENhWhPdRC
         rIhA==
X-Forwarded-Encrypted: i=1; AJvYcCW9PfbC0K0+4v5WnrZiQl6TUOz0DcdyHAMBI7TJHv2yy88FVs4iL8SBactuM5bN3qWeJJPM6UmqD9eC@vger.kernel.org
X-Gm-Message-State: AOJu0YwY5c8Io83mQaUMY2wnV0goUWLpoWbor8g18Xjym+p+csYbW8w4
	x/tWAt+ZlZGT6HfScFQ3f17mc/rQTbJY0Zk/QufgdGA+aTo1PRce17Djcctb0oKoRg6f/AhNrqN
	8Gr3eicmX6a1Mm85TpSoZqtNQKgZRXF6763wx7kn8hyCKkQsBHD0=
X-Gm-Gg: ASbGncu1gLc0vUV++mdv7j03lNOS0oI2sSw+o5RrDTh34VZyXJEtz8vy/EoUPUs2jK5
	cOHJ/4NjB0jl5STHaje+gR7OrM9zfThrucKybp2cKymz/mRyDtRrlU5kjMvK4Q70qyl0ObmCmN8
	i1PdNKE/ZBQ76E+BYhGoTkFKpQOcmuk8779QJEfeaOnsYY4ZscWzgvdJJJrTYgHnD8QLGpiEbaR
	GFJ3TZTzd0hH4nw4cA0Id9NZdnH+SrJxGE=
X-Google-Smtp-Source: AGHT+IGJyLApucLYoiVvLVyhVW2X95UA+hKEnkJWRx68Jso5l2IUFZ6Lp0yp/otlrkifX0mDYXdbFrB33I4Cq4SdXuY=
X-Received: by 2002:a05:6512:308c:b0:55f:536f:e8a2 with SMTP id
 2adb3069b0e04-579e3d2d463mr792114e87.53.1758270716503; Fri, 19 Sep 2025
 01:31:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250822021217.1598-1-jjian.zhou@mediatek.com>
 <20250822021217.1598-3-jjian.zhou@mediatek.com> <CABb+yY16DPJwVTHap4F6n5YJoOJzQLtqKiCQ-2MUm67pzF8uXg@mail.gmail.com>
In-Reply-To: <CABb+yY16DPJwVTHap4F6n5YJoOJzQLtqKiCQ-2MUm67pzF8uXg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 19 Sep 2025 16:31:44 +0800
X-Gm-Features: AS18NWCHPPCOGpgOPgYhcar-Bfyg0XTAKO-xFCzjeyIm7xmJf4PNr7KosKW0NG8
Message-ID: <CAGXv+5F-L2+4PGixx7OG2+vp2yXc_2885yMzqWtkQDwhxVAPxw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mailbox: mediatek: Add mtk-vcp-mailbox driver
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Jjian Zhou <jjian.zhou@mediatek.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 19, 2025 at 7:50=E2=80=AFAM Jassi Brar <jassisinghbrar@gmail.co=
m> wrote:
>
> On Thu, Aug 21, 2025 at 9:12=E2=80=AFPM Jjian Zhou <jjian.zhou@mediatek.c=
om> wrote:
>
> .....
>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/slab.h>
> > +
> > +struct mtk_vcp_mbox_priv {
> Maybe 'mtk_vcp_mbox' is a more appropriate name ?
>
> > +       void __iomem *base;
> > +       struct device *dev;
> > +       struct mbox_controller mbox;
> > +       const struct mtk_vcp_mbox_cfg *cfg;
> > +       struct mtk_ipi_info ipi_recv;
>
> Maybe also have "struct mbox_chan chan[1]; " so that you don't have to
> allocate one during the probe.

> Also if you have  "struct mbox_controller mbox;" as the first member,
> you could simply typecast that to get this structure.
> Something like "struct mpfs_mbox" in mailbox-mpfs.c

I read somewhere that this way of subclassing is not recommended.
Instead the base class should explicitly not be the first member.
And then container_of() should be used.

I don't remember where I read this though. But I think the explicit
container_of() is easier for understanding the intent.

ChenYu

> ....
> > +
> > +static struct mbox_chan *mtk_vcp_mbox_xlate(struct mbox_controller *mb=
ox,
> > +                                           const struct of_phandle_arg=
s *sp)
> > +{
> > +       if (sp->args_count)
> > +               return NULL;
> > +
> > +       return mbox->chans;
>
> return &mbox->chans[0]   seems better.
>
> thnx

