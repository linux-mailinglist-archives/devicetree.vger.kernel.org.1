Return-Path: <devicetree+bounces-171505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB53DA9EDF9
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 12:29:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 45F707A52D8
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 10:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EA125F97F;
	Mon, 28 Apr 2025 10:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b="XrUB3yLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F4425F963
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 10:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745836139; cv=none; b=D9NAO+nKS9UX9FSFXb2KNadB4khvHTnsDnP8asDXxQBzf6FdxzeJPwagSwhG7iitkB3TbTSHjP2A7Dkt0EvEmGpTxArHqc5/P+KyGMV2qlS+m/uSECaAJZ7IVWWIZacNrIkedgNrCgzlnl4l3GzLgZDfymo3FbUtMNO2YnBp2ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745836139; c=relaxed/simple;
	bh=ruIOSYQ6oFubP9SOiCH9r1ANRa+KN/sarSp1jPgeVJw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=T9uEdY8zkmtIZpxX3z6m+KD2sL8Z+PPPnJ0pcKVVjj+DwNVbYTbnJs1HhpcAB/e+Op33iACGKxzzfQzNjbz7YaXg5GoGYet+TTB9V6cTq+CznZfJJgg4kwkT+zlTevlJ6ffBTOBm93bWTD+wgsg15v4GGwc++RdNQAIbDriDplY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com; spf=pass smtp.mailfrom=vayavyalabs.com; dkim=pass (1024-bit key) header.d=vayavyalabs.com header.i=@vayavyalabs.com header.b=XrUB3yLX; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=vayavyalabs.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vayavyalabs.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e732fadd0ebso1293710276.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 03:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vayavyalabs.com; s=google; t=1745836137; x=1746440937; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ad2hfYAaXs4UcPz87uwN8ese08Wo0cmaLOPntlJfTgg=;
        b=XrUB3yLXzeLjS4CKeq+Orb+d/TUv7EteRcwZ1EavXq/nHS1mLSN8XESHvRWn69OlQr
         SJSwZ+2SyYB0LoGhGXBjGpsIJ9GWufJBuXN6OD4VpO/VIH6fYJ4O8GPaLiYJpyrKIOfZ
         LP3/Yn0pqFTEETknLy91OrHPz0Z54xkMfazHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745836137; x=1746440937;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ad2hfYAaXs4UcPz87uwN8ese08Wo0cmaLOPntlJfTgg=;
        b=LxEt+Z83/CWrDwOC8mnguwpKzosALsnkMSHc8i06mZUbnkSp6k2EVeGMYU5dzvRLme
         HRQTAcGc8BAcFYpOUP9U0/rECkS+ycrpLIzWNBWYTaiiwYdXrpzQ72nx6gRzt2W3Z6ww
         48U99FjUUvt541BToA2eFlKm5xEXVccm0y/p3NEwtSrDRJhY9LyLFAt9XnFg+PEKMrIh
         ci9X5yeMMras0dF1sjs/E5mqMlKpakYdgyZnzEvDSebW0fdldLa1Y6kRWEUDC+i+3YuY
         kgtJhOMI0FaL2OzIF7lzCE4NraYBm988wp9KqfBFHSpSEg5a3YNQrvJxz9CqfivhIlOO
         shMw==
X-Forwarded-Encrypted: i=1; AJvYcCWMY9aE5X/PiXp7vPTBQu43obqMhS6CO7vp7873krzKlWCipx3aMf38Kt7aOeAbgEsOqkoE4DB5zLGM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6o/dr0FFnFF0MiIEOCnRtx0y5mZy1bUxXWVexUbdHe4hDxtmr
	VCIRhQerLpKDo8yuPpZwZJwfkfrFcDPN1LF8c1fc0hwFnIAawS4cx5ryly7+7QWPwO5zzt2m5sA
	BiOCeNJ6d6uhnHKgBLQcq10pCf8XPZrcilijbhQ==
X-Gm-Gg: ASbGncuBQ6NtvKOcjHXwXYeArz9fbkEA12iKiu2yt15opgzpyCCO6Zamcbi9/S01t0B
	6reSyExFjSQg/TUkJCeBRdoyGs9Mf1IrCbyerAimHBk3mMMmSEjs+AcEQoznmerCRTDT3vU+aKp
	k54/KDPQq21otLESFJZTdFQoiY7oVJ7nbGKRa8uSWn6iGWXUgmxwwEkRg=
X-Google-Smtp-Source: AGHT+IFOb7bkGF47Z0Sj5W/G1ukJMIQOyZSKkD3DfgEzKXPBH1RQeqjnbUPM7iUBBh9JiUmhlk/NxninlzzPK6KVA3Y=
X-Received: by 2002:a05:6902:c04:b0:e71:2a10:8fd with SMTP id
 3f1490d57ef6-e73167e73f2mr14760300276.26.1745836137015; Mon, 28 Apr 2025
 03:28:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250423101518.1360552-1-pavitrakumarm@vayavyalabs.com>
 <20250423101518.1360552-2-pavitrakumarm@vayavyalabs.com> <e5f47f52-807d-45ce-bd62-090f4af72b3a@kernel.org>
 <CALxtO0k0jeZF=Y5Ut_yhX8DxC3hVHWpnrcdJeBXP_GpA=O5T4w@mail.gmail.com> <628faa57-f135-4f62-9827-5c98d9265391@kernel.org>
In-Reply-To: <628faa57-f135-4f62-9827-5c98d9265391@kernel.org>
From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
Date: Mon, 28 Apr 2025 15:58:45 +0530
X-Gm-Features: ATxdqUHPW2Bs_aWRQo6-S8EuhqMYj3WXHtFTMowNg0HzbX933XBEOfJ7EiAHZM4
Message-ID: <CALxtO0nFtAiK8oG=7k8bhxwwxcQo0XZawEbkRG9Prg4z6JshXQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/6] dt-bindings: crypto: Document support for SPAcc
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org, 
	herbert@gondor.apana.org.au, Ruud.Derwig@synopsys.com, 
	manjunath.hadli@vayavyalabs.com, adityak@vayavyalabs.com, 
	Bhoomika Kadabi <bhoomikak@vayavyalabs.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,
   Its not possible to use it outside of the SoC. So for the current
SPAcc IP testing we flash it to the PL part of the Zynq. Post which it
behaves like a peripheral sitting on the system bus. The device is
memory mapped and its interrupt is connected to GIC. A platform driver
works perfectly in this case and that's what we have.
   All the drivers that we have in the kernel are for crypto
hardware/engines, which already are available as part of some SoC in
the market. But in our case its still an IP. Since I dont have any
reference/expertise, it would be great if you could suggest a way to
handle such a case.

Warm regards,
PK

On Mon, Apr 28, 2025 at 2:41=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 28/04/2025 10:13, Pavitrakumar Managutte wrote:
> > Hi Krzysztof,
> >    My comments are embedded below.
> >
> > Warm regards,
> > PK
> >
> >
> > On Wed, Apr 23, 2025 at 6:23=E2=80=AFPM Krzysztof Kozlowski <krzk@kerne=
l.org> wrote:
> >
> >> On 23/04/2025 12:15, Pavitrakumar M wrote:
> >>> From: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>
> >>>
> >>> Add DT bindings related to the SPAcc driver for Documentation.
> >>> DWC Synopsys Security Protocol Accelerator(SPAcc) Hardware Crypto
> >>
> >> These IP blocks are rarely usable on their own and need SoC
> >> customization. Where any SoC users? Where are any SoC compatibles?
> >>
> >
> > PK: This is a new IP designed by Synopsys, which we tested on the Xilin=
x
> > Zynqmp FPGA (ZCU104 board).
> >        This is NOT a part of any SoC yet, but it might be in future.
> >        Could you offer suggestions on how to handle such a case?
>
> Hm? How is it possible to use it outside of a SoC?
>
> Best regards,
> Krzysztof

