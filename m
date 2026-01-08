Return-Path: <devicetree+bounces-252774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2474D036D0
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D5F93008C9D
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:41:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D08F487071;
	Thu,  8 Jan 2026 11:04:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C9F8487588
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 11:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767870258; cv=none; b=ArRI+9hxvXBnqZkV+aDJW4bzouHPrSktb5WRsxiNZw7+KU0wkXjsE942mkxz+28od4ysPYTNFxGcW051OamRWxxNlELDzOnttmBLNgP5lQxqqu6lkfGu5YjzlfcNWd4NPQIoxAmDqXyRvQ/a6fBdNwim00AGipLuFt7x5IrEz3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767870258; c=relaxed/simple;
	bh=WEbcSDKRoD7gEYd8A4zr9VrjAC7zseRyDUt9oh0Ypyc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L7OQQCp8utxTk+Orv2GC5K5AuUeCnsVKbr2h46hXbg/J7yFSkQGsvq5Djpe9dFxHXd6OELuHYtGeL8XRC1JwhPMdqktC5YCoM6yD/AkNqmZD5jCTlFKvptbOEdCGSb9Ca8puRfEnSqV+f+DlGJtqDtoZUmx0uVYuuN0naRyAjik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-560227999d2so1082886e0c.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 03:04:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767870248; x=1768475048;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LW4lJEvDKNBIOHHbQXCpFFteJtHtm1h9+jTivayDcjE=;
        b=gtgTDYWv5it2++ifkJO6VebiWMZGGONulOGkl2IzVH+xEF4KW7qgXX5J3pizIO1+GJ
         WfXjAkLTjFQzTPN55z63n/xbrxKKzBlO3G+s7M0hJRbnfK4qfDJARMFA2AYj5+pOi8PZ
         KtxlOjl/tR6KnBNNYWoXMl+b33CChosDF9OEMaY80qSw8kOMEmFKeGEsnQ/BkwKBsRu2
         BiSyWHYbwKWL288oVlh+9VGkgxIYafr4iYKjJKngBuQwLSpNcBQpIUTdFt8zk57i5xiZ
         Bjs1DNEokTmww6K7OKbAKGUAxa/gqwFxImtSZqR7KAiqS7Z3g973J9ELOUbgC8stFutt
         AWeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmFlUzb0whtUG6TvbJxFbkfjvImyIxk0AS1gON3pjZliodYGB7Nq0GfigtSb69zvAGwPbBzmeVI9b9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1YMfc4tfl/+RlonGpKsBuy2ZWQ1efKPGYbCyMsqqcXkdunOgS
	Nyk+d0dRAHDYIwXhu4Tv9BGDLmdDDvghqEojOoS/1RbXt63hysLF9M5k3bYVV7ja
X-Gm-Gg: AY/fxX5lQwvhD4xjI1ijnl24z+W9hKwxGPpQEQ7J3YJMVMYU/d2EQhpTxb0GEJP8SxN
	hs9sP9hJibtfMWougHhx02PX3L96yEd98BNXCHNS9uZoi6ED2ll7RJsrzpm6/HwcsRbA2uHhSxi
	zSSzenRo01N7Qik1ccLyqZOqSVvWnA0MMzvtmGqnZWK1tdMyMlVkCdonUf2YzrF3okGaX3p25rw
	3Fc0x643+LZiChHu8UxdCmyOzNVdnJSQocuigZpLq76Mz2RH/JIZq+QNBqlP0iPO7G/gyDxRmD3
	MJqL/NAJOG57JrIcx8M7ucvOc1MWxPWS4291Qw3M5YNRkNCCLPEcD7VO1fXKlIUhz2MlQcaCZZZ
	OiUCRPu6Vl9PPvahTR5FX8NVLTkMStkfcBwk5V3KSSNZctzSD7vMKa++FaqA/CTvMDFuM5pFBkj
	he8ojxNcPf0CULy4DJU0tGVC5sleg4Wi5iNI2/TY9vXXwaWI37
X-Google-Smtp-Source: AGHT+IHGqNJfoc6iVTngbsbzZt7f+B5yfnKaUIkN5paqAjDVrIDwcQNriYDI5n3XeAlLkfReunNOgQ==
X-Received: by 2002:a05:6122:421b:b0:559:b2cb:5dad with SMTP id 71dfb90a1353d-56347d54f4bmr2024982e0c.3.1767870247737;
        Thu, 08 Jan 2026 03:04:07 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a20a183sm5662253e0c.9.2026.01.08.03.04.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 03:04:07 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93f542917eeso972587241.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 03:04:06 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWgg0Deb9p8+nAtuhq7kRKAMi1MS1na+d9dS5YC3srEb0obSDXI/YecpXDxkIOCxVStFBtJ86uQhReU@vger.kernel.org
X-Received: by 2002:a05:6102:cc8:b0:5d3:fecb:e4e8 with SMTP id
 ada2fe7eead31-5ecb5ccec15mr1808296137.5.1767870246533; Thu, 08 Jan 2026
 03:04:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251224175204.3400062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251224175204.3400062-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251224175204.3400062-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 12:03:55 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUXmVJduzBCRSMLuA90TtAce+jMnYieLXVwkzpTp9vbvA@mail.gmail.com>
X-Gm-Features: AQt7F2rdcNlBmaOOLqeBvIEmgJRLxP2EPdkJ2jL-Gk3cLQUHkNjiaxvGH7nIx84
Message-ID: <CAMuHMdUXmVJduzBCRSMLuA90TtAce+jMnYieLXVwkzpTp9vbvA@mail.gmail.com>
Subject: Re: [PATCH 4/6] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Enable CANFD
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Dec 2025 at 18:52, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable CANFD channel 1, which is available on the CN35 connector.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

