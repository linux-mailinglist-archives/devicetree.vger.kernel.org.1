Return-Path: <devicetree+bounces-5531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 783047B68CB
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 14:16:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 28FD52815EE
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F55E22F09;
	Tue,  3 Oct 2023 12:16:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5B7E21369
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 12:16:27 +0000 (UTC)
Received: from mail-ua1-x930.google.com (mail-ua1-x930.google.com [IPv6:2607:f8b0:4864:20::930])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEB20B0;
	Tue,  3 Oct 2023 05:16:25 -0700 (PDT)
Received: by mail-ua1-x930.google.com with SMTP id a1e0cc1a2514c-7ab9ad973e6so378884241.1;
        Tue, 03 Oct 2023 05:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696335385; x=1696940185; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2aJXJTRX+A49HmWEadFvnUyvtH0TUvh0ZRZBc7dCwk8=;
        b=aF1JSiIJiAJdKS0BHyjgu9ISj6EB4iPngTN7uAi7XPA+aUI2krvX1O0rD1IFOj3cXS
         6dvBPUh6OlHqEnmDces9/rJgtQZcelRzluyMHGK9zuelwGE0ecrjv5uYqLIK4oY6ESIh
         llHfqmK71Ohm5UA7cuaGbu8BGmxoVJuZCYEGOfgi5IG3K+ARsAOzKl3r4tDmWH3B6vPM
         aCPTEcn7cFn4wqNjy/QxO3y3mkKm8WJeTH4lNca4KEXFhPRH3uWcnUGzTPrzdAh5sGqF
         CbmyDQdMb1WqrFBmAGqZZGD4gsDzH7UMKDqLPM1mMTs84KgR0ayHvg/VBjyiFhqxI9PV
         iy2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696335385; x=1696940185;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2aJXJTRX+A49HmWEadFvnUyvtH0TUvh0ZRZBc7dCwk8=;
        b=Bcn9nqlbCsv6VcV17bKvbtXHo1VdIDyZa9AX8B9Nmw8hVipr/gQqxmdfjidw4+7BuV
         nHAzPFACFhKwNnSc+GAjGVKwCQ4tR8t1ZPEticmTAHSQ/xCLjslZdRHWIKo4FluYATCa
         0az+OEi42KJP04gsQDmb67GM7nMYxnRy8OY4SpIs9myKS1sIEgtja3wFjt6sYXSZVHBh
         W2/dVMAAxpqYIlQjOrSWmqrxYkN6njOLKFdWRfTuYRYIJ6w2Z7Tc9IVjYsRPTl4TuZOI
         9WCnv8ScmtLispJ++IKp+iDg6Kk/LO71GiPygDHbq17a4ZqDSc0g0WH+4l87oGd31r4Y
         dX/A==
X-Gm-Message-State: AOJu0YzrRNfc4D3yhqDhnrfnRPsmbWFJfQchzL7gyuPOdCVE0kZxMO8k
	DKI1TU73hlXAebJdTssGwyC2xb1L0uPvSkrFSV0=
X-Google-Smtp-Source: AGHT+IHV5UsJWVVSXMIRZx/sVjTvLDn9ViHAtq/f55MJnJ9GaNOZsO0f5MhInSprCBQHhILYGp16aP1HyN0PvWvs1bM=
X-Received: by 2002:a1f:d6c2:0:b0:495:d5a4:513 with SMTP id
 n185-20020a1fd6c2000000b00495d5a40513mr12591708vkg.14.1696335384959; Tue, 03
 Oct 2023 05:16:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <7b93655219a6ad696dd3faa9f36fde6b094694a9.1696330005.git.geert+renesas@glider.be>
In-Reply-To: <7b93655219a6ad696dd3faa9f36fde6b094694a9.1696330005.git.geert+renesas@glider.be>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Tue, 3 Oct 2023 13:15:31 +0100
Message-ID: <CA+V-a8vtEKLXh=72pj-mW76g4OS0gWrig==CriB0xx++c=ECiQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: cache: andestech,ax45mp-cache: Fix unit
 address in example
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Palmer Dabbelt <palmer@rivosinc.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 3, 2023 at 11:48=E2=80=AFAM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:
>
> The unit address in the example does not match the reg property.
> Correct the unit address to match reality.
>
> Fixes: 3e7bf4685e42786d ("dt-bindings: cache: andestech,ax45mp-cache: Add=
 DT binding documentation for L2 cache controller")
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/cache/andestech,ax45mp-cache.yaml       | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Cheers,
Prabhakar

> diff --git a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cac=
he.yaml b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.ya=
ml
> index 9ab5f0c435d4df16..d2cbe49f4e15fdc4 100644
> --- a/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
> +++ b/Documentation/devicetree/bindings/cache/andestech,ax45mp-cache.yaml
> @@ -69,7 +69,7 @@ examples:
>    - |
>      #include <dt-bindings/interrupt-controller/irq.h>
>
> -    cache-controller@2010000 {
> +    cache-controller@13400000 {
>          compatible =3D "andestech,ax45mp-cache", "cache";
>          reg =3D <0x13400000 0x100000>;
>          interrupts =3D <508 IRQ_TYPE_LEVEL_HIGH>;
> --
> 2.34.1
>

