Return-Path: <devicetree+bounces-4305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E2E7B1FDF
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 16:40:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 31E3C282B60
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 14:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F76E3FB10;
	Thu, 28 Sep 2023 14:40:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCAB3FB0D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 14:40:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E1224C433C7;
	Thu, 28 Sep 2023 14:40:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695912010;
	bh=h8H/O+3tGg84I9dup0h1f947gtwyQA+AfL2cSRNnujU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Wa0mTny93UweF9pZUlIFlDUFDzcjYo3FsAsBkIOCjJEoDU9FhRvkugHar5nswMYyb
	 4JDy07td7zUbJmTHWyEpN4ScjjiF5G6wbBSYNC+Tqrufj1ZF8Z7h1zSg1qwCjLEgKH
	 nZB0xMPlsgGQxey23F+xsgK58Us8nTC/6l7hs87KuabLd8Douy2ynB1AJCg807VpG3
	 Zy2veVf1fABy23uBTtbSIcpPPsSLyZUr07NVkMDCJEvoCUg24+AEoJPQL0wSPejYsB
	 Bst6eCetr8R+env9V2MHLQuTkfhkVSbWdiCmkEhLSmgXnT4JFSoW0+mFKQJf7nqCOB
	 UfT60zd1x/pcg==
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-50437c618b4so18462590e87.2;
        Thu, 28 Sep 2023 07:40:10 -0700 (PDT)
X-Gm-Message-State: AOJu0YwuM7yMm6smSSNGJJEIrzrQuZ4LID1nLcLmOS2Ddnai2EZRsHLY
	2otnm9tsMgE1IFd7/Ricm/zYwCaLKVjk4gG7VQ==
X-Google-Smtp-Source: AGHT+IHlFRYNH1yT+cBQYKts0sQSWJ7V+SRU+AQ/TMhseplKK1kk/v3dI6NbdzsUpFxr/xM9/FfvMcO6JNQuqwhidDE=
X-Received: by 2002:a05:6512:2807:b0:4fd:fc36:68a2 with SMTP id
 cf7-20020a056512280700b004fdfc3668a2mr1554384lfb.1.1695912009035; Thu, 28 Sep
 2023 07:40:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230928061207.1841513-1-apatel@ventanamicro.com> <20230928061207.1841513-3-apatel@ventanamicro.com>
In-Reply-To: <20230928061207.1841513-3-apatel@ventanamicro.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 28 Sep 2023 09:39:56 -0500
X-Gmail-Original-Message-ID: <CAL_JsqL6LvfQQi4AqJpDPKwC76Xap4Re4o+bzviyb--dUOG7vQ@mail.gmail.com>
Message-ID: <CAL_JsqL6LvfQQi4AqJpDPKwC76Xap4Re4o+bzviyb--dUOG7vQ@mail.gmail.com>
Subject: Re: [PATCH v9 02/15] of: property: Add fw_devlink support for msi-parent
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 28, 2023 at 1:12=E2=80=AFAM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> This allows fw_devlink to create device links between consumers of
> a MSI and the supplier of the MSI.
>
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  drivers/of/property.c | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>

