Return-Path: <devicetree+bounces-241154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CB70C7A56D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 15:58:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id E4D2D2401B
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 14:58:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 393942C11D3;
	Fri, 21 Nov 2025 14:58:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8A42BEFFE
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 14:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763737084; cv=none; b=iNIH6ujCZ8uASyl5+U2WLLk3m0otStGS2ILWxvaV1s9B3EZcim7Ll1/U33AHw4nTN/YCMEOLfOrLxqr+2MJTxP42T0VCGHxoKtBJzu4r9RnB7hw5+jfyBjBImjRnFwIl2LcOQR7QSXyuLls+Ywgvrcudt70GRXD15UoNnCAX2Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763737084; c=relaxed/simple;
	bh=z9Bsa1f1sbWqN7C4msF/pWLE5blDrixbOnRk9RzJyf0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E7ur993YSDtrtq/Z0PgnjN42+0P8qfu/o++yC3PQQIs9haw7BK72pv+WKCoe7t29GSZPeuqr0cgNnLg+eqCNhB95f+bSIt+6fHGdWHowNg+AqabcsAG92RIqbP022q+VlfkrWJjeKS8vgCh30QfYbgEGJMYw+ydLB0BMfa3j9EI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f47.google.com with SMTP id ada2fe7eead31-5dbd1421182so1752511137.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:58:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763737081; x=1764341881;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zfkyv/tryLawD4Q8sssLn/BjejOMHRpCzq6qtJXB0XM=;
        b=HImTRnuwl/z6LSnSNuF6ynccAP00Cluld1BokE822K8TlY+XkdHmzv8/PFUVc4D7ww
         I7gRozG612L/NOHdjQRxFQ4e43deomjj3OTCQcY+Nay/b/oSkKTrz6o7MSlnhvh2aS0O
         aT77FG7h1XJEagYomr+DhDITy2b2p+g1IAlI7eOToPRKlYvvZOfOX+UKyzisxTrv2Xw2
         nNv7W11vl6AUIibL8qIP5EjU3fE7yQM+sLpyiubw4LNEVRdoXd8YXbDCRPjBAaRb6351
         QL0wncQ5fpqAXsaKMNjFmZzCU3qNcIrE2HSxEJy4WvVa93CL/2zW9XGZOsxKKYlUCLhl
         kZkA==
X-Forwarded-Encrypted: i=1; AJvYcCVlQzhbtRCV973oP3uetbPPE7utER0ZHbDc12jIqTtV6obAgoz92oYktC+QsJKY2Nx6FAvwxUoEfxZR@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/bRGSlU3rPgnqy9crDKdgGed7G+lL20p45vKbAQboiqNOsPtQ
	rD5ilajURk95iKBpYnY4KlOuK3Id9ncrecTh7jfYr6vtMzHnWkxA1yxhJ1oEWZOC
X-Gm-Gg: ASbGnct84edsVgOohvlo8Evfbl+FZYmrsMpZjVh/aULYV5xq70ZO8QO9AZAOJ5h3jLT
	Kun79NzVnWp7esIh8BD0R2A4qk5nYQ0JHEkiuXCPrYuyeacejwTMbEFq4+vbxWisGwv/YiVuQBU
	sZXLyZd8Hn0UcOmNysxVWX5eYSbyjlwNnqEXYBHjVHxf7I01IovORTGW6iRAxqi1exTUPv6jgAE
	zZaSnUzN9i9B+Kk46Ql8KQtWGErsarwakzRWXQfHmNUivEOo73mX92NWC6Q9JD1hZdiu00H1UOH
	2PSYa70rOsD3vXAEUaJeb+JP/o5YyFtW7gGn6zbH561ufs+yyf2XCo6zMtM7sb74wyUGwGiLeS5
	vq9pWHoR7xFh+CPyoEjnKX3MTtzBp4OhtsZk4J1WBgvYuaKXmdu4qA3CJEoxbCLGA7RINEYEGb/
	3NU4RKkR/omVcSXRGqS5nnm1nRgM5fXAfRzSKeBS0wf6fatd3s3+Ro
X-Google-Smtp-Source: AGHT+IFE9XRnar3nIrtXlN6QyJgFq8GaYEXPZZuGJeD40zy0tTD+YgF7bCgkznmwcpBz2E2cXy4xtw==
X-Received: by 2002:a05:6102:2d0c:b0:5dd:b0e6:c4cb with SMTP id ada2fe7eead31-5e1de166a16mr710434137.9.1763737081191;
        Fri, 21 Nov 2025 06:58:01 -0800 (PST)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com. [209.85.222.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e1bda01436sm2218435137.7.2025.11.21.06.58.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 06:58:00 -0800 (PST)
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-9372149216bso1299634241.3
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 06:58:00 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWg54oYVUMJsTmtGEqdyfBxqWRDSJ5zwT1j0ggF78RlwV+0Dnt/bdkp/UEJdYrNmpvUb6YxMqsYPAZy@vger.kernel.org
X-Received: by 2002:a05:6102:4411:b0:5db:d2b7:9511 with SMTP id
 ada2fe7eead31-5e1de48395dmr710558137.40.1763737080699; Fri, 21 Nov 2025
 06:58:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251114105201.107406-1-biju.das.jz@bp.renesas.com> <20251114105201.107406-5-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251114105201.107406-5-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 21 Nov 2025 15:57:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUUd6_rWDaxGTjJVJjyfup3rt3vzUTMz4=iBXv+w=7zwQ@mail.gmail.com>
X-Gm-Features: AWmQ_bnubWkdNicuBkriRW_L44RQUxMnm_IjfWKVeClWPt4dx3flq_ZzdcjFRkk
Message-ID: <CAMuHMdUUd6_rWDaxGTjJVJjyfup3rt3vzUTMz4=iBXv+w=7zwQ@mail.gmail.com>
Subject: Re: [PATCH v3 04/13] serial: rsci: Drop unused macro DCR
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 14 Nov 2025 at 11:52, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Drop unused macro DCR and its bit definition.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

But I am not a big fan of dropping register documentation.
It must be reverted when adding RS-485 support.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

