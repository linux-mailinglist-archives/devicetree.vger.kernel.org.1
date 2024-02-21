Return-Path: <devicetree+bounces-44356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8080885DB0B
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:37:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A43691C20D44
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 13:37:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FFD07C08B;
	Wed, 21 Feb 2024 13:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="be4nUlCE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13B06EB77
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 13:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708522567; cv=none; b=MpurIKFIb7UvgP/eFYm59GOvgxGOgVrjibslYMS8AUbJwJ+LeFwu1MqeZlybNzhcNbIsLkyLAP0ifbAdUIttTO2qIGXnBWpiQStRiuPK/FxcjXmisLqZHcVQsxXUNAoq94j5b+NrADDQWsn8ayFE388eXM0q0iTD9pk6b/09MK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708522567; c=relaxed/simple;
	bh=ulH7hnX2Ka/tGtvJe1+k7ag+F+iUxmyXMwzC4BFf4Qs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wd3Nt+Ebi0Qb2p0lk7gjM15lfQa5Ss9gR8hRwHpX0vaIh+aiRGRtxJC5yb6vjQyjmMqDbLOrjhmnC2E0vMhjjLpMfgqWDwhzCQayQA/aHgskps1CioxopZEw5e4NCsfLl+PeG38bBRcnlWUyFVQ8Oo6zk8xAnfkSDOAXa+qJpDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=be4nUlCE; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d220ad10b3so59742751fa.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 05:36:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708522564; x=1709127364; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iZa1EUK27qQ8Ow9XjJUdv9AmKUGFVXbnGB6joJ/bp7Q=;
        b=be4nUlCEObteBzdd/JkodxVu/bQP3WStHVl6wQDW6xunOPPW8Ax0CPUOVbtNglusH/
         XACgZI+NpCQx/dxW+nPWVpttDVo9fYHs0OeSoGpaTezaQ91cNeFyX/mQEryqdci0OYct
         Cq2T6qvKm2gQCH3Lmq6ittUp9qwgXhsgeBx1AJn/RKSMGDlUe9uMq1rAQ2ViwscKb+GM
         63IswkfGzCT1lMp9NLtY8VoupaSURUTVarPxYQR49e/ukp06owAmO4ZCwpmqHZ1yhzrU
         s1wO2GqFK0nd1ABxG5rRlp+AgucctbuMV1k7g1Jkr8aFPXJqx5U5z4rRD1k0gZN/Ypop
         TS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708522564; x=1709127364;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iZa1EUK27qQ8Ow9XjJUdv9AmKUGFVXbnGB6joJ/bp7Q=;
        b=T8MVSDg/xlw9/IZnG2ltv0VjgYwKAzz8onnkZmDZuvNoZCS3iu8ojOf6Xqnk+X6QPL
         ZxfBrRY8uYY3m20cvNARKioozwxtmtVZxVNkEM1YdemQvmpgvMxkewnYNoA4XqVEBUcA
         ncqdifCJyorbBmIy52EQuiqmcpFpfUgJ5/jH3jUc3CuthDkbWEO+ht/jQh7Gza0/yLZo
         IHYSmkX2Yg65kS7T0pNl29Z151Hh6+8od/ubBWjFWaKBIJQQ5m4FyuCEeQOmmqLL3tH6
         7SWzregpvD1T4Klgbk/2wmFkMaAl4zgTPYFcA5LIMY6txZQmcOahEELFmPM76/FLi0Cc
         YZ1A==
X-Forwarded-Encrypted: i=1; AJvYcCXfVeWOJOeJVoPy6g/us0hz6ly3Uu4zq88ZAUyC7wZR6ns7vN1W/VEAnp9ys637Jg4ZYxGwswfUKDvXuzhpsNn+b4O/p6UvNLX3KQ==
X-Gm-Message-State: AOJu0Yy2hnN/cbu6U3AGRkZd9prKkph6IgRLi6MWw1R3b3zJusJt+YOS
	UCvZ2XIgT1Qzk74kkN+0CCYsbHxdMnAfOnznRpnUjeGVzkr4LQ9GdLWPNU89pm67CrwShQhDOta
	heUS+KZ/AyoP1BcGOauUrWF3BuW8Ul3kL8JYzeg==
X-Google-Smtp-Source: AGHT+IH8PbfqK4LbbkaSU1nojq4bUVMOQpkZmRdtlm1F7WODSQlRTVfG1+cQD421y+B/I3PNrpXgs8sPl3SY+UGKWfs=
X-Received: by 2002:a2e:86d0:0:b0:2d2:3d1c:148f with SMTP id
 n16-20020a2e86d0000000b002d23d1c148fmr5452288ljj.42.1708522563808; Wed, 21
 Feb 2024 05:36:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240220060718.823229-1-apatel@ventanamicro.com>
 <20240220060718.823229-3-apatel@ventanamicro.com> <87frxnigxk.ffs@tglx>
In-Reply-To: <87frxnigxk.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Wed, 21 Feb 2024 19:05:52 +0530
Message-ID: <CAK9=C2VFksO054kVVHkrBRyZqte8Q4Gpup97VhLBRDCbOyQdqQ@mail.gmail.com>
Subject: Re: [PATCH v13 02/13] irqchip/sifive-plic: Improve locking safety by
 using irqsave/irqrestore
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Andrew Jones <ajones@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Saravana Kannan <saravanak@google.com>, 
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 20, 2024 at 3:41=E2=80=AFPM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> On Tue, Feb 20 2024 at 11:37, Anup Patel wrote:
> > Now that PLIC driver is probed as a regular platform driver, the lock
> > dependency validator complains about the safety of handler->enable_lock
> > usage:
> >
> > [    0.956775]  Possible interrupt unsafe locking scenario:
> >
> > [    0.956998]        CPU0                    CPU1
> > [    0.957247]        ----                    ----
> > [    0.957439]   lock(&handler->enable_lock);
> > [    0.957607]                                local_irq_disable();
> > [    0.957793]                                lock(&irq_desc_lock_class=
);
> > [    0.958021]                                lock(&handler->enable_loc=
k);
> > [    0.958246]   <Interrupt>
> > [    0.958342]     lock(&irq_desc_lock_class);
> > [    0.958501]
> >                 *** DEADLOCK ***
> >
> > To address above, let's use raw_spin_lock_irqsave/unlock_irqrestore()
> > instead of raw_spin_lock/unlock().
>
> s/let's//

Okay, I will update.

Regards,
Anup

