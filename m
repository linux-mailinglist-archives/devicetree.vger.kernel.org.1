Return-Path: <devicetree+bounces-63627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EC08B5A96
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:53:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 49B62282D1A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF1DD745F4;
	Mon, 29 Apr 2024 13:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="tb8UXWTC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636A5745C3
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714398760; cv=none; b=UmH2M8ia44MLBavcjPZN9kKm2ldzXRNYbKBjEfpfR6npPT/uvk2FWhScSj/NeRgQQ+8oFq6rV1yMB2F3Mto20s/rQ3Ky/iyLD0AomCdtJuFzTlDKvyYqEZhZjPDM6KMTgRgp9slko0NJ4TI18CZxTLfclLdyXoeGGqB4xgB45rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714398760; c=relaxed/simple;
	bh=AsKCtbhh0t38BAJJdTfdKeBFCuozd2y8Acb8XDQyUhc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=snNWc0hu4IIr+wvU0brTsn1qd/IV4E2pSIbfKLi3vP2osU5NjyCLJBp2H1n6hnKbvEtvsZNCKP6UFf3mC+We2OvntngYUTKhF0HN4m+FDQoCkOuwSxCXVzxSgYoW0Z4Ptusc44J+hbUaSoZ9PguxgoKXwOAtJSBuD3n7pvNa1SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=tb8UXWTC; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0311C3F337
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1714398758;
	bh=AsKCtbhh0t38BAJJdTfdKeBFCuozd2y8Acb8XDQyUhc=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=tb8UXWTCYfyus0fpnvYw8ilBP7axOQO4LUDmacwORrN9cYzVkUgz2OwOeXHivJTrU
	 YG4ZVfscWS78ZnfMbvxrqNqZaXYFaBqCg7SUHHDMi1nSxjeXwr7t5dRtlgt2ZeVS7/
	 N4b69BjIS335bjOK8UvaapayhGUoEOcAlOTrmPRVwXnQ4pqFXbaRVTc5eBRU9egeFQ
	 vrBeVzsxTmY92LYhzt29bt4CxKz68i0sQsrV09qhbhh3pcwJvgwWv+kP6oFI/Rf/R5
	 Bc3rQ31SB/HeRKRPxxiO0XKDEZYpuXNh3uaNGao77pjKkrgEGqcNXZaOUk1t+hq+I/
	 a0OP46d8+6GIA==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43ab6687212so22023881cf.2
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:52:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714398757; x=1715003557;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AsKCtbhh0t38BAJJdTfdKeBFCuozd2y8Acb8XDQyUhc=;
        b=JMrgdP9lBIa+kf7ADrkF6f7C/LU51Dl7rYe3+SbU8wgnYwOGZhdvdTm4M0VmakGPoe
         LsCgGfKSk5bcG2HT4xIr5FEaksg/E/31FYTAh8Py3NrXV8g/cbD8yxHGtujhuiVy6Ks4
         as6zPMRYHCC/hcwNwb0Dvw8yrgGcanY3QCLE3KYg9eZ9zIXdByOtn3NSMZcL8mb3qb4L
         wVmlXvUc1gTp5ksJ3w25VQB/aEey8a+j6pG5f30VFaRFSFcM8klhbM+et0hFWh9ew8dN
         kw+n4/Mii30zwF6vdPHcBOvqMe3sSPX28kY35UiDg2YzA1mPt5RhqOzMzvQ6S6Hld6fw
         PmXg==
X-Forwarded-Encrypted: i=1; AJvYcCWYmFB7XmvK4jUNIr/Dq77iZKi64nJDqY6A4mLtYV9UeC/5AGdh9HYcEigDRwpThSVHEag4aGom6e+i4vnyevQ6V/58ZlDtKKvh+A==
X-Gm-Message-State: AOJu0YwWotpsJ7bMk9nBggsAEKVmTx7OIJHnIfxbFEb7gySRNtddr6Ny
	VT467iA/oyZaJurHbW3evM26WjdSYlOZkairHhCNWOViv2ZVp/4Fh3Qgr23grOPq2yn6XxPaaPj
	DPuBLgomxURlsZFYFyIhPovkjUVsDCfjLsvdQczVNfPKV9OPyz064X7iieS2cnMSYK1HYHe5dS6
	1LuL9uZlUkOz9MTfETM0tGbKty8YFieKl1BoTiSI/49PRkvf4PWg==
X-Received: by 2002:a05:622a:115:b0:43a:cc86:568d with SMTP id u21-20020a05622a011500b0043acc86568dmr4712043qtw.23.1714398757081;
        Mon, 29 Apr 2024 06:52:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGvsZDMj5ez5DEP73GepCyTJCbf25O42FZuiBqqsRrRWXYhRZe9NxVtx5qVKVmEXoQHNABuLQfLBMvNRJ2qSCY=
X-Received: by 2002:a05:622a:115:b0:43a:cc86:568d with SMTP id
 u21-20020a05622a011500b0043acc86568dmr4712026qtw.23.1714398756859; Mon, 29
 Apr 2024 06:52:36 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Apr 2024 06:52:36 -0700
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240429001317.432-9-jszhang@kernel.org>
References: <20240429001317.432-1-jszhang@kernel.org> <20240429001317.432-9-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 29 Apr 2024 06:52:36 -0700
Message-ID: <CAJM55Z9Q3sm=2HPoa5cWh8_hn9xCCgxy+v7H4y9n=jWzhCKdbg@mail.gmail.com>
Subject: Re: [PATCH v4 8/8] riscv: dts: starfive: add Milkv Mars board device tree
To: Jisheng Zhang <jszhang@kernel.org>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Emil Renner Berthing <kernel@esmil.dk>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Jisheng Zhang wrote:
> The Milkv Mars is a development board based on the Starfive JH7110 SoC.
> The board features:
>
> - JH7110 SoC
> - 1/2/4/8 GiB LPDDR4 DRAM
> - AXP15060 PMIC
> - 40 pin GPIO header
> - 3x USB 3.0 host port
> - 1x USB 2.0 host port
> - 1x M.2 E-Key
> - 1x eMMC slot
> - 1x MicroSD slot
> - 1x QSPI Flash
> - 1x 1Gbps Ethernet port
> - 1x HDMI port
> - 1x 2-lane DSI and 1x 4-lane DSI
> - 1x 2-lane CSI
>
> Add the devicetree file describing the currently supported features,
> namely PMIC, UART, I2C, GPIO, SD card, QSPI Flash, eMMC and Ethernet.
>
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

