Return-Path: <devicetree+bounces-266028-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ANrHOhQnlGkmAQIAu9opvQ
	(envelope-from <devicetree+bounces-266028-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:30:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53094149EF5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FE5630097DB
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 08:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6620A2E92D2;
	Tue, 17 Feb 2026 08:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mSp/6vyx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746112E8B71
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.45
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771317009; cv=pass; b=u7Ox6OBgieIWPx3a4OG8Ou+KKWF5XYCSow3/y+stjBw2Mh3XAeDcTLqkB2ngXdu3QZHhwLM3upcZqnhn6t4g/CldirR0AWlvJiHRdVUDU1s+kuEjxUR3w9DxzDebnHZGWCoOBNmmOREvR7ii9KdZLvwMgtGCqb9qWtWa5u8yQOI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771317009; c=relaxed/simple;
	bh=Q6+0GPJfuK4Fo9d0a8nwiUzprEer81r2OPIwD6CMeWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mHVme01Dp+8RJVMU1LYyVLBMYRy6qw+zVXEZgro5Q78eifFdXQx1l13lo/9hU/rF0wrpCFVRfoXGtwBPhUrgaOBVWD39m3Dydh4izWn6Au05PmEsBGaw+26CL39J7YnDCvP8nbwmilq3X+c1rzBmpcXX9RyW6KvKXUZfk41y7aU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mSp/6vyx; arc=pass smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-4327790c4e9so2903308f8f.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 00:30:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771317006; cv=none;
        d=google.com; s=arc-20240605;
        b=OFAT4tuf/N503lcrKgA7UObb+/NWIASIZcgT8n5IMoX0ms7F2JNBwPMBfpa7a4cHdi
         SkSsYf8OYaR/NQiLABiojRi7rni56HyQJzKCsZPlNNp70cEglgUX/bw6pXjxX49AIMcM
         O89hbYRlORTNKfqVcQXbmRgtT7gYHNy1bkag3aHxlbk1etPcXrlAfKHuv9TTo2M0M8q3
         itksAyE7cdlL2wY4tQn7eTIioflW/IZCk/bxeB/RkACfUSS9e0ZfCxTv9j2k98QBjIkA
         zoPjF0oLGB72ggZgPO7sBIqYNgGCeNM8iIoQOsHL8prlvJCRtD0Yfi7ZVdD7qAd+wUbO
         pb7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GBysLy4Kokba6/2m6eyKbMi5kwkRQdw4C8BxtwLdIYA=;
        fh=0S72DCNxHBl5tTDQCsqg1hsHrXmCeOhZMtNlMMyzJ54=;
        b=XOdsr/z7pn81J7lqrFyh1a4EBhLV/BExEfXzaI7a5ZkiCLf+SHC5T7emfNCohwF4Q/
         VA5qdUP8AmZKEu2zXiUWqWaue/d2/seIxeXmKwyvG6wARcpwqWhenmBHumzJ23wPwiBZ
         1J8zG5occPOVPLpf3DxeCWSpaAIKwtuLb+kFTVBCYFPekPS9O5qcMc8aIXbAiel0Feq0
         op/vHrm/OQi4BmsZQXZUAG7U2eTRtr6vcXiatWyC267CSUYmjjf4TyZ/dfg7KKN7inmG
         6qRK9UL1MNp38EbW9XzfaalNeSYsbAnSsiEN3L0nFM6lCfbNRIDGwcUzhzk7Js7ENNh/
         5vNQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771317006; x=1771921806; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GBysLy4Kokba6/2m6eyKbMi5kwkRQdw4C8BxtwLdIYA=;
        b=mSp/6vyxKT+T/+QsrSC5LqSCClf9V0YcNQ+2coczmIv0uky7TSHlL5JLX775jzvX8e
         6DnHGivgOMBhEGtO+aS/YzOmYjzN0wVbQYfCrStNkz9+hdCgdUY21H8s93TukyFeSu56
         ujKWDSyrxqoNzMYOZKT5j+JdoO4lv1HPaEVZd/rQM+/hVwId8t/vbVvwN9xYfJYN0/fe
         aFza5QQh4IGp97KSyMOeDWNblV+C/TwLvi5J1Svj4PANgdZ6I82NvXf92CedZdiZxspk
         dbg/EJCUol1AhqadoOY4HBSYSjTMPYlfeoh0NMBXYQ7qsCzVxVTHUQNRar61QWtBgaya
         199Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771317006; x=1771921806;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GBysLy4Kokba6/2m6eyKbMi5kwkRQdw4C8BxtwLdIYA=;
        b=V3T0lh2XnrmfnA0zRNQyRrszyQ6VPm2bTnm05Fqzw8ei526dHY7VG2eVn/rRLz1SMl
         qPzgJNoINhQn9v4J6P48+yI/r/bfI0CSLBKRsGgJYA99izQPMKg7bHp37yLxz3ctYpHT
         rSw32D3XO8LDTKry1SCiemX/btttMCpSsqQLzHDp0Q4okwwKYVQTWTauI1blsSd9FbM4
         Ee2JKzFIGCkz07lFSPpEacwXoaHHGHu4bb4CNrG50gNT3pGGy2X9oNwU9TSYUjaJmkw7
         Ontj72hjoHV9j+FhjMnXk5lDaj/CM4ePig4G9q5+7eGlv7ezXNfGvrSeP+gouoS0GEl2
         QtJg==
X-Forwarded-Encrypted: i=1; AJvYcCWY269Fs8SLcsANf53Vdu/mp45g6qaeOUNcFTUv1v7+djKmYFwxQXFjpAskLyYrC6SKAgNyWFdwMRrP@vger.kernel.org
X-Gm-Message-State: AOJu0YyTpzIGRj8s+/BWL28xLDlmu91LMeFXs9eN2CEP1F5hTfcxUpq5
	LFDIAjsJLQu3xlbFAb8dAmCfIcDGQKZ6pVysZl+pxCSXFd0Gi1A5KOSyR2z8ZT0fyldGPyt766U
	s60ByaVrrdf5CzsSHh9DJI20uaVNHnyw=
X-Gm-Gg: AZuq6aKFMuXrTOclr73hRs91A+/oyJoR7Gg7+Z/ayXhi6Rfghkkqqf2gMktW0L8ALzq
	fHtD2PA24ghH0W89dvG63Fk9wqgQk41GMHaVnSu8SbpSd19hX7xe78MFhdEzQsVsbEWpIXJqQiX
	An0ER2HpPUGV9uAyJPdom7V1xPwr7pFTy2zG8S3W55EQGh0J24XyHwZMeljKIyQHhqynueIvUct
	8DTEk4P3blyXPrbVS0NW4+CtCoxHMrDb8yNAUqObX9uBbh9s6szNI/JtKF/d69JFwRDW3vshHM8
	Gyxtrqcf
X-Received: by 2002:a05:6000:220d:b0:436:d824:620b with SMTP id
 ffacd0b85a97d-43796aefa84mr21760521f8f.39.1771317005654; Tue, 17 Feb 2026
 00:30:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260126190755.78475-1-clamor95@gmail.com> <20260126190755.78475-6-clamor95@gmail.com>
 <6f143fdd-1e2d-428d-9b05-cf1124b179e8@kernel.org> <CAPVz0n0Ep_YAJfm0R_PexKo5WwrTDbJfFKUbLVKtG5q1qLONUg@mail.gmail.com>
 <b19dcc48-33be-4eb7-8b69-d7ddebefe257@kernel.org>
In-Reply-To: <b19dcc48-33be-4eb7-8b69-d7ddebefe257@kernel.org>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 17 Feb 2026 10:29:54 +0200
X-Gm-Features: AaiRm52ZSngnxRGeGT0zXtzxjUwe-KozbWW2xmmEMv8DU6eXNJQzlcX3fDL4iPE
Message-ID: <CAPVz0n3ZS=VidMxX61mKxjCCgvArK-DWo=VUKoaMhbLAt_CE-Q@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] memory: tegra: Add Tegra114 EMC driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Sumit Gupta <sumitg@nvidia.com>, 
	Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266028-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,nvidia.com,vger.kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 53094149EF5
X-Rspamd-Action: no action

=D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 10:18 Krzy=
sztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On 17/02/2026 08:51, Svyatoslav Ryhel wrote:
> > =D0=B2=D1=82, 17 =D0=BB=D1=8E=D1=82. 2026=E2=80=AF=D1=80. =D0=BE 09:21 =
Krzysztof Kozlowski <krzk@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
> >>
> >> On 26/01/2026 20:07, Svyatoslav Ryhel wrote:
> >>> Introduce driver for the External Memory Controller (EMC) found in
> >>> Tegra114 SoC. It controls the external DRAM on the board. The purpose=
 of
> >>> this driver is to program memory timing for external memory on the EM=
C
> >>> clock rate change.
> >>>
> >>> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> >>> Reviewed-by: Mikko Perttunen <mperttunen@nvidia.com>
> >>> ---
> >>>  drivers/memory/tegra/Kconfig        |   12 +
> >>>  drivers/memory/tegra/Makefile       |    1 +
> >>>  drivers/memory/tegra/tegra114-emc.c | 1463 +++++++++++++++++++++++++=
++
> >>
> >> Please rebase on top of Mikko's patch removing duplicated code.
> >>
> >>>  3 files changed, 1476 insertions(+)
> >>>  create mode 100644 drivers/memory/tegra/tegra114-emc.c
> >>>
> >>> diff --git a/drivers/memory/tegra/Kconfig b/drivers/memory/tegra/Kcon=
fig
> >>> index fc5a27791826..11e7cc357d39 100644
> >>> --- a/drivers/memory/tegra/Kconfig
> >>> +++ b/drivers/memory/tegra/Kconfig
> >>> @@ -35,6 +35,18 @@ config TEGRA30_EMC
> >>>         This driver is required to change memory timings / clock rate=
 for
> >>>         external memory.
> >>>
> >>> +config TEGRA114_EMC
> >>> +     tristate "NVIDIA Tegra114 External Memory Controller driver"
> >>> +     default y
> >>> +     depends on ARCH_TEGRA_114_SOC || COMPILE_TEST
> >>> +     select TEGRA124_CLK_EMC if ARCH_TEGRA
> >>> +     select PM_OPP
> >>> +     help
> >>> +       This driver is for the External Memory Controller (EMC) found=
 on
> >>> +       Tegra114 chips. The EMC controls the external DRAM on the boa=
rd.
> >>> +       This driver is required to change memory timings / clock rate=
 for
> >>> +       external memory.
> >>> +
> >>>  config TEGRA124_EMC
> >>>       tristate "NVIDIA Tegra124 External Memory Controller driver"
> >>>       default ARCH_TEGRA_124_SOC
> >>> diff --git a/drivers/memory/tegra/Makefile b/drivers/memory/tegra/Mak=
efile
> >>> index 6334601e6120..6b9156de4b66 100644
> >>> --- a/drivers/memory/tegra/Makefile
> >>> +++ b/drivers/memory/tegra/Makefile
> >>> @@ -16,6 +16,7 @@ obj-$(CONFIG_TEGRA_MC) +=3D tegra-mc.o
> >>>
> >>>  obj-$(CONFIG_TEGRA20_EMC)  +=3D tegra20-emc.o
> >>>  obj-$(CONFIG_TEGRA30_EMC)  +=3D tegra30-emc.o
> >>> +obj-$(CONFIG_TEGRA114_EMC) +=3D tegra114-emc.o
> >>>  obj-$(CONFIG_TEGRA124_EMC) +=3D tegra124-emc.o
> >>>  obj-$(CONFIG_TEGRA210_EMC_TABLE) +=3D tegra210-emc-table.o
> >>>  obj-$(CONFIG_TEGRA210_EMC) +=3D tegra210-emc.o
> >>> diff --git a/drivers/memory/tegra/tegra114-emc.c b/drivers/memory/teg=
ra/tegra114-emc.c
> >>> new file mode 100644
> >>> index 000000000000..789b8e959a68
> >>> --- /dev/null
> >>> +++ b/drivers/memory/tegra/tegra114-emc.c
> >>> @@ -0,0 +1,1463 @@
> >>> +// SPDX-License-Identifier: GPL-2.0-only
> >>> +/*
> >>> + * Tegra114 External Memory Controller driver
> >>> + *
> >>> + * Based on downstream driver from NVIDIA and tegra124-emc.c
> >>> + * Copyright (C) 2011-2014 NVIDIA Corporation
> >>> + *
> >>> + * Copyright (C) 2024 Svyatoslav Ryhel <clamor95@gmail.com>
> >>> + */
> >>> +
> >>> +#include <linux/clk-provider.h>
> >>
> >> Where is it used?
> >>
> >>> +#include <linux/clk.h>
> >>> +#include <linux/clkdev.h>
> >>
> >> Where is it used?
> >>
> >>> +#include <linux/clk/tegra.h>
> >>
> >> Where is it used?
> >>
> >
> > All 4 by tegra124_clk_set_emc_callbacks
>
> What? That's not how C works.
>
> There is no definition of tegra124_clk_set_emc_callbacks here in this
> patch, so the headers are not used. Point me to any symbols from these
> headers being used in this patch.
>

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/inc=
lude/linux/clk/tegra.h?h=3Dv6.19#n199

> Best regards,
> Krzysztof

