Return-Path: <devicetree+bounces-85815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C54DC9317D4
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 17:45:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E8E11F21E0B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 15:45:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFEEA847A;
	Mon, 15 Jul 2024 15:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="UePr9nlw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51BE20EB
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 15:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058335; cv=none; b=q7m/DSqWDJcKdVOl8GyZ7EWP4mCjx+8UyLEP5LqSHnX8arG63PEeV6WmbDhrO1OQoqsRuOrTw757EUDkES5n9KF/1Qkb3r5jd1N9jGfk1hd2pI4DJ9leacemLzY6EpBaECkHqFhhFXIPnUcxjqa1EKA5574PT0lpxy8YAUSVVE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058335; c=relaxed/simple;
	bh=rc8CNKMqcKao2jbOVcuGtlxbBaeI/Blwo5x5gPup9n4=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=NntUfFTGSvNBZzjHMcs29+fC0uNuE+cIUkF84HxwTkLlM0T3gWktS8Nuc4do77hmzAWViEDUHY3PopGkdQ8YqvrqDnk3hTWi+tvqJjo8hEzeJ8gPFNcyjZ4ZJdGCyx1+TDUBJcGikMgfh7wbrPc4cmd6cPiigKX5F8s0iunNB3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=UePr9nlw; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2caeafd16deso1635739a91.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 08:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1721058333; x=1721663133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g9SSjYvQo2eE6vQpTPkzDwm5HWtKGekBFfdySycMfTY=;
        b=UePr9nlwzMsN1fw2a44cHfNN9OJSnw7kvGrplrUOp6mB6+3NqwXxb4LJ5xkwTejDLa
         7pPBazaYV703EyLljnbHUoNE4ohjAKu0k+IXfWqehXw33PUeHX49mouG85Y2aC79ttb9
         W2koJTVnRv3VxwiEfVnbZU0/sO9wO4mTHlGIuF6cuSsZrNPWAd1SJbWyRWznnTQdqxbE
         IZ9vFBTu3wRaxkOh0pI/3p3BhGKEYS0l8RtTyf4CWhNGXq9M3fU4jMG/NcU7436uHMqI
         UYLo1ailIlOiypVvY8zHn27JPwEnG64LQvBFs0sOptXpuU4AXAGFoBR7b1X273B4TxPO
         SoMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058333; x=1721663133;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g9SSjYvQo2eE6vQpTPkzDwm5HWtKGekBFfdySycMfTY=;
        b=CVdXMb7G4NPRns7qldnxX/zlLnfg8KJrXPcsh6mBfh0NL+tQIfsdReqn0N4fJOGglH
         kRgmjhkb4vk0beOTK7Y6GKwpHprKy4Esu2nzIfCgzVYyjxY6vjF9dJDw2d4WAyGqXoxW
         mDKmVtv3QTlpsWt0DLmYKwXiSy1HvzF85eMDVWThU1et+iKdwEzKqLdoAobeLqH2GC6v
         sxejS8BIdfguEiCTu2X/2AhrpwqUrxcSlrnA7MVCxi4utcxXyik1/Tg62NLn/wCJB1Ab
         DCOwPnBCr81e1T4+DneR3idca1ycok8Eu0B894PFAk//XCu2JusQnPpkCVJPAijNIMgg
         SA7A==
X-Forwarded-Encrypted: i=1; AJvYcCUAp/qflASayI1436v/bXt2Tz2ogqGacwiIGzOMXE3GoeV7LRWj88cVZFa9uleCA21UfGgqJ+JYRJuJgut1fQjQnUPAMz7cbC0CWg==
X-Gm-Message-State: AOJu0Yy9uRpyJF0amMFvknsCaSisuYDeu2pTHg3xySW2HotCqBABda6u
	N5eDDC79nHM5T16+t72T5PaKudcfisexnuaVLuAsWyu3zhAzo5WRmnllO6lUEGY=
X-Google-Smtp-Source: AGHT+IFNK6/9Wxqf80HkpI36sSd2P3cUUY70Ol6prD1pytY8UlRbhTb4pUztsieCjJEp4UjBAvSkbA==
X-Received: by 2002:a17:90b:303:b0:2c8:895:e980 with SMTP id 98e67ed59e1d1-2ca35d9aee3mr14610615a91.47.1721058332974;
        Mon, 15 Jul 2024 08:45:32 -0700 (PDT)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2caedbdb7c7sm4522541a91.8.2024.07.15.08.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 08:45:32 -0700 (PDT)
Date: Mon, 15 Jul 2024 08:45:32 -0700 (PDT)
X-Google-Original-Date: Mon, 15 Jul 2024 08:45:30 PDT (-0700)
Subject:     Re: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
In-Reply-To: <20240426100820.14762-12-ajones@ventanamicro.com>
CC: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org,
  devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  Conor Dooley <conor.dooley@microchip.com>, anup@brainfault.org, atishp@atishpatra.org, robh@kernel.org,
  krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, christoph.muellner@vrull.eu,
  Heiko Stuebner <heiko@sntech.de>, Charlie Jenkins <charlie@rivosinc.com>, David.Laight@ACULAB.COM,
  parri.andrea@gmail.com, luxu.kernel@bytedance.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: ajones@ventanamicro.com
Message-ID: <mhng-fca2e1e4-385d-4210-8814-680be3a2ee4d@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Fri, 26 Apr 2024 03:08:24 PDT (-0700), ajones@ventanamicro.com wrote:
> Export Zawrs ISA extension through hwprobe.
>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  Documentation/arch/riscv/hwprobe.rst  | 4 ++++
>  arch/riscv/include/uapi/asm/hwprobe.h | 1 +
>  arch/riscv/kernel/sys_hwprobe.c       | 1 +
>  3 files changed, 6 insertions(+)
>
> diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
> index b2bcc9eed9aa..e072ce8285d8 100644
> --- a/Documentation/arch/riscv/hwprobe.rst
> +++ b/Documentation/arch/riscv/hwprobe.rst
> @@ -188,6 +188,10 @@ The following keys are defined:
>         manual starting from commit 95cf1f9 ("Add changes requested by Ved
>         during signoff")
>
> +  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is supported as
> +       ratified in commit 98918c844281 ("Merge pull request #1217 from
> +       riscv/zawrs") of riscv-isa-manual.
> +
>  * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
>    information about the selected set of processors.
>
> diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
> index 9f2a8e3ff204..a5fca3878a32 100644
> --- a/arch/riscv/include/uapi/asm/hwprobe.h
> +++ b/arch/riscv/include/uapi/asm/hwprobe.h
> @@ -59,6 +59,7 @@ struct riscv_hwprobe {
>  #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
>  #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
>  #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
> +#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)

I bumped this to a non-conflicting key when I picked up the patch, I 
figured that'd be better as then we don't have a uABI hiccup.  There 
were some other merge coflicts that looked easy to be, but LMK if I 
screwed something up as I'm not operating on a ton of sleep...

>  #define RISCV_HWPROBE_KEY_CPUPERF_0	5
>  #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
>  #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
> diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
> index 8cae41a502dd..b86e3531a45a 100644
> --- a/arch/riscv/kernel/sys_hwprobe.c
> +++ b/arch/riscv/kernel/sys_hwprobe.c
> @@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
>  		EXT_KEY(ZTSO);
>  		EXT_KEY(ZACAS);
>  		EXT_KEY(ZICOND);
> +		EXT_KEY(ZAWRS);
>
>  		if (has_vector()) {
>  			EXT_KEY(ZVBB);

