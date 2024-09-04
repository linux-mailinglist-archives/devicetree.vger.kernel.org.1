Return-Path: <devicetree+bounces-99994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2EA96BBF7
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 14:22:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CF92C1F23607
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 12:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 847CF1D79B7;
	Wed,  4 Sep 2024 12:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="N/Y//2oE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BEF31D79BB
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 12:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725452552; cv=none; b=QcusbMKMmlNB3Yzn4TGcz/JYyVS5NfhqeP5wdFM8RCKjgW9M9X3CTBX6vC4aGr+TuQ2vNFZwfIhEVGiOhrssy+NY6ADYQHKxc5T5JcdKBhD8SdODMn8zP7/PXoxmcoGl47lGV3tnnIeNf8iY6Ow8HXh1MvPmF8JpaaLgDVZoSiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725452552; c=relaxed/simple;
	bh=0Dt2TC1mWGZYIHxyeALqQ1TnRbbzwrfrV+DLAXHle1s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=I4cx0Q55+ZkmWLvxnFOiMiuVguznrTSx8ixHrmajiN12PiwxTKIG1rwn+CsHfWEjtLeaRcsZYOh0E5N7CPQ2uX3Ap7rKWlp8bcJnkou81cf2L0AOKbl5qoqwBqClbiSFbY7zlo+j4wFdT28tV/c5g356LDRFniYZ/DA8xwLdCzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=N/Y//2oE; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-39f54ab8e69so2277015ab.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 05:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1725452550; x=1726057350; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ju9Hq+FgR4Nn2GcAcehqW18ZWQc9xC6Fkglr1yE5YOM=;
        b=N/Y//2oE2B37UkoIYTQ2wY006zOzp137WpFvaklv/CUZuHbWu6Gm6CbSfoq++CsKxa
         ZG2SQS1DpY98XTZIelTivz6DuJKSGYY55VRocIeFgXDAS89muHLE/WIjJH/dfMfkMJc8
         u5FU4wxaI2534NxukBNBBPsh6bn+viA1A1JUXUG3edsu7khmWVl750eYlyXh2ezfRH9b
         U3B8slJjrl3e/KAfle3pofQ7dAnMhQFePeEtk8Q0oH3zhfFIth4+L5zvPlKEpE/u0VKb
         AVYtmzC8NjNKGMbYRvuADsw8x2Dx6JB1G/fqCfZv3jxQtql5ogdlbWVZ06BWAiNeLDxn
         lOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725452550; x=1726057350;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ju9Hq+FgR4Nn2GcAcehqW18ZWQc9xC6Fkglr1yE5YOM=;
        b=T+ll1maCV4LUZLe9ozfniGnHT+6E8Yr0thanV6pFco48T2AuJJUHQ+70nM+Il5EXMr
         zZzfIzQ4CfqzI89kT//eeB95akfw3f++tNuQtgE/6Vh4d+4haNAVvaTnDSyZBM+Dmg3o
         xdrswAxLX/PK1ZSW/dj7e4bDiYeFsrNza2VWVK9giR6OJs92DP2dNoVubf+/qJi5xmzX
         HhA+uu22RYej8DTVk2QJxIujJBuqk13078DhRXyZOD/R2JUEJcktmhlXO1O33lYdNljZ
         QQGcX+nb4SzhoQTcmlxJCQ18FhIjIZW8HRrXduBCWvQaXgyFhYCNEL4usqtmd3DYCJIz
         gaWA==
X-Forwarded-Encrypted: i=1; AJvYcCVnzxYeHPj1u1+WCM5ue81DNNG9rB1Nqcz90XL08cLrHOxUCa0F/G0YGYqZ7iOSZUIf0J/lGKNfzsVS@vger.kernel.org
X-Gm-Message-State: AOJu0YyRS+FhPGBgsHqvtC1lDIRXt+ZJtMulL93uX5GHpcPQx3fVd8tw
	hVm/18ZBOZdei0LuJbhL1yxCZkIcWHYL3TL/AW/IpHOzQVZMWjjk5wOUMkgds9Dj0UvYz66l94q
	YKnwMUl/QGsHqwVA4fAwURUCI+a3rTTSBN5iY6Q==
X-Google-Smtp-Source: AGHT+IHPjtXAXxUmHhn9hwmGB4/VcwV/vcS/lCwZ+rwRHq9HHhBtYsEB6Vwzvqfdu5MMGbv6xPJ7cpHsv2V3fV8GXEA=
X-Received: by 2002:a05:6e02:1c46:b0:39d:4dab:a533 with SMTP id
 e9e14a558f8ab-39f74f88f94mr14510545ab.0.1725452549998; Wed, 04 Sep 2024
 05:22:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240829010151.2813377-1-samuel.holland@sifive.com> <20240829010151.2813377-11-samuel.holland@sifive.com>
In-Reply-To: <20240829010151.2813377-11-samuel.holland@sifive.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 4 Sep 2024 17:52:19 +0530
Message-ID: <CAAhSdy0P6Jxdr1+zQLuisMpMapHWHXkSkzEEBG+wWXbbzf7ASw@mail.gmail.com>
Subject: Re: [PATCH v4 10/10] KVM: riscv: selftests: Add Smnpm and Ssnpm to
 get-reg-list test
To: Samuel Holland <samuel.holland@sifive.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>, 
	linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>, kasan-dev@googlegroups.com, 
	Atish Patra <atishp@atishpatra.org>, Evgenii Stepanov <eugenis@google.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 29, 2024 at 6:32=E2=80=AFAM Samuel Holland
<samuel.holland@sifive.com> wrote:
>
> Add testing for the pointer masking extensions exposed to KVM guests.
>
> Signed-off-by: Samuel Holland <samuel.holland@sifive.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Regards,
Anup

> ---
>
> (no changes since v2)
>
> Changes in v2:
>  - New patch for v2
>
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/tes=
ting/selftests/kvm/riscv/get-reg-list.c
> index 8e34f7fa44e9..54ab484d0000 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -41,9 +41,11 @@ bool filter_reg(__u64 reg)
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_I:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_M:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_V:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SMNPM:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SMSTATEEN:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SSAIA:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SSCOFPMF:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SSNPM:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SSTC:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SVINVAL:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SVNAPOT:
> @@ -414,9 +416,11 @@ static const char *isa_ext_single_id_to_str(__u64 re=
g_off)
>                 KVM_ISA_EXT_ARR(I),
>                 KVM_ISA_EXT_ARR(M),
>                 KVM_ISA_EXT_ARR(V),
> +               KVM_ISA_EXT_ARR(SMNPM),
>                 KVM_ISA_EXT_ARR(SMSTATEEN),
>                 KVM_ISA_EXT_ARR(SSAIA),
>                 KVM_ISA_EXT_ARR(SSCOFPMF),
> +               KVM_ISA_EXT_ARR(SSNPM),
>                 KVM_ISA_EXT_ARR(SSTC),
>                 KVM_ISA_EXT_ARR(SVINVAL),
>                 KVM_ISA_EXT_ARR(SVNAPOT),
> @@ -946,8 +950,10 @@ KVM_ISA_EXT_SUBLIST_CONFIG(aia, AIA);
>  KVM_ISA_EXT_SUBLIST_CONFIG(fp_f, FP_F);
>  KVM_ISA_EXT_SUBLIST_CONFIG(fp_d, FP_D);
>  KVM_ISA_EXT_SIMPLE_CONFIG(h, H);
> +KVM_ISA_EXT_SIMPLE_CONFIG(smnpm, SMNPM);
>  KVM_ISA_EXT_SUBLIST_CONFIG(smstateen, SMSTATEEN);
>  KVM_ISA_EXT_SIMPLE_CONFIG(sscofpmf, SSCOFPMF);
> +KVM_ISA_EXT_SIMPLE_CONFIG(ssnpm, SSNPM);
>  KVM_ISA_EXT_SIMPLE_CONFIG(sstc, SSTC);
>  KVM_ISA_EXT_SIMPLE_CONFIG(svinval, SVINVAL);
>  KVM_ISA_EXT_SIMPLE_CONFIG(svnapot, SVNAPOT);
> @@ -1009,8 +1015,10 @@ struct vcpu_reg_list *vcpu_configs[] =3D {
>         &config_fp_f,
>         &config_fp_d,
>         &config_h,
> +       &config_smnpm,
>         &config_smstateen,
>         &config_sscofpmf,
> +       &config_ssnpm,
>         &config_sstc,
>         &config_svinval,
>         &config_svnapot,
> --
> 2.45.1
>

