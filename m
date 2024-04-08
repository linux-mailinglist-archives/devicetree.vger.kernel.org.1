Return-Path: <devicetree+bounces-57117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B81689BDB7
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 13:04:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8B7BCB23531
	for <lists+devicetree@lfdr.de>; Mon,  8 Apr 2024 11:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAC2A6168C;
	Mon,  8 Apr 2024 11:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="U+3Pfava"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63CD64CEF
	for <devicetree@vger.kernel.org>; Mon,  8 Apr 2024 11:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712574274; cv=none; b=ZjAtjmCZlQJ9xNLJCR6oZrLG8TIrJbC0Oqg2NaB5UjlXeI5bL8xAYHQ1neItWEW84i04l043mIeHlx+DQEHCRV+Bo8zDX9DGinXLe2mGVrhQ2HqHGfr7xIBeHk2BcNCiNbVJwM2gonD8kdA+LRVtfO4ohboH1KEeokRyGCmY+lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712574274; c=relaxed/simple;
	bh=AEkCZa+mofKBE7dnqGDEYSr7MtyuCBAKa5IvA/RNPPA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fcteawLpV03T39t8ZruY1jLDkluJzz8PmTBiz39SQxoQZ9suZ53t6w1LN0tKol9qSj7zuURK+jQOjr/Q4AhZRABToDRpJMGGh++LiaIUZuJNdPPIR4tCMT/R/P1YzcSFdx82Kle7cR6x9Pz6/MHpHBng5PHb+587TDpJpDYdqzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=U+3Pfava; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a450bedffdfso601477966b.3
        for <devicetree@vger.kernel.org>; Mon, 08 Apr 2024 04:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1712574271; x=1713179071; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2JMfbQnsZCy4AZnv2rKGHbXHeobClNfn+hJCPxhuGCs=;
        b=U+3PfavayTTxpi3GdPULfQX4/079Mr2dArOIcLhr8HR6/yChBpqWdZYHGtN6orjaDt
         CGtqjEzpp0W1+pdy+Db1ev9LucyIc4yLsDdwvGeGcPyt/VFGSkJIJB+PICfAvp8gGTMo
         8+aLn6JAaUH0KrPR7zBeUXprZmNOS4jZXSowVE/FR7aukYKWGNrg3uHOz+qTQb0LTYR+
         FEv1ByLnDnt7XQ8U/Zs8ARg7ajw4UXXgy36zlmk3z7i2Ub40r4UYMYspDq88KHYjGqTD
         IevdI0GG5h8hiyGQJhKozjqICo1N71F5DCAmmXLWFdaNpN3exE38WMuCTV3LbSMTLD6m
         ak2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712574271; x=1713179071;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2JMfbQnsZCy4AZnv2rKGHbXHeobClNfn+hJCPxhuGCs=;
        b=Wj7uBbNNwA2xofCW+Wd93c/SUlhMtZfBflw2FPbL9zNG6UT6AL3BbLRrspso4EmQ9H
         +nrU9qc24Qx/FrelmNOkhFbBTKROOCYUnJExEU+FFfIz4Cu18Dtd0S6UQ8ruVdM+4PPk
         RxMDbCqirhIjW+PZ5EiRrItBBI6bTHKKXhw07jTzpk7U8hWpR52+O2YyUyMu2xok5cvG
         0gq8Ksjjx6odynob9perYJCjhOco107h/tWCKUfBrTlPvs8K89aSpZV7WjP0Spz5cLsZ
         2PY1GIjAYL9gDW+cHOlF/5AX/5gPblVft5sSGpV7U72YLDr82r7h7Tt3iif5RkLJOXVw
         drAg==
X-Forwarded-Encrypted: i=1; AJvYcCX5eEuhsoFq+i2ZU2bI037Y5bh6kB7y85nNu2R4Z91qkBmujN5S+aRinNwOr0M45NIps8Qxqr2mkIh3J3sp/gb0XchO7IbHp15NEA==
X-Gm-Message-State: AOJu0Yy95Q9JzVV4DUw1bg4WbdJ/A0p9pT01n8UrWoec9FMPC7yTDp6d
	Y0IDzuVjJLs8cx6oznYyOpG6JXSWOBkP7ydYBwyk+VUcGF8vgfMcDSQAeZd6ziQ=
X-Google-Smtp-Source: AGHT+IHu3NL1dqCrQipR9WBG7yHccjiSJMRW2XQ02zqZv9+xdvjF/qhErQbKJL/weMoN3GTlL7Gjbw==
X-Received: by 2002:a17:907:6d0c:b0:a51:cdfd:8ef7 with SMTP id sa12-20020a1709076d0c00b00a51cdfd8ef7mr2804880ejc.39.1712574271061;
        Mon, 08 Apr 2024 04:04:31 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906119600b00a51d113b320sm1674891eja.110.2024.04.08.04.04.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Apr 2024 04:04:30 -0700 (PDT)
Date: Mon, 8 Apr 2024 13:04:29 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: =?utf-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Anup Patel <anup@brainfault.org>, Shuah Khan <shuah@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 0/5] Add parsing for Zimop ISA extension
Message-ID: <20240408-0c3a1c3e3880a67a631f9f14@orel>
References: <20240404103254.1752834-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240404103254.1752834-1-cleger@rivosinc.com>

On Thu, Apr 04, 2024 at 12:32:46PM +0200, Cl�ment L�ger wrote:
> The Zimop ISA extension was ratified recently. This series adds support
> for parsing it from riscv,isa, hwprobe export and kvm support for
> Guest/VM.
> 
> Cl�ment L�ger (5):
>   dt-bindings: riscv: add Zimop ISA extension description
>   riscv: add ISA extension parsing for Zimop
>   riscv: hwprobe: export Zimop ISA extension
>   RISC-V: KVM: Allow Zimop extension for Guest/VM
>   KVM: riscv: selftests: Add Zimop extension to get-reg-list test
> 
>  Documentation/arch/riscv/hwprobe.rst                    | 4 ++++
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 5 +++++
>  arch/riscv/include/asm/hwcap.h                          | 1 +
>  arch/riscv/include/uapi/asm/hwprobe.h                   | 1 +
>  arch/riscv/include/uapi/asm/kvm.h                       | 1 +
>  arch/riscv/kernel/cpufeature.c                          | 1 +
>  arch/riscv/kernel/sys_hwprobe.c                         | 1 +
>  arch/riscv/kvm/vcpu_onereg.c                            | 2 ++
>  tools/testing/selftests/kvm/riscv/get-reg-list.c        | 4 ++++
>  9 files changed, 20 insertions(+)
> 
> -- 
> 2.43.0

For the series,

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

