Return-Path: <devicetree+bounces-223876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A91CCBBE87C
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 17:47:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 693DA3BCFDB
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 15:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EBB02D63E5;
	Mon,  6 Oct 2025 15:47:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C53792727ED
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 15:47:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759765636; cv=none; b=euVT5KkBO8n8YoO4w6GwRfhpiBIklpnZsHrNcKGOika1OyypNAJBeSaYMyjCv+FsI03oAG4yq/vsW7ojuC7SwKG4cT0GyCiuYe8rzLv87lRr2U3j1yeBhcyneQm22qq3i3ATSlmqpdBCtw02ZOstmai2aWuLIex1izXHj6yYPRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759765636; c=relaxed/simple;
	bh=VXVFUxV6lOZVeHIaGD8b7dszxK+l1QNd9a0CBcsxlVc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A/iWcK6rtD77m7IUxegleZqGJPOF7Nt3WSRQmfzV3vkGpuiP7j/WAfYvqo2G/9NXFoy53bsRcCKTXvCDfnkNse7ZCeTTjzOxE6JcYNbaD7tqYUXgLL5vlCKySxOjEsp4eLOMj9joJa0TZkJABtAqy0uqK+02SGzJz8H9KcQdlD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-54a98bcdedeso901724e0c.0
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:47:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759765633; x=1760370433;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=baxwn0lz/mgVFFB21nG5BxqQzMuKCxMSfDK/zsQ1nbY=;
        b=S7E/7B8t9BjwveNrmYBiNrrfaxyNo73TM8Dqg50rYD+q5ktG6SvT3IpN1s9LB7N+GA
         Tx0vcqR2NNnb9g5GlcvL1CcZgGQymbyPCV6LDerkP/Dmq336vsDPIpUSpopybeyuP4tk
         000yEwnOdeh7yf/EfO8hmp7aTIWdPBSIPVJivzTxkFi9x3+/PbKvMy304ndFmScUNpxk
         olkl32MFYAVUvFoF65gO/1bl9obE3YRaCMjn1Bk2jqZoOJ4d6UlXwI4jiVHibAmkRNZ2
         MjblS2jDdAckeazQ4mvRYrmwEX/lAVycgSCv4NnyT7Qvco1VXXIHLOBD7kumzsM6G3Zq
         VHlg==
X-Forwarded-Encrypted: i=1; AJvYcCUc6Jv2LE3h/isV81u61OwWHacMEe5HQtOrDyxQuRZSdwartB2yo8S/u9dWlTyY61fJ3fanxIbTBEEC@vger.kernel.org
X-Gm-Message-State: AOJu0YwuD4/qaEZrWkJae5h26DBsBJiP31eUSpaaiZ/fBRzXSuIWXv9X
	bfMsZb3tg2B7tDsGQIHl5r+VJrsKLm501VRbXuiGQT4k0nD90uWbeU29BYiCrU6w
X-Gm-Gg: ASbGncv8PeOU+gmL5MREVBI7vvHG2RTZq9lBpXEyASPMZQ8yEQzoyowJpc+P9MgwJTk
	JHECrboq+PVPRFERhqs/hc8tcz2vxxbrYRh8gt1Uj9YfHOSPApQpXZEbRDdg4T+fo3bu7IoZ4tf
	et6PSPN3Yai2SAN/OV/rzigQfW8GKQcQsKFBSi/ETYQ54iVJPG1blQn6liKgpWGecmwq531l49x
	eCK7eFUq7CvXSIYYK2xJ1pujp1p6Nsx53tooiU6zE7LRWVZQkWXBqYzmOCEs7IsO8LiCckHDLmv
	6/LMEOBCPbTOqqGUfp3aho0ItS8NKzVLpyxF/uQ40MG5+RoiICGicJXI0F5M/mJyqfFluh1yLd6
	R8/xUlsD2Tw/GkPvVJcSnk3wLNh9x1Zm4PavChmYg8F/xf+NTQP8DglyEqQuBBLA+o8z7AEquZC
	wvBTIBz2e7lK+K6YG+GWM=
X-Google-Smtp-Source: AGHT+IGZ3HkzUMRYGeKsLbuCYlV8iWYvezGA31k2AKxr8A1XJ3geOkhcdEEF98tKScc9CXX61QVytQ==
X-Received: by 2002:a05:6122:1e09:b0:545:eb6c:c6bb with SMTP id 71dfb90a1353d-5524ea695aemr4215657e0c.12.1759765633352;
        Mon, 06 Oct 2025 08:47:13 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-92eb4d83c45sm2926857241.4.2025.10.06.08.47.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 08:47:12 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-8c0e2d1efd5so1749549241.3
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 08:47:12 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX1d7uxwMUe3Ns0aCv5pXvQAi5udk0zvqnUIbSIjq79KQhQADHou8FhENGcdtJlNoOzwYXD3JB997gp@vger.kernel.org
X-Received: by 2002:a05:6102:41a9:b0:59e:68dd:4167 with SMTP id
 ada2fe7eead31-5d41d028226mr4721054137.7.1759765631839; Mon, 06 Oct 2025
 08:47:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251003215318.39757-1-niklas.soderlund+renesas@ragnatech.se> <aONmeDgUPCn8rphM@shikoro>
In-Reply-To: <aONmeDgUPCn8rphM@shikoro>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 17:47:00 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXvn52Kh242mSdb+bFLowQ9jgyegRGh6ZZaY0z+Qm2faA@mail.gmail.com>
X-Gm-Features: AS18NWDKqcFvLxyfi7FxcJ-zF3zj1ASVGyV53_H6SUlUTrSHB21YlZyQvRY9HqQ
Message-ID: <CAMuHMdXvn52Kh242mSdb+bFLowQ9jgyegRGh6ZZaY0z+Qm2faA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: renesas: koelsch: Update ADV7180 binding
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Wolfram,

On Mon, 6 Oct 2025 at 08:49, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> On Fri, Oct 03, 2025 at 11:53:18PM +0200, Niklas S=C3=B6derlund wrote:
> > Use the more modern adi,adv7180cp compatible for the CVBS input found o=
n
> > R-Car Gen2 Koelsch boards. This aligns the bindings with the other Gen2
> > board with the same setup Gose.
> >
> > Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatec=
h.se>
>
> I think this could be added?
>
> Suggested-by: Geert Uytterhoeven <geert+renesas@glider.be>

I don't think I am the first one suggesting that ;-)

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

