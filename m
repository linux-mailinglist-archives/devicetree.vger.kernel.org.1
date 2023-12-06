Return-Path: <devicetree+bounces-22167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B5A806BB0
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:16:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10775281867
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 10:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E61232D047;
	Wed,  6 Dec 2023 10:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="CXw46s6k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 357B4AA
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 02:16:43 -0800 (PST)
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id AC1AC4063A
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 10:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701857799;
	bh=fPFWRVi4UC1wxgK1BZ+tE5lPscptXMAGgYLtmt3rvb8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=CXw46s6kC/Vqc9ajKch32nLtoUBGMCS6lEFuwe+IO6Esq7qv+U+sR8SAqcjTFbB7c
	 06nRSxIEFXERPUR80YxVmMgeibKcXtzJhJyo6uu0PTQOC2L6XO6/aLqLBETKMoicRy
	 4O0KuMi8NutcwfrphY2nRJ6chK7xWq9UJv/TPhamBtm5Su4i53B0m6TH0C0b4M5NId
	 f76xgMzyWCle2n28PMgJL2pjlof9GJ7Zg/xUs3IngiOUomfxUVn/OMKi/gt98lxAH2
	 xoEJ9Ho69Bptw6CwzROqqItp1hHXvR1X01RR5OaAa/LCoFJYN7f970/5rpeyMKQjLU
	 Vq5ITCyTxptlw==
Received: by mail-lj1-f198.google.com with SMTP id 38308e7fff4ca-2c9e510a1c4so41835181fa.3
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 02:16:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701857794; x=1702462594;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fPFWRVi4UC1wxgK1BZ+tE5lPscptXMAGgYLtmt3rvb8=;
        b=QdaIU9JLaeAMGBuIf5dmNZMYplabM3O245nVFeZ6mvVuE7BcLfqqaVb91DdB0mx7Pq
         i4IWTXj8j7Q6H09UMcER4j3f2rShP5WuQLdXFkeO5TLaYb8OveiP8jwDWIcO6PeVB80T
         hP3egyGNeYlTxg3ohEPAogIqMFFwfQp9EDbB1EwpZ9kkHCVA8HnxnRToZKe7DU/hiBxh
         OUrs6CXoM9F4KlTGv9Tkd4wZ8ndTE1k3IO9QcAdB/HNEngylQ86/Dz/HfCmO6c774uhQ
         u2qpZw7y8JnyUw8rsAlz5V1lxvX105y+Fzmf+RSomVEuGWarMwJcTSz5ajGJLFnxOe7B
         qp9g==
X-Gm-Message-State: AOJu0Ywwr5bYOgIrw2C00OQ2tZCTnTPM92OirL382XQxFUVR6eqIv3sn
	iNV2ROACvHAkwnCWfxL6K/j9UjJ84Tsec4TNjmLg+86YQqUd5GLWGJjd1b6SeJZwoA1XtmUQwsO
	qn0csRSv224ApT58yYvlfTggPO/rDQihYAPAOaiATy2MLp4MnSD0s0Ri/HrfUDOx1Nw==
X-Received: by 2002:a2e:740e:0:b0:2c9:f925:df0e with SMTP id p14-20020a2e740e000000b002c9f925df0emr211960ljc.34.1701857794554;
        Wed, 06 Dec 2023 02:16:34 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEq781bpnuacD5QiFiBCg1mUOnOOSBbtHNvzHUW70ZtF1hR2gyBittWXfHSvEnQsp0nEdWGwPsBBWgtAAGiL6c=
X-Received: by 2002:a2e:740e:0:b0:2c9:f925:df0e with SMTP id
 p14-20020a2e740e000000b002c9f925df0emr211946ljc.34.1701857794264; Wed, 06 Dec
 2023 02:16:34 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 6 Dec 2023 04:16:33 -0600
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <IA1PR20MB49531468A92E2A7670F1EE0BBB84A@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <CAJM55Z9WO+0Yb-at6CAR6=UP9j60iQz=s7MK-3qiT=w-8N6+Zw@mail.gmail.com>
 <IA1PR20MB49531468A92E2A7670F1EE0BBB84A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 6 Dec 2023 04:16:33 -0600
Message-ID: <CAJM55Z-hCzuw+eQ-ABXoBYX7oSScXTKHwUzEe_2k6eSyy5HqKQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] riscv: sophgo: add clock support for Sophgo CV1800 SoCs
To: Inochi Amaoto <inochiama@outlook.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chao Wei <chao.wei@sophgo.com>, Chen Wang <unicorn_wang@outlook.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Jisheng Zhang <jszhang@kernel.org>, qiujingbao.dlmu@gmail.com, dlan@gentoo.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Inochi Amaoto wrote:
> >Inochi Amaoto wrote:
> >> Add clock controller support for the Sophgo CV1800B and CV1812H.
> >>
> >> This patch follow this patch series:
> >> https://lore.kernel.org/all/IA1PR20MB495399CAF2EEECC206ADA7ABBBD5A@IA1PR20MB4953.namprd20.prod.outlook.com/
> >>
> >> Changed from v1:
> >> 1. fix license issues.
> >>
> >> Inochi Amaoto (4):
> >>   dt-bindings: clock: sophgo: Add clock controller of CV1800 series SoC
> >>   clk: sophgo: Add CV1800 series clock controller driver
> >>   riscv: dts: sophgo: add clock generator for Sophgo CV1800 series SoC
> >>   riscv: dts: sophgo: add uart clock for Sophgo CV1800 series SoC
> >
> >Hi Inochi,
> >
> >This series seems to be missing patch 1 and 2. If you did send them, but just
> >omitted linux-riscv from those patches, please don't do that. Having the whole
> >series makes it a lot easier to review without having to hunt down all the
> >missing parts on lore.kernel.org.
> >
> >scripts/get_maintainer.pl does support muliple patches as input
> >
> >/Emil
> >
>
> Hi Emil,
>
> The get_maintainer.pl does not give me linux-riscv mail list for the first
> and second patch. I have added this to the second one, but the patch is
> held by the mail list since is too big. Anyway, I will add this mail list
> manually if you need. Sorry for this inconvenience.

No worries. Yeah, that's what I meant by get_maintainer.pl supporting multiple
patches.  You can do something like

  git format-patch <starting point>..
  ./scripts/get_maintainer.pl *.patch

..to get a list of recipients for the whole series.

/Emil

