Return-Path: <devicetree+bounces-60583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E80488A9B1A
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 15:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 171301C225D7
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 13:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AACA15FCF9;
	Thu, 18 Apr 2024 13:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="ZMTrLA0F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D9B1494D7
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 13:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713446464; cv=none; b=H6e0wPxo1QH2S+kkO2JcLdZXRxHr1DdWMCDV4mr5OgZgAZXgfwfoxIU9CfucBUqleP3wRIUn6DMfwDlTI1Hs+ANVBN2Zaf1AjAQO/rChajKMJTOP/Dxpzam081S9GMMq9/nX1fpCa2/XIBraovLKKGJi3qAZi1IGP9fhJTWTja8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713446464; c=relaxed/simple;
	bh=JqL8HdevsKRqjAkEG5tIhzoaeVLlnpPsK5b0X1/woVM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OHuAX6gnGofWH7qqYCn1n0yboTfUkKLuYPN48cAHBqdgD7tLSGAKFWbsKvTo/z7sOQB8u6pltOnUQ6AIZhAhi44UyUxoEx6qL3t6wNqy0UApuhsuK69IPXmDKcKHsc8ClaKsqJQN8hNhQCuxOn4PClhpxoYpCFWNUJLTIT+uYkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=ZMTrLA0F; arc=none smtp.client-ip=209.85.166.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-36b146836d7so2796915ab.3
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 06:21:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1713446462; x=1714051262; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5RDk8w/VcIuRs4a1b2sKCJYfS/2Ok3UGeivw5IblcRI=;
        b=ZMTrLA0Fofcaiem1qp/oqG4qWhAO+r1bUCCfNqCvFuXHjHZRcqVBFMCY/tVghSb7RR
         8wdJjZa8EzybKazELUAxtoemjKZfloumLLCT6zkvcZ0TVpfx3Y30j3t11cSgeCcN12g5
         7luuxOidvw/BaQi6L0L7F+/0LrVDCm76qxP0czEsflnFuZ1X4cJEwqfCYIVt9ZdlfrfT
         O/veTEt3EHb2oLvxXvxh0ORKRpstDC9CiY7xQ3LZmnBxaO3FNMie6QVpCZQ3qD5IKPf5
         IlvqyIARYXcO4wAp5UMOaAw5BfVX7V0+r03Fslsr1TCVLiUWqpbGKDPsWqUDSZYTELZ+
         PvWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713446462; x=1714051262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5RDk8w/VcIuRs4a1b2sKCJYfS/2Ok3UGeivw5IblcRI=;
        b=IOvcA9qGDuTXMYHn+KHSN4XwPSqg/Acmt6H5LD2JPIJpgCeLCArFZxt9nIoQgmvmen
         rlEd2K1KxOChGOZliZFqInmTdd3DStJ41MDWP4Sd3mhvNfoZKsrXpmbrjSCnjom1Q8VM
         r6pqizdSv9tN16GCBMp9jkcnaNMgkIL681yzzK5xzVzA9kJObZ3O9Qx1fk+KRxJpv/JE
         ZSSGgiMrnIB+MPx05OX7YTpBF4ibofJBgEbrnaf/FfNeA9/BP0TkoLmCSu125kjomPm+
         6ZkUvk+9rWzTiAdUrYYrRNCvbUuRDnjEHwIym5X5TVY/y+tdn3SYoPiH0OPAOsZ/7OpF
         n6xQ==
X-Forwarded-Encrypted: i=1; AJvYcCXISU5mGp2jbZqRNmiDyWtQxRqghr1Osh8LaAKwoNrsoYXFnfAdIME/rS/QJYk2O0ZJ1LKde+nsfEPL5fkhsKnUbgRQNZLV4GIvnQ==
X-Gm-Message-State: AOJu0YzsUKLpxamytBUqaXEo35BJFEeNpwkvbyTGwzJAurmzEm2cxz7W
	ItnKND/BjZioaCqdBlrfKVP4+VXRx1v6PnNQAdXksTxM/A/CFIcFgqh0LmtjI/29wmFaoM7RC8D
	kaivIJb+eQrYUTGnomQ99u6u1Q4BjifSq4w9jmA==
X-Google-Smtp-Source: AGHT+IF4F3+EsOd9Km5fe/tUcyJysRUEm3trePDQa9sseGq5flNeCiOAYf6iwo1deI+stz+PjTd2Ud2CltxcxL5sdMA=
X-Received: by 2002:a05:6e02:1787:b0:36b:e53:57ea with SMTP id
 y7-20020a056e02178700b0036b0e5357eamr3796568ilu.16.1713446462126; Thu, 18 Apr
 2024 06:21:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240418124300.1387978-1-cleger@rivosinc.com> <20240418124300.1387978-8-cleger@rivosinc.com>
In-Reply-To: <20240418124300.1387978-8-cleger@rivosinc.com>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 18 Apr 2024 18:50:50 +0530
Message-ID: <CAAhSdy2fVUYqYySn8rbdD5Dgc2fqXXjG_u=qe7=_MHPfqVBoBg@mail.gmail.com>
Subject: Re: [PATCH v2 07/12] KVM: riscv: selftests: Add some Zc* extensions
 to get-reg-list test
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
> The KVM RISC-V allows Zca, Zcf, Zcd and Zcb extensions for Guest/VM so
> add these extensions to get-reg-list test.
>
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <cleger@rivosinc.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>

Thanks,
Anup

> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/tes=
ting/selftests/kvm/riscv/get-reg-list.c
> index 40107bb61975..61cad4514197 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -55,6 +55,10 @@ bool filter_reg(__u64 reg)
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBKC:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBKX:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBS:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCA:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCB:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCD:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZCF:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFA:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFH:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZFHMIN:
> @@ -421,6 +425,10 @@ static const char *isa_ext_single_id_to_str(__u64 re=
g_off)
>                 KVM_ISA_EXT_ARR(ZBKC),
>                 KVM_ISA_EXT_ARR(ZBKX),
>                 KVM_ISA_EXT_ARR(ZBS),
> +               KVM_ISA_EXT_ARR(ZCA),
> +               KVM_ISA_EXT_ARR(ZCB),
> +               KVM_ISA_EXT_ARR(ZCD),
> +               KVM_ISA_EXT_ARR(ZCF),
>                 KVM_ISA_EXT_ARR(ZFA),
>                 KVM_ISA_EXT_ARR(ZFH),
>                 KVM_ISA_EXT_ARR(ZFHMIN),
> @@ -945,6 +953,10 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zbkb, ZBKB);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbkc, ZBKC);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbkx, ZBKX);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbs, ZBS);
> +KVM_ISA_EXT_SIMPLE_CONFIG(zca, ZCA),
> +KVM_ISA_EXT_SIMPLE_CONFIG(zcb, ZCB),
> +KVM_ISA_EXT_SIMPLE_CONFIG(zcd, ZCD),
> +KVM_ISA_EXT_SIMPLE_CONFIG(zcf, ZCF),
>  KVM_ISA_EXT_SIMPLE_CONFIG(zfa, ZFA);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zfh, ZFH);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zfhmin, ZFHMIN);
> @@ -1001,6 +1013,10 @@ struct vcpu_reg_list *vcpu_configs[] =3D {
>         &config_zbkc,
>         &config_zbkx,
>         &config_zbs,
> +       &config_zca,
> +       &config_zcb,
> +       &config_zcd,
> +       &config_zcf,
>         &config_zfa,
>         &config_zfh,
>         &config_zfhmin,
> --
> 2.43.0
>

