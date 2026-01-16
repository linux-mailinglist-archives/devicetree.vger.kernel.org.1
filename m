Return-Path: <devicetree+bounces-256258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0EAD38796
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:32:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A54DF300CB4A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 20:32:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48E5C2EA16A;
	Fri, 16 Jan 2026 20:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="MhAfWHae"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f49.google.com (mail-yx1-f49.google.com [74.125.224.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F642857CD
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 20:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=74.125.224.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768595555; cv=pass; b=Rjb74Rn1MmXLfcH67cp0H/vzqP7qR8cZBK8cJLIA9WK77tJk5B68lnZGXHeiJpla//lq4l4Pk4ATtzAKl3T7VTTKmoHhnrhiJk3chUvzGajMc5ZlTJixP66WGz85aSY5RJZBLlaJ2zOP1Snj+2B0r9WaKSylXrmXO6WKCZXfQfI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768595555; c=relaxed/simple;
	bh=PpmlZ4hHWamCBSa4D0DoiFTzgcXHGWRBgeeQ73UEY7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LF+eb2/wr18b8UpoZIO97qNFki0ebASIpV5UCwiwDa3i/n81FIlFkILiN9+mcvjqJk8cdeTG61Ua60i17m7OqlamsYaGv13WgdUqNIEAI2N7XvyU7TgF1hF45gxXOgGCLO92TZxyTFm4JHP+H29y5SgqWKaNeMFFebgcsVWXi0A=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=MhAfWHae; arc=pass smtp.client-ip=74.125.224.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f49.google.com with SMTP id 956f58d0204a3-646b8d2431dso2143658d50.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:32:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768595552; cv=none;
        d=google.com; s=arc-20240605;
        b=EIagWZB/WyarttSXW+tmkbb65haQpBERm9Ge76fvaeYCbdBVh6JZ2MBP1C6sDt1033
         uGlR7ZIMJGwH9ECtMFoszWcB6B3rQERrkeB87er+H2q6yPYw5+tn9K/1Q0+/t0mUSEJ/
         lPMKXVYWZzJArTBIEi/5Vq0tagH7kMN7WuR5qrP2BXr+OrJanl0pSQVY4N+8MdT4Yc5f
         ucKu042g8LWE4XPqmXW9XkHcaROgskzq3vHexFGM0/4D76o/G5NFjz/pVoEhsudVHRjx
         5bYDrQnwvA5MK+k8Uj3zFNOzd+tDNf3dh0PSjpnOh+Lvn7xNReWTOer1L9CJAuO9+laT
         jpXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PpmlZ4hHWamCBSa4D0DoiFTzgcXHGWRBgeeQ73UEY7c=;
        fh=F1fDEPLqC5c9TxpKvuMbhTz26SBgSwL6m9iGDEvAGo8=;
        b=Wa19kGgZAcbeNo+m2PI2+IIzngzkLfAD9nSwmCfK8omRt/GHO54ynukLlrKzsxamty
         sPuMfyL0ASCJr2yqheILtCTb7H0myOZm4p7MojVcPu/WUYAI9lAVML6Qv0ro1LU/QeiF
         9kjtKHROOeVUpRxH+BeiRmIIJ3hd9nRKHMElwTZgBvoU/izk0Qv+iZ3g6kxV5lXaCOBm
         WJPsOWijEwfubAZ4duN/843t5PaJZJAp+kv2XK82porfB52txocf4DWzCwN/HdZouBEi
         vqL1w2CXzbeaqY18zV3dxf924daFz/06DqpxZPCFLwPEljk7GTM/4vLt6jH31B6eYKxS
         1Szg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768595552; x=1769200352; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PpmlZ4hHWamCBSa4D0DoiFTzgcXHGWRBgeeQ73UEY7c=;
        b=MhAfWHae0c6U0rDpHFh9KVXvb/BigS6oJJkoDAUWYeUeU2Y83b2VG+S8VYJ5aQTVgP
         qINDRXVOOANtocyrxE1OyVbwNTUZfgxv4SEbMzAacd13/vxkp9maV5wcR3nUyKAaZRfT
         ygOG+nbEXXbiRz5J/9lz6QH5wqsVrj/oxU/NvFvMtMaA66WT3H0IyW8zmWGqI0HZ4mT7
         kGYhn9A8kjxPVcOt4fyJ8ic76oJS2aDlmBna2ePhZMlyLDdUTDrAcOuU8riIx/VgiuOy
         18lZHonGInGZ7bQkG3jfQu5LJ5eRRBaWj0PkydObB4KE1hR1FF2JysPPMDtbWvrD/vk3
         r0cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768595552; x=1769200352;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PpmlZ4hHWamCBSa4D0DoiFTzgcXHGWRBgeeQ73UEY7c=;
        b=i7/NDMAwcZ06L24mpuqH3JLV4wlt4QIFnbM1sOFXWos4glBw6J6PtPGqdXAGlt9oI6
         UpwTEWIXSokiYwsJ9B5dCrQ2GiQzq7iYW18k0XzMFhdM0MhoVq4aflDcm5xacuAdvLzg
         +e7RDxUBtgTxtjbemkK/u05lTqH45gv3GPmcaDuEdDelRf/9utGicanKSJfClqBu8R8B
         lKQ+84iIe4Ni5hKo0VRLqkuHtMpjdIMojJE/87COGAyBq18Im1WL6217iy/n9Lyg2Y3L
         mqL8m+BSDhVASMdr4PrDu/kVvd55BnUoLTuINDZfINybAGGVT6MbAlk7XeXLIonyTE4J
         uMlw==
X-Forwarded-Encrypted: i=1; AJvYcCV0bfw/VnPRJkz/ySiazpKQpSSy8IjMBrCdUZ2sUSpbXOk2oxzAhLDheeAKuG4BSAUR7DAGv1/bH0M4@vger.kernel.org
X-Gm-Message-State: AOJu0YwtXCHAR4Fn9Yip9TgvWB0PGSRAyqhWmVfk7p3morVu88iLiAqJ
	vgq2Ipxdx4QJRoW6HO+tlZ/P7NX5HcVds/rRmgY8EKLzKB8pAU6pm246Vb/rAi9xThM4S+NGWhX
	5Z17CZKRwzHeLB97EttMU02nS/2uGPpUOreeDbQ6Ddw==
X-Gm-Gg: AY/fxX69LWnteadERq/kS9LbNRw+g1bnuZDBFmZXkDbqwxUejBNpJrLN2Ka0AV8N8Mh
	7u4+2Gm2K/iyQhI4ZOOeNvNRW6uQOMNduXJd8LBMQTKNpopbCPPWFRoQBr6Kv3QVtzdk8pmNJGs
	5BZw9pvk12Z2RR0KixKGFQxyrVsqi5sB5APCm+FDDUFoWPoUfwPBmvdp7BuT2vrC2R0h+5Xde7W
	RMeYucSLWHCHh9exm0Uo//VDAQzxgkjO8vj8ISg/ogLasSzwYlPDewSz7L7U+bCMSil6szOKU8D
	uotTl7TGy7o9/JyK788TpnLgO1CJ1RjTp29xI5wErgZmTqawUz+u6Cy4+sUP
X-Received: by 2002:a05:690e:4008:b0:644:4f94:c534 with SMTP id
 956f58d0204a3-649177115d0mr2857181d50.53.1768595552016; Fri, 16 Jan 2026
 12:32:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-3-7356e671f28b@oss.tenstorrent.com>
 <aWmc73irBAM8DZwF@redhat.com> <20260116-frisky-heavenly-pig-953fa4@quoll>
In-Reply-To: <20260116-frisky-heavenly-pig-953fa4@quoll>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 16 Jan 2026 14:32:21 -0600
X-Gm-Features: AZwV_QjleAtHG0gb6HDBCsnDqxotEfpJ-YdV_J7Ve07OakGedKmM_eqvYI7Qzqg
Message-ID: <CAEev2e_4RfHChkyvj=X8XFXC8-Tk_=SLJsMCR1M+v6sC+urxsQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] clk: tenstorrent: Add Atlantis clock controller driver
To: Krzysztof Kozlowski <krzk@kernel.org>, Brian Masney <bmasney@redhat.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley <jms@oss.tenstorrent.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, joel@jms.id.au, fustini@kernel.org, mpe@kernel.org, 
	mpe@oss.tenstorrent.com, npiggin@oss.tenstorrent.com, agross@kernel.org, 
	agross@oss.tenstorrent.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Brian and Krzysztof,

On Fri, Jan 16, 2026 at 3:00=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Thu, Jan 15, 2026 at 09:05:35PM -0500, Brian Masney wrote:
> >
> > Are these abstractions really needed? Why not just call spin_lock/unloc=
k
> > directly?
>
> They are actually harmful - make code less readable and introduce very
> poor (lose) API accepting whatever pointer... This is exactly code which
> should notbe here.

Some of the clocks use a regmap for register accesses, while the
others use the devm_clk_hw_register_xxx functions which require a
pointer to the control register and a lock. My above implementation
sets the regmap's lock and ensures that the same lock is used across
both types of clocks.

I tried setting the regmap_lock/unlock functions to
spin_lock/spin_unlock like you suggested Brian, but that throws a
compile time error

error: initialization of 'void (*)(void *)' from incompatible pointer
type 'void (*)(spinlock_t *)' {aka 'void (*)(struct spinlock *)'}
[-Wincompatible-pointer-types]

This pattern is used by other drivers when they want to override the
regmap's lock [1] [2] [3]. Should I be doing this in a different
manner? Please let me know.

[1] https://elixir.bootlin.com/linux/v6.18.5/source/drivers/soc/sunxi/sunxi=
_sram.c#L338
[2] https://elixir.bootlin.com/linux/v6.18.5/source/drivers/mfd/atc260x-cor=
e.c#L47
[3] https://elixir.bootlin.com/linux/v6.18.5/source/drivers/net/ethernet/mi=
crochip/encx24j600-regmap.c#L46

