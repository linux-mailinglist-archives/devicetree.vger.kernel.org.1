Return-Path: <devicetree+bounces-16242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD2D7EE1CD
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:46:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C2040281064
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 13:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B051E30D01;
	Thu, 16 Nov 2023 13:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA065C1;
	Thu, 16 Nov 2023 05:46:49 -0800 (PST)
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-5afabb23900so9136367b3.2;
        Thu, 16 Nov 2023 05:46:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700142409; x=1700747209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMksHTtyECe9fxBa+1TFlBB1X6sF0c8fgEakoogEF3w=;
        b=gi5t636L7Ol/3QDOSMH+fKP+PwvZVwqxOoBhxhw+1A78IqdmfXSFOhnJe6SSvNGzVb
         1N9alt/Taip0SGKktTOJY6CryEHR/esmXT7E+0YZ0L2t+Yay4GwKxZ8uVBnTiRQL8R9L
         tMAZiYlaVA1sPGLGlxkqQhflLqD3J0olvVxpa7vod4fs3v2mA0j6YYwM+sJ+xQ/5kP9B
         kpkjuvZ7iNyjw0ZYd9c9iEmHNDyQn7gJcixJxM1HzorlbK02bodwKNIFX8m3AiEtfGt4
         ogPgPNyFFETIy8vhxKR7YLVcig1qiKTCbhqvDcTk8s/r5qJm26Mlgc2qyphFY/NiP7p0
         YKUA==
X-Gm-Message-State: AOJu0Ywy+QTlcuDnFwxoSD0E2waOewu8UhlyGKNXVJBcQAZZtM7MxMKx
	WcYvCt6rHIJnYO34rGXkdAbwYxaE4A0d2A==
X-Google-Smtp-Source: AGHT+IE+xbYQf1kHUD/kV8rfL2kAWgs4eatMN1heFMiO+gXchGPtA+ci0IvkeXYnHskfDZE07qAbmA==
X-Received: by 2002:a81:c94d:0:b0:5c5:b0f7:1087 with SMTP id c13-20020a81c94d000000b005c5b0f71087mr234585ywl.40.1700142408913;
        Thu, 16 Nov 2023 05:46:48 -0800 (PST)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com. [209.85.128.182])
        by smtp.gmail.com with ESMTPSA id v207-20020a8148d8000000b005a206896d62sm998237ywa.111.2023.11.16.05.46.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Nov 2023 05:46:48 -0800 (PST)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5afabb23900so9136137b3.2;
        Thu, 16 Nov 2023 05:46:48 -0800 (PST)
X-Received: by 2002:a25:b4b:0:b0:d9a:be79:c902 with SMTP id
 72-20020a250b4b000000b00d9abe79c902mr15874410ybl.53.1700142408226; Thu, 16
 Nov 2023 05:46:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Nov 2023 14:46:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVGL8-jpUV9M+J_EhcB7=XfyesreFBPf6Jtvg6Cq_2xTA@mail.gmail.com>
Message-ID: <CAMuHMdVGL8-jpUV9M+J_EhcB7=XfyesreFBPf6Jtvg6Cq_2xTA@mail.gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/Five SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, alsa-devel@alsa-project.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 10:34=E2=80=AFPM Prabhakar <prabhakar.csengg@gmail.=
com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> The SSI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-ssi" compatible string will be used on the RZ/Fiv=
e
> SoC so to make this clear and to keep this file consistent, update the
> comment to include RZ/Five SoC.
>
> No driver changes are required as generic compatible string
> "renesas,rz-ssi" will be used as a fallback on RZ/Five SoC.
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

