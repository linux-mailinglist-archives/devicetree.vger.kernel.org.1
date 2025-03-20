Return-Path: <devicetree+bounces-159459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 102DAA6AFE1
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 22:36:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BC27983C92
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 21:35:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BFC422170A;
	Thu, 20 Mar 2025 21:35:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="G5JYC3jm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48BE71EB9E3
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 21:35:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742506559; cv=none; b=DzTYloVXnAzDbPFDui0KKEfqw2ccrFuJChytHh1AQqGKrXBBvMxMBVc5Oraep5KEq1AVbjzPYsaxXmHZmA3L7cPRch7xWZ31Zrr99QAABOm1O55TAGGdH3c50UAst5xMVAWyZA4HmJaDcAI2eYPVsoEtUDnKjstYeg3i4Iog0Zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742506559; c=relaxed/simple;
	bh=0gasMJ9MwLFF9X4TIJDjjd2uvTa8ezZ/DrhvXflVu0E=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=WfdyemYFq2lZ6pgfw1V6js9yqjrn6/WMQ46QwHJ6feRAnLT5rtL12idQeVS7vHKeQ2riLGSnEb/gndHnxVEuVyW3i7AfEvnc0cgbvDESK2XX86Iaf9qjG10pgQzImgTpvpYS/D92fyA5faS6/m1BjvV/r/8v+z4NuYK9Kvj7BWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=G5JYC3jm; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43d4ff56136so474645e9.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 14:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1742506555; x=1743111355; darn=vger.kernel.org;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JqJgAERJO0hWodgjO+O6nsJOj3YPTpObkXEvNBlmG3c=;
        b=G5JYC3jmOb6Ff6mrYC1Qo26ZnarpsB81DQV9Kc+bUEWnMhXaly+qjZvxG0p0KjOBum
         ryIRnFQu2RO/iEP8XJxRypNekFqA6IpYfSuR0MFKfnHCq6V8wQKpjyhE2jclV1S18efO
         MJCiKZA+53oolojvPRJ450/cEsJjjlLB2RfSTJhuEgIQarg+KPK1c6akJARSSsofNfPD
         Rd0HCwzfE4hUr/3VHKKPvGGVSg4m65k7DJmu9iAGCezSGjYisxglBwUQ/tGTEjhO0oBC
         Y7WtOA/EUh2856lqJ7qx/EgRq3IetHW4JjNIf0sQkNzF1dSt+r92eZ8w/xK63tTQw2bc
         fXpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742506555; x=1743111355;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JqJgAERJO0hWodgjO+O6nsJOj3YPTpObkXEvNBlmG3c=;
        b=M/xvWjOviNcRB6wHd155ER66eZdG3hxnnu1kSIgKUXjTnLjKfCPMYLgGRFgDkdlCTu
         9GsCDPJCLxcxZqVMk+ie7cdfDTpDgvBGTniW7b+vAqpz8SjRE0myEvUOm3bOfEbgno4c
         lVgnWE0jZo8BsQmXz3a6pnUF1fTaF9p8+qwPHfkPhcEnfkwuYHAkS+XpkjjZ7nIRD9c8
         YLXrYpwSV6f4NYp+OcSduDrNPOVaKQx2dL9KT7V3QsVbwvp8SeXB8OG/BHk0R9sN+H6o
         HXljSV6SpWcIz2KC8kFdg+NUWkahMuKdg3o4fD35zFk1Bj82iTkQUHB+zAaSCfAFA+Ws
         lOUg==
X-Forwarded-Encrypted: i=1; AJvYcCWxvX0m+O1Q5D7MgTRyJdue41rVrjk9WU1dvIxcLQQdBM9IGwe3Bdqol+HBC6JX4z+Qyy2wjNf5YAg0@vger.kernel.org
X-Gm-Message-State: AOJu0YxSohm3ozs06cotRDUDhswBRukPP4ihirg7oB/tHFnhFmMScf/R
	TX0Z05TSCZz3jfUnC/1zhEW6/Y6IyHtII+EtSjTBsCeTBAt3p0sWcoJyp64JBdA=
X-Gm-Gg: ASbGncuRwpkXdRM8HD+DdBY9AZbseryutxAlOXWGrYjB8byeT/CTJBWxuVfjWNggaLU
	j0+iopwFNWhblz0H0GkMFFvUwbJ2jC88icYVP0jqAqFoxQoD/O2uUDIxPDQBTlX/4Q2ZT8dfqHo
	cg29DD4mxWpGm6k2mOfFuunhsWzowqmdUOZ8vvmB/NUqZAQEzRv/Gm/qSvY7KrWGZom7n7dUeiE
	yjuAA6A07dioSH3BxECs1Gi7z6zmYNX2I82mrPROEJSXAn0w874OEoocqa66RSeecvXQpbUkgL0
	zyyHnaUsZvskXd7a7WDpfJOiWAZbCg0nezSx0LLTDT4iBSzvgCYBdglkdXleCOFkp3GBUFTJTPC
	l1WNA
X-Google-Smtp-Source: AGHT+IHQLBHBcxn45pDMJ6mBe7Q5GjHdSOzikTUHc7bZFFqM3IvCF49MKGgOPWFCY1ifjxDw5fxebw==
X-Received: by 2002:a05:600c:3552:b0:439:9a40:aa1a with SMTP id 5b1f17b1804b1-43d5170c622mr550105e9.6.1742506555439;
        Thu, 20 Mar 2025 14:35:55 -0700 (PDT)
Received: from localhost (ip-89-103-73-235.bb.vodafone.cz. [89.103.73.235])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9ef16csm605211f8f.86.2025.03.20.14.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 14:35:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 20 Mar 2025 22:35:52 +0100
Message-Id: <D8LF0RDZ6809.1I3MCCVSHRSQ2@ventanamicro.com>
Subject: Re: [PATCH v12 23/28] riscv: kernel command line option to opt out
 of user cfi
Cc: <linux-kernel@vger.kernel.org>, <linux-fsdevel@vger.kernel.org>,
 <linux-mm@kvack.org>, <linux-riscv@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-arch@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <linux-kselftest@vger.kernel.org>,
 <alistair.francis@wdc.com>, <richard.henderson@linaro.org>,
 <jim.shu@sifive.com>, <andybnac@gmail.com>, <kito.cheng@sifive.com>,
 <charlie@rivosinc.com>, <atishp@rivosinc.com>, <evan@rivosinc.com>,
 <cleger@rivosinc.com>, <alexghiti@rivosinc.com>, <samitolvanen@google.com>,
 <broonie@kernel.org>, <rick.p.edgecombe@intel.com>, "linux-riscv"
 <linux-riscv-bounces@lists.infradead.org>
To: "Deepak Gupta" <debug@rivosinc.com>, "Thomas Gleixner"
 <tglx@linutronix.de>, "Ingo Molnar" <mingo@redhat.com>, "Borislav Petkov"
 <bp@alien8.de>, "Dave Hansen" <dave.hansen@linux.intel.com>,
 <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Andrew Morton"
 <akpm@linux-foundation.org>, "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 "Vlastimil Babka" <vbabka@suse.cz>, "Lorenzo Stoakes"
 <lorenzo.stoakes@oracle.com>, "Paul Walmsley" <paul.walmsley@sifive.com>,
 "Palmer Dabbelt" <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>,
 "Conor Dooley" <conor@kernel.org>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Arnd Bergmann"
 <arnd@arndb.de>, "Christian Brauner" <brauner@kernel.org>, "Peter Zijlstra"
 <peterz@infradead.org>, "Oleg Nesterov" <oleg@redhat.com>, "Eric Biederman"
 <ebiederm@xmission.com>, "Kees Cook" <kees@kernel.org>, "Jonathan Corbet"
 <corbet@lwn.net>, "Shuah Khan" <shuah@kernel.org>, "Jann Horn"
 <jannh@google.com>, "Conor Dooley" <conor+dt@kernel.org>
From: =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
 <20250314-v5_user_cfi_series-v12-23-e51202b53138@rivosinc.com>
In-Reply-To: <20250314-v5_user_cfi_series-v12-23-e51202b53138@rivosinc.com>

2025-03-14T14:39:42-07:00, Deepak Gupta <debug@rivosinc.com>:
> This commit adds a kernel command line option using which user cfi can be
> disabled.
>
> Signed-off-by: Deepak Gupta <debug@rivosinc.com>
> ---
>  arch/riscv/kernel/usercfi.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/arch/riscv/kernel/usercfi.c b/arch/riscv/kernel/usercfi.c
> index d31d89618763..813162ce4f15 100644
> --- a/arch/riscv/kernel/usercfi.c
> +++ b/arch/riscv/kernel/usercfi.c
> @@ -17,6 +17,8 @@
>  #include <asm/csr.h>
>  #include <asm/usercfi.h>
> =20
> +bool disable_riscv_usercfi;
> +
>  #define SHSTK_ENTRY_SIZE sizeof(void *)
> =20
>  bool is_shstk_enabled(struct task_struct *task)
> @@ -396,6 +398,9 @@ int arch_set_shadow_stack_status(struct task_struct *=
t, unsigned long status)
>  	unsigned long size =3D 0, addr =3D 0;
>  	bool enable_shstk =3D false;
> =20
> +	if (disable_riscv_usercfi)
> +		return 0;
> +
>  	if (!cpu_supports_shadow_stack())
>  		return -EINVAL;
> =20
> @@ -475,6 +480,9 @@ int arch_set_indir_br_lp_status(struct task_struct *t=
, unsigned long status)
>  {
>  	bool enable_indir_lp =3D false;
> =20
> +	if (disable_riscv_usercfi)
> +		return 0;
> +
>  	if (!cpu_supports_indirect_br_lp_instr())
>  		return -EINVAL;
> =20
> @@ -507,3 +515,16 @@ int arch_lock_indir_br_lp_status(struct task_struct =
*task,
> =20
>  	return 0;
>  }
> +
> +static int __init setup_global_riscv_enable(char *str)
> +{
> +	if (strcmp(str, "true") =3D=3D 0)
> +		disable_riscv_usercfi =3D true;
> +
> +	pr_info("Setting riscv usercfi to be %s\n",
> +		(disable_riscv_usercfi ? "disabled" : "enabled"));
> +
> +	return 1;
> +}
> +
> +__setup("disable_riscv_usercfi=3D", setup_global_riscv_enable);

I'd prefer two command line options instead.

In any case, I think we still document params in kernel-parameters.txt.

