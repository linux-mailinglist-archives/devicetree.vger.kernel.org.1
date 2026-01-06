Return-Path: <devicetree+bounces-251978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB93CF929B
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 16:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DD33F301B2E1
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 15:45:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E2A2346A01;
	Tue,  6 Jan 2026 15:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8aqSayh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E56345CA1
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714293; cv=none; b=YTwmyeVg0+8kwLWqJTHoLbn/iHtMWoEV0GbyPK4Kxy9LEOc0hXe/K+c1lvV1JiqLU0/DIpmqdIfuz1PKO7VPE7NunbBRXUuMYumBYN6o7OXT6FxYKoA/gd760oZPpsLB06FZSFyefoyopDDreyn2v7tFUaKy1wDFD+liyUB5c44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714293; c=relaxed/simple;
	bh=46IA74TgsYCX1Wdt8aKcLKb4RYOUhDJz4Bq8eqM3rvM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ivij3L/izn9RSVZCVQwKq7plZLhX5Q6ExwnA/cqpO/cSXMKL3Jud/Q6+XGnaSr/LSrnBAA53IHBarhBQtCdpIzWxe2NctbPRHyN4E8Zrr4UdaGjQBZUxpI4HSRpp1r4WUl/k/ZRxB6aodoDBaGRlKDQ3z+9Q/Rv173ph469cb7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8aqSayh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B564BC116C6
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 15:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767714290;
	bh=46IA74TgsYCX1Wdt8aKcLKb4RYOUhDJz4Bq8eqM3rvM=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=M8aqSayh9x7eugOCav2bUStC3irU102ypWSH1a6+VxK2JM94lSG/3mPDBBxdNg9dB
	 9caq4toXi+Ry3NHUpkGyP1fQsyXrE/u/eg6vxmWii3ry1BRwJeD/GYRdrDlQYq3p8b
	 blArfXe2ZBxKN9qSAGwjrnmeGrKQoLrpyXvsBlgJ0C1U1koKUQuVL2I0Da2AHS9/2Q
	 nHmJYt5vnHBuYlKzJja8nOpzuFBgsi3KUjttuiq5obuTJOTtU9Er9Jap/arRWt7EYL
	 B95bFMEQ5Gj9f72+BsMunNYp1hqO/Cs/89rPiVCyWV5ZtDeuHGPqu9dw1Tqrr7VgMi
	 Pbm03B+uBiMsA==
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b76b5afdf04so206491966b.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:44:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVsEk42wxb306Xxs3Ze83qYhPtB3r3m7iHJTnksWIe9tXhGj3jF2PxPZdbDhXGYdQ5b+K4A1H8vdVAN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw75BmiMxeEJ8cNj+qskyly7OIdA79hO5ty08tvu2TWzgLu3+PQ
	ZnREopmq5Xogn3e/oNnSOpCw6UEH15UZ9MVOk7PXTAvLHNpdYwWtqBlWAVCRGY3MfS7dTCc8m1Q
	HExaaZXcEg4kpAY6xS+9vJxn5IWwfDQ==
X-Google-Smtp-Source: AGHT+IHFeow7GaX738Pcre7r5od5Yqad8UB8G/TYGPsM6GH9pPZ2ShOPoXiLIEj59XKYnsYmNR7ZxCR17dGzQ8eR6p8=
X-Received: by 2002:a17:907:d7c9:b0:b84:1fef:32a0 with SMTP id
 a640c23a62f3a-b8426a422femr330026266b.6.1767714289311; Tue, 06 Jan 2026
 07:44:49 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251226141116.1379601-1-coxu@redhat.com>
In-Reply-To: <20251226141116.1379601-1-coxu@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Tue, 6 Jan 2026 09:44:37 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLEsUV34tMZWSMc6w-xDV=M0JpOmS95TxrtbbBMRoD3Jw@mail.gmail.com>
X-Gm-Features: AQt7F2oZXv_EGI4J1ibbdla2HKndc4TqmJiiAssIWbaMzvfSFkjDSKLgEAqcVKc
Message-ID: <CAL_JsqLEsUV34tMZWSMc6w-xDV=M0JpOmS95TxrtbbBMRoD3Jw@mail.gmail.com>
Subject: Re: [PATCH] arm64/kdump: pass dm-crypt keys to kdump kernel
To: Coiby Xu <coxu@redhat.com>
Cc: kexec@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Arnaud Lefebvre <arnaud.lefebvre@clever-cloud.com>, Baoquan he <bhe@redhat.com>, 
	Dave Young <dyoung@redhat.com>, Kairui Song <ryncsn@gmail.com>, Pingfan Liu <kernelfans@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	open list <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 26, 2025 at 8:11=E2=80=AFAM Coiby Xu <coxu@redhat.com> wrote:
>
> Based on the CONFIG_CRASH_DM_CRYPT feature, this patch adds
> LUKS-encrypted device dump target support to ARM64 by addressing two
> challenges [1],
>  - Kdump kernel may not be able to decrypt the LUKS partition. For some
>    machines, a system administrator may not have a chance to enter the
>    password to decrypt the device in kdump initramfs after the 1st kernel
>    crashes
>
>  - LUKS2 by default use the memory-hard Argon2 key derivation function
>    which is quite memory-consuming compared to the limited memory reserve=
d
>    for kdump.
>
> 1st kernel will add device tree property dmcryptkeys as similar to
> elfcorehdr to pass the memory address of the stored info of dm-crypt
> keys to the kdump kernel.

Is there not any security issue with putting the key into the DT? The
DT is provided to userspace. There's provisions already to not expose
"security-*" properties to userspace (see __of_add_property_sysfs).
Though I think that has a hole in that the FDT is also provided as-is.
However, I don't even know who or what uses these properties.

Rob

