Return-Path: <devicetree+bounces-2560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3733D7AB55A
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id B0D301F23049
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 16:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C0F41755;
	Fri, 22 Sep 2023 16:00:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8AC1171C0
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 16:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C434C433CC;
	Fri, 22 Sep 2023 16:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695398452;
	bh=xhaA32OBzVOM6nAoPy+gaX1FXQZKalbztmjU2PzXFPQ=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ggzP0E0DGs0mibxseVl52HMOQX0aJ/KNk9DKc7+M5mWQt6G8GwUN+N8OLddQSnP00
	 mikR3nt6qzuamVj4tB1KHTzXqXbEsUT/Nz515Nxo3qSeT7fKjiTlGV+kk0HNmJFUtn
	 h+W4eEBKX5fqYVPKRizLnCPkmHHPyQtJQ6xKkd3wWuC0bCTDOy3b6JN+vOBXl9CaNg
	 2YV/3iwkjSnGvmL+BVVAwuWLJK5K/irp+IYCF9eS/5Y5q1UI8irQKKjxh5S5z6MQ0k
	 MYor0XI3CmqlTXmq/gGMHA+94sJ8DMPEG3JOhP7KuaKERhhij7Qm1mRu96NSNFR2EC
	 Q1uK6f7ijoBtw==
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-50307acd445so3792965e87.0;
        Fri, 22 Sep 2023 09:00:52 -0700 (PDT)
X-Gm-Message-State: AOJu0Yzd8T+BXNFU7FQRkwSSJl3XLaSo+3irguQppBcxi/Cz5Z8Jfpml
	iEt23VPL9kN9jJ55LW0tV2J0OuK2GWmns5hmjQ==
X-Google-Smtp-Source: AGHT+IEEE/JvcGeQD4KCzLIPPO9coF/0Kd1GNltvU5JvL5xNpex4YSVmnWqzCk9JmegTSZU7ZxtuJs2nrUqxTkVlYi8=
X-Received: by 2002:ac2:5041:0:b0:503:2623:7cfc with SMTP id
 a1-20020ac25041000000b0050326237cfcmr6407321lfm.34.1695398450443; Fri, 22 Sep
 2023 09:00:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
In-Reply-To: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
From: Rob Herring <robh@kernel.org>
Date: Fri, 22 Sep 2023 11:00:38 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+WuYDU+yY98opTHr1PT-J9mFYJQBjVMnk+FSWLDUO33w@mail.gmail.com>
Message-ID: <CAL_Jsq+WuYDU+yY98opTHr1PT-J9mFYJQBjVMnk+FSWLDUO33w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
To: Simon Glass <sjg@chromium.org>
Cc: devicetree@vger.kernel.org, U-Boot Mailing List <u-boot@lists.denx.de>, 
	linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, 
	Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 21, 2023 at 1:45=E2=80=AFPM Simon Glass <sjg@chromium.org> wrot=
e:
>
> Binman[1] is a tool for creating firmware images. It allows you to
> combine various binaries and place them in an output file.
>
> Binman uses a DT schema to describe an image, in enough detail that
> it can be automatically built from component parts, disassembled,
> replaced, listed, etc.
>
> Images are typically stored in flash, which is why this binding is
> targeted at mtd. Previous discussion is at [2] [3].
>
> [1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.html
> [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromium.=
org/
> [3] https://www.spinics.net/lists/devicetree/msg626149.html

You missed:

https://github.com/devicetree-org/dt-schema/pull/110

where I said: We certainly shouldn't duplicate the existing partitions
bindings. What's missing from them (I assume we're mostly talking
about "fixed-partitions" which has been around forever I think (before
me))?

To repeat, unless there is some reason binman partitions conflict with
fixed-partitions, you need to start there and extend it. From what's
posted here, it neither conflicts nor needs extending.

I did a bit more research. "fixed-partitions" as a compatible has
"only" been around since 2015. Prior to that, it was implicit with
just partition nodes with addresses (i.e. reg) and that dates back to
2007. Looks like u-boot only supports the newer form and since 2021.

Rob

