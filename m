Return-Path: <devicetree+bounces-32070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1133082DC6E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 16:37:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A3D121F2239A
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 15:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26F0C17753;
	Mon, 15 Jan 2024 15:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="PGDOR7ja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB3717744
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 15:37:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a26f73732c5so1024237266b.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:37:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1705333036; x=1705937836; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=NtVFGxo6W2R65fH9PJDIGxutILrI7qYWvuUFM+KEdWM=;
        b=PGDOR7jaTYqs+kPtlYCvGWEPUe79DQfi+8tlmNZedeLOEfOZ4175VIQ8ByGNRK0Z9V
         BVhQoUrZzdM6FCHqL853N6sNTOZGNVPS/ZX8Hzv96KChCdKC2UT9TzweYM3nUMxrR7NP
         9yEIbSpo7mwxYK0+xmAgHQ3p8EF7KSUOvS6eKg3WBw+ofSt2X1iTeJFeiRD7i+wHbcjM
         QwKZ3U3zhY7rQbRcYxwe186G6Tye1P+JFfMzmCm+k9jv9QUHbQ/MvNq/3bGB6VajjsJT
         sOD4TX2lhGtNXaMeOx0XHcG734iwYkGQpzS6WXuELkCRbF2SzbFG8xhZ737b1/EooJaL
         m4gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705333036; x=1705937836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NtVFGxo6W2R65fH9PJDIGxutILrI7qYWvuUFM+KEdWM=;
        b=ttx89siJ0b2V3/b7n+lc7yZXaOPiZSeTQKA3wCyElNIOE9v3L4lmVhvO6e/gZOSnKH
         RUxA22riejwmIW3X7TXsNBfDaJ4dyZaMEc+BHIQcn8LH3FAiTRnsydg5K8C+skYrCc6o
         280vi+PMGPWSvfb6FX4nx2wUu8GOns5dnNSJVaXAaXZY7uOL4FOmp5THMUJa+jX0Olil
         cZuouHaIB5bw3INoEUJo9X/LMhaFqCsTUO58aBQf331wmVSUiI5ptqgFdcSaCz5qeVbo
         VsnJdg+IiaF5rx+a5XWvl/CcAfQtPzw/+vxR5Elp+SDCvXaWO40+smzp49lSrAE6jLKW
         SAmA==
X-Gm-Message-State: AOJu0YxJyx6JnElac8fe8uyVeHgivK07SAtYGiypBjY+S4kTJ8H/mgQa
	7c1oO1b13f5GvEEDwgb+KiwUyzmBZOt3ng==
X-Google-Smtp-Source: AGHT+IEI08RzPRo2T/KkNS6TnGCQRQYJsQKdpADX1cVkaNpJvEz5jdj0uYe02wZKAjUq+lUaF8fA8w==
X-Received: by 2002:a17:906:6d18:b0:a2e:3a19:f20e with SMTP id m24-20020a1709066d1800b00a2e3a19f20emr179739ejr.64.1705333035883;
        Mon, 15 Jan 2024 07:37:15 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id vh2-20020a170907d38200b00a2d60b5a502sm1496635ejc.224.2024.01.15.07.37.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 07:37:15 -0800 (PST)
Date: Mon, 15 Jan 2024 16:37:14 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Shuah Khan <shuah@kernel.org>, Anup Patel <anup@brainfault.org>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 05/15] KVM: riscv: selftests: Add scaler crypto
 extensions to get-reg-list test
Message-ID: <20240115-c690768430c76a2e595a7c86@orel>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
 <20231128145357.413321-6-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128145357.413321-6-apatel@ventanamicro.com>

On Tue, Nov 28, 2023 at 08:23:47PM +0530, Anup Patel wrote:
> The KVM RISC-V allows scaler crypto extensions for Guest/VM so let us
> add these extensions to get-reg-list test. This includes extensions
> Zbkb, Zbkc, Zbkx, Zknd, Zkne, Zknh, Zkr, Zksed, Zksh, and Zkt.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  .../selftests/kvm/riscv/get-reg-list.c        | 40 +++++++++++++++++++
>  1 file changed, 40 insertions(+)


Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

