Return-Path: <devicetree+bounces-255545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63826D24081
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:56:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 70DDA301B824
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:55:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0847F36AB68;
	Thu, 15 Jan 2026 10:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7oQnYUM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FA8362130
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768474525; cv=none; b=tiqYL74zVx3xa5fVR8z9I1jD9JqyVToctYtCgBHNUFLqwiRt0DqoYqQ/GLCgusNssv96aRtSRVZWPzCWuFsc/6vaMdenTET9OC40/QbBQ6YQw7M8ob0IWevPpMc6tSzstaVAwbPHjvUEeHnVSDEI9E/zt+SA5bLguqgJkphMPvw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768474525; c=relaxed/simple;
	bh=TiYyby4EphfsmZeh1KnhoPjaXGTK9Ii1c5MLQ3mIk3g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HjyMgxf70raj3E7sL4hY3pAZEDTnzmk2nTgOPDWYfBldgtDz3zWpdtsn12X7BsK3jn0OoW1EGI7weF8ck3iDu3/hATjTLNyEFZg9nSjudvcQ4a7YSVEQcGUvS1ptTQdXJeArTCichIhlOdwiq9RlrDISP7LPaeBHRXTHjF7yCrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7oQnYUM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8B966C16AAE
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768474525;
	bh=TiYyby4EphfsmZeh1KnhoPjaXGTK9Ii1c5MLQ3mIk3g=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=O7oQnYUMdmaWGdS7b+YqPyPKkvCBIQirYzYG3knmxHWTW7J5wQOV9nUTyOJFbzaBg
	 Ehfitsd7n3mlkFEky90GPC/eYT9uCgH7dqzIe/V97NQD0hpuP7arqq2AbQqx6NBr4v
	 4w3gypoaLSPsmj4AQ3sQzt1fIZA+IDe64jiuF7m78MF2ksAbVpelS93aeNlYJipSMQ
	 sWI3fCOu1Pa6EBDiQReCTveB2rSCsznnkW/4A0hFm6NkP5CaNGmGkVtxP+/4szU9tL
	 LmoaH+6R0WOHLWQxf9i1GIekUWpM1Sa2Qzw83o7haO3GAAxuH3PWuBc0ddLbgvbzk/
	 PbPoW1old0XwA==
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b876b691fbcso157517966b.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:55:25 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWXwQnoKX3j0kHJMKXf53oKjlRspeemnMZdC9xnZVmvJaT2MoafVTvDjtIqT2I0jKPCmG2mYIuP+gFO@vger.kernel.org
X-Gm-Message-State: AOJu0YyJWW4AVbge/eey+D0L29wdWCY/MywvPz5QMrI8miBa6bTqMjur
	MGktswkwaJtwqobmhNlC7e9cVo9A7/a7wu03hiUR+7xMt8n7D6DFjAhPsyuP+D3CABDc1BnjKGw
	eMvzu7VTnkkgXFlznuRQR1tFdwYUJTh0=
X-Received: by 2002:a17:906:6a02:b0:b87:117f:b6f1 with SMTP id
 a640c23a62f3a-b8760fdc234mr481904466b.2.1768474524197; Thu, 15 Jan 2026
 02:55:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1767505859.git.zhoubinbin@loongson.cn>
In-Reply-To: <cover.1767505859.git.zhoubinbin@loongson.cn>
From: Huacai Chen <chenhuacai@kernel.org>
Date: Thu, 15 Jan 2026 18:55:16 +0800
X-Gmail-Original-Message-ID: <CAAhV-H5_H6+nuX90WH5BBOvNayHQU-dC_SLFb9mvBGjrVqZLFA@mail.gmail.com>
X-Gm-Features: AZwV_Qjdf3FqF97HaSGbh0maD6L0HHk4mZdMA3W0D0iK6bM6DbCMn8VEH39RDGM
Message-ID: <CAAhV-H5_H6+nuX90WH5BBOvNayHQU-dC_SLFb9mvBGjrVqZLFA@mail.gmail.com>
Subject: Re: [PATCH v3 0/9] LoongArch: DTS: Fix dtbs_check warnings
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Yao Zi <me@ziyao.cc>, Binbin Zhou <zhoubb.aaron@gmail.com>, 
	Huacai Chen <chenhuacai@loongson.cn>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Applied the last 5 patches, thanks.

Huacai

On Sun, Jan 4, 2026 at 2:41=E2=80=AFPM Binbin Zhou <zhoubinbin@loongson.cn>=
 wrote:
>
> Hi all:
>
> As Krzysztof pointed out in the OSS talk, LoongArch only has three DTS,
> but has a bunch of warnings. The patchset attempts to fix them.
>
> Patch-1 and patch-5 are taken from Yao[1],thanks a lot!
>
> [1]: https://lore.kernel.org/all/20251209140006.54821-1-me@ziyao.cc/
>
> Test environment and results:
>
> Package                   Version
> ------------------------- -----------
> attrs                     25.4.0
> dtschema                  2025.12
> jsonschema                4.25.1
> jsonschema-specifications 2025.9.1
> pip                       25.3
> pylibfdt                  1.7.2.post1
> referencing               0.37.0
> rfc3987                   1.3.8
> rpds-py                   0.30.0
> ruamel.yaml               0.18.16
> ruamel.yaml.clib          0.2.15
> typing_extensions         4.15.0
>
> ---------
> make dtbs_check W=3D1
>
>   SYNC    include/config/auto.conf
>   UPD     include/config/kernel.release
>   DTC [C] arch/loongarch/boot/dts/loongson-2k0500-ref.dtb
>   DTC [C] arch/loongarch/boot/dts/loongson-2k1000-ref.dtb
>   DTC [C] arch/loongarch/boot/dts/loongson-2k2000-ref.dtb
>
> =3D=3D=3D=3D=3D=3D=3D=3D
> V3:
> patch (2/9)(3/9):
>  - New patches, document `#address-cells` property;
>
> patch (4/9):
>  - Rewrite commit title and message;
>  - Remove unneeded changes, leaving only the `#address-cells`
>    value set.
>
> patch (6/9):
>  - Set `#address-cells =3D <0>` to liointc node;
>
> patch (8/9):
>  - Set `#address-cells =3D <0>` to liointc and eiointc node;
>
> Link to V2:
> https://lore.kernel.org/all/cover.1766037997.git.zhoubinbin@loongson.cn/
>
>
> V2:
> patch(1/7)(3/7):
>  - Add myself s-o-b;
>
> patch(2/7):
>  - Define the value of #address-cells to 0;
>
> patch(5/7):
>  - Set `#address-cells =3D <0>` to liointc0 node;
>
> patch(7/7):
>  - Fix commit msg about `i2c@address`;
>  - Add Reviewed-by tag form Krzysztof, thanks.
>
> Link to V1:
> https://lore.kernel.org/all/cover.1765778124.git.zhoubinbin@loongson.cn/
>
> Binbin Zhou (7):
>   dt-bindings: interrupt-controller: loongson,eiointc: Document
>     address-cells
>   dt-bindings: interrupt-controller: loongson,liointc: Document
>     address-cells
>   dt-bindings: interrupt-controller: loongson,pch-pic: Document
>     address-cells
>   LoongArch: dts: loongson-2k0500: Add default interrupt controller
>     address cells
>   LoongArch: dts: loongson-2k1000: Add default Local I/O interrupt
>     controller address cells
>   LoongArch: dts: loongson-2k2000: Add default interrupt controller
>     address cells
>   LoongArch: dts: loongson-2k1000: Fix i2c-gpio node names
>
> Yao Zi (2):
>   dt-bindings: PCI: loongson: Document msi-parent property
>   LoongArch: dts: Describe PCI sideband IRQ through interrupt-extended
>
>  .../loongson,eiointc.yaml                     |  3 ++
>  .../loongson,liointc.yaml                     |  3 ++
>  .../loongson,pch-pic.yaml                     |  3 ++
>  .../devicetree/bindings/pci/loongson.yaml     |  2 ++
>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  |  3 ++
>  arch/loongarch/boot/dts/loongson-2k1000.dtsi  | 31 +++++++---------
>  arch/loongarch/boot/dts/loongson-2k2000.dtsi  | 35 ++++++++-----------
>  7 files changed, 42 insertions(+), 38 deletions(-)
>
>
> base-commit: e8a259e82c7c3ee53e933bb238366ec2ba0bc892
> --
> 2.47.3
>
>

