Return-Path: <devicetree+bounces-224520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 3963FBC4B89
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:12:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C1DCB34272F
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:12:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B07CD2F7AD0;
	Wed,  8 Oct 2025 12:12:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4F52F0C7E
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759925555; cv=none; b=Bas9zvkjOTbuKLTGEhK34zG2m+uMXswpsqEGEexSnQaicApkzIZYD3oT+uos28mpAMuoXUFRFP15ZO2s0qJghP6DzUHs9md0LlrcA9PV48ExW5rV19Jd3L0QpViQmdsVO+13hW3tPuoACsW8pbfN+Kx4M81BT4ubXzcB/ykPY34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759925555; c=relaxed/simple;
	bh=o1l3n2y5YwxEXg2rM4gAYMR7pahw4lA+e2lcwHc4J4A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J85XImzg5IvlmK39GxiUhzK2wc6jDTBx9rJbPy457a/OYQS/aeL3Y4A0se63HH+/yLn2WMKYtEWRj0s82iuiUX59ChgqHojmzlN52NaAfr58gryj9eE8NwBcgsya3B7pJf4B7PmVbL848fi10RkKVn5OLeyYt+K3AnrURKAK/tE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-5c72dce3201so3093248137.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:12:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759925553; x=1760530353;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Brp2nrWlwG3bN8c/hrIoL4Nm2qLdFlreoXWyVG7Wt10=;
        b=SFAuaVlpJw42ATo+EJXT7vqRTjdPfI1pwsMGpBOKWn4uHZeivw5D4Vkz90Cir4rJu3
         HlAfnVBMx0IS+5JsVKKtmGbK0ujIMCmWC+i+QMbDS/ZUF1ylJiKL66lNd2Mbw5CQ9uoS
         wy31ENzCF3UOjDDJtiKsW4MHlpGwLefMPoWYW8UMUXa97Rm8dtzZamfYh8fLLR2Mj6qZ
         NCOBvlahYbzzzsr/NfhoXhRhab8JaBV4CMAy4WOUJKRcKchH3pQiYkUJNATZtK5FpcIL
         GwzXxRRteXADlVAqLKRtaNmzJNpvRV3H93Utu9p5yMMGmb/unTL5v7eTmjuuw9T01WW0
         a6SA==
X-Forwarded-Encrypted: i=1; AJvYcCUIdPnydQHUK7D/6u8mS06Dpj81vai095JXEyClTWabnrpEWRbxMzsMw+P4cEQMj0RldWnh3gjint5e@vger.kernel.org
X-Gm-Message-State: AOJu0YwaSCr7j98RskaOrwsWr7CYwT7hhR/XnVgRdWF7nbZekQ+uCJOW
	kGKeOXT8QrDjngBeOHVSkoxveJY/lf0QGJvhQ4KGU2V6I50Y1jZuT4jJg1Ht7ond
X-Gm-Gg: ASbGnct2DcWKBQwi/fryTKqIV7sclvVgFXHqM/PVw2rvzFS9tcEwLESCy490Hi3EBcG
	8RsavOpVirJ6vYHTSq8CQEp/T8bbsEBkXDlNZBd4jheJtyB+hTahH+YvZavju9nBpE6qCJEU7el
	FTXmLXUPOeqUrqGpl+4l8GUUUyEWzYYAVN4C3ENzdnC0UPA+sDr/ARKy8xZlW2lA4NWGvoNjBaR
	0koa/LnChFY/SxTn7CQSENYFXKJDgXYGhzpOGi/z/OSXICJzeZNm0ZvBF3Wa/dvq6Yu0aGnJt+c
	Cva6OG0VJ0ZXhQdKTe57mrVzJopk3TRTQANwHjGO0cx8UFIZ1ONddeSLHU8xES39a/jWiKALvlS
	y/CQu5wjxTqQ7Eb2asKjSLuW1qZoSYfD54QKESAuiJoyHrRygo7k1h7UBwd23xb+SEU+nRF36Ek
	NdM9RDB4nR/GZwjlG5SPU=
X-Google-Smtp-Source: AGHT+IHT7kJZsmmAc6mGoLm2anvSyuqB9bmO7j0on6fp7WEvdHWolpqdvtPqKKHyK+J9qOyrh7PBlg==
X-Received: by 2002:a05:6102:c13:b0:4fc:f5a:490a with SMTP id ada2fe7eead31-5d5e234660dmr1077290137.20.1759925552725;
        Wed, 08 Oct 2025 05:12:32 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com. [209.85.222.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d3571cd4sm1594369137.0.2025.10.08.05.12.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:12:32 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id a1e0cc1a2514c-8e352f6c277so1396953241.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:12:31 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVkrWRIiyw8cxQ6/+Sr70glv5iS/eyKtQR5WU5SdZyxmDFAopKUJz2PSdRw/ASqRwZCKLt2Mi0tz2u+@vger.kernel.org
X-Received: by 2002:a05:6102:f08:b0:519:534a:6c22 with SMTP id
 ada2fe7eead31-5d5e23b4082mr1034500137.32.1759925551779; Wed, 08 Oct 2025
 05:12:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251007133657.390523-1-claudiu.beznea.uj@bp.renesas.com> <20251007133657.390523-7-claudiu.beznea.uj@bp.renesas.com>
In-Reply-To: <20251007133657.390523-7-claudiu.beznea.uj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Oct 2025 14:12:19 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWf=AfW40m0qJ3_P=Ni=OsO=KMqDY7USdvHEXmrHM+mzw@mail.gmail.com>
X-Gm-Features: AS18NWAtQie1NbudVP3BXMcF3ZQanxK6LGXJKC21rxZI487nMAs440k_Psy4Pfs
Message-ID: <CAMuHMdWf=AfW40m0qJ3_P=Ni=OsO=KMqDY7USdvHEXmrHM+mzw@mail.gmail.com>
Subject: Re: [PATCH v5 6/6] arm64: defconfig: Enable PCIe for the Renesas
 RZ/G3S SoC
To: Claudiu <claudiu.beznea@tuxon.dev>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org, 
	robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, p.zabel@pengutronix.de, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Tue, 7 Oct 2025 at 15:37, Claudiu <claudiu.beznea@tuxon.dev> wrote:
> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>
> Enable PCIe for the Renesas RZ/G3S SoC.
>
> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

