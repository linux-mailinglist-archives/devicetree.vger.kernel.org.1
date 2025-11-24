Return-Path: <devicetree+bounces-241678-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4237DC80E0D
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 14:58:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F41C94E30FF
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 13:58:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7034D30C34E;
	Mon, 24 Nov 2025 13:58:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6D4830BF74
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763992689; cv=none; b=Yyt97k69BCyvjrQMPHYjB7ClHCHUswtHgheuKQtQ4GQP2P/C+/vfsVfYnXleQ9a6VfOy/BV6XKjU7LnrIriii59tzW5aDxFjwXXrf6WKtzs+wA6PM3kWPB7tzGMV06WpX+RTGvW0qfmUlpRIslEpeIgGu3aKBAIPUghZtHPepfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763992689; c=relaxed/simple;
	bh=iws3eva23TPXW+rh5mIO5/IOoVHz8oaNGl6pbntaMuc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gA85SzYIUW/zt3zuMXjEFO6K78WUaGB1z8VRKc5FWw5VsBue41z6n0u0ZVgs11lj32LLSmbQHWrJQWRBpKyB5uykypo1IRnF6AAHWMH5h3auaWwa6WXdPS5sOOV17fDkgm4YUfwTcGTLarHS5HYo+IIuhSmZCC+UgxQYBDX8yvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5dfae681ff8so3073723137.1
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:58:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763992687; x=1764597487;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ykucdFE59L9Nevr96eV8Z6/LL0QSMldnSXeLmS52148=;
        b=A8kPyjFi1c68mlWtQFD5NabAJIYR6jp0lQdSZFNoO2J4TwopBecsz8zI+TVuBlhS6P
         hFWNrVUBGMlGw5OR6cFyZs93b9GCwFVSs5iEWMo7MK73imK3rN+1l+Z6yA9O0MbYqeiw
         G8La57J+X2wJv5TO9XIsjiHA8Iq/XsAkh93kkh3mDfcfNqd2vuP122xhndaUdG+CNyU4
         iEINUwc1sAeuegNzyX/w9oXpvYPU1PXZBRZW/oGyWnmPcYRzGqwQWOpfNYmKhk50VDeh
         EM0i/wWdP0nh3bRCUMiXpTTdQaG8bi6m/DijHLtOtKyZtgTQglN7ax4uiumUoAckOyuN
         ZhTQ==
X-Forwarded-Encrypted: i=1; AJvYcCWaO3S2KcDAV7+pVgm7rqUeS7y3AmZ+z+Hr4sQcRmYmAWRbpZjTT0ykHIRNVG9ErAC57xYn6kRcpMBK@vger.kernel.org
X-Gm-Message-State: AOJu0YyYh1dyhJ8OR1HSh5/Pd516ospG4j/1Nq64AgtAILdcphI4tvub
	AjNjcY70UXvM969fUACqOwJQ1ljnbYi+WoUshlAc2aUL/gfvmHF9fG1ts7oXbSTm
X-Gm-Gg: ASbGncsQAvF65tlrSAuahBJPpdcmI5bdMf+a/7MMPdfE5zLa3hiliMb9WY5tnr/sP0h
	XmVKfBPSwh30smNvIWR1GR5QRYPamGJIaf42dQPTwTe4BEwuu1khUZlELuiaM5q3FPHdgwC7Qtc
	VY6nThVAS76xFRu+qq9xOjyT0Qmzj0mN6UXDwm+eMgPwybNswfPT8B8+viG6fTgPmF6Y2Dj/50z
	ORx17VTvjHXgPK1kGxSfUjg+8nbbI97xRCxDd1rUtXmY0SrY6KFoOLJ/xFZkR/bhVT8Y09vrHAD
	c61/AGiNS1r+E4ij51/+PrBicrxa+GHeRf9SDtP43uanUUSUI+BnDM09ONi9KknPFPby4w37+Wi
	vFnGeVrYNyqT61XrCJtcx/xpFDnNZmiSCH0CjBVRsWMsOGa7ZHVBqqPp+lzfAxrzNZ4fVtRB7Ld
	lY83sTksRtY8cu4PmElH0wH/lxFQ9xkzZIYKBZVad5fVE3GQJa
X-Google-Smtp-Source: AGHT+IGuhMsAK37dqA+OdOXSqfnIQphOJXiJ7puPiCUlq09pp34HAi8VlVxUSs+14TDOf+/GY2DRQg==
X-Received: by 2002:a05:6102:8028:b0:5e1:86cd:21b5 with SMTP id ada2fe7eead31-5e1de2d9e61mr3804193137.35.1763992686690;
        Mon, 24 Nov 2025 05:58:06 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-93c56519706sm5424285241.13.2025.11.24.05.58.02
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Nov 2025 05:58:03 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5dfd380cd9eso3020584137.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 05:58:02 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVHw3Ss1PRNaP2ByEMieg955wyYdGIqYxhKnelT1zGv6+DChGNU8yZbdlZGSefjSa0bWIs2XsnKq8pY@vger.kernel.org
X-Received: by 2002:a05:6102:2c1a:b0:534:cfe0:f86c with SMTP id
 ada2fe7eead31-5e1de0881aemr3833668137.15.1763992682241; Mon, 24 Nov 2025
 05:58:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119110505.100253-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251119110505.100253-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251119110505.100253-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Nov 2025 14:57:49 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWOBcbBuOuWfGOhWz1B=smyCfn7B85x7+GrpzOtjxU_XA@mail.gmail.com>
X-Gm-Features: AWmQ_bn3eruhhSU649jBikvDseueVwHpIt-LD0RrfDio-L_YtIrX7MMwJtyBjo0
Message-ID: <CAMuHMdWOBcbBuOuWfGOhWz1B=smyCfn7B85x7+GrpzOtjxU_XA@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: renesas: r9a09g056n48-rzv2n-evk: Enable
 USB3.0 PHY and xHCI controller
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Nov 2025 at 12:05, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the USB3.0 (CH0) host controllers on the RZ/V2N Evaluation Kit.
> The CN4 connector on the EVK provides access to the USB3.0 channel.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

