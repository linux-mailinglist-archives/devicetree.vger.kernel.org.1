Return-Path: <devicetree+bounces-32984-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DEC183195C
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 13:45:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7C87828204A
	for <lists+devicetree@lfdr.de>; Thu, 18 Jan 2024 12:44:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F180241F6;
	Thu, 18 Jan 2024 12:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="sJB4mONY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FF925114
	for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 12:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705581896; cv=none; b=pTs94Vvhetlx7veFUNtxnKppmAvwKJx2XI1Z6lG6d4MrJlvfs6NAmapY6oG733cROFM6BmbC1boX4HtuFSHy4mFkIOZ70rDL2BnXbwoUDZvvmArtrGAVk1UnqZOC8LDLZCKpSLG4zOw146SEUzE2nMw4y3In3g7PerrXB6LNHOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705581896; c=relaxed/simple;
	bh=37Nm1D6XQrs+VsUMHb4aux5DEe0RfLXArjfaU4qNE7E=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:MIME-Version:
	 References:In-Reply-To:From:Date:Message-ID:Subject:To:Cc:
	 Content-Type:Content-Transfer-Encoding; b=jsv3V8r/bUb0jf+8mPE2viBTmliu+OGLUgtiBa7A0rDKsV6gLTeon0V9fUEOPMNnZS3mejigQFRGHB5JL9uZjA4fBxAi0Nsw29bT3MpKagIXU32AL1rrSXEa4nqtQ2UCl92uc78rzkp72kquK4RtEVLy7i58/9xB2fJSdqrMGn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=sJB4mONY; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3608cfa5ce6so56361375ab.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jan 2024 04:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1705581894; x=1706186694; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6CWJqfzPlIKbIm9XXUGeYPV3xbAqaiB/K2JIOon3tWs=;
        b=sJB4mONYac4ucb+zlyOttrKg+C2KJdOhwVGrwOOOqeAhzOkQgatCRZ/XS6iyDeRQ1J
         LxKZhW6YnLCyUDVymX2un0bqI6gqc+ClQr8OJKRfF089QLglA8DMMRNoP1Fiae/4cOaT
         tVKJBSMyPJUMOFEKv2+3d/St9EDiz4IkRbeG3JNmYLGeC0ZE0GDjA+GXyS+uL2NPWFW+
         eChxVp1f7KztacUVaud4fLTsX+wqk9t47ltJNTwCL/KCf/021hCZVD7rOku9fDkSjeWy
         9z8IToguiLrlmkU4jrVIXgf0HO0icZjunON4RNbgkUovKIXq9kg2Mn6sMp9bkYkbv9T0
         plyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705581894; x=1706186694;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CWJqfzPlIKbIm9XXUGeYPV3xbAqaiB/K2JIOon3tWs=;
        b=eaG6eB5pv0cC8V+oK0PAY1SDTUw9K1HAQVndVsaM2XWIOJMxyRxII/2G0jjBD8Y5bR
         WmDLHOvaSJPrd3UifkNd89Yq0OfJ0J2ubW/z+gGmGuATqww4q6LRuBtqQVrxtoCf6Kdd
         APFDpl5A4L4HU/OcGsJzUNOlQU+xH7ywaJ9fTV5PiMko2bwSeR/P+4eMoOqvz7Ihy07h
         ghG5ymwx4MI4b7vJrBAhE/OG7An3n2UeL0v7kHGLqYsVMFPhpQ8oIBpG4JB3rMgKrru9
         VuByLahxDpBGGX4Htujg5G6KB5XzfndYQmh6yLv2wDPMGP9vj+FqLTKW7ia9pvlhAX1U
         nqNg==
X-Gm-Message-State: AOJu0YzuMBCX6BaHpCMNR0CfQwrD2kPsIsfE478eAAuf400LBqBXNxaf
	88Zbx53YfhTJVqZrXeyH0ANjDT+rmYGqKavvK5hEgUiYwoeBppvuoE3t5aGlzBXFO8h+KuZXTuo
	DN4TCP2HQGOp705WLwbAkcahsVLb1J1okwol7Bw==
X-Google-Smtp-Source: AGHT+IFJ1bu7mCR98lyWrW+kDP0nULQ1bDHopDCzu01vUiZEYsTfjPTku/pcO21lNxa+IQGYXi5gy2BL1dSF+jC1bNQ=
X-Received: by 2002:a05:6e02:96d:b0:361:a21d:d492 with SMTP id
 q13-20020a056e02096d00b00361a21dd492mr227444ilt.24.1705581893859; Thu, 18 Jan
 2024 04:44:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128145357.413321-1-apatel@ventanamicro.com>
In-Reply-To: <20231128145357.413321-1-apatel@ventanamicro.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 18 Jan 2024 18:14:42 +0530
Message-ID: <CAAhSdy0Q8raGzH_mUsvAo++KmWu3yqBkjNTrn8CO-ZCiYEY9Cw@mail.gmail.com>
Subject: Re: [PATCH 00/15] KVM RISC-V report more ISA extensions through ONE_REG
To: Anup Patel <apatel@ventanamicro.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, Atish Patra <atishp@atishpatra.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Shuah Khan <shuah@kernel.org>, Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org, 
	kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 28, 2023 at 8:24=E2=80=AFPM Anup Patel <apatel@ventanamicro.com=
> wrote:
>
> This extends the KVM RISC-V ONE_REG interface to report more ISA extensio=
ns
> namely: Zbz, scalar crypto, vector crypto, Zfh[min], Zihintntl, Zvfh[min]=
,
> and Zfa.
>
> This series depends upon the "riscv: report more ISA extensions through
> hwprobe" series.from Clement.
> (Link: https://lore.kernel.org/lkml/20231114141256.126749-1-cleger@rivosi=
nc.com/)
>
> To test these patches, use KVMTOOL from the riscv_more_exts_v1 branch at:
> https://github.com/avpatel/kvmtool.git
>
> These patches can also be found in the riscv_kvm_more_exts_v1 branch at:
> https://github.com/avpatel/linux.git
>
> Anup Patel (15):
>   KVM: riscv: selftests: Generate ISA extension reg_list using macros
>   RISC-V: KVM: Allow Zbc extension for Guest/VM
>   KVM: riscv: selftests: Add Zbc extension to get-reg-list test
>   RISC-V: KVM: Allow scalar crypto extensions for Guest/VM
>   KVM: riscv: selftests: Add scaler crypto extensions to get-reg-list
>     test
>   RISC-V: KVM: Allow vector crypto extensions for Guest/VM
>   KVM: riscv: selftests: Add vector crypto extensions to get-reg-list
>     test
>   RISC-V: KVM: Allow Zfh[min] extensions for Guest/VM
>   KVM: riscv: selftests: Add Zfh[min] extensions to get-reg-list test
>   RISC-V: KVM: Allow Zihintntl extension for Guest/VM
>   KVM: riscv: selftests: Add Zihintntl extension to get-reg-list test
>   RISC-V: KVM: Allow Zvfh[min] extensions for Guest/VM
>   KVM: riscv: selftests: Add Zvfh[min] extensions to get-reg-list test
>   RISC-V: KVM: Allow Zfa extension for Guest/VM
>   KVM: riscv: selftests: Add Zfa extension to get-reg-list test

The first PATCH is already merged in upstream Linux.

I have rebased and queued the remaining patches for Linux-6.8.

Regards,
Anup

>
>  arch/riscv/include/uapi/asm/kvm.h             |  27 ++
>  arch/riscv/kvm/vcpu_onereg.c                  |  54 +++
>  .../selftests/kvm/riscv/get-reg-list.c        | 439 ++++++++----------
>  3 files changed, 265 insertions(+), 255 deletions(-)
>
> --
> 2.34.1
>

