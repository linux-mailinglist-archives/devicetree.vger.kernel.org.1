Return-Path: <devicetree+bounces-21840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4912D805579
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 14:08:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EBCD62815A4
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 13:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8337A5C8E5;
	Tue,  5 Dec 2023 13:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="j41Z+6Ms"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 403F418B
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 05:08:07 -0800 (PST)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id ECFAD40636
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 13:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701781685;
	bh=ipAJlSSYX/mAZm4xcMYzeaea4jWciG9PaIDcpgo9ae8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=j41Z+6MsayA4SuWADLsm6SDFjxagvqVWmPvXhzwpd+Cx58ZFb/JFEInbWsna5OOF8
	 mI/0NiYoCI0W5yAKdwLvDYJ0Ron/euvmdWnUzUdfaR4G8xtFq6/jE/l38nPjhckaZO
	 hawZoRp/kMRZb0h73YJtWSFOozpTZ/KkvAKr8sNkL5rTcRvEBppqBkLOgmkermXDdH
	 6PnuB1UZXV+YoBS1m8nCOmQu+MH81ni5b4VFE3I02ILtWbnuxLwP/QJdrkfoXygeic
	 zZJg2cTAmyucgsxfM3NIBD1e86PaastxxJWC5ZJi70zP+EQwpUj5vcCORtZt4NP7eJ
	 CgAOMpYGRoAFg==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423d293392bso75853111cf.2
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 05:08:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701781684; x=1702386484;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ipAJlSSYX/mAZm4xcMYzeaea4jWciG9PaIDcpgo9ae8=;
        b=a0txpW+ZGDpgUWmWszntfHbOLVBwrcSdvGzRQN+0my9SISzIVJ74DJiL9tpvuJYOOa
         BBX3gcymO4SjpRvdlWwW2JtXHpBA2tUXJ0bUjJoKckcj0udAcTMc467kwc/ZHEFmBjEC
         Uxjf+ks2B2SV8F3x+ZHbMOtIE9LZlTskbuWA+I6ENcq/QNx53CauGdxTBvU7e1yhFDWs
         MnlQEho7hoXP7nn6w/DE2stBugADIGFreOuML0ZbZPjnzioxVGrND58wL8NgyhvJSZit
         EjuuD2/NTnV26sD5c6usIgGnX0COgbC4EHS3RhpjNZeBY3+ycih2E8ZjLiEDjhqwW9gY
         7DBw==
X-Gm-Message-State: AOJu0Yyrd4KpqfOKHi2vEh09oCvfzOq5jApNLRetnXVZtCK+KAQOAn37
	qWuL5WEQNY7eRmEejC3Jr4AIsIfvWK47No1oDbEsacLxrQ0LsrZuBPsCfVnmH1H8y/FWetBOj+R
	HEcBnAG2FNqK12bys+Es3AL6Rkvt4qMz4aAHY2Ju7fI5odERtrc0o6nM=
X-Received: by 2002:a05:622a:11d6:b0:425:4043:18ac with SMTP id n22-20020a05622a11d600b00425404318acmr1492006qtk.95.1701781684729;
        Tue, 05 Dec 2023 05:08:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlXRys+uhq05wTQp5gTIQeRVXtcocRfoOG2IGdr/XS7LnceeqhmOJyi1TFF74GFlFi520WeeSjrG5WeOdwcd4=
X-Received: by 2002:a05:622a:11d6:b0:425:4043:18ac with SMTP id
 n22-20020a05622a11d600b00425404318acmr1491997qtk.95.1701781684479; Tue, 05
 Dec 2023 05:08:04 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 5 Dec 2023 05:08:03 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <IA1PR20MB49532E1A3D8BA71FDBB444BCBB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
References: <IA1PR20MB49532E1A3D8BA71FDBB444BCBB85A@IA1PR20MB4953.namprd20.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Tue, 5 Dec 2023 05:08:03 -0800
Message-ID: <CAJM55Z9WO+0Yb-at6CAR6=UP9j60iQz=s7MK-3qiT=w-8N6+Zw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] riscv: sophgo: add clock support for Sophgo CV1800 SoCs
To: Inochi Amaoto <inochiama@outlook.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chao Wei <chao.wei@sophgo.com>, Chen Wang <unicorn_wang@outlook.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: Jisheng Zhang <jszhang@kernel.org>, qiujingbao.dlmu@gmail.com, dlan@gentoo.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Inochi Amaoto wrote:
> Add clock controller support for the Sophgo CV1800B and CV1812H.
>
> This patch follow this patch series:
> https://lore.kernel.org/all/IA1PR20MB495399CAF2EEECC206ADA7ABBBD5A@IA1PR20MB4953.namprd20.prod.outlook.com/
>
> Changed from v1:
> 1. fix license issues.
>
> Inochi Amaoto (4):
>   dt-bindings: clock: sophgo: Add clock controller of CV1800 series SoC
>   clk: sophgo: Add CV1800 series clock controller driver
>   riscv: dts: sophgo: add clock generator for Sophgo CV1800 series SoC
>   riscv: dts: sophgo: add uart clock for Sophgo CV1800 series SoC

Hi Inochi,

This series seems to be missing patch 1 and 2. If you did send them, but just
omitted linux-riscv from those patches, please don't do that. Having the whole
series makes it a lot easier to review without having to hunt down all the
missing parts on lore.kernel.org.

scripts/get_maintainer.pl does support muliple patches as input

/Emil

