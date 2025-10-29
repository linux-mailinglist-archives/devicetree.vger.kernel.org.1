Return-Path: <devicetree+bounces-232687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB6FC1A284
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 13:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E42B188F1D4
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F56F33B95A;
	Wed, 29 Oct 2025 12:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="OuiSYElE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADBE1CF5C6
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 12:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761740103; cv=none; b=ZoX0F6VsSQOrKySwWEVrPW5APQA4LUx/ZcpCoTwd5Zq7Gin0peLFapTw8UAbNLO5rJJRyZt0Omia4kY/G7Rqwz3TZXwyHNVyimFKhoSStA1YJOltkXz40tVc4kkLavHkA+W4DBhHnV68jkuGk54SAyCLJgD2mMGRF2F6PZWcEm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761740103; c=relaxed/simple;
	bh=4F5sp4xcDzN409xfAeb6HN//KheRBXsuiCSpc6S1qF8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pb1MrSKqPIDwQPLc/IIUpZLNuZbH++YdQ5x5h4xPsD7szrJ2BnuG+m2OwNWS5vz/li7dJpXv4kPX0tnRT8uHshClPvoo+qkZ1TYKSzohKpRfKLm+9yge/RQJFXXeVVwQEbYrv2aBq2kQMLuU8pM7POLdwfYFz0mdTAs6KS9bvjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=OuiSYElE; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-b6d5e04e0d3so426958866b.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 05:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1761740099; x=1762344899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JfdgCkjf6Dvq16Xjewrrl+WIt5oaPnZgbIkIulsqup8=;
        b=OuiSYElEkORLIBMQHUxJEi09R2nQPB1vPTyDIBqLnGlHDpz7WpzbnG4a/2yTNKrYhl
         3tCIMsTEAF3bJC19BS93ZhRwv139ta1tJwJ97imaJa/SRDtvwsyS/DTKAOMPUUY+khP9
         xF56MsiSxM+hH+YrJFhOOQVYjr0jV5+AVqyyIhSvE9xI6p3UKejfJMx/Rllat0MnWzFU
         hxQvVmGMsgZLwDLr61k6N7QP2d7yUn0jXOJK1kkYQSGmj/mahxwurwNA5yJZKAIv5N3q
         VmZ3bGuycQiPwdenqNz6EI4JCDpz3r5bMeuBOtyC1Q7HkX0EiQCORHZKz4XwSwy6m3kE
         Y2IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761740099; x=1762344899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JfdgCkjf6Dvq16Xjewrrl+WIt5oaPnZgbIkIulsqup8=;
        b=pI5MhKICyKVIC7KMeaztBOKYmR+f8Kh2E2cFgvfoTBq/ZxQLRMOOww0cL4flR4KUOE
         mjRxkUEDR3a13EOYdtkOToATiIgDSH5NfrKpmQQZXp5NEmZUvt0NA+MCT7LrSYr7txyC
         brroOND5vp+AUCMliiEBrL2421yGEbTx1lGGi1zpS0wapOa6YhheffjBQOcfV8rkxJM3
         pfIt2RS5lxLmBEirXsN4JJa1vz19QjHRlIlaeGgsl7njlAc8S2+l9aOrTjkYY3ABZ51A
         ATqG7qn2h6FHKgbiBCdUrRbPqBWKcOcQEEaz5xI294J3ipaUqofGFCdsP+iSisT+aftw
         7KlQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgnoY2Vj89RCr1bigInwHexEEEAxRprIgvCZqUKJxweJNSYiZ8NrjiHb9AsMb6cfWU9VEJ3jn0TeNW@vger.kernel.org
X-Gm-Message-State: AOJu0YzxfU/SB57hrACz7HHCeWkXWWm0OaxNK8ikZFEcaZ6cUxH7n98F
	OgRVJPXZcML9SbLYjMD8Cm5v1wvUuPEKF9ZxGcttjDyREru+yIPggUqzLjRh3xNtoez7yK+2/Cx
	CYQnhTpvqw94Rvf46RxTCubXxKkI2uhBGJrE2zE5yiQ==
X-Gm-Gg: ASbGncu2roFpNzj9UQsw8+EOiadLqBIM32zjmk30LR3CWcWQfPvC4mm6CP/+CKt3+Cn
	FGWsrVax5fsxIC9TM/bF9OhYVXcLIA/PvELZWO6/JRwpqOTfVr6b5CpH/9kCO0HrVSsP0R5uDk1
	8MI3Z2L9eUAaUWxD/+lZP4QWF34VLyoz7cLP4L88olhMSUtPvS+tYLin+wiZRuBB4dCvskjpgW/
	qHYJoiztfmVv8pYaq0aBAj4Juwh19ZMPdzqPPksWQKVni4/5MMxVxo3o+EC
X-Google-Smtp-Source: AGHT+IFshWb7jzNyyU6ez2u0+L5vTwFP/pSYeFZxnpO9nxdrMJpELvpuMzbB9JEsK4A89hE1IYFcIQmkgCRDM9n8HVo=
X-Received: by 2002:a17:907:72c9:b0:b54:25dc:a644 with SMTP id
 a640c23a62f3a-b703d5cb645mr241872966b.60.1761740098766; Wed, 29 Oct 2025
 05:14:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029-fix_gic_dt_licence-v1-1-af70840c5e61@bootlin.com>
In-Reply-To: <20251029-fix_gic_dt_licence-v1-1-af70840c5e61@bootlin.com>
From: Andrew Bresticker <abrestic@rivosinc.com>
Date: Wed, 29 Oct 2025 08:14:47 -0400
X-Gm-Features: AWmQ_blXxoAIGva9lz29zEL4bFZ2YDEi_RXAlhnztkgdDefGbYfYyjaOj_TdcdU
Message-ID: <CALE4mHqi-aj9_WL=3BeTztQHt5FLC9DEJsJA62tWXmazvxJuRg@mail.gmail.com>
Subject: Re: [PATCH] of: Update license for MIPS GIC header
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gregory,

On Wed, Oct 29, 2025 at 3:22=E2=80=AFAM Gregory CLEMENT
<gregory.clement@bootlin.com> wrote:
>
> According to Documentation/devicetree/bindings/submitting-patches.rst:
> "DT binding files should be dual-licensed." The second license should
> be a BSD-like license, allowing the use of the binding in projects
> other than Linux. Initially, this file was submitted without any
> license and was later automatically converted to the default Linux
> license. Let=E2=80=99s now update it to follow the preferred license for =
the
> binding.
>
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
> Hi Andrew,
>
> I=E2=80=99m assuming you are the same Andrew Bresticker who initially wro=
te
> this file. As the author, would you agree to update the license for
> the reasons I outlined in the commit log? If you=E2=80=99re okay with thi=
s
> change, I believe an Acked-by tag would suffice.
>
> Let me know your thoughts.

Yes, that's me.

Acked-by: Andrew Bresticker <abrestic@rivosinc.com>

> Gregory
> ---
>  include/dt-bindings/interrupt-controller/mips-gic.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/dt-bindings/interrupt-controller/mips-gic.h b/includ=
e/dt-bindings/interrupt-controller/mips-gic.h
> index bd45cee0c3f05..647f22d5f0622 100644
> --- a/include/dt-bindings/interrupt-controller/mips-gic.h
> +++ b/include/dt-bindings/interrupt-controller/mips-gic.h
> @@ -1,4 +1,4 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> +/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
>  #ifndef _DT_BINDINGS_INTERRUPT_CONTROLLER_MIPS_GIC_H
>  #define _DT_BINDINGS_INTERRUPT_CONTROLLER_MIPS_GIC_H
>
>
> ---
> base-commit: dcb6fa37fd7bc9c3d2b066329b0d27dedf8becaa
> change-id: 20251028-fix_gic_dt_licence-c876fd6d709e
>
> Best regards,
> --
> Gr=C3=A9gory CLEMENT, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>

