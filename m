Return-Path: <devicetree+bounces-177741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE0CAB8D42
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 19:10:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA2B33B0319
	for <lists+devicetree@lfdr.de>; Thu, 15 May 2025 17:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CFB7254864;
	Thu, 15 May 2025 17:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="L0tCFLJ2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B0B253F35
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:09:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747328957; cv=none; b=axgGc22hD9UIoM1XJjNoFMLDsm0NGxKHHsaiwqI0yIeuO0WKMZh6Hcqatn2aBNCRXnXrTOacyWqpY7X+m9Mjcg3b5ovY0L6sqcN3zRTDB9LK/Pz0DTpug5QkudNs+6Nyz0aE8lja4Gw0eUM7c8wEoc9u6pvk9cvFsZzeTbDnKnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747328957; c=relaxed/simple;
	bh=Z4ZyZX2UQL8KgyCkQWoLfIXDLEkXT0dEt8Xlszm0SQM=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fqSEvBHQO5NMBVlE2q8DJOcj2y91JAN6MW0wg+L4ugZVZE1CyE24RB1LaYxGaj34yORejZ5UJEd/IMuiNOpl1xOa1oPC6ZVmAJq8+i6zFGOaudeWeZw5KMSb1f/SckbKVm99yNc9yDfHau/peJg/U7iX0MteLw6d+HVmBNo8aIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=L0tCFLJ2; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0A4A3497A5
	for <devicetree@vger.kernel.org>; Thu, 15 May 2025 17:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1747328946;
	bh=EAHU3J18eD31/ymgQS39ucRDzPTjYOdwY+kBoX2CB8c=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=L0tCFLJ2xW6AJrOM0IUDvN9no0tqyGX1hi12PNoncmbvjKJs4feQ0o+PO6FtCGH2N
	 UYxANrNuprBJgH99/1B6BW73DT9BxkRABiTkK11Utir1oGUMwoRlI/AHnocKqyPNtD
	 vjCaks2f/a0dQlMHpYpqQKvgQtaORsflrlrrkdWCsGKb6BbcCE3AQgjx/QkpLEvqeD
	 ffpiX1PyC+33Wf1nGs6FtWvqBZdsJS+TEds5VF7MoRNEpqtN5Xes0RfCOR6By/t5jF
	 J3tmtTKwwFh/p6s0VftG0LyldC4vuggAcgTjfDiIO3/sN8MAXdym9ZLpfHbSaLfS6a
	 HZSC3b8dvcGdg==
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-6048c82f61fso572724eaf.0
        for <devicetree@vger.kernel.org>; Thu, 15 May 2025 10:09:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747328944; x=1747933744;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EAHU3J18eD31/ymgQS39ucRDzPTjYOdwY+kBoX2CB8c=;
        b=gcUVb4/Y7lXsTHvEkwRreKL2lrBaVNRytGlQuCpq8nrMuy4e4QTKrnBSnJMNRgYcUd
         YqUDtg8uniDQa8Fji40+xbyVMEzpX5fZQk1b6guJaLc3+AKBgZBaJTszTLfRHdJPFkQe
         9jV5QfTFUzuaBiipePPLaCTUkqmFAtI+6jrwp2anKq5eSPX+N928UFLEkdHyhTikH72d
         hFJ8Rg0jz8Vj34JVkH0ZXliRk2g6nIwo6d168V7/EiAAgZ1Nq+LGwgjk5lYa2YFAynyp
         181QmG5xFJjtvhJmpMxD0vqG1PzsHYkiHrWFiVOfZt8+gqPs0igNqZpY9gFPY2Hrk31v
         A2sQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnPoU5HiBgipi1CBWFbag9OyOraHkZLhN5iDu2tsHi5vEivmO0Jh9f8YARv5vhuTbp3OdujCU/V76N@vger.kernel.org
X-Gm-Message-State: AOJu0YyuPEwwv9E1piPOokDh3LM97G2nzSIh4om/qFR6UKfS2L4B2UrL
	ZMC1nLgrTQCCy9yIfn0xJMQ1KA6EQpXu4B24Lq4vdo4ywmR0PwhhT/AIdhzY9Tu4vbrpYd0qEcb
	ZcSE6mP/UkjzMJR59RsCHSxc8IMWjFUahBr9zX1o5TvAkbPwaxqNa66VyhwCe9IRV+mXexTBI/T
	X0v16eUPnm6xsC++DLPseXBq6eA3SC+qWrJtAZGUhpcLJ0K3VHwLdqLg==
X-Gm-Gg: ASbGncs4s8WzZoeLPW9akxdATqhVAr0134tGKaf0bbY6MY11fn8ZiDCK1ahycFrwqsy
	q8F8/bHy5nQypvRa0uaZi50THUNpyN+PQEnPj23HyZZBm/xW2LnOZSA5+zshH2osroQMG+g==
X-Received: by 2002:a05:6820:210d:b0:606:8579:4c5b with SMTP id 006d021491bc7-609f36bf4bamr161417eaf.1.1747328944560;
        Thu, 15 May 2025 10:09:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFLlaIpBSb50nrAEfKwrzW44A+wmRkrahI+IsmV1VZdoth2sU4ipKUE23o6HxNeOl35A87CWuYdetvBF/REIc=
X-Received: by 2002:a05:6820:210d:b0:606:8579:4c5b with SMTP id
 006d021491bc7-609f36bf4bamr161396eaf.1.1747328944263; Thu, 15 May 2025
 10:09:04 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:09:03 -0700
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 15 May 2025 10:09:03 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250502103101.957016-2-e@freeshell.de>
References: <20250502103101.957016-1-e@freeshell.de> <20250502103101.957016-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Thu, 15 May 2025 10:09:03 -0700
X-Gm-Features: AX0GCFs9vd2gnAh-5tFs89i_vEFOodBVMxQaK2XBrUlr3f41ZlKWfMl944u5vOQ
Message-ID: <CAJM55Z9g=YKZmdkq7BserR4hR-MxsvDLexUkf4u+L53m3vAtzA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] riscv: dts: starfive: jh7110-common: add CPU BUS
 PERH QSPI clocks to syscrg
To: E Shattow <e@freeshell.de>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Add syscrg clock assignments for CPU, BUS, PERH, and QSPI as required by
> boot loader before kernel.
>
> Signed-off-by: E Shattow <e@freeshell.de>

Thanks!

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index c2f70f5e2918..f1489e9bb83e 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -353,9 +353,17 @@ &spi0 {
>  };
>
>  &syscrg {
> -	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_CORE>,
> +	assigned-clocks = <&syscrg JH7110_SYSCLK_CPU_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_BUS_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_PERH_ROOT>,
> +			  <&syscrg JH7110_SYSCLK_QSPI_REF>,
> +			  <&syscrg JH7110_SYSCLK_CPU_CORE>,
>  			  <&pllclk JH7110_PLLCLK_PLL0_OUT>;
> -	assigned-clock-rates = <500000000>, <1500000000>;
> +	assigned-clock-parents = <&pllclk JH7110_PLLCLK_PLL0_OUT>,
> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> +				 <&pllclk JH7110_PLLCLK_PLL2_OUT>,
> +				 <&syscrg JH7110_SYSCLK_QSPI_REF_SRC>;
> +	assigned-clock-rates = <0>, <0>, <0>, <0>, <500000000>, <1500000000>;
>  };
>
>  &sysgpio {
> --
> 2.49.0
>

