Return-Path: <devicetree+bounces-224757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F964BC78F1
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 08:47:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C57C74E241E
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 06:47:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4DC42C21F8;
	Thu,  9 Oct 2025 06:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="IpcilbrT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA9F211290
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 06:47:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759992451; cv=none; b=Yt/SDirfbVfQh6M37oiZLdkLdO6WxyXoOCALXqsODX3AEuCwC6305NhI9AXBbLQZGh6vFsc/3zobHbphu4fjlKw+jFVVSjQcYOGNm08TXWk28w81IOUJF+fcXoapDRukxr+Jh4OzERL6jN14k6YgjJ9K17kBa9wd0e/PxqnW7mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759992451; c=relaxed/simple;
	bh=mfZ9IwMPosLthjEdYwEjtzA3SfovaP/AyucpLKx9p3I=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=c6L37KmnrNBks1hgC7OCZMoPiwZP1O1/egh8eRZmaT5Qi+TWpYk4ubXkZX/tDoyg3rydzluSu4gwR8svHWUPLIKI3exBBgEN3RjnLic85fH0U+5fhCUgF4slxFDmQlpCDDHhlJnV2hIQZAsbe5zvmCNxkzfyLPrCs4WPizPMulE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=IpcilbrT; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-46e34c691a8so1162495e9.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 23:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1759992448; x=1760597248; darn=vger.kernel.org;
        h=in-reply-to:references:to:cc:subject:from:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4kX/2DcwJULxUzQnKC5hadF3mFu3a5RnnRgumV8iiFk=;
        b=IpcilbrTGVgAzt2x9SaoibJai8ig5MzpI9+rZgGlpDWBP92DINa42KRmtn93BhiitN
         RSqq1ER2PEYZdt0Le5snXHcoMKbJQA5VZ9WhZU0L+67r0zWOJGBEQJ+zaAPvboK7KCGU
         OgQqxoL46qxGRNHpn+41hXnCTQ8//2Z42rWEymJeKld3KjTMnuM6/uBH4AwzCm/3WP7l
         BfpFwBAs1jUgiJvotf99PfYD8gGUc/TJJI2V7GwYravvQ45ZHKOy4ai5KrOBXUwRqsNJ
         hLXIUBryPe/aWmy8DcmUDPuVa5+87YIStQKQmS5c+4r6HyMVslC+llvBQRv6t5OV4aQS
         gLvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759992448; x=1760597248;
        h=in-reply-to:references:to:cc:subject:from:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4kX/2DcwJULxUzQnKC5hadF3mFu3a5RnnRgumV8iiFk=;
        b=eHAc9wGHQGc6VCstiG0niK/ax6kIS3SVyCql5Arut1IN4jUv/5kiQFWVtG0K7+Skdr
         mcUoKZw1wS5tpSZvFqxNknNtCtfN9ZPyZ4wJCxzev4g48PqknmSJibW1O/n0h2Rn6iWz
         1uYq6MsY1BPkpMmmPfgjRiNA1Hkv4TLgDyfGBSGgF652D1kMv60fFsgIqdVLRZRwDHng
         bnS+t6UlytnvmEyfYccdkshA8Tcvh/GnytIgLlv4CAadOLeOKnB8Y4aOcRuOigZkTnfk
         Cj1Af4gifw8Z8SLpvkilzdfFA89f+NM6BdWVYhhr6Ju8kHgBTqf3gYYwwbROZCQk24U4
         yxxw==
X-Forwarded-Encrypted: i=1; AJvYcCUtSKTrxnBEgnKsH0C2Ews54QWfwch0cpDwv0NlDfMwbkLaAPc7Bw2c/h4gEvWQJpA46L/Ms3vuYdbK@vger.kernel.org
X-Gm-Message-State: AOJu0YxiZ9BlE5xSKXKd1ys0QADy0rMC4nnppHiMRUNTj2VoZqqbwwoJ
	vQ8lso/q+WKuEbvQ4Cr7A4YWrQdhEF6E7ujdl15aCq3Exoy5vnVmfEL09EafiG3buk4=
X-Gm-Gg: ASbGncvH3CTfaLVBKF5BPQ6dTnwoyTVBWz6hJkwWWMI92KxXz39qX5pxb3Gm2z/b/hc
	nnHV6yxBMkwwEQFIjnkHIXr/T5ic6GAieIsYFpVVv2QRsTfkH/LZ6+WRnGcaCYIKMl+bfxC0h//
	9du6f93qSoHK331N5lxgy04HsZ28Ddzoc8vAB3ToqxjE1H0L93Sd1upKWYMEWJ9IUTavl97/JBf
	tPmghe/+abiVFP2VhQibZXL5k8z++uiL02cQDcNumB3E9uHTeEU+EnWgIG2o2SH0n5x30yzVADM
	RAG0e7Cv3Bj5xPzvtX5ft27/zAjRYG4dvhJkFVzTgkIjvp0TeKxEETEcpHqKJg1ZNNTNNhfBGjF
	yblwFAoVegC1o7sQJL/uVNiPwSsCWKthETlwsXT5S3lSYJ/fO
X-Google-Smtp-Source: AGHT+IERhG2czUcI/1bkhsjABOhRhpIpLRnFW9gDFTFnSV/gvPy8JtCf/9GIOjxDAvwaj+T5F6mmJw==
X-Received: by 2002:a05:600c:4707:b0:46e:4292:769b with SMTP id 5b1f17b1804b1-46fa9af990bmr23672735e9.4.1759992448349;
        Wed, 08 Oct 2025 23:47:28 -0700 (PDT)
Received: from localhost ([193.86.240.59])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-4255d8e97f0sm32843535f8f.27.2025.10.08.23.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 23:47:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 09 Oct 2025 08:47:27 +0200
Message-Id: <DDDL94HT7HYF.3VU2WQYU4WZY5@ventanamicro.com>
From: =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>
Subject: Re: [PATCH v4 3/3] RISC-V: Add support for srmcfg CSR from Ssqosid
 ext
Cc: "Paul Walmsley" <paul.walmsley@sifive.com>, "Palmer Dabbelt"
 <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>, "Alexandre
 Ghiti" <alex@ghiti.fr>, "Conor Dooley" <conor@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, =?utf-8?q?Kornel_Dul=C4=99ba?=
 <mindal@semihalf.com>, "Adrien Ricciardi" <aricciardi@baylibre.com>, "James
 Morse" <james.morse@arm.com>, "Atish Kumar Patra" <atishp@rivosinc.com>,
 "Atish Patra" <atish.patra@linux.dev>, "Vasudevan Srinivasan"
 <vasu@rivosinc.com>, "Conor Dooley" <conor.dooley@microchip.com>,
 <guo.wenjia23@zte.com.cn>, <liu.qingtao2@zte.com.cn>,
 <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, "linux-riscv"
 <linux-riscv-bounces@lists.infradead.org>
To: "Drew Fustini" <fustini@kernel.org>
References: <20251007-ssqosid-v4-0-e8b57e59d812@kernel.org>
 <20251007-ssqosid-v4-3-e8b57e59d812@kernel.org>
In-Reply-To: <20251007-ssqosid-v4-3-e8b57e59d812@kernel.org>

2025-10-07T23:21:12-07:00, Drew Fustini <fustini@kernel.org>:
> diff --git a/arch/riscv/include/asm/qos.h b/arch/riscv/include/asm/qos.h
> +static inline void __switch_to_srmcfg(struct task_struct *next)
> +{
> +	u32 *cpu_srmcfg_ptr =3D this_cpu_ptr(&cpu_srmcfg);
> +	u32 thread_srmcfg;
> +
> +	thread_srmcfg =3D READ_ONCE(next->thread.srmcfg);
> +
> +	if (thread_srmcfg !=3D *cpu_srmcfg_ptr) {

Wouldn't prev->thread.srmcfg have the value of CSR_SRMCFG when executing
switch_to?

Thanks.

> +		*cpu_srmcfg_ptr =3D thread_srmcfg;
> +		csr_write(CSR_SRMCFG, thread_srmcfg);
> +	}
> +}

