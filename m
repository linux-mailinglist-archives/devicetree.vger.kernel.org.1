Return-Path: <devicetree+bounces-43900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C73D85BCF7
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 14:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 657EB1C20C88
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 13:16:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB34F6A03B;
	Tue, 20 Feb 2024 13:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="JZUUgBhi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349D26A00F
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 13:16:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708434961; cv=none; b=JVCmFoa+HZCL02Jq+FDIXeuFEs98PaMsFr0X6AtAP3Dn5WFOGTa2jNtG5jQ6stIpn5FkdvFXUmlaPz1U7I7aHFmZJhPYvmVMo3A7iYN5Y41sEcM/KmYk5bnwAsJzDIG5owGnCiKlT0EoQglw+s+HKdlJVXXa4WDOupW8E3PqkiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708434961; c=relaxed/simple;
	bh=IqjOTROjMQYB67bxRQ6W3keFDzFkSXSEKRuI3JlJhrA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j73LFy61f+z9A8DIWxawwaQqcfFMfVhx2SdwLRuxuGjlaiZJY2G1bC9GicUGvotz0GIZwusJMNp/I2rUAk9jFDvrHuIAKLumDABy1mIrHaRsdU2hDxvv1jNl5NM/KkQPPEAtgfRYMTn8BapWYShkPbNjSQbmh+K94UN6izp6sAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=JZUUgBhi; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3650dcd38a0so9408205ab.1
        for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 05:16:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1708434959; x=1709039759; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IqjOTROjMQYB67bxRQ6W3keFDzFkSXSEKRuI3JlJhrA=;
        b=JZUUgBhi4CmBa1e9THLSmdnIzP7xi0o/Ie8KGr+O2WSNgAXLwU8tb/ZZn4YaJH19Ay
         I3kkZo5//m4bX9l0vVMOcgza+ysWKnlsOeQJwv5vfQSqG0WqlifwtVXpzMLAc3kd5Xdu
         pskliOHc4z92llrsRYaKIC8GOKZM6+UCGVm63w3V8dz11HqYjJYs9yQw/eBp7MRX3oM3
         o3lpiMDbDfyoOprh4cOmIfOqe7Yd360f68GcezPfqMgkpaKHcW8kn+g9/0wigM24Jxt5
         97/kLgE4n4kgwHKRxoabUC4ck3pDpwUiSBzl7t8PAq8ybhgkBOYWRiUoGXdCkPK/tzbu
         +/nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708434959; x=1709039759;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IqjOTROjMQYB67bxRQ6W3keFDzFkSXSEKRuI3JlJhrA=;
        b=jk+c+o0THbEPgW8W4EF7pHF5AJ4RSx34Iw81MI8dkgKzSOkYY1a7Y0PAe3yXp4e1K3
         dixsFAGvSLX3IzDe2NRqXplLjM7zItUPX/cc+VQ0t0his9jqx8rT/AqNxGNYz/oGEEM+
         gxWIPjp+oRbMEutzhbfSb0GrJHYs6Qb0ICtavzj/nUnkERzT5CZPeEaNp7irVCh/Ey9g
         Fk2BgMfYG0GzSencWsMO8kk28+j3QcTVqXgQM86LWOMXQm/yim+v5tFlit67tpJ8tcie
         6agCzLLeJIoAxUgN+X+x3XzVpBsZXaUBwBGL052owRGF2ri9X21KlF2/UWq4AS6x+YHH
         O0HA==
X-Forwarded-Encrypted: i=1; AJvYcCV45GNCYf2QVDwHBUsLngajU2U8YFXr2ywm73jTVpYqLITZ1vkVYtdKYckIUdyj85uS/lXRktWN1zyoCzU9irI0TgTHNch5iYQUlA==
X-Gm-Message-State: AOJu0YzdHMY21kIz3pmhkGPPx3gtWcxmLsNUEBQgOgbA4y2QAKRPWljt
	AN9wP/V9K2wfeOXZyBwXRiAMoFyGrCjgCUBEdeYjPUxCElOPGpotqIup7hqeiUFheBLAy6k7uGA
	j5/kSS4FEEZdndudrztbsNrlvz7YobmG03Ys0og==
X-Google-Smtp-Source: AGHT+IGBHyxhOfx+rHBkUEIb+UN9EusJtSraJpbfRqOa1twSLXdPbfjomfAe1MpQwps5BmFOHpbz4M0jqq6MI7Pf8d0=
X-Received: by 2002:a92:cf0f:0:b0:365:1785:88f6 with SMTP id
 c15-20020a92cf0f000000b00365178588f6mr10945548ilo.3.1708434959388; Tue, 20
 Feb 2024 05:15:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-7-apatel@ventanamicro.com> <87a5nvfj2s.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87a5nvfj2s.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <anup@brainfault.org>
Date: Tue, 20 Feb 2024 18:45:47 +0530
Message-ID: <CAAhSdy187H0E1-V4uhrik42qHoZrk-w499YWFzR13EWX-Wyu=g@mail.gmail.com>
Subject: Re: [PATCH v13 06/13] irqchip: Add RISC-V incoming MSI controller
 early driver
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 5:23=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The RISC-V advanced interrupt architecture (AIA) specification
> > defines a new MSI controller called incoming message signalled
> > interrupt controller (IMSIC) which manages MSI on per-HART (or
> > per-CPU) basis. It also supports IPIs as software injected MSIs.
> > (For more details refer https://github.com/riscv/riscv-aia)
> >
> > Let us add an early irqchip driver for RISC-V IMSIC which sets
> > up the IMSIC state and provide IPIs.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>
> This patch has a couple of checkpatch issues:
>
> CHECK: Alignment should match open parenthesis
> CHECK: Please don't use multiple blank lines
> CHECK: Please use a blank line after function/struct/union/enum declarati=
ons
> CHECK: Unnecessary parentheses around 'global->nr_guest_ids < IMSIC_MIN_I=
D'
> CHECK: Unnecessary parentheses around 'global->nr_guest_ids >=3D IMSIC_MA=
X_ID'
> CHECK: Unnecessary parentheses around 'global->nr_ids < IMSIC_MIN_ID'
> CHECK: Unnecessary parentheses around 'global->nr_ids >=3D IMSIC_MAX_ID'
> CHECK: Unnecessary parentheses around global->local
> CHECK: Unnecessary parentheses around imsic->lpriv
> CHECK: extern prototypes should be avoided in .h files
>

Okay, I will address these in the next revision.

Regards,
Anup

