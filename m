Return-Path: <devicetree+bounces-137813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFBEA0AB14
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 18:02:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A67ED3A6441
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 17:02:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2792F1BFE00;
	Sun, 12 Jan 2025 17:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iZUVpy2U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5FE1BEF93;
	Sun, 12 Jan 2025 17:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736701364; cv=none; b=hmQjpaYLGVzpf+V8TiZ0jbfnCbLi4NyvFTKCudIm2mHXc83nXicpjxP+s4/9Kd+itsGSQCFou8xInqhqIgHVKJzqm5qf2JotR2nsAwf7R+K471brGjrM361vTrHvGTjMTr40mPKPvfF/hj5nJW20CNdo9bnaexxRC1Wdhe4hXWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736701364; c=relaxed/simple;
	bh=uXUV6QB4mU/J21HH05qS9tWV1iNFTromic7goEe6nVU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EvlqTGSO4QLbWPoeW0EeR5lhEUCJP/CLzQOO1FX+vuMIBUA51fnroWgU+YqfCDN0mYFDzrVKPEJjEQnQuqU3DSstOugwqmzePBnF/jwgsFt8p8X4T4fY2s5k6fL8ZT3owiAbh3Gja32OBzFRpvRmvbA9pbCAlXpkl+bVsS0Zcxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iZUVpy2U; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2a3c075ddb6so1809303fac.2;
        Sun, 12 Jan 2025 09:02:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736701361; x=1737306161; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mLHGH+epv3M5YYT+PPWV3TJBLGXoTr8WFrivrQEhYaU=;
        b=iZUVpy2U+wgq9YXAvYnvLEtPSYITd9oaz8dtJkB+YwlbIkiiW7P5+CBwkOi9vpoRxg
         Yu+yeTma0fHICd2nqUF0y01wnbLGMHE4uxfam04nIKDrFPr0TajW7xXtT3UjZ4YWg1Q2
         BLg5Gcayt8FIEqx3WVN8qEajTr/so8TeF9dgK8PibozWkMTLvNiZdY0nw9Hsx61k8dQN
         wJv+Qjmx7pT6H90EkWhDuwOLaSuaAEVDXZU6Kdmjovx0Z6WbpyCQQMQot9Amzx5m0Rnm
         zqOQelt7uAnk2uAUG+BEDb7kZO+r2S0ChYVHvy+877Xj6fDRzwmL8NYUd9y+pl+ccQaD
         ZhzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736701361; x=1737306161;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLHGH+epv3M5YYT+PPWV3TJBLGXoTr8WFrivrQEhYaU=;
        b=YFrWkcf7tba91sNE1wGEkfnQmvzJEjYnXTbfwjW4scbC4OyAO8mcEA6jk7v9ESLGur
         fH/mRJTb6lGLFMONFqMm+dcdM9BKhYmPTtToy2CdgsbzytgCxWEf55ICJXD+DRez+VYd
         miqNzj37YS5dKKM8AyYbPuxq1zjct7Y1YjeeHLeD/RK0U48sR+brDiPOZzlsXADLFexB
         nvd9IFlD/gt+W4igHAF0sPHeZSAkumWQZL7KYK2rxsXy8rXXy/n9BqQJy184TnBnsR4e
         mkpq0fz5pYPC0li2cmWkJe/EF3jJpS32xsLRkLTIA2trOXMNXWcPqJdywa4LV2cMe34I
         AazA==
X-Forwarded-Encrypted: i=1; AJvYcCUTFhhynhZh0iqQMIm0rhAKzdFZpeu7Sod/GBPn/hJlsKN8qI65JurdmzlnabJjbsIXH7qMJXKkXu+q@vger.kernel.org, AJvYcCWOP5YU9D5LwplnSD/HGHMs/hVNJD6y6GuCGckBufmlNzG/IEb0/frPEB9wzd8+ev7pFGnf0kUE3g9lYuld@vger.kernel.org
X-Gm-Message-State: AOJu0YzjwZCJAZGqAjpY+2S3w9RH7OSjkbpx2jtwPeOZ4He9IsmjChfu
	dbOpUfg+tUW2UbPkgNo26WbbK+hNFqCS/oAL/NQdYKXs0j6VzYwF+L61fn20pYH0hW+TQ5DkK+y
	4ks6l8gTJjMpB5xyWcwwv9HWaB74=
X-Gm-Gg: ASbGncukdsmHHY36WRMlP+bDag7E3j87FBolxCsHeeGyvj1duHnnQfjT0dXXr3llosE
	Fs1u1D2Nn6PYNiLIL3vcfLCNtPW386ZMkwrKSTzU=
X-Google-Smtp-Source: AGHT+IE+nbx6AlzWrejQjGji+VB54fgrOIOIydNSnwo6l8H/PczwvJZYdI9qfx3ZuLqSObfZhkV7LJ2bPXcsbulebYg=
X-Received: by 2002:a05:6871:a403:b0:29e:6ae2:442 with SMTP id
 586e51a60fabf-2aa068d6800mr9772628fac.32.1736701361506; Sun, 12 Jan 2025
 09:02:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241230034446.1195728-1-karl.li@mediatek.com>
 <20241230034446.1195728-4-karl.li@mediatek.com> <CABb+yY2G1C7rvsha9qm7mRSk1e_xBahshzHCs39=DzTCUGrsuQ@mail.gmail.com>
 <CAGXv+5E98VZnf_PL2kEF=VxytNVyCEV4iY=aEnEoZz0Z7AJiTg@mail.gmail.com>
In-Reply-To: <CAGXv+5E98VZnf_PL2kEF=VxytNVyCEV4iY=aEnEoZz0Z7AJiTg@mail.gmail.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 12 Jan 2025 11:02:30 -0600
X-Gm-Features: AbW1kvawhR9q_j_zMWhY9OH_vnifw3V8ugjcAxvz2Ds9ffqbhNNV3c1iJIS2tYA
Message-ID: <CABb+yY0FHBxvc2Lwg9O1G9O+rxoXk-tS1QFwi63=_zsV0SyYuw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] mailbox: mediatek: Add mtk-apu-mailbox driver
To: Chen-Yu Tsai <wenst@chromium.org>
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

On Thu, Jan 2, 2025 at 10:56=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Fri, Jan 3, 2025 at 12:30=E2=80=AFPM Jassi Brar <jassisinghbrar@gmail.=
com> wrote:
> >
> > On Sun, Dec 29, 2024 at 9:46=E2=80=AFPM Karl.Li <karl.li@mediatek.com> =
wrote:
> > ....
> > > +
> > > +static irqreturn_t mtk_apu_mailbox_irq(int irq, void *data)
> > > +{
> > > +       struct mbox_chan *chan =3D data;
> > > +       struct mtk_apu_mailbox *apu_mbox =3D get_mtk_apu_mailbox(chan=
->mbox);
> > > +       struct mbox_chan *link =3D &apu_mbox->mbox.chans[0];
> > > +       u8 data_cnt =3D fls(readl(apu_mbox->regs + MTK_APU_MBOX_OUTBO=
X_IRQ));
> > > +
> > > +       memcpy_fromio(apu_mbox->msgs.data, apu_mbox->regs + MTK_APU_M=
BOX_OUTBOX,
> > > +                     sizeof(*apu_mbox->msgs.data) * data_cnt);
> > > +
> > > +       mbox_chan_received_data(link, apu_mbox->msgs.data);
> > > +
> > > +       return IRQ_WAKE_THREAD;
> > > +}
> > > +
> > You don't seem to do anything that 'ack' the irq line. So if you merge
> > this into mtk_apu_mailbox_irq_thread() and do
> >  devm_request_threaded_irq(dev, irq,   NULL,
> > mtk_apu_mailbox_irq_thread,  IRQF_ONESHOT,  ...);
> > you can avoid adding a new api and keep your client code simple.
> > mbox_chan_received_data() is strictly between the client and
> > controller driver. If it is not called from an atomic context, feel
> > free to do memcpy() from it.
>
> That sounds great. Could we perhaps update the API documentation and
> drop the "atomic" requirement, or update it to something you describe
> here as "between the client and controller driver".
>
Not drop, but simply add a line that the client needs to respect the
context in which the controller does the callback.

thanks

