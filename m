Return-Path: <devicetree+bounces-20298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB807FEBDF
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 10:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80BB91C20AAB
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 09:31:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D860838F88;
	Thu, 30 Nov 2023 09:31:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="bhoqoJ2G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DD84DC
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 01:31:37 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-6cbd24d9557so657849b3a.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 01:31:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1701336697; x=1701941497; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j8OBcWs9lPOHMqo4r9Od8zwOOfWlpHAGN+FvmpBlGKI=;
        b=bhoqoJ2GfXNh/2FZPFM51/Bnfdg12IK7mdKxpoSItOTK1I537Ctn9BG4j+D2X76Y4T
         CN6FEtFXyVliMu17iY+dRFVQ7hooXL0NZwIvjUXdY2TSuLYMU75pBfNwvPbufgqSB1Mb
         1YExLfBAlc+qeZHQwVozve7XDlRELYn4obHt7NCAahKlgW/uCxm4ZvFzK473bl7ukyYa
         HEW4vz4HqTq0BfxuAgYaAe9RhmXHvWHHjO/8PHc8abtkNWKBZ84bBGYrKEIckwqqtoYy
         7SN3dE6ud32DQOsLpxyURRYALgzFj3PUPFFCL0Z7ZX3Flo/Mze8S7gugPfM6d5VM4EgQ
         WQEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701336697; x=1701941497;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j8OBcWs9lPOHMqo4r9Od8zwOOfWlpHAGN+FvmpBlGKI=;
        b=uDOXZlg6xBgCcpnBRIiIURDbZUqwJ/AHmEOXB45iyDcSmyakJULXZXyaGk5b/iRDJ2
         Xgfoo1Eq2oZ5XTwfMuUHD44nHZZq7OeKhY07zMg4elEeuzhZccktjmolMdjZwzRjtfMM
         qEV8em2lGRLYpdQwf7djsP/CcERid74jMrPYnD/o8FAFNE+YZXMYEmeWUNv5NGA98XI7
         2Z4M5joZB7TW1D5nBXSOPgEXqdvy6TabUb9K8/HF7vXOLtmstZnhYpM4RVuzIyGAMPWm
         /x7BTpTs0TBPNx53dTd5b7RehPeuM0Kp70tfo3Vh2FQji1bemE3sBA3WiJvH34WJfTSp
         9bng==
X-Gm-Message-State: AOJu0YxDsbsZka7tMEZn5bN8ATiuScuEC3PW6H7N3nGURBRPPep35vuz
	h+6hDN1b+gI+XBFgKW146EXivyB1etxdoSZ0Zg+Hkw==
X-Google-Smtp-Source: AGHT+IF3oL/DbPdKnDGhckZzmA5c9sL11ngMJCD23pKkyIij1ndLdvEWXMDzGlwxpmNWJO35Sc6QYX9lQMcvnyPWdfk=
X-Received: by 2002:a05:6a00:2296:b0:6cb:735c:67af with SMTP id
 f22-20020a056a00229600b006cb735c67afmr31018795pfe.0.1701336696772; Thu, 30
 Nov 2023 01:31:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <IA1PR20MB4953C82499C5D81D2C6A020BBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
In-Reply-To: <IA1PR20MB4953F9D77FFC76A9D236922DBBB6A@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 30 Nov 2023 15:01:24 +0530
Message-ID: <CAK9=C2WAv5jJBt56xBea268DeyUA+YvbU7i+ahVjueafCi-r6A@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: timer: thead,c900-aclint-mtimer:
 separate mtime and mtimecmp regs
To: Inochi Amaoto <inochiama@outlook.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Chen Wang <unicorn_wang@outlook.com>, 
	Anup Patel <anup@brainfault.org>, Samuel Holland <samuel.holland@sifive.com>, 
	Guo Ren <guoren@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 18, 2023 at 12:39=E2=80=AFPM Inochi Amaoto <inochiama@outlook.c=
om> wrote:
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
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Fixes: 4734449f7311 ("dt-bindings: timer: Add Sophgo sg2042 CLINT timer")
> Link: https://lists.infradead.org/pipermail/opensbi/2023-October/005693.h=
tml
> Link: https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc

The ratified Priv v1.12 specification defines platform specific M-mode time=
r
registers without defining any layout of mtime and mtimecmp registers.
(Refer, "3.2.1 Machine Timer Registers (mtime and mtimecmp)")

The "thead,c900-aclint-mtimer" can be thought of as is one possible
implementation of "riscv,mtimer" defined by the Priv v1.12 specificaiton.

If it is not too late then I suggest making this binding into generic
"riscv,mtimer" binding.

Regards,
Anup

> ---
>  .../timer/thead,c900-aclint-mtimer.yaml       | 42 ++++++++++++++++++-
>  1 file changed, 41 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mt=
imer.yaml b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtime=
r.yaml
> index fbd235650e52..053488fb1286 100644
> --- a/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.ya=
ml
> +++ b/Documentation/devicetree/bindings/timer/thead,c900-aclint-mtimer.ya=
ml
> @@ -17,7 +17,20 @@ properties:
>        - const: thead,c900-aclint-mtimer
>
>    reg:
> -    maxItems: 1
> +    oneOf:
> +      - items:
> +          - description: MTIME Registers
> +          - description: MTIMECMP Registers
> +      - items:
> +          - description: MTIMECMP Registers
> +
> +  reg-names:
> +    oneOf:
> +      - items:
> +          - const: mtime
> +          - const: mtimecmp
> +      - items:
> +          - const: mtimecmp
>
>    interrupts-extended:
>      minItems: 1
> @@ -28,8 +41,34 @@ additionalProperties: false
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts-extended
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: thead,c900-aclint-mtimer
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: MTIMECMP Registers
> +        reg-names:
> +          items:
> +            - const: mtimecmp
> +    else:
> +      properties:
> +        reg:
> +          items:
> +            - description: MTIME Registers
> +            - description: MTIMECMP Registers
> +        reg-names:
> +          items:
> +            - const: mtime
> +            - const: mtimecmp
> +
>  examples:
>    - |
>      timer@ac000000 {
> @@ -39,5 +78,6 @@ examples:
>                              <&cpu3intc 7>,
>                              <&cpu4intc 7>;
>        reg =3D <0xac000000 0x00010000>;
> +      reg-names =3D "mtimecmp";
>      };
>  ...
> --
> 2.42.1
>
>

