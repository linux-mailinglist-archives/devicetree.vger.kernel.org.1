Return-Path: <devicetree+bounces-254236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9095BD165C8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 03:51:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0C821300A536
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB89C2DECA3;
	Tue, 13 Jan 2026 02:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="unriAT9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f42.google.com (mail-yx1-f42.google.com [74.125.224.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C37C25A33F
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768272703; cv=none; b=rQsoq3VdokTcj+N1YDKh3mLnHeCQgVeUmavLXlLH8sUxGiZnZ4NAYz8KGz+Ne6Wjp0c7h4XgtTN5ImJdjPek16gMNm1jJxFEzlUPcqrEC5OfB9pPO8eWWjkFLEcH10iXpyKqvVltGVyeADf801EnOBvYDgJkiRf3KEwI6Q50AzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768272703; c=relaxed/simple;
	bh=ucRpV6w0bt2B3mlFHkbnKhNVeKaPi5p4NBMvpLeeRI0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FQ06VbGx8FEkPUBnOxUq2QywlIqGFnxjrYELMnf3rpDsLVg16PF/mpdK4Tgii+0jogBkyPwbOGUZTbhFDdjhnjfxDVbUVUK6El3PHGHrLuFbJwxnnAD/7VWZ7mans4obUWkdJnF4z1rGk0T0xLro+EHxLaN7kfexk3Gh99Ru6gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=unriAT9A; arc=none smtp.client-ip=74.125.224.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yx1-f42.google.com with SMTP id 956f58d0204a3-646e2b3600fso6496255d50.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:51:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768272701; x=1768877501; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A3EDLsI4gmCoGqH3Z2k2GRncDMxWHUvXOn29qxpSYSQ=;
        b=unriAT9A+UuJfMwrqZXlxNFtEvFk8rOgD2+2CBeXkISuKnPbaGfGFrkQkWXIggSV5u
         HyqIokkT6GNWa+j0BBgUsWjPx6DguHN2DxHZIeyUj32he9KkoW+2/yRoaAqRpuc34ZzH
         VewmEXQXd06LBmY1c+u1bPRYrqNzO5xhEm0nVrZqqf6xrO3Oqwdaw1icGR3ZOgk+6Feg
         cGfp25m0MY+RgX5nC3YVSQJMLg60nPE9pbTRawC1WWqTZ7bntrBWcNNk2hAeeossN58S
         60fBNTWuDeYkE0PBMmxQQ/ToZfZoQXaM6xlcBZWnnBxvpGQcQPly7ZLDFrggOyf+Q7Ko
         H5Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768272701; x=1768877501;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=A3EDLsI4gmCoGqH3Z2k2GRncDMxWHUvXOn29qxpSYSQ=;
        b=ojJlqDabYBKI9s0Os9InrgcuoMRLo+TMa1fy9jO4CcZmUbfgm4wlEVxAl7ttWZReJD
         L3AS/6Bm+DNHFv349wPEI4sK0ES97lHj02dYVvijX4qdTPKmUzy1i/8lLZKDycEJ/qDb
         bFqyG1ISNzh0HRQRidaChQ1Wv9N6ZVQ5WV5ZIuK2rZyEzkPqBecW2yMuMF+fd9DOWiny
         OmrsSDYO9By6nN/8g+FfYhv37ZGru9zovoz0aODu5rjvM0ZRo4AbnThdAFoOV1O66mOl
         CcHDDzkjSpGG1JJdC7gyq0ZoS7tBuSRA/LSWFfYA7aSWxvl6h9QyJxesLJDYHYJSGZH/
         c+BA==
X-Forwarded-Encrypted: i=1; AJvYcCXyINdy0RbCLv8y5Mw2MtZYMP+yx8P75INCPpFmmyEfrAIfXlvhLwCOI4CfLYMKPJiFP3KxwskU/Qc6@vger.kernel.org
X-Gm-Message-State: AOJu0YxOcGf0YBCU+kTZWvtow9Aegu4NI/e4FLmPxuApeD5bSKMtMf31
	2vfF2oR1p61RAo8U/5zL5//Rd6ZQlkwTGEDLvZbzI/T9pFg/YVLAYxI60iCtDZcSqgGpS/zpsbi
	0FT/m+V7A+jHs0Yugsanb4w8q/IRwcntN6QzYMHMqNw==
X-Gm-Gg: AY/fxX4x9WJyDmKkjYVHReF9VSbAgsYPuKvgkIdl+ndfM3Xrg+ybCiFPucvH4BDGMa8
	HnPWDVaBXcpXEjjUX3bGOKPouy/y2cfKVI+6kLm03xdm7A+Z2XjS9lY2n5IOAFRpza6XLP/ZL5y
	oT+ftoaaNGc7i1t6sNsGlYSyj+sCz3FFceLeRgUqYxYiU72dCtYg5eXXXnf7OUMGLrkri0C3jIb
	AHou/iZcU7HihOHkMec9ryQogKnS+a2KrE5ZFgv216RL6mm9fk3stRaT0LBP+eH4mN5PMJHeZlM
	Ck5n6JjZMJGejJ3/nYPdYD76yqzk5snYs3ztEQ==
X-Google-Smtp-Source: AGHT+IGY8QkMTn4FKDtsguPkPZlInIEAk3s30SOaRJ7i+o+AsKUMCFEY8+PBpcpdqGZl22WHl4ejg4hQ7dqsombF9rE=
X-Received: by 2002:a05:690e:e8a:b0:641:f5bc:6983 with SMTP id
 956f58d0204a3-64716c2c6eamr15484452d50.79.1768272701490; Mon, 12 Jan 2026
 18:51:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com> <20260112-shrivel-sarcastic-36d9acd2d96a@spud>
In-Reply-To: <20260112-shrivel-sarcastic-36d9acd2d96a@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 13 Jan 2026 10:51:29 +0800
X-Gm-Features: AZwV_Qh6psUrOlkmdvJ5XMadMeDGqdGdDoMMCEqx-N5Umm_2TBrLFIEtUXleAvI
Message-ID: <CAH1PCMa_rGWJsNiu3dGiOBxF9df-RL6qyanoGde3YqvmfGLyxA@mail.gmail.com>
Subject: Re: [PATCH v4 00/11] riscv: spacemit: Add SpacemiT K3 SoC and K3
 Pico-ITX board
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, Andrew Jones <ajones@ventanamicro.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 13, 2026 at 5:46=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Sat, Jan 10, 2026 at 01:18:12PM +0800, Guodong Xu wrote:
>
> > Hi, Conor
> >
> > For the binding riscv/extensions.ymal, here's what changed in v3 (no
> > change in v4):
> >
> >  1. Dropped the patch of adding "supm" into extensions.yaml. At the sam=
e
> >     time, I will start another patchset which implements the strategy
> >     outlined by Conor in Link [2] and by Samuel in Link [3].
>
> Okay, that seems reasonable to separate out.
>
> >
> >  2. Dropped the dependency checks for "sha" on "h", "shcounterenw", and
> >     6 others. "sha" implies these extensions, and it should be allowed
> >     to be declared independently. Like "a" implies "zaamo" and "zalrsc"=
.
> >
> >  3. Enchanced the dependency check of "ziccamoa" on "a". Specifically,
> >      - added the dependency check of "ziccamoa" on "zaamo" or on "a".
> >      - added the dependency check of "za64rs" on "zalrsc" or on "a".
> >      - added the dependency check of "ziccrse" on "zalrsc" or "a".
> >     The commit message of this patch is updated too, to better explain =
the
> >     relationship  between "ziccamoa", "za64rs", "ziccrse" and "a".
> >
> >  4. Enhanced checking dependency of "b" and "zba", "zbb", "zbs", making=
 the
> >     dependency check in both directions, as discussed in [4]. Since "b"
> >     was ratified much later than its component extensions (zba/zbb/zbs)=
,
> >     existing software and kernels expect these explicit strings. This
> >     bidirectional check ensures cores declaring "b" remain compatible
> >     with older software that only recognizes zba/zbb/zbs.
>
> This I asked about in the relevant patch, I would like to know what your
> plan for adding the "b"s is.

Thanks for confirming the above. Yes, I will start a follow up patch to upd=
ate
the dtsi files related to the "b" extension.

Best regards,
Guodong Xu

>
> Spacemit folks, I assume you weren't planning on taking the
> extensions.yaml stuff via your tree? If you weren't, I'll grab it once
> the question about b is answered.

