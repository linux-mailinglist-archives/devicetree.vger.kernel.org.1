Return-Path: <devicetree+bounces-80327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEFC918604
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 17:38:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 533B5B25EFF
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 15:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4338318E74A;
	Wed, 26 Jun 2024 15:37:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="snVldArD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com [209.85.166.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD5B18C349
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 15:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719416251; cv=none; b=UoQpeAZf3tLHu41btssf2G7uAZsqNQZF9XRd2tQIbKlNr3QGnP+f9AdSEOea1vKaJKH/w/H9gNIi+7XY8i8etjK4tuvca0eoPuHKl3fKCg2RdT/QM/dffh5ZqQ61M6c2rimD8SXBqjP/T67FXtK0QwXF8iniTuvLm1o1B+rXqBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719416251; c=relaxed/simple;
	bh=ZWMMSC1cG9avL2ZfpRXXAyJvYQJvhqhFhpOwTjtwvFE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Mjnbtu12K6tTfYcZ/lMkNX+/GxS6xOelxT6JDgXEFcyVnOTzvIeJH8pjl6oduXV1lT4QenBBOg3FJENcDEr/AmdcA4Bvz/Y+TCcK3pDHtUu/9MJ77uc9JenZUBjh6gfYytcVyqs6qjHxKUa3uPucS0gUVItIbS/OGJONQqfWPyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=snVldArD; arc=none smtp.client-ip=209.85.166.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-376208fbe7bso29043395ab.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 08:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1719416249; x=1720021049; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=djm95X6p6IaeLZbZdbaqKrtkESz+vZAuebRV5jg6gDs=;
        b=snVldArD4fWGdiy+FCBZYFvVUXgVUWGcjrkmA0tS5Uh5wUcdxv+gXm2sX2tIOsjFzh
         OCOMB5+7PanvzmqQfCP5viyWQ4oujU20RqLPkfxNQnngorRGSwq72a6A3PPxfQtKfRyn
         rmsbmPf2YQswpy2neRpsVGKkB0xaMO3dTR/oZV1TM7uIMfAyLjmCVEa3s6FcDJ+yHV0S
         UQPwgM5FSoQvfet2W7XtQqOY2gVPYkkOA8N2k/cBGNrReji1JxcbqEXcqjO5IBgD56oD
         PodeN1R0JfJTvnk50kvXDPglxbVM3xPZZKzTmyUNwS13ncm8OI8FL8etJ1zqGvGTDO/L
         +iTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719416249; x=1720021049;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=djm95X6p6IaeLZbZdbaqKrtkESz+vZAuebRV5jg6gDs=;
        b=s6CC88WiSI4IqJhJU/ONzEaTNFkn8dvHCHaLPnuK1Rk9zpnA8HEzTg9cjUYDfsVzPg
         mEO14AoLCDWdCMgvL5PsizfQdQJAVqizMiv26FVbxkRjhtOcLt7ee3QnO9eTb0dRsqlf
         VHuv0w/tIkIpMkPm2F/FzVHAnyOYnz5qfTMEuw1yvgcrcEaJ8DykEojHeJkIdZhf7+Xw
         uagIthXZIadarJHA0jZrAOe+pxSsOJof0HnENb0LwTTMCnKLBtbMRJS6JTECjfTNaqI9
         lDA7Vbgy8vOmlqRLD5SufIgJl0ClX67KE5jgGed22eMp1Pzl7sxMkGDz+kQ9yMxAOKjY
         qwsw==
X-Forwarded-Encrypted: i=1; AJvYcCU7peuqrxemuiTPM6DsaqFuKeiyP2HlK52YjarUJxSfvHRJeaM4CLtIUEQltd1BKtjywENiyOCRf/njB8a9NJgUCgpG4AId3tO4CQ==
X-Gm-Message-State: AOJu0Ywl9exSliCXAq3+MWtn25pPqoA6J6+IRDd92wzqPqNnFNk2MwZk
	OBuJZsmNczrQt81+Nq9pk0GElAPpgD8ZFcZPSiDzDlV4TVJXwwmxmygrgHEyINHh0Zp7nGgTpL8
	xPmf7rRhKL7soPUwbBXKIk7ymEJpJQe2pFHnsPQ==
X-Google-Smtp-Source: AGHT+IH9f7DLHpuBXv6da3ik1Qp7+5du5cYs0yCkTQ5Su4zhY985HtIYAAUVHSrFL6mOhsBR6Cp0oRRk8/QK4xGfB7w=
X-Received: by 2002:a05:6e02:1d90:b0:376:178f:edc5 with SMTP id
 e9e14a558f8ab-3763e0613c9mr136393415ab.29.1719416248959; Wed, 26 Jun 2024
 08:37:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240426100820.14762-8-ajones@ventanamicro.com> <20240426100820.14762-14-ajones@ventanamicro.com>
In-Reply-To: <20240426100820.14762-14-ajones@ventanamicro.com>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 26 Jun 2024 21:07:16 +0530
Message-ID: <CAAhSdy3QrYv1dWkhWfQk0z5BXWrksxXofu4iobBcVk1SSqeScQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/6] KVM: riscv: selftests: Add Zawrs extension to
 get-reg-list test
To: Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, kvm-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, conor.dooley@microchip.com, atishp@atishpatra.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	christoph.muellner@vrull.eu, heiko@sntech.de, charlie@rivosinc.com, 
	David.Laight@aculab.com, parri.andrea@gmail.com, luxu.kernel@bytedance.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 26, 2024 at 3:38=E2=80=AFPM Andrew Jones <ajones@ventanamicro.c=
om> wrote:
>
> KVM RISC-V allows the Zawrs extension for the Guest/VM, so add it
> to the get-reg-list test.
>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>

LGTM.

Acked-by: Anup Patel <anup@brainfault.org>

Thanks,
Anup

> ---
>  tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/tes=
ting/selftests/kvm/riscv/get-reg-list.c
> index b882b7b9b785..8c4c27bd4b88 100644
> --- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
> +++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
> @@ -48,6 +48,7 @@ bool filter_reg(__u64 reg)
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SVNAPOT:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_SVPBMT:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZACAS:
> +       case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZAWRS:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBA:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBB:
>         case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV=
_ISA_EXT_ZBC:
> @@ -413,6 +414,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg=
_off)
>                 KVM_ISA_EXT_ARR(SVNAPOT),
>                 KVM_ISA_EXT_ARR(SVPBMT),
>                 KVM_ISA_EXT_ARR(ZACAS),
> +               KVM_ISA_EXT_ARR(ZAWRS),
>                 KVM_ISA_EXT_ARR(ZBA),
>                 KVM_ISA_EXT_ARR(ZBB),
>                 KVM_ISA_EXT_ARR(ZBC),
> @@ -936,6 +938,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(svinval, SVINVAL);
>  KVM_ISA_EXT_SIMPLE_CONFIG(svnapot, SVNAPOT);
>  KVM_ISA_EXT_SIMPLE_CONFIG(svpbmt, SVPBMT);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zacas, ZACAS);
> +KVM_ISA_EXT_SIMPLE_CONFIG(zawrs, ZAWRS);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zba, ZBA);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbb, ZBB);
>  KVM_ISA_EXT_SIMPLE_CONFIG(zbc, ZBC);
> @@ -991,6 +994,7 @@ struct vcpu_reg_list *vcpu_configs[] =3D {
>         &config_svnapot,
>         &config_svpbmt,
>         &config_zacas,
> +       &config_zawrs,
>         &config_zba,
>         &config_zbb,
>         &config_zbc,
> --
> 2.44.0
>

