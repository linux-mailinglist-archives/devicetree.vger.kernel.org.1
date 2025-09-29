Return-Path: <devicetree+bounces-222461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD10BA94DF
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:18:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 48C5E3B7729
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:18:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3796030504B;
	Mon, 29 Sep 2025 13:18:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3BAC3009EC
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151902; cv=none; b=FNhapZz/MEet7kyCWQNdQlgsDCuYPJ01a/0ILB6YBh3ZNWHMvUoNv90Q7F9bE0IHmNW5FYY269Iy2JDhuoeSK18Lv80JNAbYEnk7TiYC5eatufBYBZAGO7wwYNbnVzMB4RZC6QYm3xFWaqDQp2RZfHMztNGyYltMYO9GnDajbpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151902; c=relaxed/simple;
	bh=wANisPC5z9cD4GP8SLP+vUm2YJjz+htvFrIhAJVRFN4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WJRrSJ7lTJys4YvufoQRemjJ2Eh1rC5zswn3DY+kF+NvVWGTic6HAonxNQBhKEOMB9nAy5L5J0hEXJglAJUWutJ2LsrcJ1p2SOxXnB5eNds/q9KV119b9nxraPtyCl/+/3J0AZqyiuXTe3p/rQepjOyjCy09NMUovRYlFiWwz2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-54bbf3329c1so3928328e0c.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:18:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151898; x=1759756698;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=id1UL4XMXXh5ORipw4ImulCQ1+I9qnWpIF3nvWEwJ6U=;
        b=W34GpajymrL9+Ozo6SJ9fBR0HPtL4r/Z7Nbzou9w58T+N8tn87TjRZUIIQqHRZJPsj
         m/yNxdIMOXlxwLP4AgXMqP5XLYbNd6oRivx5ZoSJeJ1PWZhfiSDtik07Bfzz4wtwhTH/
         sV6Xfof2tXeKQBDc9AVF+SYM2Togb8v4LtcIokVJUZd6Ou1aBRTj7jSynM81DKDm9gqd
         21hfC2lRe+5VTUPKTGCHKmlbOA0f9tceyM4nTVdOnOkgvyNPP0kb4yGcxEoAHvCJyI2O
         g74Ap7itA3F1aJfeFwefR9kNGcEuKR9J2u6jUz5TMWPuPDswGyR2D0+06pacjM9X8dpx
         zMZw==
X-Forwarded-Encrypted: i=1; AJvYcCX5h0TPPiZKyUa/YLmJbDMAefHbkgik+GSx3jcNWhSHIp9w/c/pJ8B3wgT4+o8kTAkD5WvDH4YBxt9i@vger.kernel.org
X-Gm-Message-State: AOJu0Yx92s1dFGkFeMypwMMd4LyebYirMiw2VORVUvG6Yt8QKknhDXDm
	5SRYqomWiepviEcaM2jcsz3hDCpdY11XHuF6byIfjm4yDo8w0+4YR8V/SUE01JpX
X-Gm-Gg: ASbGncucM2NHCIfyAAsCPkOnxB1RiZBUpDzeqaiAEPIKknr03pBUoae8VQqEyVtuf4j
	+iXdIE/NzO1W1/FTmfJnL36iw5DI1qAVkzZBabJqq2voIkMHCUKui4UPg6vKCI2VVz4YWDkfxhb
	oPp3BcOBRuCIdq0hu2h2ZWvI5cVr1vCKnNV/N4HgLTVJ9RRn64+5LVkdDv0q9ubjwkjCUy56dz1
	xktsuWVdNblYlc0fVrPas/Mt8Vd1iJkNXzPJX3qO4sJHlKRPH7g5o3NJzPpyxEvmeBlaP8E/Os3
	04msUEajBZ5b8tIxmAS/y9UO8F1w8nZgYds5zAb6kkfluVueuTg7zoabgxtV2cnxKDvfE+rmVEl
	Hwy+jjqO8pflnXm77FjrpBaEcE+/CEjS5hJtGv7l+xAbCTLXQ0M8NrZsXztUf
X-Google-Smtp-Source: AGHT+IFGZ9OZf76gU9qYjsdXJMSmkg2Ib8nG+CdtKLn3oOYW1YPyJUAa4TD2MHJdzSnSWvj+MRf5Uw==
X-Received: by 2002:a05:6122:490c:b0:54a:8deb:21a7 with SMTP id 71dfb90a1353d-54fc8c4a59emr271462e0c.4.1759151898212;
        Mon, 29 Sep 2025 06:18:18 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54bedc9f653sm2204120e0c.16.2025.09.29.06.18.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:18:17 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-923f46f6c59so947289241.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:18:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV+KKniu/79zMKkkFFEySfUm86skV/2Lh/jue/+2l4WBiz3ZluwHieE6LAe/CDeotFa3hwXNjJ/E9Zj@vger.kernel.org
X-Received: by 2002:a05:6102:610d:10b0:596:9fd8:9268 with SMTP id
 ada2fe7eead31-5ced07a8bf1mr228637137.8.1759151897233; Mon, 29 Sep 2025
 06:18:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-21-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-21-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:18:06 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUbskmHcEbK-58v8cfHEGGWOMOSy-8-BVt=zowXxjBOFQ@mail.gmail.com>
X-Gm-Features: AS18NWAeYXe-qJCXY-WWJofniNFU5mV94n6tUJXfY1Rn4bVb4Ip3DmBe1300-RE
Message-ID: <CAMuHMdUbskmHcEbK-58v8cfHEGGWOMOSy-8-BVt=zowXxjBOFQ@mail.gmail.com>
Subject: Re: [PATCH 07/12] arm64: dts: renesas: r8a77995: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

