Return-Path: <devicetree+bounces-89938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA31943386
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 17:42:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5D097283877
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 15:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81441BBBF4;
	Wed, 31 Jul 2024 15:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="hxtbbpEN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A351B5816
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 15:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722440523; cv=none; b=FGvodSFVybfXFYtBoM/OROdO/fFvFqHzGNQkXt8wXM/D6tOYMYunmIn9lY3yZ3nO0l1KpzbSrNRJ8v/OozgwONMh+XZif+7NIIN8jvbfseu8tSa0UFevUYJ5W0s71QEa8nobfcN1nFhdi8JtQ3x4emkOgAz37Z6zWPFiFq2aoLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722440523; c=relaxed/simple;
	bh=v5vaRlpTTd21X7XtxD7BVDxM5CtrMc34R7AxFqKMdcg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aMhCYO5lvONB2uLsBl/W327tHMBE+JzBFoMYtnmOUsHnzCdkVqpNUGiaXbQj7qgBRS+bAuFrtaHyg2H3seyagcECjK54HLFj9vcH6NcXzJ3JNBAJxLSCmWf0pumqvZ3eVWipmNEUU5+8l49as0UGFEfH2PoeJDoEv+cgdRtHI+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=hxtbbpEN; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a7aabb71bb2so808227566b.2
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 08:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1722440519; x=1723045319; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UYT2Cc0DbDwz0EHSJcGoeWCUyU6S/hmw9Y4vANMOf9c=;
        b=hxtbbpENYvcRgcLOLNUO2/KLHrc2ar4y25zbjldojDRo0RktvL76BJSE4IfodtpuN+
         Ub9nhi456AdqYb9FFk1qMoVk9dA3eqBgHprxzhySP++meCDsFOON5QaQC5lav4663lTs
         hdA652uV1KEq/18jRX8HtaY84TcIUD90L12QDjo0t6FlyQsUpB7u5K8x/F11MhFLzFIH
         pZp0AOzWwacizXnAXkRxWv7rRQijc3KEi7PuBRNO2RpiI1+hr2qqyaptIm/UO4zgehpc
         XQhqsIV48b1Zbayi0dkusZIgS8GvNh4kkV1U3FUMEL6t8PbnKK2oSDu+zawrnZSMLJY9
         4cow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722440519; x=1723045319;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYT2Cc0DbDwz0EHSJcGoeWCUyU6S/hmw9Y4vANMOf9c=;
        b=HIh0jG1LwwH5JhciOGXYs1/04VBV3VaQByDcs710bGUe0Re3xfobJx+jz76FnzDpG9
         5WHIa8Br1rGA8clpqA3pjQ3zgqzO22HkR2LWNQwNTeUp/JeD4CzoqpyNX5OqrGuwGeOg
         qzKQxNNYamdh9Y0Vbp9t4rMyad0jyDSWutXPWY6L8NRmavK7ZCTcM3EvLjRIFl+xY2CO
         gErK7KzaPZaXf73+YZdfhIil/WqzAYWjCSY9V4ZNLtoxojIxCKXeRuwb+W7qwqhrspHj
         IldKqxWhS9032QFjM8NiNHMxCNrdCtmJHTjbGmH8T3E0N3BEEvJWgTXmdSkjj7nXhA+f
         sV6w==
X-Forwarded-Encrypted: i=1; AJvYcCU8eg+Hmc02Aq3Se491T4hzVGFtOYBdDSOTq1RToY1Nkn5562AaZfVGOVIodTh6xpL1v6qSCAJI+Cl5Q3CG6ahxEB/2NXbTCzhRug==
X-Gm-Message-State: AOJu0Yxmy0lM/M2hb3eU1YafmobRmYssF3gF6NpKUMev36KUI4lrk7n+
	no50yQH76QazP8staD6X7sziGey3fPnHex0z94w6+AsYNyy5Qm//iMq4rp2ZjGs=
X-Google-Smtp-Source: AGHT+IEBk2d0ul2kTsNJSlKbs/TvRwodD3XnxLeAClb0/bTlm8Fcz5PpHV1kex7uf9VNsTgb5Tg1BA==
X-Received: by 2002:a17:907:728c:b0:a7a:a892:8e0b with SMTP id a640c23a62f3a-a7d40015a95mr1067366266b.19.1722440518929;
        Wed, 31 Jul 2024 08:41:58 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7acadb82f2sm784530866b.204.2024.07.31.08.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 08:41:58 -0700 (PDT)
Date: Wed, 31 Jul 2024 17:41:57 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Alexandre Ghiti <alexghiti@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrea Parri <parri.andrea@gmail.com>, 
	Nathan Chancellor <nathan@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>, Waiman Long <longman@redhat.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Leonardo Bras <leobras@redhat.com>, Guo Ren <guoren@kernel.org>, linux-doc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-arch@vger.kernel.org
Subject: Re: [PATCH v4 07/13] riscv: Implement arch_cmpxchg128() using Zacas
Message-ID: <20240731-98a368a296fa83a2e8ff8bec@orel>
References: <20240731072405.197046-1-alexghiti@rivosinc.com>
 <20240731072405.197046-8-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240731072405.197046-8-alexghiti@rivosinc.com>

On Wed, Jul 31, 2024 at 09:23:59AM GMT, Alexandre Ghiti wrote:
> Now that Zacas is supported in the kernel, let's use the double word
> atomic version of amocas to improve the SLUB allocator.
> 
> Note that we have to select fixed registers, otherwise gcc fails to pick
> even registers and then produces a reserved encoding which fails to
> assemble.
> 
> Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
> ---
>  arch/riscv/Kconfig               |  1 +
>  arch/riscv/include/asm/cmpxchg.h | 38 ++++++++++++++++++++++++++++++++
>  2 files changed, 39 insertions(+)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

