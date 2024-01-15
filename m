Return-Path: <devicetree+bounces-32081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 239DC82DCC9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 16:58:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A8307B21F4E
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 15:58:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C79D17999;
	Mon, 15 Jan 2024 15:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="go2L+IAq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1489D1864E
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 15:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a27733ae1dfso1029384166b.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:56:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1705334197; x=1705938997; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=id6GIS0plSeSDJxIJu2fNwUkpjmVOZ3sW40Ob6YefTU=;
        b=go2L+IAqkJ1MCmjcUB7ex0CrRxYFjIIthKVCFQMDheZt3BkykQTZT5Tdqg427Fb655
         KRSqGJafGvfPmZIwsB2lV0G6KdqIErZzwUG7KJpeCGJSlOoscuWHbMoB9NdyfOVbMGeU
         YkAPV1h5heR0zKiKeUzg2POaOOli6aRmzJp4hG0+AZklRJjsgS3Ls5sd00zzkoVTw5Pq
         LGXPfiHtFOm1oudfpH7Zz9nKWbDb6fu+2YkOCYKwi+ZVygR3VHCvPEUTnLYFuCIhVe3q
         yTVA47I0g6pF2qzn6Bu4SSaMixl8lB+KZQkTgq1DfiEDs10wCAbY3R0LcESkFUqzAim3
         gBSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705334197; x=1705938997;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=id6GIS0plSeSDJxIJu2fNwUkpjmVOZ3sW40Ob6YefTU=;
        b=wP93LK84wLIQHkBXaIPDnJXmT9hbCfK2dafnwYEzDz/X1Ozz/ZWTkv0QOdRIRWYw0a
         +vzZQ4+/DKUH9kkui+GSkwhMjBrA2kIkv0A0ONuaOhx6KiQ11ZUI+abedqlveZ3hOZwP
         Ia44y7LRAt6+VxH7eC0SyYlpegRImr/yu/fQQ2leH3uUoVWOnqKJxooh5aIlWmASxJrv
         bQlRfI2WHTHmrniHGjnwS7pQ3f/TN+/NfFczBRKFlYaIQ6qU9bEgGJEbrnH2LKDck/JD
         l0A/w7LEUnxtqMCMA1FAmOr+RxfpIWGk3IC1ihKQAPp6pCsddJUSsg/t3UvMkf2okcl6
         n1Mg==
X-Gm-Message-State: AOJu0YwFyFNivjC3YTySa1DR/fuYCqpQaXlNx8P9v0AxNFSqfXqaQ/pU
	54Dyk2sTTrYMU6BDHKSgTBv1wKvz8REE2Q==
X-Google-Smtp-Source: AGHT+IHTR63/66h2n1q0UBJQFj1+Ohm1ECgpSZkt/CgPr0dV4y0NxCNBHuj7u2K/R2R9jSItC3Mu9Q==
X-Received: by 2002:a17:907:d382:b0:a2d:99fa:94fe with SMTP id vh2-20020a170907d38200b00a2d99fa94femr582298ejc.58.1705334197430;
        Mon, 15 Jan 2024 07:56:37 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id c11-20020a170906528b00b00a28fa7838a1sm5474592ejm.172.2024.01.15.07.56.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 07:56:37 -0800 (PST)
Date: Mon, 15 Jan 2024 16:56:36 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Shuah Khan <shuah@kernel.org>, Anup Patel <anup@brainfault.org>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 13/15] KVM: riscv: selftests: Add Zvfh[min] extensions to
 get-reg-list test
Message-ID: <20240115-317ad6428b5add2b27617f35@orel>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
 <20231128145357.413321-14-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128145357.413321-14-apatel@ventanamicro.com>

On Tue, Nov 28, 2023 at 08:23:55PM +0530, Anup Patel wrote:
> The KVM RISC-V allows Zvfh[min] extensions for Guest/VM so let us
> add these extensions to get-reg-list test.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

