Return-Path: <devicetree+bounces-219064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C517B871DA
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 23:24:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30D41583062
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 21:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 897802EC09C;
	Thu, 18 Sep 2025 21:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iz0/xb20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98AE0246766
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 21:24:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758230694; cv=none; b=AC7QBwFjCHDPSj3oe9nD68zFvhZy4c/3B15gu2Fwqgo7Ss3Th1Th8Hlmj1J6BFQpEG0/5hZgXI1iYQ9hRPvs/iI9B6CT6283RUjQZgwW4nSCkxV0MxSyPDM+EeOMYsi5qkzWDrvQeuTSMB66KpGOgLrPELG5yFD6nGo6J4jPXX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758230694; c=relaxed/simple;
	bh=lW0zTdNY7jL+psecSiYTdrPn5JkxVIFF1eRhab2r6Fg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TXA3I8zsEjD1g9EWICvvFRfJjVXumx6ZwAZXBfcIjjra05bJPsoIQQPwukfRRYGB9m/jMVDZYAhVppzHXzyD9lGMlztqCRdI8KmNfp/uAYdRG51sZhCCco3pHrpIyZprAGhnQDcjTa3cqyl2lgW4Pe1HGqeFtjIJaWL1lcp/AMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iz0/xb20; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3dae49b1293so778335f8f.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 14:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758230691; x=1758835491; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ZlFCbhCTpOXXCa+leD0aC1fFvORDxKQ+b7Z61x2UmGs=;
        b=iz0/xb20OYqyXmSHgpP3aZwc4KXeRBOeo2qov15bnPKijMt7az9R4MXzxAGEVMDAAM
         rqL2S9laUhhyl5AkRP5cPb0wO1YM6CrA2O4k2/aC+xzWWGcUTO532RvJXbUIzZnLDujx
         VvMy6YCS7BaGPdMqxQMAlFUmBXXNrcS8hlGcq1QYlnsDLDYS0T9PZu0Q7oBGplly8EH5
         948bHE89d0qJB6vHFGtBptMJIie1Dt3FGZB6NpulHw4z6FIf/4tg7TD0qixVXcTFYbY5
         EyeJOpUm5yUNx8kkEudARelguV0TcxwV9rjgWyli9fhrjNy8M9f6zAVgxCOjAlxT5IxK
         z54Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758230691; x=1758835491;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZlFCbhCTpOXXCa+leD0aC1fFvORDxKQ+b7Z61x2UmGs=;
        b=kwH5b5r9QTpBQ17tMYcRYSydxGvb6cBjcod4cSbk1zpNaxf9Wyi20SwMIUx3vw3oT3
         PZ+81WVTN6F7JlmZ4qc3QdHl5hL+dgnGSf4uQtFb+YQTNaESvlH0D/IgJD0Jq26fTLX1
         YGSAXJ1MpQiDwJnKJuCP+dFN751mfGWbbMCu2FRJeN121oB4xZeQK9OMUXawLNfqCuF5
         ZDJkeq25MpWOfHidBYxnhiUXQ7Edjz3O9XZGtkQcIh3o7lRU3g9w8PMQ031SNMutSF/M
         +iNklAgLTHca5zlf4jDG3wRCJ36OzeWqD4eZvgv67dM0tsjujcyXmwKHwhrowt3zAnvt
         Z1aQ==
X-Forwarded-Encrypted: i=1; AJvYcCUE3oTPItJ7qd5ZJeCrf0SDQRZZXXnenXyK0F5af0m8uby0BQtd9OTD2jKNzFX8UHJzGCQ5uS0Eh+kd@vger.kernel.org
X-Gm-Message-State: AOJu0YzLvFyUt7vgZ0fTRyxg+cT08Ux6dT0sw1h00/zY5GCtP+jQQQth
	bj2m1LlemlOfYJmG1MxInFhhw9bDufn+oNps7DioTCCvCekTeZ+5ulJR
X-Gm-Gg: ASbGncv+4xo6sLsZn/kcyAWxQ4VglTLAMrhbGu4E2rMoRuRqTyGclV1kAR7gwhxQ9HS
	5qPXlb//n13rArYjRPS1FoNpAtvH4Ge9czbee3WInKEQuo/fQGp0itU+xoC7EvmIJvrfhMnsEMY
	BkZg4FrdVj7OqsyrNN14Ek/MD3ScU+Ivjjj+DV+v0sjedhaUYqKdh0/p7EYrAMxkjdUEYWPt0SN
	gTypjnq/1qplGrbjF6xxI2t8/OJK5m74EVLBhypT0Sfs0nr3faWWSRP4TBcnAWdhZdxmmfrYCou
	w20L+4D0D21Lab+GkY/7xZiull7zGxvmPHnOKhZlWGnv4epdAPIs8bbKhfdsT8yrp/dEkMT8UJ9
	VSJOU+o0BvwGO9akS776fmQW951iyNlBxPYTMCO0=
X-Google-Smtp-Source: AGHT+IGVI9rYSUJl9pXRwEIpExb/jYBmQ2Wo2Ykd83GR5P8ke+XLU8cSqFTa/VqojplpA7DbaQTJvw==
X-Received: by 2002:a05:6000:2910:b0:3ec:ea73:a91e with SMTP id ffacd0b85a97d-3ee7c552a02mr532419f8f.12.1758230690687;
        Thu, 18 Sep 2025 14:24:50 -0700 (PDT)
Received: from andrea ([176.201.192.207])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4613e849a41sm96925155e9.20.2025.09.18.14.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 14:24:50 -0700 (PDT)
Date: Thu, 18 Sep 2025 23:24:41 +0200
From: Andrea Parri <parri.andrea@gmail.com>
To: Guo Ren <guoren@kernel.org>
Cc: Xu Lu <luxu.kernel@bytedance.com>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, alex@ghiti.fr, ajones@ventanamicro.com,
	brs@rivosinc.com, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	apw@canonical.com, joe@perches.com
Subject: Re: [PATCH v2 0/4] riscv: Add Zalasr ISA extension support
Message-ID: <aMx4mS0K8f_aDV_q@andrea>
References: <20250902042432.78960-1-luxu.kernel@bytedance.com>
 <aLciY2putG8g2P9F@andrea>
 <aMoyntAydNMtcl+3@gmail.com>
 <aMw3504EwlnDOJI0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aMw3504EwlnDOJI0@gmail.com>

[merging replies]

> > I prefer option c) at first, it has fewer modification and influence.
> Another reason is that store-release-to-load-acquire would give out a
> FENCE rw, rw according to RVWMO PPO 7th rule instead of FENCE.TSO, which
> is stricter than the Linux requirement you've mentioned.

I mean, if "fewer modification" and "not-a-full-fence" were the only
arguments, we would probably just stick with the current scheme (b),
right?  What other arguments are available?  Don't get me wrong: no a
priori objection from my end; I was really just wondering about the
various interests/rationales in the RISC-V kernel community.  (It may
surprise you, but some communities did consider that "UNLOCK+LOCK is
not a full memory barrier" a disadvantage, because briefly "locking
should provide strong ordering guarantees and be easy to reason about";
in fact, not just "locking" if we consider x86 or arm64...)


> > asm volatile(ALTERNATIVE("fence rw, w;\t\nsb %0, 0(%1)\t\n",	\
> > -			  SB_RL(%0, %1) "\t\nnop\t\n",		\
> > +			  SB_RL(%0, %1) "\t\n fence.tso;\t\n",	\
> > 			  0, RISCV_ISA_EXT_ZALASR, 1)		\
> > 			  : : "r" (v), "r" (p) : "memory");	\

nit: Why placing the fence after the store?  I imagine that FENCE.TSO
could precede the store, this way, the store would actually not need
to have that .RL annotation.  More importantly,

That for (part of) smp_store_release().  Let me stress that my option
(c) was meant to include similar changes for _every releases (that is,
cmpxchg_release(), atomic_inc_return_release(), and many other), even
if most of such releases do not currently create "problematic pairs"
with a corresponding acquire: the concern is that future changes in the
RISC-V atomics implementation or in generic locking code will introduce
pairs of the form FENCE RW,W + .AQ or .RL + FENCE R,RW without anyone
noticing...  In other words, I was suggesting that RISC-V _continues
to meet the ordering property under discussion "by design" rather than
"by Andrea or whoever's code auditing/review" (assuming it's feasible,
i.e. that it doesn't clash with other people's arguments?); options (a)
and (b) were also "designed" following this same criterion.

  Andrea

