Return-Path: <devicetree+bounces-271912-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2L8oNUaWqmkkUAEAu9opvQ
	(envelope-from <devicetree+bounces-271912-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:54:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DCB721D7BA
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:54:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D737630C7D1F
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:51:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB364330659;
	Fri,  6 Mar 2026 08:51:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECBA3264D5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 08:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772787065; cv=none; b=G+NeCaB028NiV8nkDZn4eEwPU6TZuqONdJaeCr0gwvZiOI8KjLXy3JzTkxPhDAMgTRdtofPFE4k6MNvs5y7otkVNjx/oHYH4OGci82foAzjiChmMtBOgObvNzpUWij3wu1aU96ucIR7DxqzIXsfq+UxWwJIX1JreDH8wOJoe29Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772787065; c=relaxed/simple;
	bh=6/mMZ+MgPEeLwb1d3/FQsDG0e2BICfOtY4c5Gb44pYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aJEnrJKGBEEmCV8RcrwpeorO3uuwKwuPJcQmVW35yxTP1n6T6mL7IFponAFVkKGSQO4PrOgwXF7sykzMx8O/yL2MRyPbDGxvE3j6P7gbCrqA7W8sTsGCmNMRH0REmPrYiCCcNTv6ZuD/h1vxv6AQGbTANQmtRqGzgQAJObO/JK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-56af4aad3e5so645747e0c.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 00:51:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772787063; x=1773391863;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ePV9psSdR4DIeo2PZEv+MlIoxsc+MKL5m0kUhXFRmHs=;
        b=rxaufliizsAbZ00CIC2cnUsXuwl3IIcw1JuNFlIXTaWKQdc/aWERbCDlRmq2DVNq4f
         ygx2tw6w9rzyBesAdjLVzpsTNk5o/QCWJjucYnBAoi3opKVs+jWbShyZQd9h4KhlIguY
         NtEGam8Xyp3Y4pbJQDnbiEH4TkYrDqng3TubthPTVr67X6FMNmUgsqbrTfYnvg07+Jg0
         xoeKzHDxC+RUUT0kOZBLA1AgRc1i6a2rDQzLMH3kf6hZ8u39Yzd4Sxt7Q6joWIcUcHX/
         e5t1n22RfOTx+DO+w7l/Je1Ew+/ZzVkq5DPzp3m8CG495TwfH/pZIMQQg1M/ru5Rf/KG
         +X1g==
X-Forwarded-Encrypted: i=1; AJvYcCUpZFKejY+LO0zDhAzzLBaCp8OIvHrll4YwYvCfunxL41n9rnNrirJ0B49wT4zpdsyufRIm7kcGEZ41@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd4X+46X9cn2v7SpknA2r9SrQPYi8OJ0wHdew//ubAM3W2WoNo
	oSwSJKoTwFs3NsbmBrEr+agTTMGrAPEBcMfvmjl/kRlp0E6bC7GOfqyBU/7P1saJYgg=
X-Gm-Gg: ATEYQzzLJ662oDxQvggu4yvFivgWEfpq9Qw0etPBiMThoEFdM+vM1VZQP+hlRcljX9q
	FRONgZENNPlRsKK+lpwPPSG81sL7MIhos46nT3WeD8u0f8PI95r9R6hkx81HZsR273OssWsFsIH
	lxOeGPJ1x/u17u9H6u4AKFKmhaNilIdYakK7VrNXNvgBXf360HOUgSTCFYsxH4Ewxx3XmMDAmX/
	agfzZLKuJ0sNmCojxD2sxua8+KrxBGCkBDdzGBL0y3je1fqbpslQuGecZmFs3PaNEYHfmSG2YHN
	QqKrciTAH0ZAc/XptCEaIeiMskwP+AKW979cDooEUrG/ZfOv2J4k4zmHNWkcLBgCxWvGwzaB3wS
	+B7pm516CI0lsj9Gbi4Ax0P1C2/evuU472oXYvCP+PguqgYx7Xt03exkIBN6VxlNw08kQGvZ7ki
	63fT1Hf267b2Sj9y84wGYhaLoXxtbfmGbIuAf98KLUZWcrtAuU8icYEsXza56xIA8N
X-Received: by 2002:a05:6122:4f87:b0:56a:eb30:4e77 with SMTP id 71dfb90a1353d-56b07f721c3mr422489e0c.19.1772787063154;
        Fri, 06 Mar 2026 00:51:03 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b09a260e5sm771998e0c.5.2026.03.06.00.51.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 00:51:02 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5673804da95so3705632e0c.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 00:51:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWU4danC7227xISqX19FV1bV97et+cC3TeeXH0b/XnM5j9V7zHBdPb6q0txFnbeU4LqgxmPkFp3eaJj@vger.kernel.org
X-Received: by 2002:a05:6122:4d05:b0:56a:feae:fc2c with SMTP id
 71dfb90a1353d-56b07f210d7mr358876e0c.14.1772787062507; Fri, 06 Mar 2026
 00:51:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com>
 <20260203103031.247435-8-biju.das.jz@bp.renesas.com> <CAMuHMdW20h=D9Tk5T=6rxNanEiON1ZL35CJ6cqzrX12UeDcdPg@mail.gmail.com>
 <TY3PR01MB11346EEC0D9D7391EEE7ED27C867DA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
In-Reply-To: <TY3PR01MB11346EEC0D9D7391EEE7ED27C867DA@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 6 Mar 2026 09:50:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV_WiB8graMNeJRVbNZczDetd+fA_4yxt5MV-h7Htzoeg@mail.gmail.com>
X-Gm-Features: AaiRm51qt1E27KD9Lsk97oOtY587H6FKJzOmGVnYf1lOMFnKJRu2iLrNOBXxz1M
Message-ID: <CAMuHMdV_WiB8graMNeJRVbNZczDetd+fA_4yxt5MV-h7Htzoeg@mail.gmail.com>
Subject: Re: [PATCH v3 07/10] arm64: dts: renesas: Add initial DTSI for RZ/G3L SoC
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: "biju.das.au" <biju.das.au@gmail.com>, "magnus.damm" <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 3DCB721D7BA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com];
	TAGGED_FROM(0.00)[bounces-271912-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.983];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,mail.gmail.com:mid,0.180.91.224:email]
X-Rspamd-Action: no action

Hi Biju,

On Thu, 5 Mar 2026 at 17:58, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> > From: Geert Uytterhoeven <geert@linux-m68k.org>
> > On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:
> > > Add the initial DTSI for the RZ/G3L SoC.
> > > The files in this commit have the following meaning:
> > >   - r9a08g046.dtsi:    RZ/G3L family SoC common parts
> > >   - r9a08g046l48.dtsi: RZ/G3L R0A08G046L{46,48} SoC specific parts
> > >
> > > Added place holders to reuse the code for Renesas SMARC II carrier
> > > board.
> > >
> > > Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/renesas/r9a08g046.dtsi
=
> > > +               dmac: dma-controller@11820000 {
> >
> > Unused. Surely you can wire up scif0?
>
> Yes, but I don't get login prompt, as SCIF0 interrupts have dependency on
> DMA reset/clocks to route the interrupts to CPU.

Aha ;-)

So you need to enable the DMA clock and deassert the DMA reset in the
clock/reset driver, and mark them critical.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

