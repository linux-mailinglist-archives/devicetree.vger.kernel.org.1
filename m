Return-Path: <devicetree+bounces-32076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4681182DCAC
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 16:55:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD7401F22856
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 15:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5107C1775A;
	Mon, 15 Jan 2024 15:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="iDgeT8Ch"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9ECA17743
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 15:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-557a3ce9942so9764208a12.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 07:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1705334143; x=1705938943; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DMrg2ftiySODP1utRQcg6FAO055EYrzqcviBe8d027c=;
        b=iDgeT8Ch+pR1hGZdkC8kNzwZFKyO/lxrgea/tOv28dgSV5XAKkjYqp/BQCDNArfvo7
         jtoxflJnrKQdOaHSTegLy2ooNypZtC0hFcvPiPlDku7Vg+RespmWrCBXHkn7atB+lst9
         BMtSA7j5LITXJfR5ZyKVXpgqDrX6WDeypbV8e+ESgSKymKQP78+taMfOG6rKS2t6GaJa
         VTvPhojF1QGrSksfUemilYcUpM5V0FO5aVDu8AoUQoHxbqBw0wZS2JzMDhKDLcchjXi1
         fIA48A1Ts5DVspAbRth8UDZaW9dtmwAOasPtBfadTtmPdItkIgFaFingQRCFumlgCnoW
         5y/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705334143; x=1705938943;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DMrg2ftiySODP1utRQcg6FAO055EYrzqcviBe8d027c=;
        b=OqtqCR/YZoM4geUhT6lpJppIQUs63SlE5h8anomxgfICoYdy+20X4u7KcpIAiyba/v
         TYODqrf3cfn9YOFMG8rX16mAZ1p7JY1wt8sISc6PTql5ZN/NSkIkl7wNbHinGhDSMuMb
         qbYYfhXY2Xu/aBpMyjcN+8w+VTTfbkNv6Kr3JQE5D8HSdXcKgIMYqlxJ+AmSLrAxvv93
         6oiC/fOPNwH7HTX3n5tYZa3xUQdN88VkHyKzJF+rSk8gnjzGGNf/CBPDAizaq8b9HBKs
         A1Vi0AU8MkwyH0qj1ulWag3MtphUPvxZW+ndbl5BRk6kL3vX41IkP5MgJVg970KvHMfl
         sS2A==
X-Gm-Message-State: AOJu0YzL/RHUMCMeeFY0Lvkce1cIoFE8clVDtURh4Uw1i/x1Y4NJS5Zk
	jdRRlgcz9ao/7v+Sgh3GcIZ97FEGLR86Vg==
X-Google-Smtp-Source: AGHT+IGPRILw6QZUdJm8bg28ZEaLAG0BKzFK5hzPlkBnp7yvq4KUBRiZDFadwrpsjQbzjOOl7WxqQw==
X-Received: by 2002:a17:906:fc10:b0:a2c:43d:3fa with SMTP id ov16-20020a170906fc1000b00a2c043d03famr1870560ejb.122.1705334143308;
        Mon, 15 Jan 2024 07:55:43 -0800 (PST)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id v1-20020a17090606c100b00a2a04754eb1sm5430467ejb.8.2024.01.15.07.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 07:55:42 -0800 (PST)
Date: Mon, 15 Jan 2024 16:55:42 +0100
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, 
	Atish Patra <atishp@atishpatra.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Shuah Khan <shuah@kernel.org>, Anup Patel <anup@brainfault.org>, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org
Subject: Re: [PATCH 08/15] RISC-V: KVM: Allow Zfh[min] extensions for Guest/VM
Message-ID: <20240115-a20755a0a5fe14b342814b16@orel>
References: <20231128145357.413321-1-apatel@ventanamicro.com>
 <20231128145357.413321-9-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231128145357.413321-9-apatel@ventanamicro.com>

On Tue, Nov 28, 2023 at 08:23:50PM +0530, Anup Patel wrote:
> We extend the KVM ISA extension ONE_REG interface to allow KVM
> user space to detect and enable Zfh[min] extensions for Guest/VM.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  arch/riscv/include/uapi/asm/kvm.h | 2 ++
>  arch/riscv/kvm/vcpu_onereg.c      | 4 ++++
>  2 files changed, 6 insertions(+)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

