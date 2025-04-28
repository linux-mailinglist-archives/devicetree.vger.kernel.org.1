Return-Path: <devicetree+bounces-171346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2D3A9E6CB
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 05:44:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD29316FA73
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 03:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72234431;
	Mon, 28 Apr 2025 03:44:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8E5119F424
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 03:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745811847; cv=none; b=mhw30y7wAFWS/X25CIE1iUjFiitA0eghVojc/O0HY/kEUTrjoM/s5KZ4oTwovJob/hylML7T3cncV4EUdWPPF/Z+EmDj17Wwrdm3hd6ACnUGWaEQImyJgR13YOQG+H9wi+vT9USDbJfzQzKMXUnN3g6wJtdtaiEnenYaODUWH/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745811847; c=relaxed/simple;
	bh=7CAC38e00t9BNrxBO8THArYyzt9u+eyO7blKiSuqsOg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J8eearll91BuSRzD9wkjpvIDaJlyLi5UBHQoWz9DhbJHhcpmshM3YVqpxA6AZQaxe9tPKrkd9GmF88I7ILWdPs2I1r9al/JOvdR95XKuD7qC0p8SLxjvw0Mm5PKsKtEgb94fiaRbeoprSt8SldEoExR4tNCaEn9Z17b4j4neqCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-5493b5bc6e8so5040458e87.2
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 20:44:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745811841; x=1746416641;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7CAC38e00t9BNrxBO8THArYyzt9u+eyO7blKiSuqsOg=;
        b=GtJlrl3Xe0jorTD7x6sLxcM1H6oYNrbAztcIYzewHazmn3UViI9qHRMG94jnZ18plw
         cOpPRH9w9T6bt2t5vB1NTE4s+N3AqATX6yXJsOzeV/5tW8pSrK1CFHuMFQxi5BVzyOLJ
         NtGOXFMZKbDV2h2wVClbYaeeLqp+I3MEGEiATLoNFhIEhyzdmOW0p7UFshEpEHYhr7jf
         O+yFvRxLruXRGmCIW/mW4PukG+5m2TMi6Fy0nzJdGSWQxHKqClwgjE9M2xLChZkb0bkG
         jjDrKmkNcXQqhKlRJHtJD4uHzEWpEmfCDQ2SWJJ0fIx29IocPIDDJWd3Ap8MoTDVJPcl
         Afcg==
X-Forwarded-Encrypted: i=1; AJvYcCUVef+jcI5sgrl/z7SULvvslrTNNvArY67Vq6NdIjoKUAcfSFQZqzCO+erj/No+w7YpbgYRqDWEqvO2@vger.kernel.org
X-Gm-Message-State: AOJu0YzKLyt7k1PrIR16AwjdYMGgx39dMircXpXUYR3cZytN/92pTwtE
	jROwLgVpYfaihR/Y0SdcbDNdYBuusacyG9OuQzUNvGvVlNxlbTrSV88L1M6wecs=
X-Gm-Gg: ASbGncvKnwmTSDhQ6fAWu6Vl90qYxGb6ueaINPV++VlkjXRAUfCJuVwhJIKCw+gLLu7
	D2tFGhklBfJJdffkj03cKwFqwX+aq2U5w7KHovCwYXdLloFxoClxi6F+Ur7OneKL+S2AlUgZamH
	NZ5iAyaYu73l+/1MkVlxdi3hjk3KaZfqBA783a+086JSUxv8aadu0qk2nBxWBgEakkOtuw+24p/
	Z/6oZxyYb+pHHc7NM7v4lI3YtDjuWPIBX45fIHfVUGTgQOY3eiODBIczL9pmxnf8RX+ITJaUfGP
	jxD1+gtyrXcp5TF7vi5IJiL0/yXFwZ127t+nVyXqJ7OuKPkM5gn32C834/nZk5WJWlJi8gy4PA=
	=
X-Google-Smtp-Source: AGHT+IEJtTyF+jO/joVJjo4+bFsPEP6z8q3Aug3Dp73bmfAq8X1BK9/F3rUKggGtj2H3zjQHEMrwTA==
X-Received: by 2002:a05:6512:1319:b0:54d:6981:4b83 with SMTP id 2adb3069b0e04-54e8cbce641mr3034814e87.24.1745811840967;
        Sun, 27 Apr 2025 20:44:00 -0700 (PDT)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com. [209.85.208.180])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb26202sm1564591e87.47.2025.04.27.20.44.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Apr 2025 20:44:00 -0700 (PDT)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30bfe0d2b6dso41798671fa.3
        for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 20:44:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVPuCy4vdOgBMHvk/WrQqX5rWiuSaHmqPqFsoaeV3q4o7bq4iuGOYwmtMBjMcIyG8PVcw1VwXFnRr4q@vger.kernel.org
X-Received: by 2002:a05:651c:54f:b0:30d:62c1:3c0a with SMTP id
 38308e7fff4ca-31907612579mr39451231fa.25.1745811840373; Sun, 27 Apr 2025
 20:44:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAGb2v67=aENryhsQ6VBPwPXskMvMDZpzzeHz2LTUt-VDMTyzGQ@mail.gmail.com>
 <20250428030015.20915-1-amadeus@jmu.edu.cn>
In-Reply-To: <20250428030015.20915-1-amadeus@jmu.edu.cn>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 28 Apr 2025 11:43:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v65EP7dxOe_dcuF6hY+nU1GdO5gLLEtny_yCiOT7LbHbkA@mail.gmail.com>
X-Gm-Features: ATxdqUF6GOIa9pZuDBxWtkqX4m1trSs8x7Y-JZiW0r6eRTpffkJIo7zf_mFd4yc
Message-ID: <CAGb2v65EP7dxOe_dcuF6hY+nU1GdO5gLLEtny_yCiOT7LbHbkA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a523: fix SD card detect pull resistor
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: andre.przywara@arm.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	jernej.skrabec@gmail.com, krzk+dt@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	robh@kernel.org, samuel@sholland.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 28, 2025 at 11:00=E2=80=AFAM Chukun Pan <amadeus@jmu.edu.cn> wr=
ote:
>
> Hi,
>
> > Fixes separated and squashed into the original patches.
>
> https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/commit/?h=
=3Dsunxi/dt-for-6.16&id=3Ddd97ddc4da0af02139b0e97e98c210219631e161
>
> In the above commit, dts was renamed but Makefile was not changed.
>
> > +dtb-$(CONFIG_ARCH_SUNXI) +=3D sun55i-a527-radxa-a5e.dtb
>
> Do you want a patch or will you rebase again?

Fixed now, though today's linux-next might be broken. Sorry for the mess.

ChenYu

