Return-Path: <devicetree+bounces-32082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E8482DCCE
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 16:58:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C9C5BB224BF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 15:58:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052B617BCF;
	Mon, 15 Jan 2024 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ljK4u4OE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8780717BCC
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 15:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5592d72edecso1502641a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1705334210; x=1705939010; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tjUTYBPkXCa7XWbbKGG7vPNvPFoPanfB3aOFNe3Yut4=;
        b=ljK4u4OEihvcZtXVOdjN1YEqO+rTcQngk4807byE4iiJmo+ZmIhGveimBBUciUT0qZ
         ldjhh9BxrOxTx1dzwreEyDfoBzh3LiQRYK88nD6LJzPwFRn5k7JeRnh+3W7zh5l465+x
         JDAv9TSbas/2d6QhsUIQsRRwtVIAW5l0whEg8uEb2LwhSV7uIJJI5ChTQEzy0YribhR5
         EhJwAy1WxOTP6e2IjowGgYG/Q9VXLndAwvgD2hLMEnTphGPKtonGSGSvA9XkhBAgaJgK
         SFa4+TZ6bnYPP1K3pUgCFzeeB0/MxsktNAoRKWGSLA2da8u0EvuJfotVVzMfi1DOeHiz
         qYIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705334210; x=1705939010;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjUTYBPkXCa7XWbbKGG7vPNvPFoPanfB3aOFNe3Yut4=;
        b=ePkY7PO1DX6hxPggrJZJuZXlB08jeJcq9Mj4R7Edf6oN2MsTCwb7Oc56Ec9OOwTMAh
         3mx8y+nHlYAEvoztO5667mh4V/xeXpbF5EYZuWVtqQk89qr4dLhwTaPoUylimzhVFnJA
         x693offh8CXEMrDgd07/WrgkBXlmD2gAHkiIlSgXovworcDTEzD9OJBgXgSRzDyCK/WT
         AnJbsr16dS2T/OQibmyOfKNSwbS9W9XtEn2DMLKtNF+Y8uct1irPy07o0jsilcB5K9u8
         wNr395lxukKjYTGHRu6Cb1tDpfe1BTY5o7uaxn0e5+FdbklpQAqLQSA3SIz/SypzM/rA
         rrlA==
X-Gm-Message-State: AOJu0Yzw07j/27Vo9yBGiJC8oZJO/YMbV8c9VrtxNv0qjFTpWcM1uKVf
	O+c9JbNzn9NHpGplMB+1FAaAVtnzwC50Jg==
X-Google-Smtp-Source: AGHT+IGsBQi506iCN/EypiMhdRtPrpz7QX4dvGNrnRHaLGW9vy/fghBvzgHOu5YJwCvgL7dkcuGZCA==
X-Received: by 2002:a05:6402:7d6:b0:553:83ca:60be with SMTP id u22-20020a05640207d600b0055383ca60bemr2985978edy.4.1705334209869;
        Mon, 15 Jan 2024 07:56:49 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id h12-20020a0564020e8c00b00557aa8d72c9sm5549635eda.25.2024.01.15.07.56.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 07:56:49 -0800 (PST)
Date: Mon, 15 Jan 2024 16:56:48 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Shuah Khan <shuah@kernel.org>, Anup Patel <anup@brainfault.org>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 14/15] RISC-V: KVM: Allow Zfa extension for Guest/VM
Message-ID: <20240115-572f0e469dc54dd3c42a5313@orel>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
 <20231128145357.413321-15-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128145357.413321-15-apatel@ventanamicro.com>

On Tue, Nov 28, 2023 at 08:23:56PM +0530, Anup Patel wrote:
> We extend the KVM ISA extension ONE_REG interface to allow KVM
> user space to detect and enable Zfa extension for Guest/VM.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 1 +
>  arch/riscv/kvm/vcpu_onereg.c      | 2 ++
>  2 files changed, 3 insertions(+)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

