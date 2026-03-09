Return-Path: <devicetree+bounces-272748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMAeH4aArmlfFQIAu9opvQ
	(envelope-from <devicetree+bounces-272748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:10:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA07F235595
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 09:10:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0014130333BB
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 08:05:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9D0364024;
	Mon,  9 Mar 2026 08:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MAx4Hi9R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8367B35CBC4
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 08:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.53
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773043519; cv=pass; b=W32UcQp8MSVWewO4E97XsIfr0tVH7sJnZiwTNSSFlB5e7nFYtTa9JvkVSvSuPFDZb8cOy9OwSYeODoFOLL1gqSY0wK/iy4YBUWvYjuaFXGIoFtvKUsMOLJJnoItigycjPlGU9f7tndQaA2+i+1uq8czsuTgCLdwuG+GCWdX76Bc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773043519; c=relaxed/simple;
	bh=9rRUzy7I4Yn9TKSxdiDUjmYRtwSYsMyZ7fp/5IbO/q4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=tZQ8u9LlRKPPFag74YhNuc9xojMegcFwzqWosYctCMBt9n/v7gEpiBFgQJd20R6NVNRqnDBu23zsPpQpqlyPv0dvrjQJcARCaisZAaA/OemP0uhpvUnaYmE/1UM42ETG0QWHUJNXewcp/xPc/ieLar2aLWMuzyi7XJKXTxorai0=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MAx4Hi9R; arc=pass smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b8f97c626aaso1922310066b.2
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 01:05:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773043516; cv=none;
        d=google.com; s=arc-20240605;
        b=XtCYfaDFqPPU4++3v+xETO25J3MB1mejJL0zwp4kNkWMiu8BIiCpIgfSkpMhZ4M/d5
         0GlpOPtP67+KeMZhvFeAO4FRGlmKZ7wig3eAuxFSEZ/jXT/3+vg1W8HQgcg0berQMVVJ
         NmLSFLzV0gDA8750bGAcUMa/Qlo/8DBwUbiG8rVjLwqsyF1zbpFbxsauJlNVxgnUAlPV
         9g+ADr7CLTceDyg4bUT6zDtl4B5P8pOvx22XMeakhLbqaGV5DxmRh1NX1xTrYdqVTm7O
         pL7qmTm5Vx87RHkQvo28BksF3NKdoMJ65avgFXAJhHdBchZYI+suucUETBD7CjZMVMO2
         pZpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fRzvHdv5ruH/JD72yB5V1Ivp7J4AaqZR7aIdb2pmk7E=;
        fh=nnXr42BS6KN4OCIjfZdcryk5VMWunrI3TpbB0fkqnIA=;
        b=I7HLtjwcDg9eYo8x1GuZ8xK6m2cUvLv3rPwGOKoU2XoVMRwooWkyIGMngGRo8R85D2
         LukCJ/X2Y3nJ69vbopL8EI5zr07exkc9Wh+a0XMsI1en++OEkklAF5+xEGbMLWNxXIsl
         du3A6pQYbqQP4MlzYCpdQTMMfcNy/N9jVyf4UmKvrECOVxM/ocpJpCenTuJUeqlA3/Am
         Bot6Uw/y4o1PTuQ4X+blRWmu6BEaEqAoPO9DwAj6bMkzhqEX51et3bfVPxdZ1GJcoNZZ
         zLCqWbDdUFNyO98o9STl9mr9zPVy79wC0mYw5gGMAJtVDKTGU+L2k2Nb7rngycjLpvIy
         IshA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773043516; x=1773648316; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fRzvHdv5ruH/JD72yB5V1Ivp7J4AaqZR7aIdb2pmk7E=;
        b=MAx4Hi9RxMreRTgf25Ojtq5AG7m7gIV/tqxFeHXNpVdUzSLUev3oGKpJm8MkCdeBWd
         V6WraHNYY9IpCCte7d0KmJk4Rw6ZHPuTvXIrwpaF80CXe0kRICihs95nddO+blWdaKho
         FLshdXU6RJwto4UOW43mY0o0KYdk7qaO9Yb+DVuEleX8WrSn9UnAkXN6WYsQFsBZ+VSS
         eHEprYT9E33a89JZKF6F00lq1j63VN2AOIMTYBWdkrOcybsGFKIh6Bc3fUOUcHdeX0h0
         HTLkRf3/EMN/3s9Ybb/zlhf3yoY1Qng4nhdzun0q7XJvAhhlvGwE9ZCHO6KOQ1LM0WOz
         4kGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773043516; x=1773648316;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fRzvHdv5ruH/JD72yB5V1Ivp7J4AaqZR7aIdb2pmk7E=;
        b=bmNLdKJGCciUbQO5+B0erk3Ss47QwJvEZUw6P+6GxsZ1n4OR520q+DNXx7zD3iWhaE
         +IITvlZwbW95oDM0dzkxccVsAjMCzZ3wozOO6eBqs/cfwb7rBnw3luV1HzNkuZj06zeH
         LrWmRJTZphLPRSQ/U2F490+1+e3tAVhvbb9rFM/HRCYJW97rQaZmGnCUP/CbgJxwIy1O
         MeJLDtxjT4SC6/43ABBSIDCL1Skx3PaaYP5teSK5hSeUTJvcyx5VDhJj1mkoAvpn3/ab
         z5wvYcYPXzkLpQXp8du1IRsaD2KWSeUldouD+Cxe44UshHX0SrOwnpmIMxwMZG+p01za
         vcNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfRvNNQrJ4cvOIXLdKPsSlFcN98kM+TRwR9puEfmW/ytFw2pW9+D0DqDPRlmsfQEsB3GTmLx2XyHw4@vger.kernel.org
X-Gm-Message-State: AOJu0YynL6ERPiR8NK1sUppS54uclnIHvcjThDLQcdBA/OJdFP7XldPw
	SjCwGb9PV19/71zz98CzN1qFSwmHupUK+yEyCpS49WxkwCaILj/4LTtVEqWLN+wQZVFW6DOetWb
	2ppPevxQLt+rCR55s4mt7dO1xrbDPoic=
X-Gm-Gg: ATEYQzwcL8Epf4tpjnZPVWFAC+a4debx3X1mBJfI1yJ0nvNn7kuVyf7s4fRJwfpkiSw
	AendLzA2MpCQgrwBzyUWhJKTEY57xXCFtmOl6ajohR2w0e8it8DPGZAhbbHpiO2pWMNoeDTvaYk
	WDK8GAAp5cdgfsfpAWtZ+DpQ4Bueg0fUszoLAJvHtJzuDwazHUyE2279oYa0I9u/+cquVSRNWmE
	mfqvAGNTfDk3PlL/Y6lZnhdqYIi0oGvSImh74Ov3z8wA4aSA0CEV1b7yPIMrkZXfcLww+xQ3bCX
	CIzoISw=
X-Received: by 2002:a17:906:c14c:b0:b88:dc6:3967 with SMTP id
 a640c23a62f3a-b942e026133mr560704766b.40.1773043515456; Mon, 09 Mar 2026
 01:05:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1771989595.git.zhoubinbin@loongson.cn> <408551399f089d10e2ebc2c0add5ba58d659a1b9.1771989596.git.zhoubinbin@loongson.cn>
 <CAAhV-H6G6Zb7P8OpoM78FkfSW2HeLt+9xfbJyU21tdbUa8A=Ww@mail.gmail.com> <aa5yZ6xSW8yxm9gI@vaman>
In-Reply-To: <aa5yZ6xSW8yxm9gI@vaman>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Mon, 9 Mar 2026 16:05:03 +0800
X-Gm-Features: AaiRm5294yKy8lbGyQ7Hmx4k6HbI1oWu6Wm6ACsqemZt6_dIw21pirDFEH1wTc4
Message-ID: <CAMpQs4JX0jZuLk84QnW79cVrjA-Fs6oDx8Uq_cyTVLTaE3F8vg@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] dmaengine: loongson: New driver for the Loongson
 Multi-Channel DMA controller
To: Vinod Koul <vkoul@kernel.org>
Cc: Huacai Chen <chenhuacai@kernel.org>, Binbin Zhou <zhoubinbin@loongson.cn>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@kernel.org>, 
	dmaengine@vger.kernel.org, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, Keguang Zhang <keguang.zhang@gmail.com>, 
	linux-mips@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: EA07F235595
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272748-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[kernel.org,loongson.cn,vger.kernel.org,xen0n.name,lists.linux.dev,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.982];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zhoubbaaron@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[loongson.cn:email,mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Mon, Mar 9, 2026 at 3:10=E2=80=AFPM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 26-02-26, 16:18, Huacai Chen wrote:
> > Hi, Binbin,
> >
> > On Wed, Feb 25, 2026 at 3:41=E2=80=AFPM Binbin Zhou <zhoubinbin@loongso=
n.cn> wrote:
> > >
> > > This DMA controller appears in Loongson-2K0300 and Loongson-2K3000.
> > >
> > > It is a chain multi-channel controller that enables data transfers fr=
om
> > > memory to memory, device to memory, and memory to device, as well as
> > > channel prioritization configurable through the channel configuration
> > > registers.
> > >
> > > In addition, there are slight differences between Loongson-2K0300 and
> > > Loongson-2K3000, such as channel register offsets and the number of
> > > channels.
> > >
> > > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > > ---
> > >  MAINTAINERS                                  |   1 +
> > >  drivers/dma/loongson/Kconfig                 |  10 +
> > >  drivers/dma/loongson/Makefile                |   1 +
> > >  drivers/dma/loongson/loongson2-apb-cmc-dma.c | 729 +++++++++++++++++=
++
> > >  4 files changed, 741 insertions(+)
> > >  create mode 100644 drivers/dma/loongson/loongson2-apb-cmc-dma.c
> > >
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index aea29c28d865..af9fbb3b43e2 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -14954,6 +14954,7 @@ L:      dmaengine@vger.kernel.org
> > >  S:     Maintained
> > >  F:     Documentation/devicetree/bindings/dma/loongson,ls2k0300-dma.y=
aml
> > >  F:     Documentation/devicetree/bindings/dma/loongson,ls2x-apbdma.ya=
ml
> > > +F:     drivers/dma/loongson/loongson2-apb-cmc-dma.c
> > >  F:     drivers/dma/loongson/loongson2-apb-dma.c
> > >
> > >  LOONGSON LS2X I2C DRIVER
> > > diff --git a/drivers/dma/loongson/Kconfig b/drivers/dma/loongson/Kcon=
fig
> > > index 9dbdaef5a59f..4278fbbe8096 100644
> > > --- a/drivers/dma/loongson/Kconfig
> > > +++ b/drivers/dma/loongson/Kconfig
> > > @@ -12,6 +12,16 @@ config LOONGSON1_APB_DMA
> > >           This selects support for the APB DMA controller in Loongson=
1 SoCs,
> > >           which is required by Loongson1 NAND and audio support.
> > >
> > > +config LOONGSON2_APB_CMC_DMA
> > > +       tristate "Loongson2 Chain Multi-Channel DMA support"
> > > +       select DMA_ENGINE
> > > +       select DMA_VIRTUAL_CHANNELS
> > > +       help
> > > +         Support for the Loongson Chain Multi-Channel DMA controller=
 driver.
> > > +         It is discovered on the Loongson-2K chip (Loongson-2K0300/L=
oongson-2K3000),
> > > +         which has 4/8 channels internally, enabling bidirectional d=
ata transfer
> > > +         between devices and memory.
> > Moving this to after LOONGSON2_APB_DMA is a little better.
>
> Yes and we expect these files to be sorted, so this needs to be done

This is reorder on the latest patchset:

https://lore.kernel.org/all/cover.1772853681.git.zhoubinbin@loongson.cn/
>
> --
> ~Vinod

--=20
Thanks.
Binbin

