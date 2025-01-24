Return-Path: <devicetree+bounces-140812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F1448A1B851
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 16:03:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A09833A439E
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 15:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43FA578F57;
	Fri, 24 Jan 2025 15:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MI2cX+Qk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1841514A624;
	Fri, 24 Jan 2025 15:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737731026; cv=none; b=oKvXMPEAtFZSGLOt+Lk6QJcTGUpf7CVsZQjWXZ5BzcwWFgW+elB2NtkPokKTG5YxqjQg8FNc5ypaMMkek6chrJsoYMbeJTPrV3ycYck6DE+rDpIRj+VDkzVhHPDbGPXE0qT5Wtsts9lmC89BoKrRZhcJLZtTNIWdKarhkZA9nx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737731026; c=relaxed/simple;
	bh=jqkOR5IaLZypgbg8zfK8rZbCZ7q9h48m/tKpfA0HnBI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YhCYhCQg4vVLUxXWs2KBuruGjwZwVVAtgWHl4PGQZ0Af1V6Z0+AoT1XU+oqC6kZYrKTsw0seJIAtGNLXnFTmT+12BVPyjrTW51MgW1kTLdqmaOGKoVkS+hZrLVy7ZvS6xHA6Tf3YQoZffhRIP1dxtCyLGC4OFs/ZLuODlV2ZxOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MI2cX+Qk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21586C4CEE5;
	Fri, 24 Jan 2025 15:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737731024;
	bh=jqkOR5IaLZypgbg8zfK8rZbCZ7q9h48m/tKpfA0HnBI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=MI2cX+QkypS+qBF/LY+cf6VrxYgFmslmBJLGfPMrEdKIdmmtYvFgfDFPKHKst87gx
	 vvUHvFnMphzn3FnsdGeWzQ0DqgVcBTMcPrrCSY2KeRvbh930V0IxJAiYHTV25o5Yaz
	 fm7ZbzJ0HCu2MFuY12KPV5I7o1aksB/XdVCM3CtdTIntEThFrcqAJnCd+8H0PbHS2K
	 yOSXKU42WTSh6Phg9mYP0aKkARo0xvYOFKyNC1UtVPJ8jfKqJHnsdV7BQZQQMSQ1+0
	 V1qnMSrBtBpWBMNlTqiiE7ZXke+M2oMgBD/70a8D2jIXat/8ths9216EqdzII/pVNj
	 Op96UUrcGkbmQ==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so2306266e87.2;
        Fri, 24 Jan 2025 07:03:44 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVIYmY8KUkWXIryOskVBL3ZPIwKt0m+DzfQKtFTfQwNVLUKAm5iOvvEfeuP/Yq9NbGGXc2eKleuEBeJ@vger.kernel.org, AJvYcCXqouGiVMnJ5X7+r3IVXVM3ewomjSUALLekVXKTTSSt46X3SP3+qTuFSHPfpRJhxO+/3jU93+rEdWNGm9g6@vger.kernel.org
X-Gm-Message-State: AOJu0YxzA/VKQRY2oLs71IzaOWDTnttsmg4zsXzPXBlv//N4MGR35yh/
	a3fZMC0EbZYbYul7NUw8SQUCNz7290K9+P54UVNQi7FxTmfvC0TTx77VtIvUoxn3P2iaGj/Fh1/
	djB2PkhsbA5vUqsoCxRliDjkX6A==
X-Google-Smtp-Source: AGHT+IFHtEAdJXXHuiJ86yZqtWULD0NzbhXIAQW296neg2pXJ8HoxEuCLy+oIz/vD23sgKBZqAjhes8fwCcW8yzQ1JY=
X-Received: by 2002:a05:6512:aca:b0:542:a73d:a39c with SMTP id
 2adb3069b0e04-5439c281150mr12219584e87.49.1737731022443; Fri, 24 Jan 2025
 07:03:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <6592d024-8d43-4b0c-8036-16df2bac9446@nokia.com>
In-Reply-To: <6592d024-8d43-4b0c-8036-16df2bac9446@nokia.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 24 Jan 2025 09:03:29 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+KhUj9AbUMAjDdFXKRCyotrLtn3kx4qynM1ao4YueCCg@mail.gmail.com>
X-Gm-Features: AWEUYZl2r9s5bG-7fBObIw5WZuN8z4mtnmgdcfijk0mKky4SL6VmDNbZJ9j-p1o
Message-ID: <CAL_Jsq+KhUj9AbUMAjDdFXKRCyotrLtn3kx4qynM1ao4YueCCg@mail.gmail.com>
Subject: Re: Keep bootloader DTB when ACPI is enabled
To: Stefan Wiehler <stefan.wiehler@nokia.com>
Cc: Frank Rowand <frowand.list@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "x86@kernel.org" <x86@kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 21, 2025 at 2:18=E2=80=AFAM Stefan Wiehler <stefan.wiehler@noki=
a.com> wrote:
>
> Hi all,
>
> We store various metadata (e.g. IDs and serial numbers) in the DT which m=
ust be
> consistent over multiple product generations; therefore we enable CONFIG_=
OF
> even when ACPI is used for boot. On such ACPI-based (i.e. x86) boards, AC=
PI is
> used for boot while the DT holds only product-specific nodes not of any
> interest to the core kernel. While this is currently not an issue on our =
6.1
> kernel, I noticed that commit 7b937cc243e5 ("of: Create of_root if no dtb
> provided by firmware") drops the bootloader provided DTB if ACPI is not
> disabled [1]. When one removes this check, several warnings are emitted b=
ecause
> register_lapic_address() and topology_register_boot_apic() are called fro=
m both
> ACPI and DT initialization [2] [3].

I think both of these issues are fixed by this series[1]. I intend to
pick up patch 2. Patch 1 can go thru x86 tree.

Rob

[1] https://lore.kernel.org/all/20250105172741.3476758-1-dmaluka@chromium.o=
rg

