Return-Path: <devicetree+bounces-233676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 037C2C24AD3
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:04:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F70F18853DA
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:04:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A64F7343D90;
	Fri, 31 Oct 2025 11:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SwCqqe5T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1B9332909
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 11:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761908645; cv=none; b=UVZkelFovGMd1shE11B0ch4W3yV6pA6mL095Z9dIQzKhsY3KA+qIXjGst4Vx+hCMGcWtaIjZokDq82g+Tgf4YlhMC7L5O4lQ3Yi56N8iQmIU3AKnEMGdP7id+HqLLeEWrWD3zRbFvEP8RUyzVb+iBKH0fmUk5qPecyKDD5tcwwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761908645; c=relaxed/simple;
	bh=8wAZl0Bv+8eSyqQfgeD+tzNAO7UMQVNbXvZn7LP+L5g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HdXxR4s6u+SqJA1a7pzHH8kQFg3kCN8IcxKE3ye01YiGCdBWe9JGAzz0DZfcPVASLr86+s5QujovwmJboQFpK3UUIU3b9+/5K9vxB81D8W25mRzb3r0o7tb3hZIoGQ82iT0rJKJMLFHp1GJqoDgmg0lqX5UgUjKYTkkC0jqwzRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SwCqqe5T; arc=none smtp.client-ip=209.85.128.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-785f96ae837so23714507b3.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 04:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761908642; x=1762513442; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GMx94PXpl9Bd44bRwjfAPN60GnZnLha+f/UpxbB45Q8=;
        b=SwCqqe5TmM/wzsTsIA5BCqI+3DA1Rar7stYkaEKZe7ZPnWYQrwCHhQpAJTkL028c+4
         p2wlykKCedWcpk05FPF4R7I+oiU9wMe7y82k/DEFkzRNcZHJwlKBEQP3jXfUVWIm4st3
         qQfPlh0cW4DIRiKrCl6NpOOJdBGjFugBAbsXId/YHHdCab58+tDzUrpLx5z1HVnpJmfX
         nOwbeWtU5FL4aq3ZB8rfIH83hauXsl7wJ473Dg4iRd2rhoypWpLAf2C3/6ggY+kIxYho
         8RD0mDJkTrHrpI5OJ/zTCRGI53bd2IPj7dqTYAprdurJoNuHYGklpdS6+PA+rrSA7YvL
         K5QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761908642; x=1762513442;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GMx94PXpl9Bd44bRwjfAPN60GnZnLha+f/UpxbB45Q8=;
        b=jataipWyCvy1sTyy86FD7aM4jbLk+Js/bTVuXAe3sll2F1sGd6bqvFrQveYchYkh+m
         F2U2nY5FHM+nkE1MGe8lNMG5wX2NjViSx/w58rZyWvdorLI9sUXo34dXips9whzJwsWh
         lnUfPdsJmdmb5v9DM5xyZe6+qdnkRdsLRoJT6X+Tq7aNYPFDIAI7mmxg19L2KueAUqRs
         x5iIjTdJtkaypTdz+keulS86dhlYMipmZEKzVJ+DwtLiCCZqw/yV/vNvz3NQTEaLVoag
         Tk/eNFP+pym7LKJdhl5TZjdrjkdF4U0mNkjtnByY/hNi6ym2/1r1hHuYoGm7blzSfwQK
         EnrA==
X-Forwarded-Encrypted: i=1; AJvYcCUUEAdnvOSVlExgVrKDs21l6zoGo56nAVe2AKWJ/pcSpl+OAN+jFkxyTycbvfkFONlzbrsSoGQVRS+R@vger.kernel.org
X-Gm-Message-State: AOJu0YyB2UFvMmdUgpqH5M0fhcxp+IjmbrtxjShOF3+I/yzvkw+/mKm0
	Oc6HktRK1tnTlQrf4LtFBc/MtPCrcnu9vL+q6vsA6E+hR3ofUTyQ5grae0BLnFR8I73VE9TSyJY
	m7/cr80oTY9/Pxod6IaM6tJiQIDs22RWkOsOqX1yTxw==
X-Gm-Gg: ASbGncuJjPS64lbZUzZU+Hibt/g3j+fxNf8KLKE47qMgBpy4QYGiSRAFR3yFYztoeR2
	B/bHVUuD+z6Aagh0E29+WSNFctBJTgnPPLeqpIK/bv+6nEQ0dpjsywbJBAfXxOdvlXg9dJ3TDyM
	C0YFEGisWgftBkqLfGowyExnTtfrqYmLDXoUm+P8k7/DYge3siFzZR+sFrOUn3hWJ/FrmOKsv41
	RHa+lgUNscBwR4UxT5hlzb5+XJzDeC60JNaI5TAQnsdciCxlbKxzjC++N2vGf811a7QRq7NVOqt
	KTWBsv3v+i7AJKC0v7a5KXFSyWLz+p6b+iaciObc
X-Google-Smtp-Source: AGHT+IENjMS/Fga4h9EGVaoBL/JjQIFhSSBeM0v44Hn+OuW65Q/a+xvvD2ieXhLRYKQlrWWpSRadCKaQfY/EdENAIpU=
X-Received: by 2002:a05:690c:46c3:b0:785:c4a5:8f5c with SMTP id
 00721157ae682-7864851b3c1mr26633967b3.38.1761908641696; Fri, 31 Oct 2025
 04:04:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031084101.701159-1-adriana@arista.com> <20251031101009.704759-1-adriana@arista.com>
 <CAMj1kXGUyzPQu14SOBs8GSsJ3+ASssNR1vCN5T8OzeEbXdBbBQ@mail.gmail.com>
In-Reply-To: <CAMj1kXGUyzPQu14SOBs8GSsJ3+ASssNR1vCN5T8OzeEbXdBbBQ@mail.gmail.com>
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
Date: Fri, 31 Oct 2025 13:03:25 +0200
X-Gm-Features: AWmQ_bknhkycM9Zb7uWN1yqYnJarIE7ayygRrMnHr8ptW7rbfAvU0YMcrItxqQ0
Message-ID: <CAC_iWjKcoKk-=2ojNfatNbuZ5B5LTFLhURHMJg4pPOGD_T8h5A@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] DMI: Scan for DMI table from DTS info
To: Ard Biesheuvel <ardb@kernel.org>
Cc: adriana <adriana@arista.com>, trini@konsulko.com, robh@kernel.org, 
	krzk@kernel.org, jdelvare@suse.com, frowand.list@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vasilykh@arista.com, 
	arm.ebbr-discuss@arm.com, boot-architecture@lists.linaro.org, 
	linux-efi@vger.kernel.org, uefi-discuss@lists.uefi.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 31 Oct 2025 at 12:17, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 31 Oct 2025 at 11:10, adriana <adriana@arista.com> wrote:
> >
> > Some bootloaders like U-boot, particularly for the ARM architecture,
> > provide SMBIOS/DMI tables at a specific memory address. However, these
> > systems often do not boot using a full UEFI environment, which means the
> > kernel's standard EFI DMI scanner cannot find these tables.
> >
> > This series adds support for the kernel to find these tables by
> > reading the associated property from the Device Tree /chosen node. The
> > bootloader can specify the physical addresses using the property
> > "linux,smbios3-entrypoint".
> >
> > The first patch introduces the device tree binding documentation for this
> > new ABI, and the second patch implements the driver logic in dmi_scan.c.
> >
> > Changes in v4:
> >   - Renamed linux,smbios3-table.yaml file, removed mention of ARM/ARM64
> >     (Patch 1/2).
> >   - Drop the second definition of dmi_scan_from_dt() and fold checking
> >     for CONFIG_OF (Patch 2/2).
> >   - Drop unnecessary goto on the success case (Patch 2/2).
> >   - Replace magic number for entrypoint size with SMBIOS3_ENTRY_POINT_SIZE
> >     definition (Patch 2/2).
> >
> > Changes in v3:
> >   - Removed linux,smbios-table property, only keep the SMBIOSv3 property
> >     (Patch 1/2).
> >   - Search DT for linux,smbios3-table only, removed the code searching
> >     for the previous property (Patch 2/2).
> >
> > Changes in v2:
> >   - Add missing Device Tree binding documentation (Patch 1/2).
> >   - Split the original patch into a 2-part series (binding + driver).
> >   - (No functional changes to the driver code in patch 2/2).
> >
> > adriana (2):
> >   dt-bindings: firmware: Add binding for SMBIOS /chosen properties
> >   drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT
> >
>
> For the series,
>
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>
> I can take the second patch, but bindings need to go in separately IIRC.
>
> Rob?

Feel free to add
Reviewed-by: Ilias Apalodimas <ilias.apalodimas@linaro.org>

Cheers
/Ilias
>
>
> >  .../firmware/linux,smbios3-entrypoint.yaml    | 25 +++++++++
> >  drivers/firmware/dmi_scan.c                   | 54 +++++++++++++++++++
> >  2 files changed, 79 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml
> >
> > --
> > 2.51.0
> >

