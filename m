Return-Path: <devicetree+bounces-70993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3720E8D54A3
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 23:36:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3E191F25169
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 21:36:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27B49181CE5;
	Thu, 30 May 2024 21:35:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="Cli5bx6D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4967D15886D
	for <devicetree@vger.kernel.org>; Thu, 30 May 2024 21:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717104956; cv=none; b=OLOYkDAyySiNpSUDY+aAc4ipG4DL8DCPjsUrdRl72+vVyMtRXmmoyEaM4vRTuyWdt4oP73aqq+i3TPtjrKm1yTvji/llFOPmF029E+mXX/cJWJYl//1BEkpun27bnTXih/TrsfeD6LOu9b4Wa47EuX0HLLIn1ueDU07R+S3WGY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717104956; c=relaxed/simple;
	bh=Qgc7fuqJhkQMT7P00M8+eJ9dGTQJzcQfycxbQMKjjKw=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=rLt/hjp6QLKbMhMpuzSiIKgIro6lfv7T5z8xw+ldjx/E4LTtwDRdlU+pOcES2GYF3mj3KzhI/SCP51LJbUT9krBoIM3jceoEKWEMCkNggiCzzIAk8zjv6hFn3W6kpOsCjbOY/MN23ZfT2Y86JeJ7epjp6J6gOpP7yOQYl7rXSL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=Cli5bx6D; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2bdd8968dabso310709a91.3
        for <devicetree@vger.kernel.org>; Thu, 30 May 2024 14:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1717104953; x=1717709753; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t9TSHRpBOLH2WAAvUW98eatlSfzIkGIzBEN/BAb+rPI=;
        b=Cli5bx6DRtsBkOcCImBGZUG4vLimgStnYJ6SKBDzG4wMVEHiF6Ld8+jsKUsIno/xm2
         siZzCPOQAS2MP5HDzfYm4Nkfn81W1pwvtSvKnF2IuMa7ENGOpDxANkH+jmSmq2MCXjCQ
         k5kxoEjwzOOMMT4MDbvleLJyCRokLjRI2mf5KzdMtDX1uDh/eFmnZPhlJTfz5rsF/2fl
         DpjaBdLU/sMPyYWYs+kaXTLGedWD+iYmLjU/OciU8xp4dJNk+YS+BmaqhPx/9Xe+gjyZ
         fK1QvN6oL8yecAehtY0CJy/2mWInGg26Dwq96/Tit9LGpNJ2nLGYi+5ReFIgcKo1gbqU
         5Ewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717104953; x=1717709753;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9TSHRpBOLH2WAAvUW98eatlSfzIkGIzBEN/BAb+rPI=;
        b=k4TOKMWbdN2EVPbeA56eN3x5Ob0xtWk0f4+deghmQ745HFRewr/zaow1eHj7MadzJT
         6Zc/Cg+LyuC7Dc37CNa4XMNaRYxIzpsovsNt1HL1sW+IDdUSm6x6z9Il1dS2Y0/0cnJp
         n+Ofg+hK8cehEq4ctBPWxg8gASzlk0dALC1xgzzpRrB4JHmzklxNb/ArqVkiKFfB1vb3
         y+EZomSMyHB7e/odehngr8rOlSuSYAoprLPs7H7ZGNBLelo4tqOMNejTUEGlhjBn0RRW
         VNozn7CB053nb/ZNVHO7eLu8tLxE2A07ZoAIcp1+7FQZrwswL1Wx5YpzWuRSjjNMAo1R
         o6LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjzFeuQZI4wMbMjxHvo7IDz732aki5erIasGbvN3nMhhNUlkLgh8OPgG95KyOxiOeKNYXWUwZPSxbr0A4aVKJDF9WhlGa7+6HTjg==
X-Gm-Message-State: AOJu0YxnrRByuFNf5MD/5SBKQ+BTc+0HM58nxGv5rfUXRZpW4q8sdhI6
	v5GrV5bl5v/CsNWwR+AABP/9royhGjHMG7F1vSFp0ZptLIE0goHYejFpNLwd8V0=
X-Google-Smtp-Source: AGHT+IH8I+pBT9BtFtI/+2zkM3sGemPywqCkDuR+buuvi7USfNhzJHPLV/HQHzbSgCBFTo4xyfd7hQ==
X-Received: by 2002:a17:90a:9c13:b0:2bd:d6cc:c305 with SMTP id 98e67ed59e1d1-2c1abc4eda6mr2950107a91.49.1717104953359;
        Thu, 30 May 2024 14:35:53 -0700 (PDT)
Received: from localhost ([50.145.13.30])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2c1a775ccedsm2159002a91.1.2024.05.30.14.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 May 2024 14:35:51 -0700 (PDT)
Date: Thu, 30 May 2024 14:35:51 -0700 (PDT)
X-Google-Original-Date: Thu, 30 May 2024 14:35:49 PDT (-0700)
Subject:     Re: [PATCH v5 6/8] riscv: hwprobe: add zve Vector subextensions into hwprobe interface
In-Reply-To: <20240510-zve-detection-v5-6-0711bdd26c12@sifive.com>
CC: Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  Conor Dooley <conor.dooley@microchip.com>, Heiko Stuebner <heiko@sntech.de>, andy.chiu@sifive.com, guoren@kernel.org,
  Conor Dooley <conor@kernel.org>, robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, corbet@lwn.net,
  Evan Green <evan@rivosinc.com>, cleger@rivosinc.com, shuah@kernel.org, linux-riscv@lists.infradead.org,
  linux-kernel@vger.kernel.org, vincent.chen@sifive.com, greentime.hu@sifive.com, devicetree@vger.kernel.org,
  linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: andy.chiu@sifive.com
Message-ID: <mhng-0679629d-d115-44ae-a33a-bf42980c7686@palmer-ri-x1c9a>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Thu, 09 May 2024 09:26:56 PDT (-0700), andy.chiu@sifive.com wrote:
> The following Vector subextensions for "embedded" platforms are added
> into RISCV_HWPROBE_KEY_IMA_EXT_0:
>  - ZVE32X
>  - ZVE32F
>  - ZVE64X
>  - ZVE64F
>  - ZVE64D
>
> Extensions ending with an X indicates that the platform doesn't have a
> vector FPU.
> Extensions ending with F/D mean that whether single (F) or double (D)
> precision vector operation is supported.
> The number 32 or 64 follows from ZVE tells the maximum element length.
>
> Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
> Reviewed-by: Clément Léger <cleger@rivosinc.com>
> ---
> Changelog v5:
>  - Rebase thus add ZVE32X after RISCV_HWPROBE_EXT_ZICOND.
> Changelog v2:
>  - zve* extensions in hwprobe depends on whether kernel supports v, so
>    include them after has_vector(). Fix a typo. (Clément)
> ---
>  Documentation/arch/riscv/hwprobe.rst  | 15 +++++++++++++++
>  arch/riscv/include/uapi/asm/hwprobe.h |  5 +++++
>  arch/riscv/kernel/sys_hwprobe.c       |  5 +++++
>  3 files changed, 25 insertions(+)
>
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> index 204cd4433af5..fc015b452ebf 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -192,6 +192,21 @@ The following keys are defined:
>         supported as defined in the RISC-V ISA manual starting from commit
>         d8ab5c78c207 ("Zihintpause is ratified").
>
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVE32X`: The Vector sub-extension Zve32x is
> +    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
> +
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVE32F`: The Vector sub-extension Zve32f is
> +    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
> +
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVE64X`: The Vector sub-extension Zve64x is
> +    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
> +
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVE64F`: The Vector sub-extension Zve64f is
> +    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
> +
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZVE64D`: The Vector sub-extension Zve64d is
> +    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
> +
>  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
>    information about the selected set of processors.
>
> diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> index 31c570cbd1c5..6593aedb9d2b 100644
> --- a/arch/riscv/include/uapi/asm/hwprobe.h
> +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> @@ -60,6 +60,11 @@ struct riscv_hwprobe {
>  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
>  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
>  #define		RISCV_HWPROBE_EXT_ZIHINTPAUSE	(1ULL << 36)
> +#define		RISCV_HWPROBE_EXT_ZVE32X	(1ULL << 37)
> +#define		RISCV_HWPROBE_EXT_ZVE32F	(1ULL << 38)
> +#define		RISCV_HWPROBE_EXT_ZVE64X	(1ULL << 39)
> +#define		RISCV_HWPROBE_EXT_ZVE64F	(1ULL << 40)
> +#define		RISCV_HWPROBE_EXT_ZVE64D	(1ULL << 41)
>  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
>  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
>  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> index 969ef3d59dbe..35390b4a5a17 100644
> --- a/arch/riscv/kernel/sys_hwprobe.c
> +++ b/arch/riscv/kernel/sys_hwprobe.c
> @@ -114,6 +114,11 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
>  		EXT_KEY(ZIHINTPAUSE);
>
>  		if (has_vector()) {
> +			EXT_KEY(ZVE32X);
> +			EXT_KEY(ZVE32F);
> +			EXT_KEY(ZVE64X);
> +			EXT_KEY(ZVE64F);
> +			EXT_KEY(ZVE64D);
>  			EXT_KEY(ZVBB);
>  			EXT_KEY(ZVBC);
>  			EXT_KEY(ZVKB);

Conor left a comment over here 
<https://lore.kernel.org/all/20240510-zve-detection-v5-6-0711bdd26c12@sifive.com/>.  
I think the best bet is to just merge this v5 on for-next now, though -- 
there's a bunch of patch sets touching ISA string parsing and IIUC that 
sub-extension parsing stuff is a pre-existing issue, and Clement's patch 
set still has some outstanding feedback to address.

So I think if we just go with this we're not regressing anything, we 
just have a bit more to clean up.  Maybe it's a little uglier now that 
userspace can see the sub-extensions, but I'd bet wacky ISA strings will 
be able to confuse us for a while.

I staged this so I can throw it at the tester, LMK if anyone has issues 
otherwise it'll show up on for-next.

