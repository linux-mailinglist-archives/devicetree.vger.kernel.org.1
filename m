Return-Path: <devicetree+bounces-256269-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A83C9D388D5
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:47:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4E5E930299C6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:34:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0FA2EDD57;
	Fri, 16 Jan 2026 21:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="VlCbJixH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f41.google.com (mail-yx1-f41.google.com [74.125.224.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 766E62248AF
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768599264; cv=none; b=YPYkDdBR937cHx+o9dha7Km0ApgKLFayinDQf6RcguulwtQQE4jQzZ0sPRyNQFLXknycNsaYAQT8HedbjJCLeAqWdoh393fA0E2eGaETEoBcW5fCskqyeCQIQfxQlhKd263lSSL6dQ0Fww+IJTIfGOHJO36/d+mY4OneW8LJ2XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768599264; c=relaxed/simple;
	bh=YluS4VvGiisnpPBIbnWwZ0yy7fsXjBMmbe0uAp7E52Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sAVrG5aHN4yMijeJJsRhzY9fIFjaH++vUVAuQevvnKhWOst41vbovvMyaKH11tmnuvoYH9qVZzX4MDRJeenY7gQ1h8LsHE15SQCTh0hu18ql0cVKE1ERdLPHW3s7M0EQbQUyGErEnDER1rFi6x6Q7khI/GZaTZGKR/ohZXfiyLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=VlCbJixH; arc=none smtp.client-ip=74.125.224.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=oss.tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-6455a60c12bso2222031d50.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:34:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1768599261; x=1769204061; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YluS4VvGiisnpPBIbnWwZ0yy7fsXjBMmbe0uAp7E52Q=;
        b=VlCbJixHtEZfAFltUKGRBKQMYHMiZqamHprujnqpMMMzAYQRqn2951IdIlb2f8NjXe
         jrCyMZOiqMHejn6UCXvxw+dvtHBhEKC3UVEGp8SXa4ydpxdDp8SRc7ST9FHWxgHPGA80
         lY4hAexbjlksvb3yCyp1KBlfJrZZI8pEOc2cPoa3vqdmGuOw9/CWCzj8o6qqneEZNz9W
         H9cxvLvMbHCHfUfrhl9F63FmRs0JuuR6bTtQxGpeWvhx0ZD5ZkL3mmdInCXOWMlhk37D
         IbiuSDdwDzp9FQ+6CRGV1aPPLBihZoaJfXlJ1su4x1acPXbz6uWLoGt0YDusfVRXxaDO
         wNXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768599261; x=1769204061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YluS4VvGiisnpPBIbnWwZ0yy7fsXjBMmbe0uAp7E52Q=;
        b=Iw47aAqzhv2MB2pFT5ioMBDrP8y8vw7Rd3L3zUM2JlMzlriPcAdun2NbKx2bQBtTnk
         4UkgeDZARpXG/iU9873JnusQk9edC/FUgvd/ckE9eW5UYQ4YTezwDyXsGS2PaEAchNVs
         azRY1nLLRRPpD4fUftx8kH/DWHIoNUuhA7jaFwXBw2L/THLsnlOaHnq1sRZFq6AcTNUc
         l1b3V8Cf89Yq4nKNtyPD0e1IlSFiSMW+SDDooJBMCogw/2J1wuaQ6tg608uVO1ES5ZE/
         NF7Mv63XH+oFTQlgtJqIvcBoC2s9W3nYSUVI8PzgRBUKiprutSFAbs9cLWgt2OuQQhmc
         ZH0A==
X-Forwarded-Encrypted: i=1; AJvYcCVwD+K9eIjoGbm2X1tOeEFrD9QdQhfmFjvDD8Y3wifcA1bssLiDC3jqsh0YMslDH0kGMFNjfVpInWiG@vger.kernel.org
X-Gm-Message-State: AOJu0YwSsVsGDpQfRryOWIYPnZH7OXKDdDfKtDWwlxDWTlocjIhpcHrR
	uHZGTXH/haeZH5oI6+Qk7EaSFouNXRT7f8tgKmfk2e9qc9vhoSM1j9b7AVhUWEVcm6qX5nSuTeD
	sPJ8w1uAnBRyjRIVlW8zzV/6zKqeGDDikQIXR+v67vA==
X-Gm-Gg: AY/fxX7KttMOEa88mrikEOy4QXQ9ES6yguIHc4zh/Djbf7rJXpZ2koqMhdr50GJybzg
	95AI1XoM7veUjvGRQMTBf/BfNz+FMgvvZIqYLnEjn6dCk4/aUiQCm7GYzWLE0XNnqTZvg8/4F+i
	xjeaOJ7yICran51ceF/+c/5NVk0SM95dmyiG0qaDycXTgT1iLZqhoxXQQqF/fh1qkNMko41zCyN
	n4Au7RKwIUgGqvvGyf47P6i317qQnMKyWieNdSK2Z0eLLs+POygQl4FzoQpyZnAfrDZj+v1tQH6
	6PY7BZzyhkadmMvfX8VHe0lPASJLhal6mqvnpsz7X96QQLnexw8fHXN5Ua0W
X-Received: by 2002:a05:690e:4087:b0:640:c9c1:a347 with SMTP id
 956f58d0204a3-649176f1f15mr3163766d50.7.1768599261541; Fri, 16 Jan 2026
 13:34:21 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260115-atlantis-clocks-v1-0-7356e671f28b@oss.tenstorrent.com>
 <20260115-atlantis-clocks-v1-2-7356e671f28b@oss.tenstorrent.com> <20260116-debonair-tangible-reindeer-debcee@quoll>
In-Reply-To: <20260116-debonair-tangible-reindeer-debcee@quoll>
From: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Date: Fri, 16 Jan 2026 15:34:10 -0600
X-Gm-Features: AZwV_QgvIVsYMJGT1-ENcxm0LkH6MNSbRl3fGJNIA3UmwlJBoY9B1QGuQ1fIBc0
Message-ID: <CAEev2e-iAN+br0wa8dXSyjTgh=vNCyqwxo42EaksCjXOdzeFWw@mail.gmail.com>
Subject: Re: [PATCH 2/8] soc: tenstorrent: Add header with Atlantis syscon
 register offsets
To: Krzysztof Kozlowski <krzk@kernel.org>
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

Hi Krzysztof,

On Fri, Jan 16, 2026 at 3:06=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
>
> There is no user of this. Split your work in logical patches. Adding
> unused header is not a meaningful logical split because it is unused.

Understood

>
> Completely unreadable: missing any sort of reasonable indent between
> values.

I had formatted these with clang-format, but it doesn't look good. I
can make it a bit better.

>
> Why do you need to doicument register values and provide them to all
> kernel drivers?

(Including the subsequent commits), these registers documented in this
file are shared across the clock and reset controller, so they're
added here (soc/tenstorrent).

