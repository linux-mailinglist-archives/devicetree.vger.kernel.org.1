Return-Path: <devicetree+bounces-238244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0881CC59218
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 18:26:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1225B4F2409
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 17:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CED7235A148;
	Thu, 13 Nov 2025 16:54:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1657D359708
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 16:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763052867; cv=none; b=m35PQtUlL0YFOBsuqCgtdMjpJJJRwPvjZjaoRL3yYiPXUmfRXnoFcjoqRBhxrydSRvqz0oNJsIIRL5gNC+6mtYOy8C/uI9fXUrFCnH8gbwe4G+BkGmTG61ylkeOID3Z/mh4XZxJuKOzOurWw1bS2uTTntGFKwOQQ6uX5o0Wya3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763052867; c=relaxed/simple;
	bh=/w7U1lULN0Wt5cy2n+o8BXmaQCUvdOw6lpumB8VVy08=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q5EB4QZRCu9x6lWzkllhqOCpiDxlQXkKyEhqT3trfSv9j2xxWU/GVuvMe5ynv1oJcKbAd2c+kgHTijRocajgYv02IaSN0vWUAY5O9s36HqE6S1pps0I4MnFP/b8z55jT2JbfSUeYzKRHQYYUzc+GU5Pqhy2fX9+MOReJahreaFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5ddf9c25c2cso768981137.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:54:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763052865; x=1763657665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DiVTOOriFml3/StIKpZ5dwhW9Hno3lDZNqDkWyJuxDU=;
        b=jaM/CP6DrAHpp0yZHsxlWGvnwMdB2EWfiozz0SfkLiJd+aXs+3DjURkXqsJ2lKNgHh
         /qNu/XFeZEiPHTZva/QkSXOzgvxjiz0M+x5OSZJVfHeTOoHQE6OyKrn05rUyH0KLW+3e
         6ruk2dwlkse8hljIkHI3VD6FZa+7hn/niKVyUT+Hb3+I//8lLJZQ/TsIx0ZpaCknMAwB
         0U1P1FivGAWFkg0pyk1MXI3FFPMcTVIdcIoeVX8qzWjv7Q057FnTH2WfRBK+ue7lL8r/
         +OR5vde8VGhRyVrDG0FQwe5+3chr5GPRg8WbXZjtJ6SgN81xYC6bvqTg217nirSOGPZx
         0hbA==
X-Forwarded-Encrypted: i=1; AJvYcCV+DifmyKFsfzs7UTPmxMp/+o5ORr14WlpKKR5PlxUQ2so1GlV17SpOpqtKPOFsfKE2K/iPtcE/dcJ5@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0DHQ0vAcqhMQQ6Qhlv0gEEXfMY4SXRxahR9MSzxMak/clwLDz
	g7j1OGsJ5XHXfyhMQayDCzZP+P8VkcXXG6EnaErzcch7x04AyTPiT2y42+nRTV4CCoo=
X-Gm-Gg: ASbGnctT56mEOUVNQUH18za7C8PapKwfvdNZGMmnR9RKAeDXXd5mBC+4XAbiu0wJeqr
	1+/TQ+UGCt1oHfqFriKJ7WU2fLejk1REsY/1GRB9sviX/KVRZvGpY+1Qr91MUg9lt83WF/dvsTS
	umFI49ArePjUTRtdvplroPbPOYY3ee03SJWeClxG41gqeU/KX4P7cx3iMwtw00XR5mmCnxQ37fB
	RwBlgu+VSnPrTsrpao385PnoP7Ty4byjz4B9fzTxhYzLoOK0WCafnw+LDIj7X/dqQGP1usVEtVg
	CGokee1x4siRcIaykIcwGfu5+8XqVv6IG3uDHSoYnueoZBnsYSwsDfPkCQsRLgOqzBaQpGp9otp
	3Sbx2tj2D4yEYw/o7jyz/cQ9GRHyUwloloaVUMx+PqPCzctqAPV5pYxFCX829AVC1bmCjX1n2fY
	YCJPj4bnge6xfFIIzsNIVEWlzThzp5nF3CL/y5Rg==
X-Google-Smtp-Source: AGHT+IHSE66mO7hXSCw+MQP8ZjuFhEoSCoEmB13ujWe6yV5QFhl9/+JnE+uCif5dVQ0ptJ+RfySHqQ==
X-Received: by 2002:a05:6102:50a4:b0:5df:ae62:fc25 with SMTP id ada2fe7eead31-5dfc557aef4mr210365137.8.1763052864617;
        Thu, 13 Nov 2025 08:54:24 -0800 (PST)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb7075253sm770876137.3.2025.11.13.08.54.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Nov 2025 08:54:24 -0800 (PST)
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5dfae681ff8so642930137.1
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 08:54:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW6r+S7xk2kyZVgrdA8Hly9nLaIbbY4ka7Ulkx0IyLRLwTLLbCF9bEgqezXJVEQ5MzV01Ykp9RNdAH2@vger.kernel.org
X-Received: by 2002:a05:6102:4a91:b0:5db:f5d1:5799 with SMTP id
 ada2fe7eead31-5dfc5bcb984mr194258137.33.1763052863591; Thu, 13 Nov 2025
 08:54:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251101050034.738807-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251101050034.738807-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251101050034.738807-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 13 Nov 2025 17:54:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU6V-wQfiMPSE2k2Yi3dfWCj=Mp-3DYLwqHEWumYhxGSQ@mail.gmail.com>
X-Gm-Features: AWmQ_bkUtT4Rsq0h-4oIRE82Mo78vsdX3V5yvPLmFpsMCot8nqUOZIzab71zY8g
Message-ID: <CAMuHMdU6V-wQfiMPSE2k2Yi3dfWCj=Mp-3DYLwqHEWumYhxGSQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] clk: renesas: r9a09g057: Add USB3.0 clocks/resets
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Sat, 1 Nov 2025 at 06:01, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add USB3.0 clock and reset entries.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

