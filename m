Return-Path: <devicetree+bounces-153831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F126CA4DFE9
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:56:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2C539175055
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:56:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20254205E09;
	Tue,  4 Mar 2025 13:55:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="WX25qcRE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 457CF204C2F
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741096519; cv=none; b=TscB6l2BB9jXxrLg2ao0pTThbrN/+rcEi344AQ9dR6hUtj5UaebPaP0XlIDvL9Q5ycL1xrSYUA7E4IBFjDI/m+RXnuY+Y3xHzc4XhW2wwCgSY18+2gyOq7s5JkYgF7sYBSpZcRp4zmrSN7v15oma/fcxS08qoCK0+zkQABOMUT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741096519; c=relaxed/simple;
	bh=daPsAr0QyWYFS5jjyXv44luCd7G6VlWVIOU58rRGji8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nKKCwOcT2snfXiK2iRc9Q6GkTItV/LTo9CZQXVyQYLH1jLKmMur4u1xfNLeX0oKyI/LKto9i1twy5vrnR0sQ5BXsBrj6WM9Gj8kjMgBBod000M4NCSf5V0TbuiwJdp65EDupMVgXTtM5zVwvoVyxUhJ4q7pJ/FQqVori5dqJLNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=WX25qcRE; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30613802a59so64537791fa.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:55:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1741096515; x=1741701315; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=daPsAr0QyWYFS5jjyXv44luCd7G6VlWVIOU58rRGji8=;
        b=WX25qcREIZo/NXHGplaqZj501fgKIsN0WQf0pHmAM76sWaRiarYFIliopumHx/OMqF
         Qa/7mD6hAQIbfwEG2RGdeqhSFGwUH/1EqPNWOw42mSNXygxZYuodONydbq5KG2fuR64j
         lmN1GiXTHX/4QswAeEczT49vSFGVdSAcWZmHPFc5dCU14DM6vmpndf7tnEVGOpHAavUu
         ixq49VmDTAR0p2MVf+ORnXeGK3kXtjxdEx1b5mQeUg6wy1oQDmGOhS/l/D4UeHo/6YjY
         h3WYRtuihhr39kT3KMclEG/J2ewziHZwko/vadmqD1tYCgSbzlyfDz4b0fB2wg9Ddl7h
         iACQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741096515; x=1741701315;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=daPsAr0QyWYFS5jjyXv44luCd7G6VlWVIOU58rRGji8=;
        b=FDMNc+7NUmBWsIU33/Vo/E0GamWqU7Yf+ndb3umC8TnDIrbW84TyUqtMGP6/p6H6Nn
         BdmVh7CX0TzHqtKoUpLTcWVsvrOm6/bfUpyYxVvMncXzx0SyGmYfaA+IVbydAf6iycwD
         lCW9wZrtuNF1lyEQaFSvKw9GVggHPspUlLlWBq3ScqUySzc+BB7t6YFI8IMBCQjoXNw7
         CKcYg5MVHg/J4qeUM5+To/WA9DU2MwThXVZmUaVGQuBVV7ahcqCp8x3lht6hdal1Y4Sr
         hJ4kTTMc/RWkR4SmtQuFoNslpTh/HJhNP47t0Qlwt04/XMRJkT0dmoxngRbaRP1Sb2QN
         EZnw==
X-Forwarded-Encrypted: i=1; AJvYcCU6q+18KdIxGPqQkpAU5UauQEZwdC5TQ8eaUsmur+1xQhjSZ7hVz+rgXTkjXzYajW9INOBW7RU8WXPP@vger.kernel.org
X-Gm-Message-State: AOJu0YxhYBOXb1oQ11w5Fz6szbCNAnyvJoTIlGYMnr7sXvW2hTVoapMy
	69d5pHd+7ZgEf9tFfDIRlxnuxACYDadTm3qiA2GQ+lQkEjmMfV/EdH6pa4RWMf7IEd6sVCIDJky
	Z4FDqHJYRrti4JjmBUj5oE6H+uGeiyxfD+2YfiQ==
X-Gm-Gg: ASbGncuOle4wlh4eq2P4fkdylO4xtQMzmQDDg1Ur0PVvAC8XEeXH0Rz/VPn50k6h1QC
	RhBVdwxuKiooXQcTzNckvjgqpRvjFbY5JSR/1VgeI16VJ82nMBkvew7mseIFCR1u+qCbyFieLvZ
	CxuG+JNFYs/StwBMlw91H5OsSjN41gruOA8dMT+V7lydv0Kp2/2+3UoOCGkA==
X-Google-Smtp-Source: AGHT+IGuRU1Vuf8+fuEHnhHSx+k25HlH5VEQgaMjDprBjLt370BR0zDP1aHnTzboH+gvPRQqy10QPp0xgCH/Kjy+Yeg=
X-Received: by 2002:a2e:bc12:0:b0:30b:cc6a:ffd9 with SMTP id
 38308e7fff4ca-30bcc6b0ebfmr11371201fa.0.1741096514955; Tue, 04 Mar 2025
 05:55:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250303074552.3335186-1-zhoubinbin@loongson.cn>
 <20250303074552.3335186-2-zhoubinbin@loongson.cn> <CAMRc=Mfr5PCuad28dL19iZrpA-qkL7x0W-4Lt3SZyVfXPP-ipw@mail.gmail.com>
 <CAMpQs4+5165E35oO_p-pE8zDNo2rPT-gBqueA_ynW8FYJHV18A@mail.gmail.com>
In-Reply-To: <CAMpQs4+5165E35oO_p-pE8zDNo2rPT-gBqueA_ynW8FYJHV18A@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 4 Mar 2025 14:55:02 +0100
X-Gm-Features: AQ5f1JrOEFVlIEX3WtfwovJiCXzyB6KvYp0MW4h0lr7l7aVdvgOyvVX7gpUTEeA
Message-ID: <CAMRc=Mc6Fz-HkFc58_a7iakhVAOBRN34JUHX93K6tCTUNkp_AQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: loongson-64bit: Add more gpio chip support
To: Binbin Zhou <zhoubb.aaron@gmail.com>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Yinbo Zhu <zhuyinbo@loongson.cn>, Linus Walleij <linus.walleij@linaro.org>, 
	Huacai Chen <chenhuacai@kernel.org>, Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 4, 2025 at 12:55=E2=80=AFPM Binbin Zhou <zhoubb.aaron@gmail.com=
> wrote:
>
> >
> > The naming convention here is a bit confusing, can't we have the
> > naming of variables reflect the compatibles they refer to?
> >
> Emm...
>
> I named them that way to be consistent with the previous naming.
> Of course, we could name them something like
> =E2=80=9Cls7a2000_acpi_gpio_data=E2=80=9D, which might be better understo=
od.
> Also, do we need to rename all instances of =E2=80=9Cloongson_gpio_chip_d=
ata=E2=80=9D?
>

Ah, nevermind then. I will apply it as is but yeah, we could consider
something better in the future.

Bart

