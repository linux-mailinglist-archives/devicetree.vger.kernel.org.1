Return-Path: <devicetree+bounces-255342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CADAD225EF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 05:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 78CAA302AB87
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 04:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A87F229E10B;
	Thu, 15 Jan 2026 04:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="A2l5fG4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DF182417D1
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 04:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768452064; cv=none; b=tjrPmIUorccXIuwUrhAvxKCrRnZAzdzqGZLcpNr+2bDpVJ1iFSFlxAXii9e+DBYQ8CvpXvXj77s/iQYzQGyyP/Ep9mt598IjD8UFFFiBBIlXXrfC7XwbbdXLC63obhyD75vtm9C8fpmFXf3D2Ti4HkCft8n1tmKqW99lrOubk4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768452064; c=relaxed/simple;
	bh=ThFCUVoJORkTHigwP6KFyI5JXW+srDiOPsF1PLs4gRA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sC9djl0FE0ClqUMdsEawR3864dVnOJXl0W3Edck7D4e+dWIpxnaYqM3cl+zAxGI8lSSE6N+LPvLFtAFe+qujiQc9XefeaxYjeWG6SNsNuQQkhHsTw5snq3i7avV8sbQyNdvNRrQQC5M25NPI/9DOadKyYZzuLjmyrK9dpxLozTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=A2l5fG4Z; arc=none smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-6446fcddf2fso402756d50.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 20:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768452061; x=1769056861; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UHORsUrCGxhFKBEYnnmZVqnwkkEcReBR9XoRnnvUNsA=;
        b=A2l5fG4ZmPuYkgb2p714Z9Y79eJaCqBfBMAo2DFjykQhQ/nsoYk7A6HdGTX5iE1UaL
         uSBqUlBKyhRr1ETso8Z/To6/w065pFInO4VzCVZx7/PEv4iwl037G7pVbhoCst9qDxih
         jgtX+hBKQTHWsOGRl35e08kwsA8KAd2NjfIiTGeQiNp8yzT6oPx/4Wn6TiivPUDgF3Fh
         miSrPFlljZrVSgqdezt+FD4B40jDx/GaOff+/5bltX0fc7IxOKVWIwse/emu7TPM0X4f
         KUJOQC3vKhW6au2Cc+pSZnv+NNBLurlW2hFry65gOKCXNjq3MuIow/9Ck3zzEiSfWlCZ
         cPQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768452061; x=1769056861;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UHORsUrCGxhFKBEYnnmZVqnwkkEcReBR9XoRnnvUNsA=;
        b=r1IjdAwBOGAQ5nCcHO6Vev165AHCpItU8Y+ZVmHrzfD2EUANM/L8c6hx74+23bnjrC
         xzLpEc5JH/9AXuZXZzSgPZEpCYo6UBSm3m/z5Vbkat/3rKBTCJ2eDFIZJR0JzYfLg5WA
         vGJg+iJSvF1ftBSQDQ5A5BC4+n0ubZClyDkeT7MrJDe9VEF4rhTI8gjsauM+YEDQB4qc
         zcYBlMM8ZGGF8H7eVnb4sANgsiypBHsim1QSv2xnusv6P3SvU5ao7RNPsZrwvOpeobf0
         Ox00hz4avNXU+DKkRO/1ACf+aQUdpWkmT/WHRhdkWJ4GieEjzyMVCpqSEpomIsL53mwo
         PwWg==
X-Forwarded-Encrypted: i=1; AJvYcCUst4quZ1ZrGieaXJAxL5LBPc1hNqIb33eHB2TiNibxUo5z9K2wMGpw/d4QxNr7rU5Z5BNjmPN44mgz@vger.kernel.org
X-Gm-Message-State: AOJu0YyZYojkUjOLjNDEWfw/ggpV5OiZraSW1ph0GTDIb/ub2nbA/XRv
	jerzSYCRzya7HuV/OLiiXgwp51XmbcBo+1TDJYEzjTnV8kz9QgqMZqga+Q/owb1yF49oWVUDlRT
	VYLFZd22Ajxv0aLj1LgNfZ3B/MDgGQQMMWki4pdL+1w==
X-Gm-Gg: AY/fxX5R9VRW+BDLuU9abIhmXkZLvqhQaIWFTQkGRKnF+JxmLlzCpaiQcciyEUDCOaH
	Yw9dCdwgk+bPC3tV1Uo6E3Yq84jRqQNxHLMBNnabuPYkCKFly39qMhfuj/S2ddyfXQqZj2T59bm
	qVUcL3/Q/UN7JnJglUiwkOAeSkzPEQLS2Gb2TM35EpJ+OrvvY+Ze6+Tf7zR8xYRqpDDrKaRO0w0
	ciAwWYAADpZXgB/MpaWttvwKWX4jDfMxXjmAPTnWBSyYCGgUapnmBakqWw+NuHKEe+sGJd6d+UA
	6h7VxlleHgvao43XZwE3iA+sudDiJ1e9iohExA==
X-Received: by 2002:a05:690e:14c8:b0:644:4259:9b63 with SMTP id
 956f58d0204a3-64903b1d0e0mr3032668d50.41.1768452061481; Wed, 14 Jan 2026
 20:41:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
In-Reply-To: <20260108-k3-reset-v2-0-457df235efe9@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 15 Jan 2026 12:40:50 +0800
X-Gm-Features: AZwV_Qgg7yPvsd_zYkdWW175mtNGzIR7tHiFYjvfgqt1QtUiV4wnMaVSXFiifeg
Message-ID: <CAH1PCMa8kXx=5_3UrcbnJH21kQm13QdFeUcBDUboiCnACzbiVw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] reset: spacemit: Add support for SpacemiT K3 SoC
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
	Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Philipp

On Thu, Jan 8, 2026 at 10:22=E2=80=AFPM Guodong Xu <guodong@riscstar.com> w=
rote:
> This patchset is based on v6.19-rc4 and depends on the K3 clock drirver
> patchset [3] and the K1 common clock work [2] and [1]:
>
> Link: https://lore.kernel.org/all/20251219012819.440972-1-inochiama@gmail=
.com/ [1]
> Link: https://lore.kernel.org/lkml/20260108-06-k1-clk-common-v4-0-badf635=
993d3@gentoo.org/ [2]
> Link: https://lore.kernel.org/lkml/20260108-k3-clk-v5-0-42a11b74ad58@gent=
oo.org/ [3]

I am writing to update the status of these dependencies.

The clock patches have been accepted and are now present in linux-next
(since next-20260113).

To facilitate the merging of this reset driver, Yixun Lan has created an
immutable tag within his pull request to the clock subsystem. As noted
in his PR [5]:

> Please pull SpacemiT's clock changes for v6.20, This PR basically adds
> support for SpacemiT new K3 SoC, while doing this I've created an immutab=
le
> tag (spacemit-clkrst-v6.20-3) for reset driver in case it also needs to b=
e
> merged during same merge window, otherwise everything is normal.

Since the dependencies are now available via this immutable tag, are there
any further comments on this series, or steps I should take to utilize that
tag for a v3?

Thank you.

Link: https://lore.kernel.org/spacemit/20260114092742-GYC7933267@gentoo.org=
/ [5]

Best regards,
Guodong




> Link: https://lore.kernel.org/all/cc1cb833-2c4a-4e20-a50d-109a4919e274@ri=
scstar.com/ [4]
>
> Changes in v2:
>  - Patch 1:
>      Update the commit message to explain the why.
>      Update the spacemit,k1-syscon.yaml to point to k3 reset IDs
>      header file.
>  - Patch 3:
>      Use dev->driver->owner for the reset controller owner instead of
>      THIS_MODULE to fix the module reference counting issue pointed out
>      by Krzysztof Kozlowski.
>  - Patch 3 and 4:
>      Update the K1_AUX_DEV_ID and K3_AUX_DEV_ID macros to a simpler but d=
irect
>      form, one benefit is to improve the code readability. More discussio=
n
>      can be found in Link [4].
> Link to v1: https://lore.kernel.org/r/20251229-k3-reset-v1-0-eda0747bded3=
@riscstar.com
>
> Signed-off-by: Guodong Xu <guodong@riscstar.com>
> ---
> Guodong Xu (4):
>       dt-bindings: soc: spacemit: Add K3 reset support and IDs
>       reset: Create subdirectory for SpacemiT drivers
>       reset: spacemit: Extract common K1 reset code
>       reset: spacemit: Add SpacemiT K3 reset driver
>
>  .../bindings/soc/spacemit/spacemit,k1-syscon.yaml  |   8 +-
>  drivers/reset/Kconfig                              |  12 +-
>  drivers/reset/Makefile                             |   2 +-
>  drivers/reset/spacemit/Kconfig                     |  36 ++++
>  drivers/reset/spacemit/Makefile                    |   6 +
>  drivers/reset/spacemit/reset-spacemit-common.c     |  77 +++++++
>  drivers/reset/spacemit/reset-spacemit-common.h     |  42 ++++
>  .../reset-spacemit-k1.c}                           | 107 +---------
>  drivers/reset/spacemit/reset-spacemit-k3.c         | 233 +++++++++++++++=
++++++
>  include/dt-bindings/reset/spacemit,k3-resets.h     | 171 +++++++++++++++
>  10 files changed, 584 insertions(+), 110 deletions(-)
> ---
> base-commit: f10c325a345fef0a688a2bcdfab1540d1c924148
> change-id: 20251229-k3-reset-8d9b751ef391
> prerequisite-message-id: <20251219012819.440972-1-inochiama@gmail.com>
> prerequisite-patch-id: df430730ed961011cee5c5d47b7ace84b3c5ebb7
> prerequisite-patch-id: 64003618c33be925602e46b7543f2c13d3f36474
> prerequisite-message-id: <20260108-06-k1-clk-common-v4-0-badf635993d3@gen=
too.org>
> prerequisite-patch-id: 96cd13293b888c05f400daf529c3cacf17ddf002
> prerequisite-patch-id: 5f6579799919c4e2e12c8c836ac4164b00ccaaa3
> prerequisite-patch-id: 11e8d5cbe6f3610aa362dc0051b3173001d0a5f4
> prerequisite-patch-id: 622d6606913609be04f66006609550e8c3e7f22b
> prerequisite-message-id: <20260108-k3-clk-v5-0-42a11b74ad58@gentoo.org>
> prerequisite-patch-id: 44a51fa6a6f0f9d2c5b7bf3295f3272d6bb7005a
> prerequisite-patch-id: dce85ac6e4e94b1d2622a8231ddab3de766373ff
> prerequisite-patch-id: af1fb571f0d19d72e69dd41d15fc2dbd730b17c7
> prerequisite-patch-id: 1318bffbbe6044cb4ef0f77c6756ff96d69ecdf3
> prerequisite-patch-id: 8856cecc299cdffcd18acf9a7476175a4d65e62e
>
> Best regards,
> --
> Guodong Xu <guodong@riscstar.com>
>

