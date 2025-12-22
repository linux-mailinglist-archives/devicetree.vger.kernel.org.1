Return-Path: <devicetree+bounces-248844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 92091CD61BE
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:15:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D25113038F5F
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 13:15:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1779C311941;
	Mon, 22 Dec 2025 13:15:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 859091397
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 13:15:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766409322; cv=none; b=QM+rC7pZJFyF49WLWpoBKzAqZFc1W6za8QmPFYCBQyn/Bs+61FcQa+JvCYsn44Gipplxy1aRHXEScFstL0I/lJIs9YtJm7hCIccAzN5F49iuHceQtZi7dyD4+JVtfdis4JQYEi3rVXQVHlaKjBNKTIa2oyokyxH96mGB5vmvlxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766409322; c=relaxed/simple;
	bh=ZhHsW3S9YUoSjegy62mPLAlBStOAyYM9jqR/nYd8tPA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NxtzAwWnLuc+3uMU/MwLfHWZ52ByqoyHFP3ab3b/0Em0gTcRzXiD1Av2N4WiOMmeDOCqupLQ8e5VLzli19Ho680EUpFLgj1HMfSKlmxOkyq06susYN94zTwVfMtmE1jqSRMPYwhyJzR/W1b885ut08oWxSxQbj2NPVWgf1PVO4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dbd1421182so3195401137.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:15:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766409319; x=1767014119;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IcUiSgx3pQkHLSSfq6LWa0UZZHW6mL//z+OpK/t8OrY=;
        b=vl9r37Nnw+w98wocgEplboWdHSKfZVqvjE5Rq2KlRt7cH8uiuRX5ZxslmKE7ChSNHa
         M7w8DVN19i6uxaRshhtaNRB1SA7JY1b4oTNcvcnDMbRhOo5jyrHU30G8LyrLpsvLHfVy
         eT28grX6XXFKn8ZLEPgwMYjD3s2mxPGcZ/undmZGval5QrE2o/05fhsV83qllVntgJ4M
         zNNhaxYU6wCo2nwhm2NH4vnBBP/VlvQCRVeoZX+Cy/lTMxb3mvxJwqd0rzRwbpt0Z1YZ
         vUY9xj1XTzTGzMzQjQiycJjPHp+258ljYb0PuFtHEx1+0ADBY7rSyl1CR1bt5nstgISQ
         V7mg==
X-Forwarded-Encrypted: i=1; AJvYcCVleHRHZFxP7lUlgpuH/nfVdJoKPbfaCuQKChSSmLOTRBrkXFCZahPDlrkXPKH+Jv9Sadw8n4odyNjH@vger.kernel.org
X-Gm-Message-State: AOJu0Ywz1HD3/jRKl0crsahDBA9de46eb4i2DouU1Yxk5f+yApWkXHGq
	MN09O3gheHsM9MZ9HkpxvLvNmWCa5RW/iNq17AGfYHZLzn4ylq+/QS8mqBIkejNv
X-Gm-Gg: AY/fxX7kAabipnjtNJoTm8/S2sZw1O5XE3RZoSxH5/GmR5EKNTv7LtIe2R5LDz3IsCl
	MgyLlVTxHmnKJoGm5cW0YNBq0I7CFGg1CQ1EaNrmjRftGmlC7Wm6K38DAGO/S1bnJ1e63ki8MSk
	BFhwSfIRvNeV0PPVDvz3QhCmju/mFjPlOckeZbtMsUSvG0dO/DrkDGqCcZXWnUAh+4lTt2l87kT
	2taopJ3ECD+GKWgmUDuKfVd7Uhz07s5BRHedzZqUHr/MUSqnb+D2O2VnsSENE9DVg1syZggOSWI
	s6NRJI18X1k+M2N6azX3pYZYSop4FwMGp1WKV9KKw/0mKNo6QMzxKG37koJLaTKsA+7mtDoWwKW
	DmAtfM+EX31nQzdPTIMF2SHXtqPpH1abpdlqrL366p5gnfoZFLaOLw1NqrlY1rTHrML9ueOBPRi
	gN+q3jam45I6FXD6bliqifoATDZWnV98vXZ6UD45IUBbJj0DrJkJEg
X-Google-Smtp-Source: AGHT+IGFzVWcjiYb7aKwDaIlmJA5iHR13a4TNTVLTd6NopBzINvnwXkL1G47h9QwV77iLBlXnx86PQ==
X-Received: by 2002:a05:6102:fa5:b0:5db:e851:9395 with SMTP id ada2fe7eead31-5eb1a6250d0mr3595735137.7.1766409319221;
        Mon, 22 Dec 2025 05:15:19 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5eb1aa4f338sm3390649137.1.2025.12.22.05.15.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 05:15:18 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-55e8c539b11so2717455e0c.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 05:15:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUg49M5hMvhksrwfhBmmYTbmSwkN+AhmvkDOrWyLVxNVVMbKMUASjJ8Zb/D4aUbr5RcS97NkLeKGbm3@vger.kernel.org
X-Received: by 2002:a05:6122:884:b0:55b:d85:5073 with SMTP id
 71dfb90a1353d-5615bd1b390mr3957926e0c.4.1766409317545; Mon, 22 Dec 2025
 05:15:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251201112933.488801-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251201112933.488801-4-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251201112933.488801-4-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 22 Dec 2025 14:15:06 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV=EZ91vbSy6ERqAaqw1NS84YcSb=U+vpn1HOgfD7gc4g@mail.gmail.com>
X-Gm-Features: AQt7F2qs0dzE7Djz_tZTnMZpD2dpNyOacgpQC-w98qVoDCy5Yl_6g5hk_uTc-es
Message-ID: <CAMuHMdV=EZ91vbSy6ERqAaqw1NS84YcSb=U+vpn1HOgfD7gc4g@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: renesas: r9a09g077: add ICU support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Mon, 1 Dec 2025 at 12:30, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) SoC has an Interrupt Controller (ICU)
> block that routes external interrupts to the GIC's SPIs, with the
> ability of level-translation, and can also produce software
> and aggregate error interrupts.
>
> Add support for it.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> @@ -862,6 +862,79 @@ cpg: clock-controller@80280000 {
>                         #power-domain-cells = <0>;
>                 };
>
> +               icu: interrupt-controller@802a0000 {
> +                       compatible = "renesas,r9a09g077-icu";
> +                       reg = <0 0x802a0000 0 0x10000>,
> +                             <0 0x812a0000 0 0x50>;

"<0 0x812a0000 0 0x10000>", as per Figure 5.1 ("Unified memory map").

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20, with the above fixed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

