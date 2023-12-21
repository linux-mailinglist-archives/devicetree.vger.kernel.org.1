Return-Path: <devicetree+bounces-27691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EE381B51A
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 12:41:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F51C1C24DDC
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 11:41:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A6E6E2D4;
	Thu, 21 Dec 2023 11:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TA6f6/mT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22B56BB54
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 11:40:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dbdc7ff087fso373370276.2
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 03:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703158844; x=1703763644; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YR7UL54FPVX91KNpVkxiT4vpTqvJTwUjNnSvdSEsGJ8=;
        b=TA6f6/mTSc8UUr+Omg5aRwoi/bTjJkREsbwNWa9GCiQENTKmQR6DFi/7Fc4Ni9341w
         DBvD4P4/yYnZdye5Vikg+PdmShCc7apdv/uvaRgOQyqF8av8uTxfc5ac1h7xP2RM8L2Q
         8dKH5p3hZUeuXa43qrwG/AtF1B2lu/0oGgyl8/NITijA1GTESZSeyr73dk9ldzqBRgqR
         qYIT12bHe/iZRQv6RQ+dsJMhswFCKKbemYXi/7wv/6RXMLKq+Y8HmwA9ukdzSOUMfyXb
         Z81/IkRUdTgR1oqUHEAp/yn8wCpfyBxjtgkSbW9OSsCKaigGLDCncJvq3QO7jdQSP/ur
         lfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703158844; x=1703763644;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YR7UL54FPVX91KNpVkxiT4vpTqvJTwUjNnSvdSEsGJ8=;
        b=cpRItE9vuLJSUlZfBn2PVORx8aAfkc+PXGRoCqndQKvjAS59rWcecLRPqY4mjzhqo2
         SPnSZO+yylrfyrjD2VnzH6P+ivM3O+Ghu4vxH3tKI3nlgWVEhY638lkrR2FE9mxV4jK5
         zg2Rww3pkOfqfeZqg9XGpOlRXPVEhf8xkaawPEyxINHyP6w99nUB6YAeT2E3uPadbXfE
         Xz6z0HkVWvKKGH9BfdGzqiJuridV7WiS740I3PklcCMKtBWho3jreV2/vk7CioFuMrsv
         IHzArFRQxOCjEtx3gJmSYPgZQAMrTXd+senjVCtZFJDIRWKbyfRammpxFPAHZYK6Feyy
         3FKg==
X-Gm-Message-State: AOJu0YxAHvU19A9G5B/kiTO/14WdF/+HuR/pslPA90byhL+TD12x18Id
	BAjkVqvbY9eRmQE65UezClTJ+2RUtMW79d/ihG4=
X-Google-Smtp-Source: AGHT+IFaFjnCY8QmPJiOTToHfveFxatvud3WHgGs2fKirdlREEDLq11Wly73gaiXPpVHcxab9qcmFbgC0LWU+PphjME=
X-Received: by 2002:a25:83:0:b0:dbd:bd9d:553a with SMTP id 125-20020a250083000000b00dbdbd9d553amr987132yba.50.1703158843619;
 Thu, 21 Dec 2023 03:40:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1702862778.git.zhoubinbin@loongson.cn> <303e56cb6e5f82623babe18b095069b330cd37da.1702862778.git.zhoubinbin@loongson.cn>
 <aa9cec3e-ee58-4d52-a8ec-d696e3ff70ca@linaro.org> <CAMpQs4+2kjNZMHu1+7MvDNFdCgY8bpF2kQTru-ZHSf8RceiP_A@mail.gmail.com>
 <7309da41-93f5-4358-9630-a075da03f66b@linaro.org>
In-Reply-To: <7309da41-93f5-4358-9630-a075da03f66b@linaro.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Thu, 21 Dec 2023 17:40:30 +0600
Message-ID: <CAMpQs4KpMRuh_qQrAU2FAmb9y8eJYHaJz-9M64MinLJurT6ttw@mail.gmail.com>
Subject: Re: [PATCH v5 4/7] LoongArch: dts: DeviceTree for Loongson-2K0500
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	Jiaxun Yang <jiaxun.yang@flygoat.com>, Hongliang Wang <wanghongliang@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 20, 2023 at 4:29=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 20/12/2023 10:17, Binbin Zhou wrote:
> > On Tue, Dec 19, 2023 at 9:37=E2=80=AFPM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 18/12/2023 02:52, Binbin Zhou wrote:
> >>> Add DeviceTree file for Loongson-2K0500 processor, which integrates o=
ne
> >>> 64-bit dual emission superscalar LA264 processor core.
> >>>
> >>> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> >>> ---
> >>>  arch/loongarch/boot/dts/Makefile              |   2 +
> >>>  .../boot/dts/loongson-2k0500-ref.dts          |  89 ++++++
> >>>  arch/loongarch/boot/dts/loongson-2k0500.dtsi  | 274 ++++++++++++++++=
++
> >>>  3 files changed, 365 insertions(+)
> >>>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> >>>  create mode 100644 arch/loongarch/boot/dts/loongson-2k0500.dtsi
> >>>
> >>> diff --git a/arch/loongarch/boot/dts/Makefile b/arch/loongarch/boot/d=
ts/Makefile
> >>> index 1e24cdb5180a..aa0b21d73d4e 100644
> >>> --- a/arch/loongarch/boot/dts/Makefile
> >>> +++ b/arch/loongarch/boot/dts/Makefile
> >>> @@ -1,3 +1,5 @@
> >>>  # SPDX-License-Identifier: GPL-2.0-only
> >>>
> >>> +dtb-$(CONFIG_MACH_LOONGSON64)        =3D loongson-2k0500-ref.dtb
> >>> +
> >>>  obj-$(CONFIG_BUILTIN_DTB)    +=3D $(addsuffix .dtb.o, $(CONFIG_BUILT=
IN_DTB_NAME))
> >>> diff --git a/arch/loongarch/boot/dts/loongson-2k0500-ref.dts b/arch/l=
oongarch/boot/dts/loongson-2k0500-ref.dts
> >>> new file mode 100644
> >>> index 000000000000..52483127a419
> >>> --- /dev/null
> >>> +++ b/arch/loongarch/boot/dts/loongson-2k0500-ref.dts
> >>> @@ -0,0 +1,89 @@
> >>> +// SPDX-License-Identifier: GPL-2.0
> >>> +/*
> >>> + * Copyright (C) 2023 Loongson Technology Corporation Limited
> >>> + */
> >>> +
> >>> +/dts-v1/;
> >>> +
> >>> +#include "loongson-2k0500.dtsi"
> >>> +
> >>> +/ {
> >>> +     compatible =3D "loongson,ls2k0500-ref", "loongson,ls2k0500";
> >>> +     model =3D "Loongson-2K0500 Reference Board";
> >>> +
> >>> +     aliases {
> >>> +             ethernet0 =3D &gmac0;
> >>> +             ethernet1 =3D &gmac1;
> >>> +             serial0 =3D &uart0;
> >>> +     };
> >>> +
> >>> +     chosen {
> >>> +             stdout-path =3D "serial0:115200n8";
> >>> +             bootargs =3D "console=3DttyS0,115200";
> >>
> >> You received here comments already:
> >> https://lore.kernel.org/all/3543cbf9-d259-8d0f-e78e-d8d5e3f501de@linar=
o.org/
> >>
> >> Don't waste our time to re-review the same mistakes over and over agai=
n.
> >>
> >>
> > Hi Krzysztof:
> >
> > I am sorry for this, I misunderstood before that `earlycon` is not allo=
wed.
> > BTW, is there a note about not using the `bootargs` attribute? I
> > didn't find it in the Documentation.
>
> This is a common sense, not a "note". If you think otherwise, please
> provide me the reasons why duplicated information is necessary in this
> particular case.
>

Hi Krzysztof:

I checked the relevant code and the console parameter is already in
the stdout-path property. Sorry I didn't get the logic here before,
thanks for pointing it out.
The previous attempt to leave it because it would affect the boot
cmdline proved not to be the right way to do it, so we fixed it some
other way.
Anyway, I'll fix it in the next patch set.

Thanks.
Binbin
> >
> >>
> >> ...
> >>
> >>> +
> >>> +             i2c@1ff4a800 {
> >>> +                     compatible =3D "loongson,ls2k-i2c";
> >>> +                     reg =3D <0x0 0x1ff4a800 0x0 0x0800>;
> >>> +                     interrupt-parent =3D <&eiointc>;
> >>> +                     interrupts =3D <19>;
> >>> +                     status =3D "disabled";
> >>> +             };
> >>> +
> >>> +             pmc: power-management@1ff6c000 {
> >>> +                     compatible =3D "loongson,ls2k0500-pmc", "syscon=
";
> >>
> >> It does not look like you tested the DTS against bindings. Please run
> >> `make dtbs_check W=3D1` (see
> >> Documentation/devicetree/bindings/writing-schema.rst or
> >> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-=
sources-with-the-devicetree-schema/
> >> for instructions).
> >
> > Emm...
> > Here is the compatible description from the latest kernel:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/Documentation/devicetree/bindings/soc/loongson/loongson,ls2k-pmc.yaml#n13
> >
> > I think this compatible should be fine, also, I ensure that `make
> > dtbs_check W=3D1` is fine before committing.
>
> Hm, that's fine then.
>
> Best regards,
> Krzysztof
>

