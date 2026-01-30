Return-Path: <devicetree+bounces-261067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wNCyLzcNfGkEKQIAu9opvQ
	(envelope-from <devicetree+bounces-261067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 02:45:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1810CB63D8
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 02:45:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EB65301052A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 01:45:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BC413328F3;
	Fri, 30 Jan 2026 01:45:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ihifhpGv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA79331A5F
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.210.179
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769737499; cv=pass; b=e9VeB+saTW3burGDcfRkUIhILOCdlXRZ+gNNvB0ug589F5DSyUcgVMF0xzs01azVhtxJ/HYj24MmwTcUfPMJTluRw0hSEh5cS7LIhufhFFAQTnp2VbRrGwZM+hK1V3MOtSni0i8/oVHwLXZ0KCcj9+iJVWJnSbjQIu8wh+ohkEo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769737499; c=relaxed/simple;
	bh=6hJecC+jJ0J+VKAtd6bMBI8k9pmiUZLLcZyL9RL5cVw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=if+jFaJT5Yn/jm9a5oGf5MlALhJemdsS12W02kP07ZRmoesKsAqnRMciU2xIY0k6TzSmXXYZgzHWS/NRt+XJ6VOn/pSYrv0AklX7bo3afijuQxv8o1fov7pH8TsPBra+CB4w0qu3Occ5XbKoUEmPILkXeWxh/aKGefjvRpDRoN0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ihifhpGv; arc=pass smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-81f4dfa82edso899482b3a.0
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 17:44:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769737498; cv=none;
        d=google.com; s=arc-20240605;
        b=ckYU/dQK4tmtyHSflG/VZKPNC7KW3TDlD6UKXjSrgCWYky4Mm5cdud1CCsZIcn/xzG
         f4QujoNZBd7xJBiYVwL2YK3OFLV0JTypU8Zdyy/ZK2tCUI410WO6FXnVp3EQ666JMdEM
         FVpGajKtvKXVwDp9fOq+MkRUFlL4hYU2IH8Zk3Bc3shcjCWX9zRogXUCKlhBBe3MzzzU
         Xd2MUqLIgbUItEKikVSCnJ0GxQpFs6SK+74Ru3u8IvTSd5jT2n6Ryf2rZs1v5Y3wMcE8
         f/TLcJPOmY9b2f9wrTLLLqbffCYQnJcTrrt0CyCKNaimqnInJBHFFaDPqcXBlP0HJZMm
         x3JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=jNEnnUWc0ljhEZKMEfW+sE66aVZ/mqoNGO+gH29mfjQ=;
        fh=aMBw2Llwnzx1io3+iFUBKsJJCe++oQvLE/8vRp6Sxz0=;
        b=etPtj/ZQ7Orz+CPJx70y3xa/WMGLPuv6wNrbYD8k5iQEC1RYnBUHDFqxLZKmNYtKlD
         Vi5NZd8ejCQlrbr763ZEPgcYtx1Z7W5dx2zBRL2YbYejpLEAiAivDtqYJJxg1CbUeNWp
         e1RmaxMd5zmxhWT+XkeztjVe7gfA40wE5EABXKN0ckDaLufwZYCOx7qEV8RigkRiWkzG
         kp+O+nSdZNWKaym57cYL4bo1cinapc5gjvghuQjtMZ99rUMExnmqrSIlUXvGsNZxYAKj
         YGaOFZBfkwsw/YsiYfeL6n/eQ5YUvplsX79Fe92ykBrCuK/SBjAvcYH7lWVYGedUvQtS
         skeQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769737498; x=1770342298; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jNEnnUWc0ljhEZKMEfW+sE66aVZ/mqoNGO+gH29mfjQ=;
        b=ihifhpGvf3Cr/iXOKBs6+yt/8GKjPnGz5zNAThyhC2SyRZMF2oA0oNudqUOPyXhiG5
         XiMw7q2AkTHU85M5PWrT35ymLGYLsQfuILMqvyPdGIJrTJI7AA7A2wL56ZdaKcPAqTON
         TWTHENWJpL/5IZsgxZqi70KoNtq6MvJSbMxoJhDBUODrc6krZ94ULk5wj70jGS52jOZ8
         o2mwQYe5Uq3J57n7+leOk9VuCCaG62oYUzeSHyLQg8o2RBuXDo0XPUhaORbOcEb4LkSp
         aac0JYx+2hmAB2UsnRstq/BRuitKyjSWcoBjZmEEvE77T7HlNuWQXywH2sjFJJWdZqfC
         vi3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769737498; x=1770342298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jNEnnUWc0ljhEZKMEfW+sE66aVZ/mqoNGO+gH29mfjQ=;
        b=gLGhmR73ocyTTvS5pLd/EonqFGK9ILnYWfC2W2nJY3S3JVZ15L/MKm/VCHnECN6N5c
         CbsBJEpf0vnnuFHgxiJ0kprpIAMnDEwwt4RckCozbJCxoB9S114k+CNL4macQaCbEM2y
         2WghhQZsokFhzyAogcHU/VpLcJcR2FsA6LAxlEVsq3o99dsU28+MHRTHNu27WYg+jn4M
         g8CbK7l+UAHiYacM1lpKiT+r+66I9DBrOtKTDtOZSIY+umgVUCpGpHJ0EQZhZGSgHPVF
         rDD9gd0+qvpUuYHq/WknVMfXrzl3QAyB+/JzIC1sBbVDn8oqUkWl2UW5hQZHGf22X29V
         8siQ==
X-Forwarded-Encrypted: i=1; AJvYcCVq12c+29zB+Sd2UqwX8n9bi+4lZMfd4PM8IRrFa3ce8pP1HCXgdJvm+20U2/bDapk5begQNcpPGiYB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe9j6FEw/y0VZLvtvYPSH1Yf/1IVXU7x8HKrXxVrv+5yU67nKR
	OSLRp/Dxb8Hsdo5JXMSiuTt8IrK8IRA6HnS6lpppOZ2kllsDQuVHWiYe+mm4Hqr3+BqLn3+qoDa
	+H40UBYEcm8k+yzq1Z1WKww1lB7ClQfo=
X-Gm-Gg: AZuq6aJ/WUuCOxPLqcwAbHDS8jjrEWhx+vV/Ax31JZywdcCnXyIM2Z6wPLnPrWxhYZT
	sVnKW2amtlQVtxWJQYwnW5ReHejc7FbtBdNauHNpkTK9SzE294aB/hshx+bXJMY0krHmUGNgjFp
	InIQREg18yIyhYPigkDo21GKeyS+rwqPlF70Rjk3ZaNBC5gWzzKKgW4zgZdRDPAn5S5UYAFK8Og
	qoR11Wi/CzOhZeN7OAy5Y/zBTfd9YA206cLpSKYEvXTnEpM1jm6RJGK4bgV1gpDUgMyH0E=
X-Received: by 2002:a05:6a21:9214:b0:366:14ac:8c6f with SMTP id
 adf61e73a8af0-392e01842cemr1045926637.69.1769737497875; Thu, 29 Jan 2026
 17:44:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128071853.2602784-1-shengjiu.wang@nxp.com>
 <20260128071853.2602784-3-shengjiu.wang@nxp.com> <aXuVXruPir7hasdd@lizhi-Precision-Tower-5810>
In-Reply-To: <aXuVXruPir7hasdd@lizhi-Precision-Tower-5810>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Fri, 30 Jan 2026 09:44:45 +0800
X-Gm-Features: AZwV_QgRSYSkN9m3U3HWfvC48m_G_i-4n2rGz9NZqS3r9F4yXRNiuZDo3HAYyaM
Message-ID: <CAA+D8AMYEVbFTgTaVhTU_ZJ=eoyQAj4zygLsfuK+Yt+=8qQk1Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] ASoC: fsl_asrc: Add support for i.MX952 platform
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261067-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,nxp.com:email]
X-Rspamd-Queue-Id: 1810CB63D8
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 1:14=E2=80=AFAM Frank Li <Frank.li@nxp.com> wrote:
>
> On Wed, Jan 28, 2026 at 03:18:52PM +0800, Shengjiu Wang wrote:
> > Add a compatible string and clock mapping table to support ASRC on the
> > i.MX952 platform.
> >
> > There is a limitation on i.MX952 that dma request is not cleared at the
> > end of conversion with dma slave mode. Which causes sample is dropped
> > from the input fifo on the second time if dma is triggered before the
> > client device and EDMA may copy wrong data from output fifo as the outp=
ut
> > fifo is not ready in the beginning.
> >
> > So need to trigger asrc before dma on i.MX952, and add delay to wait
> > output data is generated then start the EDMA for output, otherwise the
> > m2m function has noise issues.
> >
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > ---
> >  sound/soc/fsl/fsl_asrc.c        | 39 +++++++++++++++++++++++++++++++++
> >  sound/soc/fsl/fsl_asrc.h        | 16 ++++++++++++++
> >  sound/soc/fsl/fsl_asrc_common.h |  3 +++
> >  sound/soc/fsl/fsl_asrc_m2m.c    | 29 +++++++++++++++++-------
> >  4 files changed, 79 insertions(+), 8 deletions(-)
> >
> ...
> > diff --git a/sound/soc/fsl/fsl_asrc_m2m.c b/sound/soc/fsl/fsl_asrc_m2m.=
c
> > index f46881f71e43..296e13a16490 100644
> > --- a/sound/soc/fsl/fsl_asrc_m2m.c
> > +++ b/sound/soc/fsl/fsl_asrc_m2m.c
> > @@ -253,15 +253,28 @@ static int asrc_m2m_device_run(struct fsl_asrc_pa=
ir *pair, struct snd_compr_task
> >       reinit_completion(&pair->complete[IN]);
> >       reinit_completion(&pair->complete[OUT]);
> >
> > -     /* Submit DMA request */
> > -     dmaengine_submit(pair->desc[IN]);
> > -     dma_async_issue_pending(pair->desc[IN]->chan);
> > -     if (out_dma_len > 0) {
> > -             dmaengine_submit(pair->desc[OUT]);
> > -             dma_async_issue_pending(pair->desc[OUT]->chan);
> > -     }
> > +     if (asrc->start_before_dma) {
> > +             asrc->m2m_start(pair);
>
> Does other Soc also work if ASRC start before DMA enable? Suppose most li=
ke
> work. Then needn't start_before_dma.

Yes, should work.  but I don't want to change the original behaviour
of other SoC.

Best regards
Shengjiu Wang
>
> Frank
>
> > +             /* Submit DMA request */
> > +             dmaengine_submit(pair->desc[IN]);
> > +             dma_async_issue_pending(pair->desc[IN]->chan);
> > +             if (out_dma_len > 0) {
> > +                     if (asrc->m2m_output_ready)
> > +                             asrc->m2m_output_ready(pair);
> > +                     dmaengine_submit(pair->desc[OUT]);
> > +                     dma_async_issue_pending(pair->desc[OUT]->chan);
> > +             }
> > +     } else {
> > +             /* Submit DMA request */
> > +             dmaengine_submit(pair->desc[IN]);
> > +             dma_async_issue_pending(pair->desc[IN]->chan);
> > +             if (out_dma_len > 0) {
> > +                     dmaengine_submit(pair->desc[OUT]);
> > +                     dma_async_issue_pending(pair->desc[OUT]->chan);
> > +             }
> >
> > -     asrc->m2m_start(pair);
> > +             asrc->m2m_start(pair);
> > +     }
> >
> >       if (!wait_for_completion_interruptible_timeout(&pair->complete[IN=
], 10 * HZ)) {
> >               dev_err(dev, "out DMA task timeout\n");
> > --
> > 2.34.1
> >

