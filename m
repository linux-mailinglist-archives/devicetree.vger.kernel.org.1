Return-Path: <devicetree+bounces-252829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC70D030D4
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:33:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E025730F51EF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18CD53A9DAF;
	Thu,  8 Jan 2026 13:04:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709803A9D99
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767877462; cv=none; b=Py9xpLdXFweDHGIhV1/noWPgPjQ19mik7zqciJoL7fZhntWZ58CBuvyfrgmOFRK9hEdI1d0UaK5qmNNYvyuFAVyBPNuOZayQT0rL3zU1WNqR7oR05N1i81K4MMVzDJa1hpcQpyvETyY1dCmf7+ryfRPY4Ftp5VHzaCkxbOdHnN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767877462; c=relaxed/simple;
	bh=XZvwqS+jsAeIhALYdAWVKBMPWdSDj9aad1HrDxmlGGE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gJs2x8MQcBQijJDh6qn99omzJLXUTRRkREx3aAPErTo6vPKSjxuBz8JvBjhOaFvFaeYxJDWGEfLCLhTGlzsYMu58WPWZLktbQkdkxWhoahV0l25f5cLlAuqsbKVpvNqzs0bvWaf5UkIdOg+h/jn7fddnCS1E8eaXMy4tXwePm+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5dd6fbe5091so1283026137.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:04:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767877459; x=1768482259;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SrO9zRt37GOdI5DNpGPAMnrfJ6NBOxJta+Tmw2fjNH8=;
        b=tJ3k2DM4kgVex81EvwMc2vozuckV0zk4W7/xfYkWGF+OPKeC84IHgDTeoHbENUqWhH
         Z2EJjFSIdF9l6qaQyOdiDlKk29zh8QyehWFOs2xsiKwq1TsWh0ABs4MtIXaO7PDhwUcl
         k6vs71s7rmeNFe4vpryqxVpkfaSn3sV2QGT0pV4VZbn2KGMVvGCpi0XAoTg8RbAdZaZi
         9nmV7tcZMZ/y+hsRSt1vK/F50eTl9NiGr7AEZqzOZZFO6M3wyKyHfLTWQ2br9epVFQAL
         9bI+N+lDBMo0+CTzJCFFp5dA22YBDAwwWhYZWf2s7jCGN4lhR+0DqQ4soTi67Vh0fHFL
         Zsdw==
X-Forwarded-Encrypted: i=1; AJvYcCWrS551o9p2zt09OEYxNfUXEe7z6S4rF+Elx5nMjG3+FfDziGyzchFT/MicmJol0+wvCPU9e4/Lpmx1@vger.kernel.org
X-Gm-Message-State: AOJu0YwGbScoG6mQGfvlvFiR+tT0WJZlXaMCikufAv6eZC+hkid5sEqs
	lIChOklzYLQCONoAegFPR4KIGgmCSwtg5HKg7wLuEkrMwBrN5NpneUVJEz57qhac
X-Gm-Gg: AY/fxX71d00KiIU+LJGj7kjw683Lz3BNbc9xMLL6Smj6y5czzDeHQ3G3hTlB+n/zHnV
	+8gft6wh0chIJmRCzZbVbvQYa3ozyhk9ZFXiPw2/UcaBlbes0EgAfsSojmpr7k/Uc6qpaqt2iYG
	rgUtSIosXPx2nfQqcGK8kAmcvtM2XgV5pfpsugmhKUpdHyAFmeRM4joZuPn4YjZwLqGm5iRsjzL
	DB10g4gUJ1//VC1L/VXlW0FN9U70n8wmdCa+8S/MXcTJBpVitv4JrN9F9eQvfx9h+XpkmAmw9ng
	cgeOvW568jL+Pe1IJFRgo6Xmb0vX93oaByd7fcjZ2Q0N346YWp8GNT25xgv0ZIAlHFSw/R7KFTb
	dss122pls7yL7B7njv3NzeZaFCvmz74zwaJSXJVXFTJ8rJULdP0rPJups3TXs5GHC2lztzCeIUx
	kfmn5zbTG0O4bvAIa8ncPXgKw0PaA/CedL6/Tku+UPHINzijMi7q2A
X-Google-Smtp-Source: AGHT+IHsqiJLs4e7sQrVEcxbJJHW89vp1Mxl3FPrps496uLRHCktmdSYNKKy1/8GBviv12hsJVXMrw==
X-Received: by 2002:a05:6102:38ca:b0:5db:e6bf:c4d7 with SMTP id ada2fe7eead31-5ecb6945990mr1985779137.21.1767877458662;
        Thu, 08 Jan 2026 05:04:18 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ec772afecasm6073888137.11.2026.01.08.05.04.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:04:18 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-55b2a09ff61so983738e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:04:18 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUqLuf4gATR98Rt00mU8hd4esi5FHjN3Fb08KSfSGNh0Ga2Iug5/BGt7zGG/jWD0CLIU1plRCUHSWyP@vger.kernel.org
X-Received: by 2002:a05:6122:459a:b0:55b:74ac:72cf with SMTP id
 71dfb90a1353d-56347ffe7d5mr1958171e0c.17.1767877457238; Thu, 08 Jan 2026
 05:04:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222164238.156985-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251222164238.156985-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251222164238.156985-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 14:04:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWCskceV-qQiUsPtzy8U_c-rsoFzUHfm3fsrq3CkXtg_A@mail.gmail.com>
X-Gm-Features: AQt7F2omPZfOymJvVL-98Gc9JkTT2LJ5zulg4drLZ1sGbSGINVgaTY7EjNWfHWk
Message-ID: <CAMuHMdWCskceV-qQiUsPtzy8U_c-rsoFzUHfm3fsrq3CkXtg_A@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g056: Add RSCI nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Dec 2025 at 17:42, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add RSCI nodes to RZ/V2N ("R9A09G056") SoC DTSI.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

> ---
>  arch/arm64/boot/dts/renesas/r9a09g056.dtsi | 220 +++++++++++++++++++++
>  1 file changed, 220 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> index 5740f04a6222..35cd6b70856e 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> @@ -922,6 +922,226 @@ i2c8: i2c@11c01000 {
>                         status = "disabled";
>                 };
>
> +               rsci0: serial@12800c00 {

I will move these up (between rspi2 and i2c0) while applying, to
preserve sort order (by unit address, but grouped per type).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

