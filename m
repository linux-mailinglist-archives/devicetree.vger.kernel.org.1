Return-Path: <devicetree+bounces-46590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F0A086A3C3
	for <lists+devicetree@lfdr.de>; Wed, 28 Feb 2024 00:33:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55F60289669
	for <lists+devicetree@lfdr.de>; Tue, 27 Feb 2024 23:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45BD75675D;
	Tue, 27 Feb 2024 23:33:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b="QMmV3GI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB5257326
	for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 23:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709076795; cv=none; b=E408oHps4AxtNN8AOvmsBcvbObaaZtuX5+kp9zh1x1aKVSQSb3YJyGnBrpFwH8/dNJFzUMRAHsAYzyM3LuKx3YY+KieO/VHpq6nzn04yoiRmPku9qbch9q2bnjWnVrxZ+eUL/M8NOUBdAr26WHMHTVztI2Xr2m97EpWvPae4Ypg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709076795; c=relaxed/simple;
	bh=SFRHkKuAvhPnxhLSoc+CC/6wY38Yh/tJ0nMg5XjotO0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eNYizGorlmgOvhc9vYCeatp4A4mGOVwRG34kBoVsuJrFt1B424tIiyQduqw/hyKvJnVnPlDdbtQXxAu2fgfcvv7zO4p9Zmh8z//MC8yJH0et8LUsQK3dw0CC/9H2KcLaCIv2YWyDhKtv0ogHqg9OBJM6W+o+ejo4AbeKSaxuz6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se; spf=pass smtp.mailfrom=ragnatech.se; dkim=pass (2048-bit key) header.d=ragnatech.se header.i=@ragnatech.se header.b=QMmV3GI0; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ragnatech.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ragnatech.se
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so682388166b.0
        for <devicetree@vger.kernel.org>; Tue, 27 Feb 2024 15:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech.se; s=google; t=1709076791; x=1709681591; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mvdatF57+DwZfGKp/9/tGtAF0GxYgl6ZeAoM6d92QEw=;
        b=QMmV3GI0km8t9GejV9uYWUX7UoVlhXm7EBm3qkGDYoE9U1tHmz+zRINPBZ3aqmMgz3
         IGk+rX1cP+P5EZlFml+E3Dyrh9CiuVtQ82vX72ERgzbi1sD+SLT6KNICU0QuDB0zcrK3
         vjGrtigR2rexQkJjnNJfPZ79zMkAUDdLFd+NkBPn8X9C8FN8sxA/FD7cKRFW0S2aYy7j
         sK6i8cFkH8rFTUHZ3sEb6lNQAxVvoOcsGOM4VI/+cuAx6h+5en6bwl+L2mFTw7Q4suHd
         2fSMVSwHpJIRYu1s5A7Jshjnom1bjBDMwIiH+/Ow5aL02nOw391Xfp2BHYdX1S57kKyZ
         Hg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709076791; x=1709681591;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mvdatF57+DwZfGKp/9/tGtAF0GxYgl6ZeAoM6d92QEw=;
        b=NYxryYS6Bc00U579MYSJmDeqy0Uo7Z3ByuhKybzBZeeZXMFWRWfXhRmxU2JXoKjxIZ
         IUIddvcZ+7KaP07SOe2X6ob4y5CRDcInSyTiVAMc5eU8Diaw8GVzvaasSM7z6xqjnN+H
         t0ptIjahSBNc0k+85lNmbMtUiauEFPMN2bp/Imm6N4Cnqc7NUw70qfEN1ElfPgPjOBi0
         DJA1IP65Ak8KbLizVmI7SCPi3uuk6ShUGHltZ5CyJPy86/Mqo6J5UUTUE78ncpSAyMGQ
         OD3sMaEVoamhIVpEA+q2RdJVfz1bB14M0i8EVTKaQUMR098HSNgcJdwAfazDdYbqYth6
         rEAg==
X-Forwarded-Encrypted: i=1; AJvYcCXFYPGwVNfOTvPwJ2qJerQoTOCXwZZWcVop3B0v3YU7xoUCLf0FcMQU451XRviVdSbL4F/ZLjA/TEvGYBCpkOo3069hlRegtcmMOQ==
X-Gm-Message-State: AOJu0YwSG/7AfeznlnLN+Z2y70WMkfyyEUCjQvicMjmc90BCnZ59tOHu
	TmTw6I6xFSMHF3j221YJwBC+d/YbK2y6NPLgEg043ImuMOSetPVijvIkO/2yZ3U=
X-Google-Smtp-Source: AGHT+IHUxYiTUOAIdFJuNOd1TsjJLg7fc9fdpCeaHmuv1zqUOJxgJ/60Y/qdkRcca5p2NFr3DFjPLQ==
X-Received: by 2002:a17:906:2518:b0:a3f:c8ce:d268 with SMTP id i24-20020a170906251800b00a3fc8ced268mr7632871ejb.65.1709076791528;
        Tue, 27 Feb 2024 15:33:11 -0800 (PST)
Received: from localhost (p4fcc8c6a.dip0.t-ipconnect.de. [79.204.140.106])
        by smtp.gmail.com with ESMTPSA id jp11-20020a170906f74b00b00a437b467c92sm1246641ejb.177.2024.02.27.15.33.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Feb 2024 15:33:11 -0800 (PST)
Date: Wed, 28 Feb 2024 00:33:10 +0100
From: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] dt-bindings: soc: renesas: renesas-soc: Add pattern for
 gray-hawk
Message-ID: <20240227233310.GB1002886@ragnatech.se>
References: <20240227220930.213703-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240227220930.213703-1-prabhakar.mahadev-lad.rj@bp.renesas.com>

Hi Prabhakar,

Thanks for your work.

On 2024-02-27 22:09:30 +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> Add pattern for Renesas Gray Hawk Single board (based on R-Car V4M SoC)
> to fix the below dtbs_check issue:
> 
> arch/arm64/boot/dts/renesas/r8a779h0-gray-hawk-single.dtb: /: compatible:0: 'anyOf' conditional failed, one must be fixed:
> 4695 'renesas,gray-hawk-single' does not match '^renesas,(emev2|r(7s|8a|9a)[a-z0-9]+|rcar|rmobile|rz[a-z0-9]*|sh(7[a-z0-9]+)?|mobile)-[a-z0-9-]+$'
> 4696 'renesas,gray-hawk-single' does not match '^renesas,(condor|falcon|gr-peach|salvator|sk-rz|smar(c(2)?)?|spider|white-hawk)(.*)?$'
> 4697 'renesas,gray-hawk-single' does not match '^renesas,(can|cpg|dmac|du|(g)?ether(avb)?|gpio|hscif|(r)?i[i2]c|imr|intc|ipmmu|irqc|jpu|mmcif|msiof|mtu2|pci(e)?|pfc|pwm|[rq]spi|rcar_sound|sata|scif[ab]*|sdhi|thermal|tmu|tpu|usb(2|hs)?|vin|xhci)-[a-z0-9-]+$'
> 4698 'renesas,gray-hawk-single' does not match '^renesas,(d|s)?bsc(3)?-(r8a73a4|r8a7740|sh73a0)$'
> 4699 'renesas,gray-hawk-single' does not match '^renesas,em-(gio|sti|uart)$'
> 4700 'renesas,gray-hawk-single' does not match '^renesas,fsi2-(r8a7740|sh73a0)$'
> 4701 'renesas,gray-hawk-single' does not match '^renesas,hspi-r8a777[89]$'
> 4702 'renesas,gray-hawk-single' does not match '^renesas,sysc-(r8a73a4|r8a7740|rmobile|sh73a0)$'
> 4703 'renesas,gray-hawk-single' is not one of ['renesas,imr-lx4', 'renesas,mtu2-r7s72100']
> 4704 'renesas,gray-hawk-single' is not one of ['renesas,smp-sram']
> 4705 'renesas,gray-hawk-single' does not match '^(?!renesas,.+-.+).+$'
> 4706 from schema $id: http://devicetree.org/schemas/soc/renesas/renesas-soc.yaml#

The change is correct, but I don't think you need to phrase the commit 
message as fixing an error. This change extends renesas-soc.yaml with 
support for gray-hawk.

> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> index a5fcd471983d..5ddd31f30f26 100644
> --- a/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> +++ b/Documentation/devicetree/bindings/soc/renesas/renesas-soc.yaml
> @@ -37,7 +37,7 @@ properties:
>        anyOf:
>          # Preferred naming style for compatibles of SoC components
>          - pattern: "^renesas,(emev2|r(7s|8a|9a)[a-z0-9]+|rcar|rmobile|rz[a-z0-9]*|sh(7[a-z0-9]+)?|mobile)-[a-z0-9-]+$"
> -        - pattern: "^renesas,(condor|falcon|gr-peach|salvator|sk-rz|smar(c(2)?)?|spider|white-hawk)(.*)?$"
> +        - pattern: "^renesas,(condor|falcon|gr-peach|gray-hawk|salvator|sk-rz|smar(c(2)?)?|spider|white-hawk)(.*)?$"
>  
>          # Legacy compatibles
>          #
> -- 
> 2.34.1
> 

-- 
Kind Regards,
Niklas Söderlund

