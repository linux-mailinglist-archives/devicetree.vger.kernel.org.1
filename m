Return-Path: <devicetree+bounces-251768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CF308CF6B60
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 05:57:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 13BB2301B82C
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 04:56:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D610B2BE7BA;
	Tue,  6 Jan 2026 04:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="Ss7ckk8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2381429D293
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 04:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767675408; cv=none; b=ee26ehoqN6bggthnQ9edLlUav6+dNDPJUuVu8rXqZcEKMLna9UCBHWkJLExruhj7ZCmc6mJyq1RV38ZzCPKXtsvq3byu0ycxvp0SyvwEPHXYtGC3GlaZg3IPDxuSXa9MGwhxXgDV1IyCu6CtOU2bmIz41cxFGgLa7YLFicASd3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767675408; c=relaxed/simple;
	bh=bPMuOyUg+pCFEpuN7CwHcwhs5rNIMbrQeGA0HQmyckk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Nd9rCv63PHB/EnEXS+kcorLB2lScediOAR+Q6DOAPED1WUJrIOu+PLTCjbmhnk0Ex2LQ1oHcHVQaxjQq+dB1+s/k25YIg6Ii1aw76F0cxjCof0HL8mQerJpdeY3hQS3X2UZSDr1sxoxPD+ofw5Haaw19uxOJ4UU/sr++NAFlTGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=Ss7ckk8R; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-4510974a8cdso368792b6e.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 20:56:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1767675406; x=1768280206; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bXCgyGXdfFw2jhIVzlU19gmITjYf/onAsSkhutvgS3M=;
        b=Ss7ckk8RVUlxwrFyuqelWPLqIIJuk2Uj4IEjWUM8dXuPOkWWm+lixB4Muz12tiyLpz
         mH4Vap32W+6b6n/STLcTzIjbzDLaNbuiPZCTCRxGrpbFOQJCn1ZCkEZ7UbWgPQhtnw8B
         oXpSumQ1Yeu/eSGxc5lYEgzDskB7hoTS0SMh5PbOGqICGpJP6+kmy0264h1lfjUv10B8
         qA62nRtRXUYA/ElO5yxDxVyWo2HgxNSGMFKoMiTrA9jAeoe5mjKnHjy41nFUnD1Df5/N
         aIdq/HaNUaJJ62hgsfOMcg+OWc5Xva5wuuO5pfe4/OfigXsOFHkOEuO8NTE04Fv8SXyG
         8QFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767675406; x=1768280206;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=bXCgyGXdfFw2jhIVzlU19gmITjYf/onAsSkhutvgS3M=;
        b=bnyGXeXtl48beKZNhyWDtd1fc0dRbbxnaRSl8/4iWZQuQPCrTt1Ktikp1MdpKUHJJd
         5c1ihcXjAlVqe7Pg/MggWo2uXaK4tH7pSoWfBEo6FNHgXaRQvEa3mU0cBQCHIJOWxJg2
         pMIGQQX083tJVJ9CpTMCctmBbJlLGXz+GtlaSlPyK0ijYnTBbra7adyXalFyrDKKSZtk
         CP7jMut6DGyYQuKXXpWLj1Vf0ZRVTFUOA42P+1gc0spPFCH3IDS5473/SpMnMJF6NSdn
         mZ0lvLJm50mZBbrW+tDRmaLetNwnWUjfYbkgQ01B86yBWjUwdj0FcBelkpHTV7NnfHAm
         Nabg==
X-Forwarded-Encrypted: i=1; AJvYcCVbqNET31fSWe1UYbsaUvojoXFLZNjNi7dEdhRVO32FFlx4tJ54J54xDrvuVzKnwd11vUVcIei3joBG@vger.kernel.org
X-Gm-Message-State: AOJu0YxZ/bRYcyBPxHZNVWORs0Os/y65I+uRiAePQ58a8FPAC/IUQZVe
	6+LsGVHsVxl46hN2ifb4nUkdNiU3sYkt6o90QFSvnaQmc+IXandswdzOp6mMw1EGp9JqYEXuSxs
	Gkla0h0AIezjkqzZlaVOchya1v+uRH+80KZNnJGRRCQ==
X-Gm-Gg: AY/fxX4iTzMnUVhC1kg0Rf8I70YM8ZUhDhaVMVZ8BV+UltdnBeymsb8YuDBFaCGV0Kc
	I5Hywusua7kWmOkVwOHE71tvZSnFV1w3vezKa7U7npE7KU0lexeCiZaaTVW/tnuH4z2GkO/Mrzy
	rq/F0kYz4LRXjrkiKB72ulNY9HNMbedIMrsJ/Q9RKkfEf7fZDhIBBpabFF171vhKCWE2/KqBLDR
	4NQk8PNXfc8iPdFzQhFzgY4odV2w8qQZd9+TDbx3p3Otrls5B1l7XIsPEmoqdCpo/TZOVhso+KS
	qdYYz9MWD6nbFmPqYczEAsDqJ8BNUB+S9puQyVczmoSW6KesxDh/EUvcZA==
X-Google-Smtp-Source: AGHT+IGq83xsWiBnk8S8Wan7SqZp6GnFrv0pdr0Nor1LjDGkvPMfuowdAk7rc0hTsmwGhsAqXr8Xk0551qnx4JMiq/Y=
X-Received: by 2002:a05:6820:2202:b0:65e:f37f:93a4 with SMTP id
 006d021491bc7-65f479d332fmr1135768eaf.8.1767675405972; Mon, 05 Jan 2026
 20:56:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020042904.32096-1-luxu.kernel@bytedance.com>
In-Reply-To: <20251020042904.32096-1-luxu.kernel@bytedance.com>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 6 Jan 2026 10:26:34 +0530
X-Gm-Features: AQt7F2rV_3WZCrB_VJwYGn79psT6Smtly97t591oPSUibomNxLFKeK19i9dMZfQ
Message-ID: <CAAhSdy3M8NMF0ojJdoSvtate6FRjS5hno2Wc5i=TeCF84yOK3Q@mail.gmail.com>
Subject: Re: [PATCH v4 10/10] RISC-V: KVM: selftests: Add Zalasr extensions to
 get-reg-list test
To: Xu Lu <luxu.kernel@bytedance.com>
Cc: corbet@lwn.net, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, will@kernel.org, peterz@infradead.org, 
	boqun.feng@gmail.com, mark.rutland@arm.com, atish.patra@linux.dev, 
	pbonzini@redhat.com, shuah@kernel.org, parri.andrea@gmail.com, 
	ajones@ventanamicro.com, brs@rivosinc.com, guoren@kernel.org, 
	linux-doc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kvm@vger.kernel.org, 
	kvm-riscv@lists.infradead.org, linux-kselftest@vger.kernel.org, 
	apw@canonical.com, joe@perches.com, lukas.bulwahn@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 20, 2025 at 9:59=E2=80=AFAM Xu Lu <luxu.kernel@bytedance.com> w=
rote:
>
> The KVM RISC-V allows Zalasr extensions for Guest/VM so add these
> extensions to get-reg-list test.
>
> Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>

LGTM.

Reviewed-by: Anup Patel <anup@brainfault.org>

Queued this patch for Linux-6.20

Thanks,
Anup


> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/tes=
ting/selftests/kvm/riscv/get-reg-list.c
> index a0b7dabb50406..3020e37f621ba 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -65,6 +65,7 @@ bool filter_reg(__u64 reg)
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZAAMO:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZABHA:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZACAS:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZALASR:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZALRSC:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZAWRS:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBA:
> @@ -517,6 +518,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg=
_off)
>                 KVM_ISA_EXT_ARR(ZAAMO),
>                 KVM_ISA_EXT_ARR(ZABHA),
>                 KVM_ISA_EXT_ARR(ZACAS),
> +               KVM_ISA_EXT_ARR(ZALASR),
>                 KVM_ISA_EXT_ARR(ZALRSC),
>                 KVM_ISA_EXT_ARR(ZAWRS),
>                 KVM_ISA_EXT_ARR(ZBA),
> @@ -1112,6 +1114,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(svvptc, SVVPTC);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zaamo, ZAAMO);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zabha, ZABHA);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zacas, ZACAS);
> +KVM_ISA_EXT_SIMPLE_CONFIG(zalasr, ZALASR);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zalrsc, ZALRSC);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zawrs, ZAWRS);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zba, ZBA);
> @@ -1187,6 +1190,7 @@ struct vcpu_reg_list *vcpu_configs[] =3D {
>         &config_zabha,
>         &config_zacas,
>         &config_zalrsc,
> +       &config_zalasr,
>         &config_zawrs,
>         &config_zba,
>         &config_zbb,
> --
> 2.20.1
>

