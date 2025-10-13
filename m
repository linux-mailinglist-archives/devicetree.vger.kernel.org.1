Return-Path: <devicetree+bounces-225911-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39079BD2348
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 11:08:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7EBE3AE08B
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 09:08:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94F5F2FBDE4;
	Mon, 13 Oct 2025 09:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="mL1JLTpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3FE92FB608
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 09:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760346494; cv=none; b=fnORK205kDeylElDS2ZCnrI0+1IfL4L6irmcboecA1UMKtmGSWVhbOOwD2dyKm90qcb+qEtjEls4a3AYCMY0D+ERo4MWFWuFIlB0G9VOJ+2oAr540dkTYoGDj/JlGrYbSFJ4TuRoU8p3YYsWxqT6A70nTpmPM2A2uMJ/rN0aOVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760346494; c=relaxed/simple;
	bh=c0XC7whWKKMUkuMOVlXong/QmdfzTGzOjLtpJz/gM14=;
	h=Mime-Version:Content-Type:Date:Message-Id:Subject:Cc:To:From:
	 References:In-Reply-To; b=PAbUu5cOpgqBDPQ2ALbXiqfd0CFK4SzTfhQyMqRIXnri5PG2DbagLFdnjvdXAXM3iQjZC0FS5AzPuxQG+dBaQ6pa/38pbIGWKRxJ7s0OJqHO//iaM77OrKsT18pPjM2+xZwP3QgYAJE5XN+kt2CnCHAA1HlMsHnJ8c8QyL4RVZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=mL1JLTpC; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-46f9d1b186dso4038485e9.3
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 02:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1760346490; x=1760951290; darn=vger.kernel.org;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uljRuJ22VHj4+zUjoo+jqjIn1OWN7Z5Wc/Ca9r3a1Z0=;
        b=mL1JLTpCHEaqBPJEv/QEh2Kc2BlRp+rcI5ScDpoGiNrqQXxGYrbaukuXo69hkj07NJ
         fLOv6WwK7eRGOrVLOM/Jk1GBZOsfdxEN4hkIAkEsxQPI+MW5KpP/OmlID8XO3f/FbbzE
         a8kVVJHOq7GR7y+O9VxfxUKYJE6EUfaBRcI+ZMK+kDBq55YjFxMqoN6e6vTEQXweldfP
         Y0eAbKoA9NwNS3jWgaLTjAKJWfW/dNAVcVqHJ8KEzGr/7jXlx2ZdNctzeBMUF5rFzc3+
         G3Vh/UZGjaetFfUJD/6g50btQg+jjyNjEffAcrkGanPRWSxxQH7dxR1j5HHFom1lTYP7
         7/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760346490; x=1760951290;
        h=in-reply-to:references:from:to:cc:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uljRuJ22VHj4+zUjoo+jqjIn1OWN7Z5Wc/Ca9r3a1Z0=;
        b=fcRmnLwkcIVCIoruV1OF5ukM/lOhM7SH4fqA8J0vIjFNPd5DW3rlylW1yCFZjB+e9g
         /OWoP35VRFvIE+b378Th9cvlSOqeAw/8YGPsUSwZYwqJncomM/Cnk07gczcHKm1YI+D3
         m6zxIDpBClXQihe/C31/EfYvepVPTnfmHAV4YvA2v+Q0SwShCc8VpeUgMEgOKqZCDuBu
         K/YxFhXyK2lQB7HParW2ZYMYOd4aO3T9fRJt4bg83X5EnXo3D3aybKhk1MKY4remi8gS
         4LWhCYUEZdnIDQ4lPXsjP8/1n/2H5kqrpM0Zf5TtaFGOIsAWHmjtbPSoeHQ1U2PmkQqQ
         00sw==
X-Forwarded-Encrypted: i=1; AJvYcCXrKAIg80mCE3RU67ruvm8HB0kwPN2rL3J3z9x1YcJSw/PgD7i26CRqnQBx8b6ng/OD0TEaXTg+S1SR@vger.kernel.org
X-Gm-Message-State: AOJu0YyJNkIC1dgHRjqiGpvt83S5hFBfqqdum+neax35UIKQOQLQenqe
	5KiGEOcRS+S64LKavcMZvkr64uNa9MSuKKEUGQv2Pjp+hffnHrB0tH8SWWTkBkjyZSU=
X-Gm-Gg: ASbGncsorSijP6wKp8Lx1SiNDqmo6rEorVxFleiwe6fz768XnTscj2q9Al9qYxATh47
	Kh2pT+PGDWYjVgzsFW7HCAvz92SS0BE8wjbRe7r21NevUJjLZcvfHz1mfyZC4n0KvW9bY8zxzqH
	jJAKEOXOUFfBnqcFZbLP1WtB7hJ4keTGjYBlsh1qAWrixcgv+RLLEysJM7tYrUAOSvAi7uH1CyV
	IIsfX975sphkGqm4GFLMuWekguChu2THHQISGWTAs14HNcwfA4k9UCyUuNkRD6LuWPkjFfz7DY+
	3jpKnGscqyJMHMkKVmsJWKL9jYxONUFLcitFv+Ny1oOfSOxfsWStF7nbJhaHm81gKZGnTks3zMT
	9sn0C2CAA26WM3HiDAjeOjlBcG1vjWxBdqVR+GW3G
X-Google-Smtp-Source: AGHT+IH4aeUNUT5W9XMEYelh9Cec2RyLgO01+JQO99tZJva9ApRNPDUn5vWcTl3ZQ9jNpmQOS+VA/Q==
X-Received: by 2002:a05:600c:46d1:b0:46e:5cb5:8ca2 with SMTP id 5b1f17b1804b1-46fa9a8f64fmr84122125e9.2.1760346489773;
        Mon, 13 Oct 2025 02:08:09 -0700 (PDT)
Received: from localhost ([2a02:8308:a00c:e200::bfbb])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-46fab524f92sm120625965e9.7.2025.10.13.02.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 02:08:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Mon, 13 Oct 2025 11:06:50 +0200
Message-Id: <DDH2Q0N2HLKF.2QSW4DB5FTJI6@ventanamicro.com>
Subject: Re: [PATCH v4 3/3] RISC-V: Add support for srmcfg CSR from Ssqosid
 ext
Cc: "Paul Walmsley" <paul.walmsley@sifive.com>, "Palmer Dabbelt"
 <palmer@dabbelt.com>, "Albert Ou" <aou@eecs.berkeley.edu>, "Alexandre
 Ghiti" <alex@ghiti.fr>, "Conor Dooley" <conor@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, =?utf-8?q?Kornel_Dul=C4=99ba?=
 <mindal@semihalf.com>, "Adrien Ricciardi" <aricciardi@baylibre.com>, "James
 Morse" <james.morse@arm.com>, "Atish Kumar Patra" <atishp@rivosinc.com>,
 "Atish Patra" <atish.patra@linux.dev>, "Vasudevan Srinivasan"
 <vasu@rivosinc.com>, "Conor Dooley" <conor.dooley@microchip.com>,
 <guo.wenjia23@zte.com.cn>, <liu.qingtao2@zte.com.cn>,
 <linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, "linux-riscv"
 <linux-riscv-bounces@lists.infradead.org>
To: "Drew Fustini" <fustini@kernel.org>
From: =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>
References: <20251007-ssqosid-v4-0-e8b57e59d812@kernel.org>
 <20251007-ssqosid-v4-3-e8b57e59d812@kernel.org>
 <DDDL94HT7HYF.3VU2WQYU4WZY5@ventanamicro.com> <aOqjggmTr4ioHwB/@x1>
In-Reply-To: <aOqjggmTr4ioHwB/@x1>

2025-10-11T11:35:46-07:00, Drew Fustini <fustini@kernel.org>:
> On Thu, Oct 09, 2025 at 08:47:27AM +0200, Radim Kr=C4=8Dm=C3=A1=C5=99 wro=
te:
>> 2025-10-07T23:21:12-07:00, Drew Fustini <fustini@kernel.org>:
>> > diff --git a/arch/riscv/include/asm/qos.h b/arch/riscv/include/asm/qos=
.h
>> > +static inline void __switch_to_srmcfg(struct task_struct *next)
>> > +{
>> > +	u32 *cpu_srmcfg_ptr =3D this_cpu_ptr(&cpu_srmcfg);
>> > +	u32 thread_srmcfg;
>> > +
>> > +	thread_srmcfg =3D READ_ONCE(next->thread.srmcfg);
>> > +
>> > +	if (thread_srmcfg !=3D *cpu_srmcfg_ptr) {
>>=20
>> Wouldn't prev->thread.srmcfg have the value of CSR_SRMCFG when executing
>> switch_to?
>
> Thanks for reviewing. Yes, you are right that prev->thread.srmcfg should
> have same value as CSR_SRMCFG. Are you suggesting that the cpu_srmcfg is
> not necessary as prev->thread.srmcfg should have same value?

Yes, it would be more consistent with other context switched state.
I just wasn't sure if srmcfg doesn't have special race conditions.

Thanks.

