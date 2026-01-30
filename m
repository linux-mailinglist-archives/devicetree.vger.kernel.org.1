Return-Path: <devicetree+bounces-261068-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IKUQL+oOfGlMKQIAu9opvQ
	(envelope-from <devicetree+bounces-261068-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 02:52:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 203C3B6478
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 02:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC905300F9D5
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 01:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F1EB2DF145;
	Fri, 30 Jan 2026 01:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="C1/bZmiu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95DD310620
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.216.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769737960; cv=pass; b=km7C7SJg0c2awI4/0fvOs/hjXExtBgOHIb/5E9w9Y/woFA3QNHzDA221fxI9e+PYm4DBvRsWnk4CAnuE6cdsxc58hzTM3qctFPmRTGe46jPt/ove6koGfEtS1oz3kGyUZx9fRuHkZ2Z3UQiDA97WhFr0Yj6oNeGKJgn9rUluz9s=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769737960; c=relaxed/simple;
	bh=fMWES3pEV3esIMGppPpcAB+xXRHTjsaan83wbju+n2U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IMddp4OTa2sy4mhP1va+RcC0H5VOlJqCqglnteqlm0tXjuysCNd75BtqqXH17VN+0/PCENytJ1IQc0Eqtj4U55uwHe5VftPx4z1/0NEJLaKEfLpLYHvgSq+4w4olMb1U7lbaLNQ/I5fp5PrErCANc77F1F40SliUI/bhCo4FxdM=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=C1/bZmiu; arc=pass smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-3541fd9dacdso739127a91.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 17:52:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769737958; cv=none;
        d=google.com; s=arc-20240605;
        b=JSWetViTVk/TLYo/xQngy360N9f0Vtaa5lbbunlEk9mU2s+3Zznjzy/QibfK1QLZSi
         XG5Hz+KxjHzQ7+PoardjHbgxmRoqKw4sbXwGLEGfh+SV/PgIyCiTMBxRbmt5LP8x96/t
         YRot2uNzpRl02okO4XivsCvxZcLQ53YN39IQ6tZ9dZLgWaj0DiF4thbvjeBsK+OgFH8t
         917ihhmlInocLDSX1Yw0DMcZKG1Dn4GY0rcJd+LXnGz5loO6B9czGbd8m3YLXjAvrWe1
         Y7nhWRaSgfAdhxyMt/3uAxzeTXp4GoPCeokPTUWhS8PQTdfWrdYJGlpFiHcs47+9ygR/
         i6Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=AYrclzb/DI20ULzMRT5C3zx7BcemIpx5wfq90vBWrJQ=;
        fh=xMaDWMY1nVtLrvsQJdVckbBlZFZgaEBznqCNCdEjHUk=;
        b=U4cT8Pg8DdbEN5+i6HgnCS6L15zHZSy7VTelHlYanYG8OohE4OiT9pc01JpggI1Aio
         ZDICrR2XfRBHm13r+EfDbw9bfStseSRh9m24ypZXJfOZPGdamc8WkSsWOumBvnaTpqyY
         MljFPd8xSfAXQSMwhaf0pH43xQPES00DssjpaAPl6zZ0G2nhylIzmP755MQW1IBsbNm8
         8fevmK+tDMjta5oXeAc8gVx+c3vFmSMK21B8xEuk8u30hL9L4QmltvjPacI1HVqIuRQk
         K9BPlUvv1BdVdRdjQRYPAYnBCA7Rv9W5L1CC4rKpU/+S9GJfrzpGhbTB1IT0izPtUn7I
         eFZw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769737958; x=1770342758; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AYrclzb/DI20ULzMRT5C3zx7BcemIpx5wfq90vBWrJQ=;
        b=C1/bZmiuEzUWb4LYvk54v/XL7RR3JHo7/gC+oAygchAbTXUBbjsKX3e6nAMRGEj33J
         5EiRjfwsfTEiERAiVKelxEp5fpjSpTD62r1mBmf9mubQvRkw93YDgxqY2fwEj1hxFgzG
         TPi3jwPi5qd1d2CyZ7McjEaAoSU1gJ5DJDj6DMLw+ZhB3cqZsk8ATWLim0Kc/tM1hmE0
         FofGpu3gSi7VzEL2Bs05bApzOwT02z9G4wwbM6lx4qd+bNGgUyV/+M8kPn6w2k4yUCRf
         amfnb9/shuXHoRXuts0rfTMHryY4FoQgLP7NQyYr1HuyiRBdb8yOWEDZhxe3oAaXu42/
         NlLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769737958; x=1770342758;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AYrclzb/DI20ULzMRT5C3zx7BcemIpx5wfq90vBWrJQ=;
        b=lRW9DDCT2puvNAE0yxxLClJmRuSOIkhXPSGToN2CJNL2doUjyIcOYKIMh4kTM2lsDa
         gYPx3DdfutqTwJU3tHzWSQ8fKp8FR5moQleTkmLhUoVrW+3wYjVj5sSHGZK99pRSMpde
         RxYWuOSONi352ay7OSr7Ps4PtvJfrrs7HdeAjeVIc1JyTckKqwzGLJNfoJV6eRADnLJL
         jEJraAX1tlNR0axUbErgBOjf+PUP8b/JLqPhFCHBoVQ5wI9YyonNDywgwsqETZanIleJ
         4ICarpDSQhBsO/mWec/DyTmXm95LF47CBNcLS3wHSIX5ZURm4vjdYeAPZx1b16F67Iuv
         u30Q==
X-Forwarded-Encrypted: i=1; AJvYcCXrVeAa5KzSZfctYyxEKTnroudYoeCtJRszUj5MS0ByLqb2T2xsLV44ORyKDvh9SVYhY0MMzQEsFyu+@vger.kernel.org
X-Gm-Message-State: AOJu0YwQ7UD+FGvz+vnb8ZP1NG+BzaFLFw/fs0ZHGTH34Hsmf1drBKwB
	ULCo0bWKJAfqrerUI6cT2EVoCzXE0NnjN69ks0bcaYhQdnqXo52u4boRGOGZ4JPspq1jqkR/pyi
	j7dMuL/r9+DrLgkkzQ5kWjTNOYUOBz/Y=
X-Gm-Gg: AZuq6aLx3JpC8TpBLjVz3XJO/RVqCqVoqFkiuGe1g592cw5R0QpEXcR8lQU+FZiF54+
	0Owk8IYOIHLOYv87UMQ6JwvDbosSzmwI1VoNrVdLy1ogErl1GcApsaD1STBP/OzUfppCWrLXZj7
	wGzrpeuhtU0orzohODj0nPKD03i3Uofq34IHChP+Wjrwez8iecA8IGfmQFsq11x2lEBQZlQgo26
	iJ3OBXtrLEhm2MjBtCuzNTJweK6iOqzncrNs8c7YndvkFjZqye09y9ihU3VYWBSg60veW0=
X-Received: by 2002:a17:90b:1c0e:b0:340:8d99:49d4 with SMTP id
 98e67ed59e1d1-354299f24a8mr4236387a91.1.1769737957855; Thu, 29 Jan 2026
 17:52:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128071853.2602784-1-shengjiu.wang@nxp.com>
 <20260128071853.2602784-4-shengjiu.wang@nxp.com> <aXuUSnPSCa8YYfgd@lizhi-Precision-Tower-5810>
In-Reply-To: <aXuUSnPSCa8YYfgd@lizhi-Precision-Tower-5810>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Fri, 30 Jan 2026 09:52:26 +0800
X-Gm-Features: AZwV_QiF2cDrLfRKNnjCIo-qh5cZKFulc8s1nwm3YFRDiF2SntZx7QwlcKkdk5I
Message-ID: <CAA+D8AM2d8m2eZnenH7gqOEUO1dLifFSNgizRRXwOiLX2vVdTA@mail.gmail.com>
Subject: Re: [PATCH 3/3] ASoC: fsl_asrc_dma: allocate memory from dma device
To: Frank Li <Frank.li@nxp.com>
Cc: Shengjiu Wang <shengjiu.wang@nxp.com>, lgirdwood@gmail.com, broonie@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Xiubo.Lee@gmail.com, nicoleotsuka@gmail.com, perex@perex.cz, tiwai@suse.com, 
	linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261068-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[nxp.com,gmail.com,kernel.org,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org,perex.cz,suse.com,lists.ozlabs.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shengjiuwang@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 203C3B6478
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 1:09=E2=80=AFAM Frank Li <Frank.li@nxp.com> wrote:
>
> On Wed, Jan 28, 2026 at 03:18:53PM +0800, Shengjiu Wang wrote:
> > As the dma device may support dma-coherent property on the i.MX952,
> > allocate memory from dma device to make asrc driver to be compatible wi=
th
> > such a case.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  sound/soc/fsl/fsl_asrc_dma.c | 48 ++++++++++++++++++++++++++++++------
> >  1 file changed, 41 insertions(+), 7 deletions(-)
> >
> > diff --git a/sound/soc/fsl/fsl_asrc_dma.c b/sound/soc/fsl/fsl_asrc_dma.=
c
> > index 7dacc06b2f02..b8fe242d53db 100644
> > --- a/sound/soc/fsl/fsl_asrc_dma.c
> > +++ b/sound/soc/fsl/fsl_asrc_dma.c
> > @@ -449,18 +449,52 @@ fsl_asrc_dma_pcm_pointer(struct snd_soc_component=
 *component,
> >  static int fsl_asrc_dma_pcm_new(struct snd_soc_component *component,
> >                               struct snd_soc_pcm_runtime *rtd)
> >  {
> > -     struct snd_card *card =3D rtd->card->snd_card;
> > +     struct device *dev =3D component->dev;
> > +     struct fsl_asrc *asrc =3D dev_get_drvdata(dev);
> > +     struct fsl_asrc_pair *pair;
> >       struct snd_pcm *pcm =3D rtd->pcm;
> > +     struct dma_chan *chan;
> >       int ret;
> >
> > -     ret =3D dma_coerce_mask_and_coherent(card->dev, DMA_BIT_MASK(32))=
;
> > -     if (ret) {
> > -             dev_err(card->dev, "failed to set DMA mask\n");
> > -             return ret;
> > +     pair =3D kzalloc(sizeof(*pair) + asrc->pair_priv_size, GFP_KERNEL=
);
>
> prefer use size_add(sizeof(*pair), asrc->pair_priv_size), which did
> overflow check.

Ok, will update it.

>
> > +     if (!pair)
> > +             return -ENOMEM;
> > +
> > +     pair->asrc =3D asrc;
> > +     pair->private =3D (void *)pair + sizeof(struct fsl_asrc_pair);
> > +
> > +     /* Request a dummy pair, which will be released later.
> > +      * Request pair function needs channel num as input, for this
> > +      * dummy pair, we just request "1" channel temporarily.
> > +      */
> > +     ret =3D asrc->request_pair(1, pair);
> > +     if (ret < 0) {
> > +             dev_err(dev, "failed to request asrc pair\n");
> > +             goto req_pair_err;
> >       }
> >
> > -     return snd_pcm_set_fixed_buffer_all(pcm, SNDRV_DMA_TYPE_DEV,
> > -                                         card->dev, FSL_ASRC_DMABUF_SI=
ZE);
> > +     /* Request a dummy dma channel, which will be released later. */
> > +     chan =3D asrc->get_dma_channel(pair, IN);
>
> Is it possible get real dma chan from fsl_asrc?

This is real dma chan, may be I should remove "dummy".

>
> > +     if (!chan) {
> > +             dev_err(dev, "failed to get dma channel\n");
> > +             ret =3D -EINVAL;
> > +             goto dma_chan_err;
> > +     }
> > +
> > +     ret =3D snd_pcm_set_fixed_buffer_all(pcm,
> > +                                        SNDRV_DMA_TYPE_DEV,
> > +                                        chan->device->dev,
> > +                                        FSL_ASRC_DMABUF_SIZE);
>
> Here you assume chan->device->dev never change when it did DMA transfer.

Yes, this refers to the generic code in ALSA.

best regards
Shengjiu Wang

>
> Frank
> > +
> > +     dma_release_channel(chan);
> > +
> > +dma_chan_err:
> > +     asrc->release_pair(pair);
> > +
> > +req_pair_err:
> > +     kfree(pair);
> > +
> > +     return ret;
> >  }
> >
> >  struct snd_soc_component_driver fsl_asrc_component =3D {
> > --
> > 2.34.1
> >

