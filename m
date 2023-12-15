Return-Path: <devicetree+bounces-25898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A85815009
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 20:13:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4222A28903E
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 19:13:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CD7B3F8FE;
	Fri, 15 Dec 2023 19:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="IOv0G1P9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 953BA4184B
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 19:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id D65383F29E
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 19:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1702667588;
	bh=A1KQCHoagGRE/Fri7ZMPinskZZrpSG0JKrmQZH3FV6g=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=IOv0G1P9PEzbf4te/6MLjtI3UgxU3vysXOnk4piBBtI35gUUKNziHyGTInYKqqTMw
	 1ZAzueeoOK4oaoFEcTYWTKvOhD9ilNSfVxKluINoohrxzjBIp+PI22viJcIAjXVZVU
	 gdoIF3LYy4iVP7+I1A3ZOgW3q7dKjEA3pimTgDgHzIYn1ZKunPF+idDvnP91KuZ+8d
	 hHxobp+7/aM6l9alCkLyXv/+lJM38WE6ybHW9BllungiVr+3YpAcNkU/OXoRDysmRP
	 +p8mRHDwpv6xzSU4fXWuV+Pwwb70Rx+r7OzIqLKzGmTQeoWpYqL34twMBdpRl5XQr1
	 lPN4GyHryywpA==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-425c3f06bd9so15478241cf.2
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 11:13:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702667588; x=1703272388;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A1KQCHoagGRE/Fri7ZMPinskZZrpSG0JKrmQZH3FV6g=;
        b=uIpIZTZdZn67+ti8da2l44wyWdtViafUMf3Hd6aKTmW8ywQVTpFh5OP8bH5XqLJMIe
         RzXTXPxaTA+gaLW/RnnOfUvf32DesFhYIR/Ecz+kt5HK5mq1ipQgUiQoGW/EZV6RkQl8
         MI0NyjplUnHj4w/tZLzhWFDPv2lms+qTg3aWyFJoptuYIQlx4Yn+7JS9dPRsgT5LAkr5
         L520m2q8pxa/F11l9kFIZvBF/hTm2Q3j8b3vM9OZkCzGL46cFuog5lh7dfKFN21fLSs2
         NF2D4HSOYXc2P1uE1nUe/T094YFXqVHCpa84ueWiH4r6CzV3KNB6UqcqpH1ztARFPP6l
         +meQ==
X-Gm-Message-State: AOJu0Ywm5pXj9LX2IzfU4b7P8CmGFynf8kgRsHDqhrJpeosV6b9ooZ1+
	Moq8xcDhtce6OdxV+XRrX8XilQVyq3Mg25Igmb3C5QyAjFOTOAiZAtgZWRgr9/MHK8m5oZIx+ov
	dkKgYiWkeKakg3WBVHQuA+K32z0mFFK88xNqsfX0hIjx3/T0BDh4bwy8=
X-Received: by 2002:ac8:5909:0:b0:425:78fc:446d with SMTP id 9-20020ac85909000000b0042578fc446dmr16222545qty.29.1702667588055;
        Fri, 15 Dec 2023 11:13:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQ33pMMGoaNI9twd5osVzgTSarT/cVWUeo35du2j8Q7yxXEdTqukpbqrobo5IDN+bItJEQlbp48Xge01CaYl4=
X-Received: by 2002:ac8:5909:0:b0:425:78fc:446d with SMTP id
 9-20020ac85909000000b0042578fc446dmr16222525qty.29.1702667587843; Fri, 15 Dec
 2023 11:13:07 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 15 Dec 2023 11:13:07 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <CAMuHMdXwRZRvLPh3JBShQy4hRHq=2fQJmcYjTyQhKZmtBPaOuw@mail.gmail.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
 <20231213-jester-rendering-dd876ef8e8ac@spud> <CAMuHMdXwRZRvLPh3JBShQy4hRHq=2fQJmcYjTyQhKZmtBPaOuw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 15 Dec 2023 11:13:07 -0800
Message-ID: <CAJM55Z85_qR8bpZwjEgz-fmC=WCZEJYHk5d=1bGfDE+oVMN7Fw@mail.gmail.com>
Subject: Re: (subset) [PATCH v2 0/8] Add JH7100 errata and update device tree
To: Geert Uytterhoeven <geert@linux-m68k.org>, Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Conor Dooley <conor.dooley@microchip.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Geert Uytterhoeven wrote:
> Hi Conor,
>
> On Wed, Dec 13, 2023 at 4:43=E2=80=AFPM Conor Dooley <conor@kernel.org> w=
rote:
> > From: Conor Dooley <conor.dooley@microchip.com>
> >
> > On Thu, 30 Nov 2023 16:19:24 +0100, Emil Renner Berthing wrote:
> > > Now that the driver for the SiFive cache controller supports manual
> > > flushing as non-standard cache operations[1] we can add an errata opt=
ion
> > > for the StarFive JH7100 SoC and update the device tree with the cache
> > > controller, dedicated DMA pool and add MMC nodes for the SD-card and
> > > wifi.
> > >
> > > This series needs the following commit in [1] to work properly:
> > >
> > > [...]
> >
> > Applied to riscv-cache-for-next, thanks!
> >
> > [1/8] riscv: errata: Add StarFive JH7100 errata
> >       https://git.kernel.org/conor/c/64fc984a8a54
>
> That's the one which also needs depends on !DMA_DIRECT_REMAP?

Yes, thanks. I sent a fix now:
https://lore.kernel.org/linux-riscv/20231215190909.3722757-1-emil.renner.be=
rthing@canonical.com/

/Emil

