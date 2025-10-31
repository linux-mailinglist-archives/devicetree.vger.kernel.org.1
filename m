Return-Path: <devicetree+bounces-233658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C81C24668
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 11:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 067804F3157
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1221E340286;
	Fri, 31 Oct 2025 10:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWq0Skq7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20F5340263
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761905865; cv=none; b=HciD6m/5hQ9Yq/stf2mR8YvljtD6zLX7N6uhos8/aMbLpXZrxKdZnjahNA691nOMwyzmI2A8etnST6WlrScuS19onoO+xolymBYkHR93AyUykpxahCPI+9sGzSA52xXmxy4/31odOZEtUaN8e+vdQorKUnQOmdJw07Mecbc2pJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761905865; c=relaxed/simple;
	bh=FJrE0lSFQZBK043V/LtbxfzjWtZPDRbITX2KjEJ2uAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DL6sny75MxrZwdtaKpIRKSHTwGjDZHg8ts52U82KmBY91n74jXKMAM2/8hnEbs17LX8IqxpLVQuskA+KArjjTkkJJWHTKs0FiE1n96ZGZEIGnROw17qGzy6Ab4PG9IZDtw19CErTmF4VMWwEjJSBN+yldzJQgREtYfDrfheAmj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWq0Skq7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95230C4CEE7
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 10:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761905864;
	bh=FJrE0lSFQZBK043V/LtbxfzjWtZPDRbITX2KjEJ2uAA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HWq0Skq7Rdp0rFhFtk5XOSD8PRfo2tD53ukMFgpYyV3F5wTbQfDHPdtSarM9g+6XG
	 UlKUj/oddMtEdJ/NHkPOJQTg7jJaG5I3KKvhGCuthUfJkbXqqeM1KwC4v8YvyFpPSR
	 Y5IG5yzdbFuLBMnGUDjn/lG91Ee9h6JchomBVixF7tgPkHb5omaL8Jil3t/kojLGQB
	 P6NHnp8JwSSNk6bZNRTQ7I09xdrh7q1XZZmty1Dx8VWjZcxxcefPwKdFiMi2BYChtS
	 ifpoD19Ra8mhtJIR/3c7vU8Hx4ksPl0QjGAnYJQXHYw9jm10ymnW6BPf5gQXpElf3H
	 zTaPlC+sPCXTg==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-592f7733dd6so2311049e87.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 03:17:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUACIBj60UGPtmY9QFtpaUVlZOcd+vYAsg/C2Botigf0B0p5yQEmhkCF3ywu2uBGFqVMGPUd7kvHP7P@vger.kernel.org
X-Gm-Message-State: AOJu0YybIAsMJl5upWWTTbuA7Mhrmd3ZdEKXNlY2gRW72+fLf/zYAbHQ
	nCeCPMfYbwGV1qN/5Xb4wgQqcT+15DQ0jnhDVjC3v+o5mk63APdaQUMLzsgktoqi3WwQdAswI6V
	FxGsUIrrpxXp95xstBAkIQ/vqOKvj7Cw=
X-Google-Smtp-Source: AGHT+IH1ZEHr87j2HoKj1XaUcVDdOsggjsFDOdzdoOlF9lh9gcHn+r8V9f88w7CAvAI41912p57YNIFruHCm8xaE6UY=
X-Received: by 2002:a05:6512:3ca2:b0:591:ebc3:a682 with SMTP id
 2adb3069b0e04-5941d540ba0mr1016268e87.39.1761905862858; Fri, 31 Oct 2025
 03:17:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031084101.701159-1-adriana@arista.com> <20251031101009.704759-1-adriana@arista.com>
In-Reply-To: <20251031101009.704759-1-adriana@arista.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 31 Oct 2025 11:17:31 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGUyzPQu14SOBs8GSsJ3+ASssNR1vCN5T8OzeEbXdBbBQ@mail.gmail.com>
X-Gm-Features: AWmQ_bkKjB1tG7deRtSl6aNw5JR9AFyZIvnTZ2CmZSskDiUBWY9B3XT6QmLog1c
Message-ID: <CAMj1kXGUyzPQu14SOBs8GSsJ3+ASssNR1vCN5T8OzeEbXdBbBQ@mail.gmail.com>
Subject: Re: [PATCH v4 0/2] DMI: Scan for DMI table from DTS info
To: adriana <adriana@arista.com>
Cc: ilias.apalodimas@linaro.org, trini@konsulko.com, robh@kernel.org, 
	krzk@kernel.org, jdelvare@suse.com, frowand.list@gmail.com, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, vasilykh@arista.com, 
	arm.ebbr-discuss@arm.com, boot-architecture@lists.linaro.org, 
	linux-efi@vger.kernel.org, uefi-discuss@lists.uefi.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 31 Oct 2025 at 11:10, adriana <adriana@arista.com> wrote:
>
> Some bootloaders like U-boot, particularly for the ARM architecture,
> provide SMBIOS/DMI tables at a specific memory address. However, these
> systems often do not boot using a full UEFI environment, which means the
> kernel's standard EFI DMI scanner cannot find these tables.
>
> This series adds support for the kernel to find these tables by
> reading the associated property from the Device Tree /chosen node. The
> bootloader can specify the physical addresses using the property
> "linux,smbios3-entrypoint".
>
> The first patch introduces the device tree binding documentation for this
> new ABI, and the second patch implements the driver logic in dmi_scan.c.
>
> Changes in v4:
>   - Renamed linux,smbios3-table.yaml file, removed mention of ARM/ARM64
>     (Patch 1/2).
>   - Drop the second definition of dmi_scan_from_dt() and fold checking
>     for CONFIG_OF (Patch 2/2).
>   - Drop unnecessary goto on the success case (Patch 2/2).
>   - Replace magic number for entrypoint size with SMBIOS3_ENTRY_POINT_SIZE
>     definition (Patch 2/2).
>
> Changes in v3:
>   - Removed linux,smbios-table property, only keep the SMBIOSv3 property
>     (Patch 1/2).
>   - Search DT for linux,smbios3-table only, removed the code searching
>     for the previous property (Patch 2/2).
>
> Changes in v2:
>   - Add missing Device Tree binding documentation (Patch 1/2).
>   - Split the original patch into a 2-part series (binding + driver).
>   - (No functional changes to the driver code in patch 2/2).
>
> adriana (2):
>   dt-bindings: firmware: Add binding for SMBIOS /chosen properties
>   drivers: firmware: dmi_scan: Add support for reading SMBIOS from DT
>

For the series,

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

I can take the second patch, but bindings need to go in separately IIRC.

Rob?


>  .../firmware/linux,smbios3-entrypoint.yaml    | 25 +++++++++
>  drivers/firmware/dmi_scan.c                   | 54 +++++++++++++++++++
>  2 files changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/firmware/linux,smbios3-entrypoint.yaml
>
> --
> 2.51.0
>

