Return-Path: <devicetree+bounces-222458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 37808BA94C6
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 15:16:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B16974E046D
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:16:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E937426B77B;
	Mon, 29 Sep 2025 13:15:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A43B2AEF5
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 13:15:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759151757; cv=none; b=cn6pVhq6YIEN4pqR35W7/STS3NSPK1B+cC2gatWYsa3pJvVc+JCsycvlp9XawnQmgSxqyfrFemkyK96Y+wGYKdylsYr3a1PiC1bzaCymXKq++ayMrO7Q1SIV/quPgNoYK1yP1TnIY6qrAym1ERsN+7KiAmOS/3e6ypEt+OCcCks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759151757; c=relaxed/simple;
	bh=/CeoiIO4oEpN9VjHP8HfKiYF99Pkq0Nca8WusPYehew=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Cg5wdgzhX5qbLLyEbCHzpShU9ZvxstbhA4UDaDrheVAg7hiFwTWpBu7CtRhNlBRpTNc0HRTWsKl2hYNiVV/yh49br0OEoki/SJTV1UVVRd3YRiyGV0Gr55v12Gu2US838b+g5RFjmgcJw/SGZoUg0+cR07tgwb9g8pkOYQRE10I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-59f64abbb61so1961153137.3
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:15:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759151755; x=1759756555;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WGWKfU0acW/iaFNqPdL/2iourou2d7uCdc802/WdX5U=;
        b=IyEhxxCuAA30En/Tr9tLN49BBoJCNCUKu0nU1alC4OdNUpn9hiruYMJfj3ZWZ6Cg9R
         dRJNuQXeCMfDh8dLf5qfr0HtRqC8kuzbyQcvHMB5P+PE9gBO0hAK/ekIKzhH2/sHYx3X
         3FBxAjd9iW5O2GYLfkwDIA4A0Vy55Q1rslobRiOeuRaACGg5a+72dqFKxg8pATPDjMD8
         qW8FkFd4UiExvDtU4CiNGumyZHhNVO/wlxHjm7O0SQ2W8bL4OMXwa0mt64Af2BPhqT/X
         NxpnTZup1lzrQ+ShB/DY7vTqpxa7QMYDmdR+/Ko7XS7NI3YcO8ufDvfBGYHmuS7x+qsn
         UAig==
X-Forwarded-Encrypted: i=1; AJvYcCUjdTXhPp8tbL+JiqosL+ihKHaWb1aydCVSYStQ9WoyXUlGI9wZ5zfqfvd2C+mwBnj5gjCo1HDk/2Xn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5Mv16aQh/vgmmvo2CWkoVmBLUvkNymYXRo7KcjfzflpWbv/D3
	CPohGGpcjozx5S4pAH0Z2pjGTGNL+GaGhP67ULFZDyCXa2TWKcd1izV1Ctvzklxh
X-Gm-Gg: ASbGncuYV/NaBDF2tEFoWqBZdn0El2Lg1lPhr7h01hYAsUoCb1GaDgtUdCDfB8ilYOo
	tTOutaktKEO5DWGbyGa5OJeShI2DnasbTR9gjiRtwk3nofiFctRyXckaHTlMCun6gn4ObyRhSdN
	vL6jPVfKLffZuFTP1yyjM5izu+4Qid1sBfgZtkXR2vW3m7LJPayKTKlI3TJysYpLs0ILkFd5YYb
	H46o+Ti4c+jQSUVk1p3oZll1FDVX/aWD++DzIbeU++2xuNrevDX1bl5C0W2JstJSJDojJDOM8OK
	+v3Hy+62147nJNyNYt66a5ZLQdBP9i6TP53Q7YGAqbE75R8A6WXCuDSwVxxDona2FZUUVHKHM+L
	IorQlcShbClSqhs62M+orWVQH66wU0pgq6nq/r0+DeCovWAkcIY05ulGDeUuJejjY4TKmIG6oaq
	I=
X-Google-Smtp-Source: AGHT+IEPTq6RdPi/jQrBQ9gsKX5Lu94QMTjODLsIzrC3zuZYF0umrWKmT4Jrut62FMRgAjTo1ABvqw==
X-Received: by 2002:a05:6102:e0a:b0:521:57e7:3b19 with SMTP id ada2fe7eead31-5acce753297mr6679317137.25.1759151755118;
        Mon, 29 Sep 2025 06:15:55 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ae389dcefcsm3328874137.10.2025.09.29.06.15.54
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 06:15:54 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-54a86cc950dso727697e0c.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 06:15:54 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXCsbKRCpCTr6zFeTw5meKx5TW0XPsotlT53Kw7zUum7L3OVBa4klx+a5mXSNOh5RP8doY/QO4xikza@vger.kernel.org
X-Received: by 2002:a05:6122:1826:b0:54c:45bf:f46a with SMTP id
 71dfb90a1353d-54c45bff790mr2160569e0c.5.1759151754565; Mon, 29 Sep 2025
 06:15:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com> <20250925093941.8800-18-wsa+renesas@sang-engineering.com>
In-Reply-To: <20250925093941.8800-18-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 15:15:43 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV1AESKsNuY6yS6aHvwCme-Mz9fw_BReGRLOp6nBcdotQ@mail.gmail.com>
X-Gm-Features: AS18NWCQHGbDn1LN3Qqq5MLqssx2CQw08lzXj0NFF_OVRAM_PLW_6O8B3mwMYPs
Message-ID: <CAMuHMdV1AESKsNuY6yS6aHvwCme-Mz9fw_BReGRLOp6nBcdotQ@mail.gmail.com>
Subject: Re: [PATCH 04/12] arm64: dts: renesas: r8a77965: add SWDT node
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 25 Sept 2025 at 11:40, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

My
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
on the RFC is still valid, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

