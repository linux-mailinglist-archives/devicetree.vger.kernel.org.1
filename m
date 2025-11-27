Return-Path: <devicetree+bounces-242754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 0972DC8E643
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 14:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 206D134D65E
	for <lists+devicetree@lfdr.de>; Thu, 27 Nov 2025 13:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B072613A244;
	Thu, 27 Nov 2025 13:16:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1415E29A1
	for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 13:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764249376; cv=none; b=Yav1R6/ZWljKSdATyzHENoQ1VvkDFQwcQHbY2WsgKhU/1sFuspBt2s/moDnmstdVRftpiK8ADK2HlupFmovbI1j95Mj6LrGxtZeFDY0+PsJWLf0wUd1BaAeepth1iUcmcKAx0Dgw0wSkksj9uhRvtabnXRLleuVUcmTLRWDwWGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764249376; c=relaxed/simple;
	bh=i0+NI2Bud3BlBikNUo49+8Zo8rRsxq05UxY0PW6sYJY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pFf1RuXhZAYhWLn99TmL6yvQSPrL3xGwS04CaN568/ZnmyJKYWciEviFbtHTt+q3Jm/CWLSrZDFhUwBoh1jRqPbAQ/4Pp80U97ueDe4oMERC7oR5hlzPwyee6P0wpuPcWR759wwPiNYmATZAnZ1AjpuU+p1Bh9YMCy+RtvzZ9UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-880570bdef8so8762576d6.3
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:16:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764249374; x=1764854174;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/la0b8NwFw52ANl4NaAU+Zs/xhH8L5L8IfhP5J6VHSo=;
        b=vNwBT12h3tsrOzDAIOIEgtVjT60wxuGD8ONwYahuAe55dMYqDTwgYSmPDu+kGhbKbG
         tgzwJoWHgJXuU0ptvuJPNs3uGkO57gCqucVU7YKBLtL7htNJxo8iRqvlOE3MDDhRwM+e
         xmcqmfhUpo0vxz2hPblGNBloaH2mx0RKi8wxMdiQhVckpdpTAOTZG1UyPTyTPoi33LJI
         XiLsux1hcbyEhSvHJRngSmiSycd5nDoSJhfdQWeZ1TbDWjK+nMDBCIcKyA0qHqZNXpoy
         6HwRZaCzJ9aTbFl/QKuVXraSuhdnxbjLX5Hy3UdAJU9ydIgWJEbvVe5QATYhorjAtO7C
         h7dA==
X-Forwarded-Encrypted: i=1; AJvYcCVDf+aQI+1hCIpK18qNeOyvC00xu7Rz9GQxVfHIR+5Rran0OT2FpzKBGAwiZMAPUH67CRvjhDBl5UyB@vger.kernel.org
X-Gm-Message-State: AOJu0YzCSGGSscYcnDF2KYh0C+XzKt+oOuY2zwVBHdFTyCtRe9MzmAH0
	MHJsMfRd6jZBpwKP1pBeW3ivWS6oZM1QIwEpTOW4s3s0atQuKOVyVCkChbEmfqpC
X-Gm-Gg: ASbGncv6Qw2SkfjbuLIhsmXX+aECUUa01bSDn+JdRwMGMSRI3AlgQhJ5u2gibxkKHe6
	CvLD3jWRcp8kLbHp9qsHqwTpesMPqeBLjMtf1VmAbyBVAWTaW/UwAExF0x+nodk9Ng/ZRt/3Zev
	7i1P/Tz5WQy16ls7KuRLPSDn2CKgSeqVdw9I0s18LifK49rWq6W4QBPpEOQKBEOhQ4RSLZwBGPP
	jC/nO30CN4Dpm9dMo4YPwn7xEeQmRAqgsMhcUpUBK4lHra4rtJoeFxgg7N+eMZk3l2P81nEYmEq
	wfNmWE+NVN1Dstk61TvOGZReohxtLcTCP1AK/7y/usORoG+ykKQe/Mj54pv+o/vxJRC95hg0lI0
	CIboeJLdL33rTLwExbvgCW1zf6bjpqeJP2iXM5uMt0aBLZu9wwoWqaQtQTJ9/0ds3R/LKW3YjGe
	FJHF/Nmlrpgq5/i7iSc8ikZvwTHdamWznMD3k2w5eaXduJeZDp
X-Google-Smtp-Source: AGHT+IEAG4HhvhXggYRxRBqwNngecusOYmnt3am7I0XJrRLraxbM30zbDIEWOiAy9qDo2EGTykejfw==
X-Received: by 2002:a05:6214:5192:b0:882:63cf:396f with SMTP id 6a1803df08f44-8863af6dc4amr139541806d6.43.1764249373757;
        Thu, 27 Nov 2025 05:16:13 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88652b73542sm9053156d6.44.2025.11.27.05.16.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Nov 2025 05:16:13 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5dbdb139b5bso717727137.2
        for <devicetree@vger.kernel.org>; Thu, 27 Nov 2025 05:16:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVI4JrYAHG8Bu8cskmaVHn6oasTnfpwyTje/+L2RjDCCONQ5fNMxe9bbj6q1PqbOHgoOZKqVoUGYtlj@vger.kernel.org
X-Received: by 2002:a05:6102:5e93:b0:5db:ceaa:1dbf with SMTP id
 ada2fe7eead31-5e224417a9bmr4411857137.41.1764249373279; Thu, 27 Nov 2025
 05:16:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251121113553.2955854-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251121113553.2955854-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251121113553.2955854-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 27 Nov 2025 14:16:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVtxLCRHdhj5=iOHyDJFQUfALYj8MXGLA+bT=YSvWtbbQ@mail.gmail.com>
X-Gm-Features: AWmQ_blYrSklJ3vMkio_CRlMnvD_t9kp1obUj6YpfU6Kqg0TYQcNKUPeqWm26t4
Message-ID: <CAMuHMdVtxLCRHdhj5=iOHyDJFQUfALYj8MXGLA+bT=YSvWtbbQ@mail.gmail.com>
Subject: Re: [PATCH net-next 04/11] dt-bindings: net: dsa: renesas,rzn1-a5psw:
 Add RZ/T2H and RZ/N2H ETHSW support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@bootlin.com>, 
	Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean <olteanv@gmail.com>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simon Horman <horms@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Prabhakar, Cl=C3=A9ment,

On Fri, 21 Nov 2025 at 12:37, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Extend the A5PSW DSA binding to cover the ETHSW variant used on newer
> Renesas RZ/T2H and RZ/N2H SoCs. ETHSW is derived from the A5PSW switch
> found on RZ/N1 but differs in register layout, clocking and interrupt
> topology, and exposes four ports in total (including the CPU/management
> port) instead of five.
>
> Update the schema to describe these differences by adding dedicated
> compatible strings for RZ/T2H and RZ/N2H, tightening requirements on
> clocks, resets and interrupts, and documenting the expanded 24-interrupt
> set used by ETHSW for timestamping and timer functions. Conditional
> validation ensures that RZ/T2H/RZ/N2H instances provide the correct
> resources while keeping the original A5PSW constraints intact.
>
> Use the RZ/T2H compatible string as the fallback for RZ/N2H, reflecting
> that both SoCs integrate the same ETHSW IP.
>
> Add myself as a co-maintainer of the binding to support ongoing work on
> the ETHSW family across RZ/T2H and RZ/N2H devices.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml
> +++ b/Documentation/devicetree/bindings/net/dsa/renesas,rzn1-a5psw.yaml

> @@ -73,14 +145,48 @@ properties:
>                phandle pointing to a PCS sub-node compatible with
>                renesas,rzn1-miic.yaml#
>
> -unevaluatedProperties: false
> -
>  required:
>    - compatible
>    - reg
>    - clocks
>    - clock-names
>    - power-domains
> +  - interrupts
> +  - interrupt-names

FTR, this causes warning for RZ/N1:

    arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dtb: switch@44050000
(renesas,r9a06g032-a5psw): 'oneOf' conditional failed, one must be
fixed:
            'interrupts' is a required property
            'interrupts-extended' is a required property
            from schema $id:
http://devicetree.org/schemas/net/dsa/renesas,rzn1-a5psw.yaml  DTC
arch/arm/boot/dts/renesas/r8a7740-armadillo800eva-con15-quad-7seg-red.dtbo

    arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dtb: switch@44050000
(renesas,r9a06g032-a5psw): 'interrupt-names' is a required property
            from schema $id:
http://devicetree.org/schemas/net/dsa/renesas,rzn1-a5psw.yaml

Cl=C3=A9ment added the interrupts to the binding, but never sent a patch
to update the DTS.  I have submitted a fix:
https://lore.kernel.org/53d45eed3709cba589a4ef3e9ad198d7e44fd9a5.1764249063=
.git.geert+renesas@glider.be

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

