Return-Path: <devicetree+bounces-88262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3521593CF79
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 10:20:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4A4D28183B
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 08:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0F0A17624F;
	Fri, 26 Jul 2024 08:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="EBUElDxd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE5B242A8A
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 08:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721982000; cv=none; b=p5iI28W7C54JABJNdWINUxZ1ga+28kI/VeRxh3FHXPWvaOdfx99/oPvf5l6TMBGLoE8XlbDakvVQnM1+9DBLTRCgkt/DmZ3XdehVYYasnt6fOJ0x7zwnExk9yg2t21TpElbl9gvufo1tqNRUWNGVsuDEo3gnkP+WXr/ftJyuAuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721982000; c=relaxed/simple;
	bh=/puYacruPtS67r61Iy/obhcccA6V9gCxp2Q24bki4BQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cIW7zSzcJ4+3NWtyuX/umork+7QFcUX4T+FiD+ffg7Mk8tQf318PWaHbc51DDj7cmBECmvYGIJC5UTfnLvZt2Cm3psPDn5R4JeUYLlg0hz0PNwvrUSD4EfO4v0enlfXMGb9vvyI4gXYeGkDEtNDEoIRMb8CDXwZsAYaJiTLnIpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=EBUElDxd; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id D0DA13F47C
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1721981993;
	bh=/puYacruPtS67r61Iy/obhcccA6V9gCxp2Q24bki4BQ=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=EBUElDxdmTgLSoe5qGjZt8vkbV3hOlz84pI1bIqhV17xvHfHg3yXtRMC26vqaj4h1
	 mMGYKdI9ic8vzimNNE7xK/Fq670lJCIagv5wi1GyxYYnsRnMuAfVSbzXdpcSTr3QQF
	 uK8nf/Hdtis2o06R0Wr0EPehMQaNPNpOtNjUf4CDBcvj6utIOg1IqmECQdj5ToxEPz
	 BicLMcLZ5kldtXlIhp61REOsTFnvttZWr3KVyrRALDQETb7V5p8Fi7C1eT6rwSL3nT
	 0I+NDEmycnkY58FHP6zN4ivd6vfM088ker7Uo40St8j8zJ2E3AzM4kn8dEHlKjzx6m
	 IgIRyhFmEhNqg==
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-44dbd6ef5b2so6797621cf.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 01:19:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721981993; x=1722586793;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/puYacruPtS67r61Iy/obhcccA6V9gCxp2Q24bki4BQ=;
        b=kWrc/fuPfT/I/F6fi0y+2ZV6BLZ7unPk5n91dcxJ0CuHcTuZ6fEMOG28COdhzB6oTY
         N68DT+OxVGfYV6fcBSTt2z+6jt30v+DjPz7+wCZuI5AutSYQbt7JFqL9zPXMNTlMD59L
         UD6SAqbG5l0weyte4au7qkotmGtBg7US28ZM5dRLioLCVf9sksWAAD3MnwR5Uay7mpL5
         iUFh66OxQYLBVl5fNgAbVeoo6846DqTy2hLAoca9qCDoHmn8FzJjBg9NxE4QN01/SH0O
         2HXYmfJMQq4H5tsQq5ODoFEAI8dDJjPoARe3ADqmK+iyn/z764RhA0qjdHNmA3qMSf40
         P1Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXlwnRbBQU7G8V9+Kxv+EKI98p/VfU0m8EQ/Ka2I11gV117/nMo5KeQBEmEoUaCiZjb0wVhSwVlVMWsE5dbmRljySU6Xb9azETQ3A==
X-Gm-Message-State: AOJu0YwvXPVEIwynNBO/7+6LC+0/n7tLrwR4X9cDLi/DqOl9qTFfaKsg
	lyqYNu9yPE5EM8b3ydI/UeWyYD9Je3i2stIWEn+VAwvTbRUTxcK+M2gUgnUFFm8ZzqE4ynvNWMg
	6JHtCh9b3fAOlJ/r8m1W+fg1qKY77EMAqGpqZaRBm8xfcSuLtbuyne2U+EfwIeQ5mRhzYxc3CKJ
	811SM+OfMw+nXPGAadpi9uOpUYDORuY2awk2m4lEGK0TRPxwc8bQ==
X-Received: by 2002:a05:622a:5b94:b0:44f:e81b:75b5 with SMTP id d75a77b69052e-44fe81b7782mr57778911cf.16.1721981992719;
        Fri, 26 Jul 2024 01:19:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF8qCEEvyC+WszzxwXuACFUSzr4cfPd8vim9AQL2WZcj216az/f/QtGrpD5fhoyMxIeLDZW45BC861YFQ0T+30=
X-Received: by 2002:a05:622a:5b94:b0:44f:e81b:75b5 with SMTP id
 d75a77b69052e-44fe81b7782mr57778681cf.16.1721981992332; Fri, 26 Jul 2024
 01:19:52 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 26 Jul 2024 04:19:51 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <ZqMdeTrV5GE0TVUV@x1>
References: <20240705093503.215787-1-kanakshilledar@gmail.com> <ZqMdeTrV5GE0TVUV@x1>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Fri, 26 Jul 2024 04:19:51 -0400
Message-ID: <CAJM55Z9WFZJ=vyosx8LSUxBXs-Uftr76yKuWqGi7D_L+v1cKRw@mail.gmail.com>
Subject: Re: [PATCH v3 0/1] Add basic SPI support on TH1520
To: Drew Fustini <drew@pdp7.com>, Kanak Shilledar <kanakshilledar@gmail.com>
Cc: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Drew Fustini wrote:
> On Fri, Jul 05, 2024 at 03:04:58PM +0530, Kanak Shilledar wrote:
> > Implemented basic SPI support for TH1520 SoC. There are two SPIs reserved
> > on the LicheePi4A, one on the SPI Flash pads that are blanked out on the
> > back, and one on the pins. I implemented the one connected to the pad.
> >
> > It is using a fixed clock of 396MHz. The address and clock frequency was
> > referenced from the TH1520 System Reference Manual [1].
> >
> > [...]
>
> Applied to thead-dt-for-next, thanks!

Hi Drew,

Are you sure you want to merge this patch? It adds another dummy clock for the
SPI, but the next kernel should have your clock driver that actually models the
SPI clock.
Also the clock driver says the SPI clock has a frequency of 792MHz, eg. double
of what this dummy clock is set to.

/Emil

