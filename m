Return-Path: <devicetree+bounces-262848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLHkEMoShGkTyAMAu9opvQ
	(envelope-from <devicetree+bounces-262848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 04:47:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBD7EE634
	for <lists+devicetree@lfdr.de>; Thu, 05 Feb 2026 04:47:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 06CD03004DE4
	for <lists+devicetree@lfdr.de>; Thu,  5 Feb 2026 03:47:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFDA72E7167;
	Thu,  5 Feb 2026 03:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="V2SROXXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AFF2E62B5
	for <devicetree@vger.kernel.org>; Thu,  5 Feb 2026 03:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770263239; cv=pass; b=K3RLCiBaaOHS2OMwSLp0w2yt4eG4CTcT/E5BwvhBLw/9f452e24QYPedVU+b4JlTjO/RgCjbek+GeibhH1oTNSGZ3bRJox/xO6b+DC7sS4nXN/3mY9kUYFAvwDRf6+Sew3OPeb6W798sG8zG5tqzp2ZSr2bj2eq4RTvSuv5M+9Q=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770263239; c=relaxed/simple;
	bh=U1uxpilUx2DxGX0pxECF9QK743XJ04lwD+hGq3RgaM0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=smRxdmk8GRr7/AqJiEdLyMMxBaiZ037CJ9XqYRlZCHfJSWUcWtkzHI38xA2uKTmc2lkjrfbmmanEcthMM0MLeabdQBQ/KSO0Szx7cRSgLXNemzqEfYOJDVqGJmbbo91dpi8LUJ7BGr9DgGtwvVnU4spHGhUD4FUnDMplwLQ1x/w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=V2SROXXL; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b8837152db5so73845466b.0
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 19:47:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770263238; cv=none;
        d=google.com; s=arc-20240605;
        b=Xfuj9taj+w87QlZFAumTeDsYugHPWXQSx6xAuZUqEbWCfgV6fx5VLQuA4JFBVvDAyN
         uBvdigopFL1DAxZzgPiUmuCabbNE++AV1Dl/WHrc31BBsoNNAFPEqLVxTq77r/xokJhP
         P31/SQ3a33KanWmgWPIQqut0URJosCAj7+srQx3vxx0d/502sfvu0MD9721v/DjNLskL
         YqnCdyXgw6CrI97eeByPNZX2g4xih+a9qFpVaXhJK/EkbidyIg6t9YGt9jsCW2hR5Hkf
         LQ3wkWlhXjD5Z0VHf7gduL1py8SSKhk7MDFgKAuom2rauhNzW1o4e7lyqe0QK0pzQy8g
         HfRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=bWzU3QUTkSaGp/URwdKcUANl9SeI3h8kqMKRyxrmMQw=;
        fh=AXxY0pxeM3DtSSv4NpCQWYgIi+FTq+rtMjJxFgrVmJo=;
        b=St7G/pI/i2oQzlqSKXvSRo+RomEwLEjx/Uq3yp/La9UeXFAOP0ZH0CEzYY3Y9D9mvd
         y/3VyRPZNvyYLRr9jiytOiIL97TTUgG67FMv16XavqArYzrsmOtO81XF84rpgagO/D8R
         REXJGbh850aiUwMi+33WqC4lds9qx60dAX8UUIhBlMpxiC5JKXtfHxsmfKx3OjgnFHun
         zCB0WCXwHwLfcwpu9QmZ675ryVfctLKy2fGnFlkU6m2yFHySyz+6ND80sD+/YZ4m7ym9
         Us+up5XBdHrIefeRYSu/1I3sdh2ZKi7hEF5OMVFz4Oo0bdH9oYj5MCDAqtS6scGE8udH
         orhw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1770263238; x=1770868038; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bWzU3QUTkSaGp/URwdKcUANl9SeI3h8kqMKRyxrmMQw=;
        b=V2SROXXL+njmMepY2TZsbNmuWUDOZWOzNBZZK1wlMkm6Mw7OBjucI1fkSlJQq4Lbxa
         0z0+FpARS6QOigUL+nicaHND67+Ks5Y+oE+VYpyocrwKFrO7jzcEJz5p/BX2wUHsfspY
         J0FQQS87yDz444ueuVbdU+C3QmBBLf5BZprA+Oo2FycYNW0rmwKJ7dRLQ8POu1YrNyZq
         +WHc6McjW8qyKh/+OjWxgrKhkeaGgSnTd741LQAnN1e8VKJahECpQCvoo9Ist8WmQFee
         bne/Vzv/YWDgcDiugM93Z8Mj84mzh8+pLPQs7K98GHA2cDM+/3LCQRYwnu3pDY2svQor
         Y8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770263238; x=1770868038;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bWzU3QUTkSaGp/URwdKcUANl9SeI3h8kqMKRyxrmMQw=;
        b=t7bzWHR1RdZtDJOoyyaF0Gr2Oc7nxyJrEI3Nk5R/p0hj9nUjBKdrYuxa91nxZCKULc
         Q/80oXH/iLCm6EE9uYyBvGG5NssIOWoc+LTBv5lisd8/2/iXteHYut0uJTuY05u+OiyQ
         uwCQ6mgnmHfG0GLDfhV9aNp/G+qvDGbXlKROO+ImoIoHPu6EF0/1A4mtcj9czSroKfnT
         ClZGZG65oiPKPPSjgfnH+47g9lwtt3yKKuczpzuFwunBREie0PfvPYuL0QlDXHqFZSXb
         5N0PVuR8bjHgJ/xuA3zGmIlPWTFSDC0n99dueKDgyssfG3UcdNEUJKOAa7CVpa0g1Aby
         fycg==
X-Forwarded-Encrypted: i=1; AJvYcCVEMKiDRKsTvfSNdQJnes1GtxggK3Nt7Q9LYWA7rFGcg27sx5r47Ph+2D1py/vCmGClJkSGgjYiovJr@vger.kernel.org
X-Gm-Message-State: AOJu0YwWwsbbx9FHvrGY63U2j6+3NyMmJFKcpbAqwE17/eEpT3FwL/tz
	1onWpg9j85j5JgC85nDy3bqLIHtS3CLTpHmD3qwwGlV0UTANunEytH4XhFkTdUk1WfEYX5T228B
	sdZuqHgq/0qDu9JC8FsWqJyZFQODZs5EWZnPamNN/RQ==
X-Gm-Gg: AZuq6aKW0WOifNIxvLeOkYG3gEJ5qhnznFiAd5gqDyRcocjX1saIlMdoGzpE7s9iZQe
	iLafxG2KYS6rQHsZo6J65UsFKXj6DQ1o6mHuNMq+QHI88+TLzUigSZ/AFvHmb3yIUVEEzDufq49
	Rqt2LrP3N5vsq/Dily9fVrqQdwHnI/4Optbop/x3bw/0GEFI0hsEivoF5B9NdJ60QdzwyeCl9JO
	WWpr3RylWbBu/IobjqG4oFFCAROgxa+QqwntKuV6QCjqBBXfgbRKHkw2doewokqnjHPwdFk82GR
	bHzGHCzP
X-Received: by 2002:a17:907:9409:b0:b8e:8874:8384 with SMTP id
 a640c23a62f3a-b8e9ef30487mr317378866b.4.1770263237571; Wed, 04 Feb 2026
 19:47:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1769562575.git.lv.zheng@spacemit.com> <cover.1770195980.git.lv.zheng@linux.spacemit.com>
 <9C0A2AD4850D179B+524146e74e808db90d5f28fcb6ee791cf1d1bfaa.1770195980.git.lv.zheng@linux.spacemit.com>
 <p74snip7yykhogvzqld4gyjlygmd2z4kqnat7w3qj63fwebnmm@dlz6tloevgbs> <4D87481E9AABE2C6+72d18f72-9407-4d68-8195-edc6c171df14@linux.spacemit.com>
In-Reply-To: <4D87481E9AABE2C6+72d18f72-9407-4d68-8195-edc6c171df14@linux.spacemit.com>
From: Zong Li <zong.li@sifive.com>
Date: Thu, 5 Feb 2026 11:47:07 +0800
X-Gm-Features: AZwV_Qj4QZXbWJXyq8Jiiv-VQvhct2TUKL3kLYYPr0oB9fDJjewtTcIansChXl4
Message-ID: <CANXhq0q8N5eHx9ytabZR97Y7AULKwgS2-uEGhcaOOGp9mvbtRQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/8] iommu/riscv: Add HPM support for performance monitoring
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Andrew Jones <andrew.jones@oss.qualcomm.com>, Tomasz Jeznach <tjeznach@rivosinc.com>, 
	Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Jingyu Li <joey.li@spacemit.com>, iommu@lists.linux.dev, 
	linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262848-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zong.li@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,spacemit.com:email,sifive.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CEBD7EE634
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 11:35=E2=80=AFAM Lv Zheng <lv.zheng@linux.spacemit.c=
om> wrote:
>
> On 2/5/2026 2:39 AM, Andrew Jones wrote:
> > How does this relate to
> >
> > https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/
> >
> >  From a quick skim it looks like there's plenty of overlap.
>
> We developed the driver in 2024 and demonstrated it in China summit. We
> didn't notice that a patch is on-going now in the community.
>
> Now it looks our approach solved more issues, and we'll check and update
> if there are any community concerns still not addressed in this patchset.
>
> We can add Reviewed-by/Tested-by and Signed-off-by of Zong Li to this
> patch if he wishes.
>
> Thanks,
> Lv
>

Perhaps I can first post my next revision to the mailing list (hope it
won't waste the community resource), so that you could have a chance
to review it and see whether that version is architecturally closer to
what the community is looking for, while also addressing your issue.
If you also feel that my next revision meets your needs, perhaps you
could append your additional implementations on top of it.

Of course, if the community would prefer to go your version, I=E2=80=99m
perfectly fine with that as well.

> >
> > Thanks,
> > drew
> >
> >
> > On Wed, Feb 04, 2026 at 05:09:01PM +0800, Lv Zheng wrote:
> >> From: Jingyu Li <joey.li@spacemit.com>
> >>
> >> Introduces perf-based HPM driver for RISC-V IOMMU, enabling performanc=
e
> >> monitoring capabilities.
> >>
> >> Note that the RISC-V IOMMU HPM module uses COUNTER_MAX-1 as a static
> >> counter index of HPMCYCLES, and 0~COUNTER_MAX-2 as the dynamic counter
> >> indexes of other HPMEVENTS in order to correctly index into IOHPMEVT a=
nd
> >> IOHPMCTR registers that have already been defined in the iommu-bits.h.
> >> However the users treat 0 as the index of HPMCYCLES and 1~COUNTER_MAX-=
1 as
> >> the indexes of other HPMEVENTS, thus care should be taken in dealing w=
ith
> >> counter indexes between userspace and kernel space.
> >>
> >> Signed-off-by: Jingyu Li <joey.li@spacemit.com>
> >> Signed-off-by: Lv Zheng <lv.zheng@linux.spacemit.com>
> >> Link: https://github.com/riscv-non-isa/riscv-iommu
> >> ---
> >>   drivers/iommu/riscv/Kconfig          |   9 +
> >>   drivers/iommu/riscv/Makefile         |   1 +
> >>   drivers/iommu/riscv/iommu-bits.h     |   6 +
> >>   drivers/iommu/riscv/iommu-hpm.c      | 843 +++++++++++++++++++++++++=
++
> >>   drivers/iommu/riscv/iommu-pci.c      |  13 +-
> >>   drivers/iommu/riscv/iommu-platform.c |   8 +-
> >>   drivers/iommu/riscv/iommu.h          |  42 ++
> >>   7 files changed, 919 insertions(+), 3 deletions(-)
> >>   create mode 100644 drivers/iommu/riscv/iommu-hpm.c
> >>
> >
>

