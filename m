Return-Path: <devicetree+bounces-17264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B047F7F1D3A
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 20:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6EFC01F2576D
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 19:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C69834568;
	Mon, 20 Nov 2023 19:19:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C692DC;
	Mon, 20 Nov 2023 11:18:58 -0800 (PST)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5ca164bc0bbso16086097b3.3;
        Mon, 20 Nov 2023 11:18:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700507937; x=1701112737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GifO7/JOpk0NmY1mNUiYBsJ2MaEkt42xKaLVw+ulB/A=;
        b=j/X/pu4PsJt1neN8AhYk+mvnpLy3S5NCW/fMYBYEGUGD6YwXWv0JdJLeDTXfgsWm8v
         ZKO/l4rcY+DN9YWHyHiLBcNCTTI1Bst1+1H3UhJ7Kv2Ce/p2Qf5yTa9QQ/tO587789ni
         m1s8wjINWe6tPNf/oY3F7jI+dQ2bpJKXGNgKRzqN0IgBMFsq69fs4TGHcVW5hsfvUUI6
         kbKVSliKLR8ww+UIjErdUFxw4g2nhZjTkNx/KUBHsor1tqKQbmTLah50DyhcehcqL4pr
         gw5BzyH2b6WhlT/8rO6aP/KmN05ZVGvdRHeJMjFy3LttoDxurc992p6AkQgFHZfFhtKF
         TfbQ==
X-Gm-Message-State: AOJu0YyJLL0KoJf3mIbDST8xun+fle994yo+g5jd4e9nIRYsLB16MCZ1
	w6SHNpnv1AhI4TWwFtwYrkGuKlq7JucuXQ==
X-Google-Smtp-Source: AGHT+IEKdxVslAs4lK2SU9f3DeKTzFiFHV1s9HlcTDGXfGnuFAe2XPArvKNPLD8UxlJgQor2VqYq8Q==
X-Received: by 2002:a81:7e10:0:b0:5ca:67e8:4fab with SMTP id o16-20020a817e10000000b005ca67e84fabmr3717057ywn.8.1700507937165;
        Mon, 20 Nov 2023 11:18:57 -0800 (PST)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id z126-20020a816584000000b0059b50f126fbsm2527313ywb.114.2023.11.20.11.18.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Nov 2023 11:18:55 -0800 (PST)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-d9a518d66a1so4334191276.0;
        Mon, 20 Nov 2023 11:18:54 -0800 (PST)
X-Received: by 2002:a5b:f4a:0:b0:da0:c49a:5103 with SMTP id
 y10-20020a5b0f4a000000b00da0c49a5103mr7300082ybr.47.1700507934171; Mon, 20
 Nov 2023 11:18:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <19358871-009d-4498-9c13-90d5338b1e9f@amd.com> <76fa8f61-fe31-4040-a38d-cc05be3f4f17@linaro.org>
In-Reply-To: <76fa8f61-fe31-4040-a38d-cc05be3f4f17@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 20 Nov 2023 20:18:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
Message-ID: <CAMuHMdW4WPJT0Km7w8RWrGJaztk6QDGoFAn0bdGbrEsw81R1FA@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Michal Simek <michal.simek@amd.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krzysztof,

On Mon, Nov 20, 2023 at 3:53=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 20/11/2023 15:01, Michal Simek wrote:> >
> > On 11/20/23 09:40, Krzysztof Kozlowski wrote:
> >> Document preferred coding style for Devicetree sources (DTS and DTSI),
> >> to bring consistency among all (sub)architectures and ease in reviews.

> >> +Organizing DTSI and DTS
> >> +-----------------------
> >> +
> >> +The DTSI and DTS files should be organized in a way representing the =
common
> >> +(and re-usable) parts of the hardware.  Typically this means organizi=
ng DTSI
> >> +and DTS files into several files:
> >> +
> >> +1. DTSI with contents of the entire SoC (without nodes for hardware n=
ot present
> >> +   on the SoC).
> >> +2. If applicable: DTSI with common or re-usable parts of the hardware=
 (e.g.
> >> +   entire System-on-Module).
> >
> > DTS/DTSI - SOMs can actually run as they are that's why it is fair to s=
ay that
> > there doesn't need to be DTS representing the board.
>
> I have never seen a SoM which can run without elaborate hardware-hacking
> (e.g. connecting multiple wires to the SoM pins). The definition of the
> SoM is that it is a module. Module can be re-used, just like SoC.

/me looks at his board farm...

The Renesas White-Hawk CPU board can be used standalone, and has a
separate power input connector for this operation mode.  As it has RAM,
Ethernet, serial console, eMMC, and even mini-DP, it can serve useful
purposes on its own.
I agree it's not a super-good example, as the board is not really a
"SoM", and we currently don't have r8a779g0-white-hawk-cpu.dts, only
r8a779g0-white-hawk-cpu.dtsi.

The RZ/A2M CPU Board is a real SoM, which can be powered over USB.
It has less standard connectors (microSD, USB, MIPI CSI-2), but still
sufficient features to be usable on its own.
Again, we're doing a bad job, as we only have a DTS for the full eval
board (r7s9210-rza2mevb.dts).

I guess there are (many) other examples...

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

