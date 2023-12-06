Return-Path: <devicetree+bounces-22431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B460080761C
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:09:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E60F31C20A6B
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F2DA49F76;
	Wed,  6 Dec 2023 17:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="V9dwCaKh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDB94C9
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 09:09:31 -0800 (PST)
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3b9b6ba42a4so27452b6e.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 09:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1701882571; x=1702487371; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ebrCX+s/Y/vVmHv1yCH1HySRy2V69fpkAgLFjl3R0nI=;
        b=V9dwCaKhkDr1wSqN3nhJZ++0WlJajp/v9kwKN06sZsYOUnFzgqF0u52sqeoV/s1MAf
         D9r7RTBlJPEWHH+oe8AsUaWE1N63gCrCy2ACz7QvMEABeZVLg2KqUpDILUwGn8sgg4F4
         j67DU3D7gfg4t6uc4/9nN3ML4OgL1h8Gj+M8ogjYMlKl2vWU+Cg+DIjsIqzw4rthHp9Y
         figZOKzYsb0kFTNuq3YE8i+oiiceMh0yKeCqHdxLq4k0vNwianYnofEmiLtCNJPVNYAF
         X11MfpHXuX9HI6d0mK8LQxonM15u7kYcvZPEw2Sx3qBYajb74vlf+TLAt9+ZMwnKjdZf
         ZGZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701882571; x=1702487371;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ebrCX+s/Y/vVmHv1yCH1HySRy2V69fpkAgLFjl3R0nI=;
        b=SOyDpvH+sVGbD9FLVPWNCM+vIWy+W2E0kZ9jPwtf0Rt2fMfawO2oNbB7v5lsaDI2kE
         qV3HmmC9gzBSW3lgQX514XVtAwK6zIJycU1/8MBqDuWwiDyYdcGT21WxhSdQV49h8pTQ
         +8ofY58dB6E0oxBck+EF2gjnK258L7qsxVW/pCRY8N4Y/nkqfG2shoB7XE5OeM4w4IjA
         XSaSmR87ekP5M/qmy6pQ4OqJwAgnW2ZHYLM/PJuYQ4mooI4qNIZa/lAcUAy7VTAy45Rj
         +Rqcr2tnwMOcSciqGa2A8hz+VcWdhA2albixMy2d1KuYTehLAIRaYxVQ4dNDSbXsYFVY
         VJ+g==
X-Gm-Message-State: AOJu0YxS0AjqQfIsrLCIyVORkJCGxb6y5KVKDDBoXLqEKmblETSl811Z
	zngZr2K4z6XstYmDJhtgWzQgRg==
X-Google-Smtp-Source: AGHT+IGuQkE0n1LAuOq5AF8j/hKBwUXZppnsnN5YyGTCGJ1oFqClQUkOyOw7Od+cPjK0nrrDM+eS+g==
X-Received: by 2002:a05:6808:318:b0:3b8:9d83:ec5e with SMTP id i24-20020a056808031800b003b89d83ec5emr473367oie.20.1701882571169;
        Wed, 06 Dec 2023 09:09:31 -0800 (PST)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id j8-20020a544808000000b003b845ba61c8sm60240oij.12.2023.12.06.09.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 09:09:30 -0800 (PST)
Date: Wed, 06 Dec 2023 09:09:30 -0800 (PST)
X-Google-Original-Date: Wed, 06 Dec 2023 09:09:28 PST (-0800)
Subject:     Re: [PATCH v2 1/8] riscv: errata: Add StarFive JH7100 errata
In-Reply-To: <20231130151932.729708-2-emil.renner.berthing@canonical.com>
CC: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, kernel@esmil.dk,
  Conor Dooley <conor@kernel.org>, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
  cristian.ciocaltea@collabora.com, geert@linux-m68k.org, Conor Dooley <conor.dooley@microchip.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: emil.renner.berthing@canonical.com
Message-ID: <mhng-5a8c5e00-7f74-489e-b191-e5fc6c0ecd58@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Thu, 30 Nov 2023 07:19:25 PST (-0800), emil.renner.berthing@canonical.com wrote:
> This not really an errata, but since the JH7100 was made before
> the standard Zicbom extension it needs the DMA_GLOBAL_POOL and
> RISCV_NONSTANDARD_CACHE_OPS enabled to work correctly.
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> ---
>  arch/riscv/Kconfig.errata | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
> index e2c731cfed8c..692de149141f 100644
> --- a/arch/riscv/Kconfig.errata
> +++ b/arch/riscv/Kconfig.errata
> @@ -53,6 +53,23 @@ config ERRATA_SIFIVE_CIP_1200
>
>  	  If you don't know what to do here, say "Y".
>
> +config ERRATA_STARFIVE_JH7100
> +	bool "StarFive JH7100 support"
> +	depends on ARCH_STARFIVE && NONPORTABLE
> +	select DMA_GLOBAL_POOL
> +	select RISCV_DMA_NONCOHERENT
> +	select RISCV_NONSTANDARD_CACHE_OPS
> +	select SIFIVE_CCACHE
> +	default n
> +	help
> +	  The StarFive JH7100 was a test chip for the JH7110 and has
> +	  caches that are non-coherent with respect to peripheral DMAs.
> +	  It was designed before the Zicbom extension so needs non-standard
> +	  cache operations through the SiFive cache controller.
> +
> +	  Say "Y" if you want to support the BeagleV Starlight and/or
> +	  StarFive VisionFive V1 boards.
> +
>  config ERRATA_THEAD
>  	bool "T-HEAD errata"
>  	depends on RISCV_ALTERNATIVE

Reviewed-by: Palmer Dabbelt <palmer@rivosinc.com>
Acked-by: Palmer Dabbelt <palmer@rivosinc.com>

Thanks for dealing with this.  This is mostly DT stuff so I'm fine with 
it going via Conor's tree, but LMK if you guys want me to take it.

