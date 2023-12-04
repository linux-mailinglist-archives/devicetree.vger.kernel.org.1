Return-Path: <devicetree+bounces-21391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C2680379B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 15:53:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41BD21F21293
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 14:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94FEB28E13;
	Mon,  4 Dec 2023 14:53:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAFHXXqf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7992428E10
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 14:53:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F40D4C433CA;
	Mon,  4 Dec 2023 14:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701701582;
	bh=NuRXrq7N3kGS8uwkFtg1Srlgms/l7Ivsv0arLwupqHw=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=IAFHXXqfghi9TPmq3hZ9HtoyYfptiVays5G/rHL0Oh/qzMfnG/09yVgyew/Pjh5Yx
	 iQtNBjLovBwZvXAdxLY04z/TLrhKfjE/jbvuDDdL1lc9AuYilZNBdRsPGVARnnRFjH
	 oFgoLhsPJu6kRVMaUY2YxWNU7qDL4A9hHxojVRgJrQ5KRWmS+H0tIJSEVD5p1rj0Ya
	 XIlUvIU4A55BbHhPmceVxjTfpK98QPtzOhMuBFOKw+bSOs3I620udckcQiYAOssx9f
	 9kzzWOM71Gc7PaEySoWVsT0ZZZhQHzWfck+jlATBFKSB2h5Ng67jrlPA1j7z+E7wCp
	 nKz44afyVm5vA==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2c9f42ccb55so23095971fa.1;
        Mon, 04 Dec 2023 06:53:01 -0800 (PST)
X-Gm-Message-State: AOJu0YxDPrdm4w/qkam64Rk+D6ddd4sRfP0C0hR6nqNJh4it6s1ZRjX8
	YOTpyvSdWTaw6vSnxd7/N7WsvPmhttHEfWCx5wk=
X-Google-Smtp-Source: AGHT+IHkCIk7W6xkoYH24E/xUgUUfHwLDL7y3oi7LnhmU/itgHIKTq9PTHKelorqOMuakQ0gScRN0vRvJbK8HIusknc=
X-Received: by 2002:a2e:8015:0:b0:2c9:f181:7347 with SMTP id
 j21-20020a2e8015000000b002c9f1817347mr1874219ljg.4.1701701580168; Mon, 04 Dec
 2023 06:53:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953C912FC58C0D248976564BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB49531ED1BCC00D6B265C2D10BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB49531ED1BCC00D6B265C2D10BB86A@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Guo Ren <guoren@kernel.org>
Date: Mon, 4 Dec 2023 22:52:48 +0800
X-Gmail-Original-Message-ID: <CAJF2gTSf5dCuYecY39nksczFzuXUvEJ_hLef5tyW0OgLmCDLPQ@mail.gmail.com>
Message-ID: <CAJF2gTSf5dCuYecY39nksczFzuXUvEJ_hLef5tyW0OgLmCDLPQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Chen Wang <unicorn_wang@outlook.com>, 
	Anup Patel <anup@brainfault.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 4, 2023 at 5:51=E2=80=AFPM Inochi Amaoto <inochiama@outlook.com=
> wrote:
>
> The timer registers of aclint don't follow the clint layout and can
> be mapped on any different offset. As sg2042 uses separated timer
> and mswi for its clint, it should follow the aclint spec and have
> separated registers.
>
> The previous patch introduced a new type of T-HEAD aclint timer which
> has clint timer layout. Although it has the clint timer layout, it
> should follow the aclint spec and uses the separated mtime and mtimecmp
> regs. So a ABI change is needed to make the timer fit the aclint spec.
>
> To make T-HEAD aclint timer more closer to the aclint spec, use
> regs-names to represent the mtimecmp register, which can avoid hack
> for unsupport mtime register of T-HEAD aclint timer.
>
> Also, as T-HEAD aclint only supports mtimecmp, it is unnecessary to
> implement the whole aclint spec. To make this binding T-HEAD specific,
> only add reg-name for existed register. For details, see the discussion
> in the last link.
>
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer")
> Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693.h=
tml
> Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc
> Link: https://lore.kernel.org/all/IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@=
IA1PR20MB4953.namprd20.prod.outlook.com/
> ---
>  .../bindings/timer/thead,c900-aclint-mtimer.yaml         | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mt=
imer.yaml b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtime=
r.yaml
> index fbd235650e52..2e92bcdeb423 100644
> --- a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.ya=
ml
> +++ b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.ya=
ml
> @@ -17,7 +17,12 @@ properties:
>        - const: thead,c900-aclint-mtimer
>
>    reg:
> -    maxItems: 1
> +    items:
> +      - description: MTIMECMP Registers
> +
> +  reg-names:
> +    items:
> +      - const: mtimecmp
>
>    interrupts-extended:
>      minItems: 1
> @@ -28,6 +33,7 @@ additionalProperties: false
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts-extended
>
>  examples:
> @@ -39,5 +45,6 @@ examples:
>                              <&cpu3intc 7>,
>                              <&cpu4intc 7>;
>        reg =3D <0xac000000 0x00010000>;
> +      reg-names =3D "mtimecmp";
>      };
>  ...
> --
> 2.43.0
>
Acked-by: Guo Ren <guoren@kernel.org>

--=20
Best Regards
 Guo Ren

