Return-Path: <devicetree+bounces-135226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A00E9A0037B
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 05:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D2EE163047
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 04:56:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6FA618FC8F;
	Fri,  3 Jan 2025 04:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BEJCnvJH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0646513BAE3
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 04:56:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735880204; cv=none; b=lbnDX8NR+qnjdK5+ezo79hflq88sEs5Y7vrDvS3I17qWf2hOlqmzVeAzdjJybhUKTgv8cHtCloh5kK8VAztJWi4n6eDjhrBSbk1+xLIzkwPIEY/X5x34GuXViHAcXF5RHh9yqQZEjezAfuKByXQl9xZbys3jy/mCVuMnBIKspDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735880204; c=relaxed/simple;
	bh=GJhD3WvjYh8DEngk3n+hH9DGL6LAEjh0zr0Kpn5fpFk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bUlmPBJ+xxx0j5/V6g3e5yWNiDGNtr+ojD74tIyhm/AVyM1faC/SbgGiDhB0dsDMVoo3ek0tq7WQZaB7fgTLZXIfzquNE5CKDjrhVfYmZY5O1/H05LcmQKVLoxrKHM55wXnAPAZur+mFKQxii9YKn6rKTkJUkA90kKrIintk80A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BEJCnvJH; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3003943288bso138895981fa.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 20:56:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1735880201; x=1736485001; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/C0NE5QsoPl4wMHhm6FeWjhno0bwtzvAYZhAKmD1RqI=;
        b=BEJCnvJHeiMXdL6YMqztIIyDNbwYwU4wFCpFVUj8/9BdNpEmB1J2Geoxguzh2TSDVv
         EZk41jIkwMTLEOx0R+2zDhQcgeojRqia/p3tin6s0ANu03GgKIXk1Jj8d3lvLjvTh1UQ
         yhU4jjkHm12ti2YhYVyG5xmzNUz2A1ZXIOTgQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735880201; x=1736485001;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/C0NE5QsoPl4wMHhm6FeWjhno0bwtzvAYZhAKmD1RqI=;
        b=Zky4/QH53lFEKd+j2WjR8D4ceD+kAu7Lcue3+S4s40R/UqumCEH2+I9/NGc0tBXDFo
         ZwlgTlWcRk9wK+V+cgN1qo1p5CimGVgd8dcJsXYCYzSt/sufUNohVluY2wITRFe6GW9s
         Nu4z5h2OmNclq4LgIbsOoWk8nwSWW0SoQW2GABscPdBsp+VNfwuZ7ou3HMGbDmyawmmb
         oc9GxjfC9JdDRI/Q8VqVXiQrrSGLJSFsXz4xVi4JRd+bMltwHBBRvLajia8eZ8hkYJgo
         hwTccrTxuy6dGnJMZOmG2m/S1nSjVhF4hcH4SYaxQCKULM40wby6gtJl+G6rpsddJENZ
         SvaA==
X-Forwarded-Encrypted: i=1; AJvYcCVh1PVnDfVC8VyrDC5abgNrVyyW+53RtPrHOxcJfomSaAIcUU+pTaYZU16EZnl2zlqrA9f7S8dBI5DG@vger.kernel.org
X-Gm-Message-State: AOJu0YwDN4F38AKJE6Hb99Eluf+8EEOp1y+LG7kv60hhTrOU92YDDXkg
	SLXliHMPs0NO5wl/rFE3YBz7fkj1ozqjJamkVE0puOBeGTwU6pX3f3DV0rEjQ0I19Xv1db7aWHP
	wFdb1129VyYK7OPdYvtkDJd08/ALemKKMt6t+
X-Gm-Gg: ASbGncuuJBzWBEtxYQZqFUwZWux/nQo+ix0fNswrUcDd3fxRQ3rvawe2vzyrtx9QP5r
	P4p0+gSdjkeDTXdRhdb52E+n1cVVOM7hhlPElyHYEeVvv4bnVqp+ndKUxEyxlBcqz0g==
X-Google-Smtp-Source: AGHT+IG5qAx2wt0vhBqXuZQ2uHIfKlGflvae0gQ77Tji4talijR6ODtyYgPyvjYwkuu7r90mxhNO+Dr4/OqGE/novxo=
X-Received: by 2002:a05:6512:438a:b0:542:2999:2f19 with SMTP id
 2adb3069b0e04-54229992f3cmr17139357e87.38.1735880201172; Thu, 02 Jan 2025
 20:56:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241230034446.1195728-1-karl.li@mediatek.com>
 <20241230034446.1195728-4-karl.li@mediatek.com> <CABb+yY2G1C7rvsha9qm7mRSk1e_xBahshzHCs39=DzTCUGrsuQ@mail.gmail.com>
In-Reply-To: <CABb+yY2G1C7rvsha9qm7mRSk1e_xBahshzHCs39=DzTCUGrsuQ@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Fri, 3 Jan 2025 12:56:30 +0800
Message-ID: <CAGXv+5E98VZnf_PL2kEF=VxytNVyCEV4iY=aEnEoZz0Z7AJiTg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mailbox: mediatek: Add mtk-apu-mailbox driver
To: Jassi Brar <jassisinghbrar@gmail.com>
Cc: "Karl.Li" <karl.li@mediatek.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Chungying Lu <chungying.lu@mediatek.com>, 
	Chien-Chih Tseng <Chien-Chih.Tseng@mediatek.com>, Andy Teng <Andy.Teng@mediatek.com>, 
	Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 3, 2025 at 12:30=E2=80=AFPM Jassi Brar <jassisinghbrar@gmail.co=
m> wrote:
>
> On Sun, Dec 29, 2024 at 9:46=E2=80=AFPM Karl.Li <karl.li@mediatek.com> wr=
ote:
> ....
> > +
> > +static irqreturn_t mtk_apu_mailbox_irq(int irq, void *data)
> > +{
> > +       struct mbox_chan *chan =3D data;
> > +       struct mtk_apu_mailbox *apu_mbox =3D get_mtk_apu_mailbox(chan->=
mbox);
> > +       struct mbox_chan *link =3D &apu_mbox->mbox.chans[0];
> > +       u8 data_cnt =3D fls(readl(apu_mbox->regs + MTK_APU_MBOX_OUTBOX_=
IRQ));
> > +
> > +       memcpy_fromio(apu_mbox->msgs.data, apu_mbox->regs + MTK_APU_MBO=
X_OUTBOX,
> > +                     sizeof(*apu_mbox->msgs.data) * data_cnt);
> > +
> > +       mbox_chan_received_data(link, apu_mbox->msgs.data);
> > +
> > +       return IRQ_WAKE_THREAD;
> > +}
> > +
> You don't seem to do anything that 'ack' the irq line. So if you merge
> this into mtk_apu_mailbox_irq_thread() and do
>  devm_request_threaded_irq(dev, irq,   NULL,
> mtk_apu_mailbox_irq_thread,  IRQF_ONESHOT,  ...);
> you can avoid adding a new api and keep your client code simple.
> mbox_chan_received_data() is strictly between the client and
> controller driver. If it is not called from an atomic context, feel
> free to do memcpy() from it.

That sounds great. Could we perhaps update the API documentation and
drop the "atomic" requirement, or update it to something you describe
here as "between the client and controller driver".

Disclosure: I've been doing pre-reviews for this series and we were
operating under the assumption that mbox_chan_received_data() and
its callbacks must work under atomic contexts.


Thanks
ChenYu

