Return-Path: <devicetree+bounces-245297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1ECAEDB6
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 05:22:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 63EAC300D49D
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 04:21:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43E45274FEB;
	Tue,  9 Dec 2025 04:21:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VViSmwMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F74F228CA9
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 04:21:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765254097; cv=none; b=ac7Pcnjwfd+BZY8vqr6wwSCnYdmha9thqlSYLQmPK1idtkAMa0MiamkBXvq2uHY/oezlPNc4amgsr919NvdAnQbfGrsovNGgdmf+7+MngauFNaYQxmOLD97RRCfK0JSJEw1ATziJm3IGUyXudLgw2EDc+n0fp2agWhRuy/H5tis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765254097; c=relaxed/simple;
	bh=PZhds5N6X6MmhbvC04AMxoJcF84daqIxkM47skgPn24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hBS4a2yBUSaLUgaIsBJZPuHXWZoqreC0Q+HJCg1P918+gZIEuF9CgqI1LlSy0u5GRDCd6/WkxWo51v4Kn+qfT7IU2M4J5bufOIND1So1tGxGiAaiOEs6mCNfVtq6KcVE18jlf9HgQ7mqSYCS35gxfrnFerHhSnlpneu3FvlHi0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VViSmwMh; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-59578e38613so5699889e87.2
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 20:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765254093; x=1765858893; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C9NVGlJCg7ykVUdeW2T+8c4mtxDYcXfoa/ug95D9+KU=;
        b=VViSmwMhBx40sY4unsLoR4vgHrLYnz8kwlROf7jAFZVwGkFeftKXZUX/9McL0aKQTM
         Q7AIvB4vWIteXqpsasawjS/Yo7WEZggR4ro8pqFDqeqNRMOVMAXaVF2W8HU8jsqlEUp6
         7phamk5dpluvxdI4Hi3DUhB5otPNvzGljEckym7dPfW4iXvhDGMcZwhcSmdMwGfJgExg
         3x2U2GTHIoNoGcrW/rt0cF9keXsCjVwOUIqT+GzePrd/xuJlTw3UWqE8lt7PCjeco2JW
         TMRdeobXN2+cnanKyQX3Pn9h4kgGwB8QjMF5Sg+PfgWUnbkC9Ph5tgK3tOJnFWbpPVP9
         JYhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765254093; x=1765858893;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C9NVGlJCg7ykVUdeW2T+8c4mtxDYcXfoa/ug95D9+KU=;
        b=C/LuRXJbBS64PY61K1pbM87idftdavvzKheSb/q0KzbKVBbFcd6OadezQKH3YHt4ii
         xodYHc1PJPTztNGnXKWxkCP01oKfD1IUfPdLt086vVxOK+PPd1eNNmwuDHNPA21vPyHM
         AoBBymYc7KSBoRVmNJVgw495Jj8ILnPutWNUq29UALu0C3ciyZ61lr5215UA2Cjsdevx
         IERrbs1KCNdXCjWYaRi6+Wt1M496O+BGT+cZJcnS7hGwkPdSfU3p3hE6GmW3noBl/tSm
         o7HZs8GcR7Q7fGdEr1L1zVj+oaTzZrz90SeGXDPDWgc7aokJzRdQS6ljQXDKZLXlLReX
         e4EA==
X-Forwarded-Encrypted: i=1; AJvYcCWg0f7i2DSWpGyHrzt3HI77U8lfdmVuJCq4/7IZlAR9e3lHSKaIeXF1evYLrVNffz4AuvlSScZChA3D@vger.kernel.org
X-Gm-Message-State: AOJu0YzedIwEu0+MGycq6yJVzp3hRHSAiu/rTN4jn7vcBs+8KVzU9u+p
	55vtrU4fmORK2xhnr7HUpnfkoHfoFhJRg0h7x5Bt9eRnyCcHuP3N3SxZy+iatRMmSYheYUlomT8
	w5gvdb++ZclGSIt1GA8r1Mk1IdJhCTuGX3A==
X-Gm-Gg: ASbGncvHUZ4Hi3Xy/vZzVbb5huQ7V1QUgfrNziDq8qYMmDqaQTTxt+jRRh1fVixUxxK
	khkQUlGgyo0DiZqBf4Gi3LTvaEmDpmXe87rw+535VbG34Ajbi0xJqclPBnrX17uRiL/szPLiJqs
	MA+37bUft7dtRNS53MgstL5LxiLfA8wYGxC1ktURTDKyETYR7iAnAP7Fz/sjZ0Tq5PIgmRanbua
	N6X9zeq01XmJT9waiAmyRGAIzgIfV6LjR7HdHTWJkzVEihT4Kq2X7CiZMR35d6Kqih3++A=
X-Google-Smtp-Source: AGHT+IH9ow4VGpZQxvEmwOt6xtR/45A8V+ydlsbvjhAiEm/De1njwbRl1RCDsqCKKbvLz+iAKmYkKo8bb9PDDvlzQqY=
X-Received: by 2002:a05:6512:1325:b0:597:d6d6:4a35 with SMTP id
 2adb3069b0e04-5987e8c8cd7mr3385735e87.33.1765254093127; Mon, 08 Dec 2025
 20:21:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101-tegra194-dc-mmu-v1-0-8401c45d8f13@gmail.com>
 <20251101-tegra194-dc-mmu-v1-1-8401c45d8f13@gmail.com> <CALHNRZ_QrQHCmF7f1z29tAmuNR-=rG1SgYJ1sssK3VXiQqURYg@mail.gmail.com>
 <ehkwvvmvk4mddxtcmne5jrex2rfq4phqsa5zifxdslrpvdl2ir@3zlwejmx5f5f> <CALHNRZ-rArVkbEaiEVwMevfbu0dgX5P-ooVYTd-3RHvrhOJ5vQ@mail.gmail.com>
In-Reply-To: <CALHNRZ-rArVkbEaiEVwMevfbu0dgX5P-ooVYTd-3RHvrhOJ5vQ@mail.gmail.com>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Mon, 8 Dec 2025 22:21:21 -0600
X-Gm-Features: AQt7F2qUovQzQ0cgOIiDDf4VAk0bamHdd6WWdUgxFn3oWlK1__sJAG8hXFhHdPc
Message-ID: <CALHNRZ-YQe7_7UGfFNsBe6pdvFjK+1sS0Sye7od6WF+yqAYttQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] Revert "arm64: tegra: Disable ISO SMMU for Tegra194"
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 3, 2025 at 12:05=E2=80=AFPM Aaron Kling <webgeek1234@gmail.com>=
 wrote:
>
> On Mon, Nov 3, 2025 at 5:07=E2=80=AFAM Thierry Reding <thierry.reding@gma=
il.com> wrote:
> >
> > On Sat, Nov 01, 2025 at 06:13:26PM -0500, Aaron Kling wrote:
> > > On Sat, Nov 1, 2025 at 6:01=E2=80=AFPM Aaron Kling via B4 Relay
> > > <devnull+webgeek1234.gmail.com@kernel.org> wrote:
> > > >
> > > > From: Aaron Kling <webgeek1234@gmail.com>
> > > >
> > > > This reverts commit ebea268ea583ba4970df425dfef8c8e21d0a4e12.
> > > >
> > > > Mmu is now being enabled for the display controllers.
> > > >
> > > > Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/=
boot/dts/nvidia/tegra194.dtsi
> > > > index 1399342f23e1c4f73b278adc66dfb948fc30d326..854ed6d46aa1d8eedcd=
fbae1fdde1374adf40337 100644
> > > > --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> > > > +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> > > > @@ -1807,7 +1807,7 @@ iommu@10000000 {
> > > >                         #iommu-cells =3D <1>;
> > > >
> > > >                         nvidia,memory-controller =3D <&mc>;
> > > > -                       status =3D "disabled";
> > > > +                       status =3D "okay";
> > > >                 };
> > > >
> > > >                 smmu: iommu@12000000 {
> > > >
> > > > --
> > > > 2.51.0
> > > >
> > > >
> > >
> > > Question for Jon as the author of the commit being reverted. The
> > > commit message states "we do not have a way to pass frame-buffer
> > > memory from the bootloader to the kernel". If I understand this
> > > correctly, this is talking about seamless handoff. What does this hav=
e
> > > to do with enabling mmu on the display controllers? Seamless does not
> > > work on any tegra arch as far as I'm aware, but Tegra194 is the only
> > > one that doesn't have mmu enabled for the dc's. But enabling mmu
> > > allows for better and faster memory allocation. My initial attempts t=
o
> > > enable this didn't work because I tried to attach them to the main mm=
u
> > > unit, see the related freedesktop issue [0]. After noticing in the
> > > downstream dt that the dc's are on a separate unit, I made it work.
> > > And so far, it seems to work just as well as Tegra186. Then when I wa=
s
> > > packaging up the change to submit, I found that this had been
> > > explicitly disabled. But I'm not seeing why. Am I missing some
> > > additional factors?
> >
> > This isn't seamless handoff to the Tegra DRM driver for display, but
> > rather to simple-framebuffer. While this does technically work, it also
> > causes a spew of SMMU faults during early boot because the firmware doe=
s
> > not properly pass the SMMU mapping information to the kernel.
> >
> > In a nutshell what happens is that the firmware sets up the display
> > controller to scan out from a reserved memory region, but it does so
> > without involving the SMMU, so it uses physical addresses directly. Whe=
n
> > the kernel boots and the SMMU is enabled the continued accesses from
> > display hardware cause SMMU faults (because there is no mapping for the
> > framebuffer addresses).
> >
> > That said, we did solve these issues and this may not be happening
> > anymore with the most recent L4T releases, so it may be okay to revert
> > this now. We should find out exactly which release includes all the
> > needed changes so that it can be referenced in the commit message. I
> > want to avoid people running new kernels with an old L4T release and
> > then seeing these errors without any reference as to why that might
> > suddenly happen.
>
> For reference, I have rolled back my Android usecase to use the L4T
> r32.7.6 bootloaders on T194 for a variety of reasons. So I am using
> cboot as the final bootloader and not edk2 as in L4T r34/r35. I have a
> pending cboot patch to support simple-framebuffer handoff, but haven't
> fully verified it as tegra-drm is currently unable to takeover from
> simplefb like openrm does for t234. But all that to say that since I
> no longer use r35 for t194 I don't have the setup to easily verify
> which point release works here and what doesn't.

Any further thoughts on this patch?

Aaron

