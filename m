Return-Path: <devicetree+bounces-43698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B012585B2B8
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 07:12:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E34321C20359
	for <lists+devicetree@lfdr.de>; Tue, 20 Feb 2024 06:12:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2B6954FA0;
	Tue, 20 Feb 2024 06:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="O/RcjSY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DAD58207
	for <devicetree@vger.kernel.org>; Tue, 20 Feb 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708409544; cv=none; b=AKmxHa1fvyvcExnANSFEk+JxOPAtetLS2dK5cyUmi5z0MzmOZW8YlMZDIhkKT4WBdoiRH65HuGCHgHTBMw9Lhm8VkYDWzqki175ITEvedvWYk94bOnaRxHCgMoXzc4R98IE0kpUAndMuY+MGz/6WU9RIzkjOs+a6/MoMo6MHTE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708409544; c=relaxed/simple;
	bh=YwxziMJHXX2W98fYvbTdPERYnB552e6dw+lv8Xxeaik=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dwwbd3kEui+Go9Tt/9E8Zd54Ol32vMni6eCf6BWBCmaQuIpoh5k0XmBQtnTM7NbBfdvEKU0Gu1vwtbgTvz1jEEh3MJwXaPub0WnocVSABgij1JoWXvO6teptakk4rSaMBPzAiFEbMnnGjfbKtwjcgrifm72pkKN2BB1HTi7jgB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=O/RcjSY9; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d0a4e1789cso60600151fa.3
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 22:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1708409541; x=1709014341; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=45sEQuqSChb4TFdk2aFCbPunV2X7Zp2Ggfs8QlVxLCE=;
        b=O/RcjSY94OAL/Y9ZG6azBiEDoKYTLLN7PUZejAf3JPSFl0t5fd7dv+4EXsrnH0jqp/
         1YlYt0dNzU5gpnoQ9TzYxmpE4uX2Qg//pc5EEf1wtcYMUMRx05c1DsXew/Y30iA77mXX
         b99Z0LLzvUKtFVCw1cI28DsJ3Xzp6mAE2rjpdnWNNUAbcvYBc9e+BzYNyzYbkQGoEPzn
         So/axWQ5Y8KY2hBMqbc6xxHpOIZ/gTgA71ltfMFjgB6Dm2M/Kx6IZSWfo2Vba+uR1Dfj
         vwcrDmxcV0jQrxVGZD+fGLUpD512Oa5Mv13J+3+4ba8K8kZeSOhIhdsMJkMwIwJoZVaJ
         nVmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708409541; x=1709014341;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=45sEQuqSChb4TFdk2aFCbPunV2X7Zp2Ggfs8QlVxLCE=;
        b=O8hefIvtnEKHBARGRCc6gC73jibOJ6xFhxcxvLadPYqtKeaNCuYTTybiWp7l38yi21
         ONX6RqDZOtiUepzJhnPGtmWPfhwsYicggXhdql6lcIMLnlRHLkONRT4hbYg/v7iq+V7t
         OwjlHkxoLxTiQpoI+EovWqjGK415KpNvRwPQvPbR1ZRI7N1r9duNh23Fjs8/6u96FNjb
         EVwoW72pASyH87VFy8xxE+UhZIaVAPcOqCRzorZTLro16g/ngB/hfrdXA4bWwNAberz2
         S9Pa9++bZPg0PMHwc2ODfQygVF3qP6Q1k7Jsj0UJ7RaFn4D5ysumj41lcCh2RuKjlsUV
         Qdjw==
X-Forwarded-Encrypted: i=1; AJvYcCUO5wRpg2zqDoQZgq1Ahg5Edk+3f7K+IgCB27b01zQKMi5/mOYbxRJjRbe9i8n4pWlu4LWt7SRs+hEUxesh92TJGUHdxnKTIdHKqA==
X-Gm-Message-State: AOJu0YzBCv3kjL5ESniauOJRojKk6iN8klMfVoF2BEHetCRqR48CPBhq
	N2r2wB5gdoqvKyPOemhSOmnOaC8XPQzC6N8rA1WzDNserTJMeduefBNO6R1gtIeP7J3a2eV8KYb
	k+he30tlKI3RtkuSv1JxrRkPzy7pTYPVR9jNLrQ==
X-Google-Smtp-Source: AGHT+IHMJBI/oMtcWEZVPK92GP05YnjcAeWF8XgBIuxDTLOi4XZzV5Qx4HMrS5IUdIaPjB4EYUfB3IKgxGQZLGSs3mQ=
X-Received: by 2002:a2e:b8c8:0:b0:2d2:bd9:f100 with SMTP id
 s8-20020a2eb8c8000000b002d20bd9f100mr10605944ljp.20.1708409541306; Mon, 19
 Feb 2024 22:12:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240127161753.114685-1-apatel@ventanamicro.com>
 <CAK9=C2Vwtj2gZg-P73yLMxu0rPXQ3YrRRuxq6HcpHMXgs-jHaw@mail.gmail.com>
 <87bk8ig6t2.ffs@tglx> <CAK9=C2WsSSHgDF+7ruxx_QF0Lk+Dsx2F2Y-_NabnxrJ_qWhgGQ@mail.gmail.com>
 <87v86pcxcb.ffs@tglx> <87zfw0azmn.ffs@tglx>
In-Reply-To: <87zfw0azmn.ffs@tglx>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 20 Feb 2024 11:42:09 +0530
Message-ID: <CAK9=C2W3cv0yd0faMrKjKwmSjGQ4zVVMkcbr=PtxJ1K0sn=SLQ@mail.gmail.com>
Subject: Re: [PATCH v12 00/25] Linux RISC-V AIA Support
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Marc Zyngier <maz@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Atish Patra <atishp@atishpatra.org>, 
	Andrew Jones <ajones@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, "Ahmed S. Darwish" <darwi@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Feb 17, 2024 at 2:35=E2=80=AFAM Thomas Gleixner <tglx@linutronix.de=
> wrote:
>
> Anup!
>
> On Thu, Feb 15 2024 at 20:59, Thomas Gleixner wrote:
> > I'm going over the rest of the series after I dealt with my other patch
> > backlog.
>
> Aside of the nitpicks I had, this looks pretty reasonable.

Thanks for your review.

I have sent v13 series. Please have a look.

Regards,
Anup

>
> Thanks,
>
>         tglx

