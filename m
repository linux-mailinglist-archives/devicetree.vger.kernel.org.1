Return-Path: <devicetree+bounces-246974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B28C8CC215C
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:10:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 12444302058D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ECF6339B58;
	Tue, 16 Dec 2025 11:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="K7YUK0rW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D872367D5
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 11:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765883424; cv=none; b=YdfifGHwLvZEldEeWeonqbRhdJV+QDRrP6LBZI1cgnSMq2R5UwKQ4OCsn4fZ5QoLBCtFI+LlO1nawEYApgoFht8anvdRhOIhimOXmjeyLGWtyqtPx4qDOHuwagLn0XAVmWXPsV4wjk6UgeOpq04ImjLUh5HmPo38ys8P8JoWC14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765883424; c=relaxed/simple;
	bh=GPn5v6ECMpGz+RtGGw29bhw+BjaX3HOHkO9+4/D4oeE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WzpW50JF+ow4CAE+AyFhoiMXhwZATXfAeDfP0K7GRFZTxrDW4uy2HERYVLCjVCqsTH6Suc9uTFn83pwyb+6BmotClbxz+P7H9d5S/+kErCH9XWGU87kqbh0DToyp578558NcHRPRpZ4AjKkGFRYkwqFURGuqSI23nkjNdVm8uZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=K7YUK0rW; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-34b75f7a134so2382594a91.0
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 03:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765883420; x=1766488220; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Ej3ICkCwAh2kwXUgz8fJWzp7gMYAFkjNFgF5UWgoP2A=;
        b=K7YUK0rW6kKR2auLU8/BIh2WBDmTOUoGRSLjD/KUU5ljFtopQHicZUxHyg37spP+ZY
         wk8m70tt9QqeZvauorNQPvBSlBdEe3wW87fWvj4YS1o6nDPIEKbQ4roaU9dNQyQLQRkq
         C/C45vN88ZEN1UBpNdTT2keAeBgP/3fIjYJfaFMU0PQh0p+9E0Q41cRQxhCjQ+n5eXqb
         Aj4Sd605kxU4cOFybGlDmfVvSrk1E5n6Nf/7RD2y+dAYuHaAemO5bh/IHmQegRSuWvXO
         9lHsU5yZzm60mpYRlUE81cI5QxU9flm2cObstJ4qI2KpHHa1JKfX2Y7adAXMQEXJc5ek
         25Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765883420; x=1766488220;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ej3ICkCwAh2kwXUgz8fJWzp7gMYAFkjNFgF5UWgoP2A=;
        b=NfHF7pGe6gX+rAgaeMbh5yWIV/M9YMDEQ6w4ZCWN2uZjLCb4DlRsQAtuDONS/mLznM
         ShKBdXlrnmPaqOjJzs637niTO3Isg9T/VM1ocE3phb50Cda5+hVIRXzUyNlOEVi64Y3P
         NfJzXdEohFE2WjoPPAhhEFZX6H2drtEdULCA94+TbeWo5r2rryIk+8C8ZAXcYllowD7i
         6tZAAqq+OSmz2svv1RMa+Qjk8xxpuWMaDNZymo8EqPf8jRaRWIaa3GwrLQ9UPkSloWom
         xlmnQbEEQj1j167I7oXXHJrNsrraVUUvrayXdDKN6i8Hej9ZPyBuvrPwKvCGjGcHyP+J
         KjiQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmg94yjBIE/co7eg3B00Glk2MhpcNHTJ/SmELv/GOw7Xxn/+ghMTSWz4y3blbKDGNZfh7aLzeq9DUd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7VmTEimf8Ky3Gqhai1EXLDEuwZs34ucWb7iZEI3fsaq3IFE+J
	ZVFC7up+yaDH+SV+TuCFG0yCGZIPbOOEWWRzd/jmpFfNn7aNmIQqyrfs
X-Gm-Gg: AY/fxX7lWdZlTDnW3hVgTWW7p2dlwH5UgypR3CNmCe+K3ZkjtNYG3lhsjIG/YeapKU+
	K7qnH34NnETKLEYnRc4QUEIEKH3IjdU8NLzP513dygmHMWLB7bOKAC+aYfaPIubIyy+HwwYQMED
	R1b1RcO4JDVpDYTCl/MSgqWGJsutNh50/m8/xNju2dESwBWWx/azv7Vba1I2omkuPgiDCT4QsrK
	rsqhhzwl5u8V847CH7SmMGdlIMCieUuVTJ+hlymjLo0LkhFpgsU7pxqvBjAxDuBjPVveEEDtOEC
	91RxtFAIBaP9LppYxbM6tU0yR0B8SxhY+KwPeiaMJIc0Q00mMWZTOqk8nfS/JwqnRFDfXkK1xDP
	JWBHodVStCP3pLNciGgNK8jT+X9sunbJ76H61BVWfr5O0KWFE6u2t9tO/IrdnNACrxanNZyI9Q7
	l5olHZrkVCrVV4bRWgI03C
X-Google-Smtp-Source: AGHT+IEn5RsKYSO5hlJJgYZT/9nyqBTv5DdsyrL3E95sfCO8MKdD/gWsaEX+ukrp/NOH0Js4gDXwRw==
X-Received: by 2002:a05:7022:3a8e:b0:119:e56b:98c0 with SMTP id a92af1059eb24-11f34c18eddmr9239549c88.39.1765883420209;
        Tue, 16 Dec 2025 03:10:20 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e2ff624sm53688630c88.12.2025.12.16.03.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 03:10:19 -0800 (PST)
Date: Tue, 16 Dec 2025 19:09:16 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: "Anton D . Stavinskii" <stavinsky@gmail.com>
Cc: Eugeniy Paltsev <Eugeniy.Paltsev@synopsys.com>, 
	Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Chen Wang <unicorn_wang@outlook.com>, Inochi Amaoto <inochiama@gmail.com>, 
	Alexander Sverdlin <alexander.sverdlin@gmail.com>, Longbin Li <looong.bin@gmail.com>, 
	Ze Huang <huangze@whut.edu.cn>, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, sophgo@lists.linux.dev, 
	Yixun Lan <dlan@gentoo.org>
Subject: Re: [PATCH v2 0/3] riscv: sophgo: allow DMA multiplexer set channel
 number for DMA controller
Message-ID: <aUE9hDtflXpcgGnX@inochi.infowork>
References: <20251214224601.598358-1-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251214224601.598358-1-inochiama@gmail.com>

On Mon, Dec 15, 2025 at 06:45:57AM +0800, Inochi Amaoto wrote:
> As the DMA controller on Sophgo CV1800 series SoC only has 8 channels,
> the SoC provides a dma multiplexer to reuse the DMA channel. However,
> the dma multiplexer also controlls the DMA interrupt multiplexer, which
> means that the dma multiplexer needs to know the channel number.
> 
> Change the DMA phandle args parsing logic so it can use handshake
> number as channel number if necessary.
> 
> Change from v1:
> 1. rebase to v6.19-rc1
> 2. patch 1: remove a comment placed in wrong place.
> 3. patch 2: fix typo in comments.
> 4. patch 2: initialize chan as NULL in dw_axi_dma_of_xlate.
> 
> Inochi Amaoto (3):
>   dt-bindings: dma: snps,dw-axi-dmac: Add CV1800B compatible
>   dmaengine: dw-axi-dmac: Add support for CV1800B DMA
>   riscv: dts: sophgo: cv180x: Allow the DMA multiplexer to set channel
>     number for DMA controller
> 
>  .../bindings/dma/snps,dw-axi-dmac.yaml        |  1 +
>  arch/riscv/boot/dts/sophgo/cv180x.dtsi        |  2 +-
>  .../dma/dw-axi-dmac/dw-axi-dmac-platform.c    | 26 ++++++++++++++++---
>  drivers/dma/dw-axi-dmac/dw-axi-dmac.h         |  1 +
>  4 files changed, 25 insertions(+), 5 deletions(-)
> 
> --
> 2.52.0
> 

Hi Anton,

Since you have tested this patch before, could you give a Tested-by?

Regards,
Inochi

