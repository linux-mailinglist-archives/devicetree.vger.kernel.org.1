Return-Path: <devicetree+bounces-16246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BDC7EE1E6
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB258281037
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6B0730F96;
	Thu, 16 Nov 2023 13:49:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFB3E8F;
	Thu, 16 Nov 2023 05:49:10 -0800 (PST)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5a7d9d357faso8785587b3.0;
        Thu, 16 Nov 2023 05:49:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700142550; x=1700747350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P1Ku/zmxTW3EJ14ZGSPwQJRq9NOGMsjfK91kYUMoPFQ=;
        b=EArBMav3NNfnQsEE7Rm7zM5LulRbQJW9YY/v5CqmaKCfsNZLdEi/rsPc4NfaYOa+mM
         lyH1rQgWdlvG7g40erf7L0ZDbKBw9e7PbbegiDAlnrrSRzxjq0lQzvuGYzOy0G00O2h2
         ifYwKjWiwPqiRfL+sDaHTISinTgWkHoguPUfg0vGCOcj0mUyb+hCMObUDS5rpCbUN96g
         47JZveHWXnkXzT9i+P2e8LACSJhEbkeqDXIQpkAJsMjw2YdeEMv7KvWSvtWgGU1jS1G7
         TZV6oxcCJ4Jb0AjkNcMiwYfdH87p443wWodOiyvlaC3WH3tK22I+D0N3EpFBunkwsCtg
         Q08g==
X-Gm-Message-State: AOJu0YytzgA0WMNZ9JRfcGmKMU0tQG1oKC8d0t/cVtRNgUr68abt93L+
	/BlVJXl71YWnSieM9Jm74QzTCcVINowUtQ==
X-Google-Smtp-Source: AGHT+IGedtCarwUlNElo+fJvZ0sj0Vn47f/spUE+TLoZ4cRZ16Peq2gT+WF7kn41BejCCtZXTzWRrg==
X-Received: by 2002:a0d:c346:0:b0:592:a65d:387c with SMTP id f67-20020a0dc346000000b00592a65d387cmr14037531ywd.52.1700142549749;
        Thu, 16 Nov 2023 05:49:09 -0800 (PST)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id g184-20020a0dc4c1000000b005a2521fb26csm993508ywd.99.2023.11.16.05.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 05:49:09 -0800 (PST)
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-da7ea62e76cso822831276.3;
        Thu, 16 Nov 2023 05:49:09 -0800 (PST)
X-Received: by 2002:a25:b120:0:b0:d9a:c7af:bb4d with SMTP id
 g32-20020a25b120000000b00d9ac7afbb4dmr15046211ybj.37.1700142549098; Thu, 16
 Nov 2023 05:49:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115212908.33131-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115212908.33131-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Nov 2023 14:48:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUCVTRu3JGrsZ4YjLJmzq7W1fRQ2+KkSvecGDnff=yinQ@mail.gmail.com>
Message-ID: <CAMuHMdUCVTRu3JGrsZ4YjLJmzq7W1fRQ2+KkSvecGDnff=yinQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: timer: renesas: ostm: Document RZ/Five SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Chris Brandt <chris.brandt@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 10:29=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.=
com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The OSTM block on the RZ/Five SoC is identical to one found on the RZ/G2U=
L
> SoC. "renesas,r9a07g043-ostm" compatible string will be used on the RZ/Fi=
ve
> SoC so to make this clear and to keep this file consistent, update the
> comment to include RZ/Five SoC.
>
> No driver changes are required as generic compatible string "renesas,ostm=
"
> will be used as a fallback on RZ/Five SoC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

