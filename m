Return-Path: <devicetree+bounces-60585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D97078A9B26
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64F1A1F234B3
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:22:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B9EE1635B3;
	Thu, 18 Apr 2024 13:21:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="0QmWqPqv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7C815FA79
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713446516; cv=none; b=t5miVTPd6bFOVhHjswO1EZ4gFAFLQqj04WYpawxpE2ldxvVUvClOdCV+psEVqn/Zo8yCLgIMdmUAGO1H2GarKUHwBv4SavwKThJZq9xvlo6cqHgfEAd7L4nxnXdT+O3WscGkX+mF7LkNmj5Eh/49pIX4nvsboOk2/3naeJ8uPTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713446516; c=relaxed/simple;
	bh=IyiFSVactuT3EqeiswOvJ3nQb+Z8wWWbXb7zgKRPAb8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uCIGaAtkwlFGroYAo95ZeXcW1618YN+HCNSZpy/g2Y4XI0gHDQNNuBtNwYk498QlLJLcVRL7Ve3kPBRtQ+uQcl2NnygIMrDVGRm4RptIN0d9qHOwEJnfjhnzEt7ETuphNRrqIsKvkIEMQR+ZIG9V1L5BCZRtz3cHWJ9tqbR2984=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=0QmWqPqv; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-36b045c17d5so6017035ab.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:21:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1713446514; x=1714051314; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XoKv/RvImu/DvMyByUVz7vVdzNGU4YtRJIIOcys5EGM=;
        b=0QmWqPqv4ZBk7s5ifqNl0zFk1mqVQtNs2Xj61pqJ64Zu+ioRk6YCPjWV+fTZA8+59u
         cG009/hcw+TbDYVlRYb0VYLwWeif74OIEGtWv4UncLNRY4Bs+6OCz6wd+Hqx/wOah2qA
         Sv2io15IpR9e/RZYpTPBsgMLnzzpEJdHWdE2bYrQElgQybw08473LQVjNlD6cWaeq7Yj
         EPywCNPb39kuvLQ2q5A6zTvtJNsc9cQWXN075/YG57eV7GmClB3Wie0uY4njoYNnG1aL
         ZAQvyb+8TtjtEUXvpksE2eeAzs43CTzwY4ECSb/rEEa/ljLr5JEFBp9xu9vMuEhjPYIg
         zWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713446514; x=1714051314;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XoKv/RvImu/DvMyByUVz7vVdzNGU4YtRJIIOcys5EGM=;
        b=HZybwXMvRdEHALExztoCNL3gtLqB7deTQt3czZtYfnaRaNjAsrVIqypJb6Q4iiXbl5
         A/rAiXeZeWsbcM8hpjFAXZdIWzgxMhDi/jQLLQapFqFx/bBJEEdKMdHvNxClJNw0zk9T
         bHe3WTB84m44DqLu6SesefTskSpsj64T6c6HDqw3168D1Ndb28o61vF5DJFTyutbNfph
         IlqRgcxagmYIKk9ZUFseqqZzg9lD2FncSY2AcK7lXZvY/YzcCQxgVu+JptVDx72QlI9g
         oh7aDwlluxh4SWWMDCRPTWs1MQvvBq51IKfQLn7JxcftMcR342WfEnpUu9GnIaabFAjd
         Z18Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/7vJZDLPJOoBLSY0V2jvne+HQ41UCqBzCV2GQnUYJxLVv/03fCt06BdCyZYcWsl5ft/S5oIbC3aiQgsC3I/UgFb55fQofzI7nBQ==
X-Gm-Message-State: AOJu0YyvGNL7hF4ItwPtcfKSpZsnC74/BaBwVNe7YNepPAclikeRTnxr
	gOvD9hudl2GSZQ59YKUfiG4aEaaJ0yDWg0CCpohMueSpoOHhY2+sNUgo5UP8oVwYKUZMu5tE/mv
	ykkaQ7UuIXdxFek67h01ci2zCcnojKWanTiE2cYMyDgSrzBtWmEQ=
X-Google-Smtp-Source: AGHT+IEApINqgeOPDHJLzzONqjKCkFgNoR1r7odlJyA+5mEx0EiPGBX8zhfWadQ1GLIFdXLBTz+rTCuaedf0Dv5uyZs=
X-Received: by 2002:a05:6e02:1688:b0:36a:3c40:3e34 with SMTP id
 f8-20020a056e02168800b0036a3c403e34mr3335042ila.1.1713446514294; Thu, 18 Apr
 2024 06:21:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418124300.1387978-1-cleger@rivosinc.com> <20240418124300.1387978-13-cleger@rivosinc.com>
In-Reply-To: <20240418124300.1387978-13-cleger@rivosinc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 18 Apr 2024 18:51:42 +0530
Message-ID: <CAAhSdy1VTn_etwfYa-pYM-1hFFK02aBvynHJA7JVsOZvSdDx6w@mail.gmail.com>
Subject: Re: [PATCH v2 12/12] KVM: riscv: selftests: Add Zcmop extension to
 get-reg-list test
To: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <cleger@rivosinc.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Shuah Khan <shuah@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, linux-doc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 18, 2024 at 6:14=E2=80=AFPM Cl=C3=A9ment L=C3=A9ger <cleger@riv=
osinc.com> wrote:
>
> The KVM RISC-V allows Zcmop extension for Guest/VM so add this
> extension to get-reg-list test.
>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>

Thanks,
Anup

> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/tes=
ting/selftests/kvm/riscv/get-reg-list.c
> index 61cad4514197..9604c8ece787 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -59,6 +59,7 @@ bool filter_reg(__u64 reg)
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCB:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCD:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCF:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCMOP:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFA:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFH:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFHMIN:
> @@ -429,6 +430,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg=
_off)
>                 KVM_ISA_EXT_ARR(ZCB),
>                 KVM_ISA_EXT_ARR(ZCD),
>                 KVM_ISA_EXT_ARR(ZCF),
> +               KVM_ISA_EXT_ARR(ZCMOP),
>                 KVM_ISA_EXT_ARR(ZFA),
>                 KVM_ISA_EXT_ARR(ZFH),
>                 KVM_ISA_EXT_ARR(ZFHMIN),
> @@ -957,6 +959,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zca, ZCA),
>  KVM_ISA_EXT_SIMPLE_CONFIG(zcb, ZCB),
>  KVM_ISA_EXT_SIMPLE_CONFIG(zcd, ZCD),
>  KVM_ISA_EXT_SIMPLE_CONFIG(zcf, ZCF),
> +KVM_ISA_EXT_SIMPLE_CONFIG(zcmop, ZCMOP);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zfa, ZFA);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zfh, ZFH);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zfhmin, ZFHMIN);
> @@ -1017,6 +1020,7 @@ struct vcpu_reg_list *vcpu_configs[] =3D {
>         &config_zcb,
>         &config_zcd,
>         &config_zcf,
> +       &config_zcmop,
>         &config_zfa,
>         &config_zfh,
>         &config_zfhmin,
> --
> 2.43.0
>

