Return-Path: <devicetree+bounces-220730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4A1B99D01
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 14:23:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C84F219C7037
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 12:23:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ACB13019B8;
	Wed, 24 Sep 2025 12:22:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com [209.85.217.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A1F2DFA48
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 12:22:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758716550; cv=none; b=sRxzl/6Z7/5yuaDP+NZOg3bBqaMsUFuUxe6cHtmp3pm+GRwijt3e2zrojmO5jqU3QGRThz5VJh2c2LHm8AikPKJ06/F70elK8xxUUcFnzc6zC4ukUibHBR4nMHRi8JYPAXMVygZ8RDGKs35VvbxTioaNuzdm8e6XhKQ8FYQ2iR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758716550; c=relaxed/simple;
	bh=J+bHTCrNvT6JUuzJJC8KJ5RBgdPM1Xs3UX01bYjGbnE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IKlgWmGx06oyokilhQo3TtMqOU7qksCIZqZpNx6QMBCk41WsElugCzo2VyxawmYfFPIT9JnbV2iL2n7UkdqBGe5vIhKCAOPUH/6qtKHQvxl86efHIh+MAtHpskRvCaEmGXvySFplaEmRHtAG/nbIvALOvC4bRlcAz/bMU1kASp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5a2b3bb803bso1780140137.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:22:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758716547; x=1759321347;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sXklmRbRcjEr8jgTuTVa6QuOaAAvv4IbKTLeIHUSW68=;
        b=Q+8/ztI9b5hpoLemtMDvq7SDIo35zJ5vzWwKfcwYwWQIzunQz8I6LPiPle2ZGBnTOo
         FWPj9jRCHcyNr3tpnC6S5k3kuALtkpRCU41DXJEAW/LXlQsU/a/DxZZeS/Td/+3Llsvl
         049atunzoFqnwOexqi8NOW6TJ6r3sMwmwevRp7sKmxh2kil/+yNdSj3IDp4eHaRyJdfu
         MjRs0WcjTS3sTQlmAj5rpvAZrlp78u6UZYc0K26FPx1MGpYygRLblab1NVD61AXjDqHX
         LIvJLGh3tfuCq0FJb6CkF6RKznxkNOnXSqNiCoKU4LHhQed0rFGC+l2led5MSIs162Lt
         j/bg==
X-Forwarded-Encrypted: i=1; AJvYcCUg1qJPC+k43cBQQextg+SvwzP1DoFmn+Hv5WF/7p9/PkfiZy3tjH7ImeyTybaxulpBvOHPOc7Vgk3H@vger.kernel.org
X-Gm-Message-State: AOJu0YzPnfHdWJcHhofzN+GY3q+YHfDF3pajD6T6XdkPuff2xFhylQe3
	5bnCAKJoCqrcnGwTTKlKrrc0viD1SQtehgdbglkf675E0rp4nqcHxCSBDRAMPM6W
X-Gm-Gg: ASbGncu+aOA2ZA//eG9vCUfaGiyBzn/HD8w/ss02MAhdRODydxxqNh8mL+ToY3A99Aw
	X2shhfHskuug+xU1gVJu2fq7ARJD/89OiJShx3UPLiCPQhkdJYC70blvoJJw27Zujm1sfShAvHL
	son4AmesAigop3ra2jGUct+VbORT1+UsDpl80/UygDHMg/zscASbIP8IyBS/Z6yZv2l9vNbf7Sy
	lIAoFJuP8OKzkBPY6TYG7wQiUxDVSPrdSYEfmB2ZnmUXpQ9a1vR064dpoWfgeG3pp6DjOLtwR1n
	fNCYjQssI5fsHs2g6QGaEpDX7SN3JEG63cTwxhdkOGNYmC0f2kcgWCVVYO4Cp6m5stRkW8kMOAs
	cKPNi4ELbQa2RayHcPlziRs+y1uctrNEUaYENtlq599ht/eVTMakoZPsf2xF/t19k
X-Google-Smtp-Source: AGHT+IFMKnTjSdqpMtaJ+oHRQMsqGvSbw45LhouHSQLg0dNchwZSg/IMdctsZ4KxQ4m4Om8e0nP0jw==
X-Received: by 2002:a05:6102:689c:b0:521:d81:6dc2 with SMTP id ada2fe7eead31-5a579b22771mr2313530137.33.1758716547388;
        Wed, 24 Sep 2025 05:22:27 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8e3e58e81d8sm3002604241.4.2025.09.24.05.22.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 05:22:27 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-54a9482f832so3064596e0c.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 05:22:27 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVcI18Mzb/KwXbsdbm491+mN+lLF0n6RM2V3H2FcoCK4oAdl1mPRFxEKCOEHPSqGQbv657c0B3dLBut@vger.kernel.org
X-Received: by 2002:a05:6122:1d45:b0:54a:9433:2aa9 with SMTP id
 71dfb90a1353d-54bcb0d4fc2mr2193731e0c.2.1758716546950; Wed, 24 Sep 2025
 05:22:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250916150255.4231-1-biju.das.jz@bp.renesas.com> <20250916150255.4231-8-biju.das.jz@bp.renesas.com>
In-Reply-To: <20250916150255.4231-8-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 14:22:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX6+ckjLwZ0Bf1F-JcOUs1PU64vosv_bBkjcekE+b+VzA@mail.gmail.com>
X-Gm-Features: AS18NWA93dITivbXBnRhyAUt72W9JLfoCXO5SKCmeeTaB-m6uWGCJUFKL32jSiw
Message-ID: <CAMuHMdX6+ckjLwZ0Bf1F-JcOUs1PU64vosv_bBkjcekE+b+VzA@mail.gmail.com>
Subject: Re: [PATCH v3 7/9] arm64: dts: renesas: r9a09g047: Add USB3 PHY/Host nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 16 Sept 2025 at 17:03, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Add USB3 PHY/Host nodes to RZ/G3E ("R9A09G047") SoC DTSI.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

