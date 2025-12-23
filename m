Return-Path: <devicetree+bounces-249078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B6ECD902D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:04:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F2D193014D57
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 11:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A068340263;
	Tue, 23 Dec 2025 11:04:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9B6230EF72
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 11:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766487867; cv=none; b=dhn5x6nDREzaEqw6+k0kGV8UwmXdh62LH74sv3aHjvnbTGDWPTe3AhJLPhpvdtFQEj0gCpW23SzVKb4jp+T14AItO6g6n6xYAG74QtQVOFqmF/+Ufs96cz59/zpgBTSzuQqbQuYWgT1L6PxSmUBQXSdgB7Pi9DvsJw1EUndiloo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766487867; c=relaxed/simple;
	bh=8xavgCXA9B3gWMv3UMFR+bJZoKLzbEenRiYSk44yFnc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PZsXYUxw9pOFtP/YnBlMuv5MUpOoh17DhHKqo8qdjTm4qtngGvAI94ldz6+ENnp6i+qIVqGdT4S4e52V3H6cl9FalYwEkS0UtHv+9rgV+xr3Dt3pKa5Byjq2V/x7qkm0RIXjkq0YouBKXUpIlg/gfQOdb4bcrE0LQG3DMadye1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55b302b8369so3918233e0c.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:04:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766487865; x=1767092665;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wvNhE6zEOveVxdx0cMF9V1zD4Mnsw3m9dQoHOGZJBE=;
        b=Llwac/GsiSjb9o5Byz18FMeUgQs5YhHpfM2353nS+z4lIMjqgqqRpymyRiHxanLUf1
         vPB7maG4PYa8s77v846GwL9JGbwtXv7aaGHjy4oSBDqYtNUd1rs0ijz1TuTih0z8k6t8
         4xGvGWxUSFxIS2rMZNVEwfFI9O4C7+gUlONFs50IQsUtIa89llkh5SGWSqLmtju7pQmB
         8y0tl+MIgrDdevpNB81hbBc9A/mmjrvCmDjntsT+5e+UHoHlkQYqunSlJMIDBt/hWyKr
         p+765Bq7in16bvVbjDaO4INfc1q5jPGD7crMJrJ/FvrMaIe64etWVHDiVwu99N3fVy/y
         DZpA==
X-Forwarded-Encrypted: i=1; AJvYcCXt2jzC7tqIvG7tiLDTIzkf68haEKh8OnVEsaBcjoh+3GcxlVinCUsma9oSK6xoS6UJfYgrD0awIJD8@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6YBPfR205sUO38jcbsWoYkuQtsOy/FbBhsp1772aJXP3Gui4X
	qO1rW8lFVCmo1eoAsOd0sI3lyThp0bSB1yF1t+VTNy12I5RzAqVP+M5Zgte7B19s
X-Gm-Gg: AY/fxX7W6Ak3KQFig6l6KPLCHKscntNRKfbzmZWoSq812HfXbJ/SU0Iu51Oc8Stawtt
	ngI8gFxzRi0Q9Ky0tTGhzyALI7IBCMH8wrRuZ2iOP79d6EcN2unv/uTx9kXLdXHbpJgAoLJ4PRY
	FWm3OySNfWHOg9bUa7E7Y5EAkNNWncrEu2EMMDIY4pSf+4ACCZu3OGa1nmy9dqlOJQH36ABL90/
	JMNmKWzAezkQd3YJOsnHwDijoQGuwmrE++AINDW+5YKLOKRz62nera8MkiQnz3XBIixPcjmM8dG
	sAWcQ1ngCqjFPEwdHr9cMiP9UTt4mLMiEBURbj3qjud8qzHfc7cU0j5zWtx9SFvSgUlwSzRQpCn
	kmK7lphfqdfdscin95WaXSHIuR404dqIR9O7XjCTt88LesqJtog3nPrXcxXjTcHf8lm/Cvm0Nnf
	1b2Ttlv7yrybI7C9Bukyhm6TCKmHv5ETP4Pg3E1B1b1jzTDQqv
X-Google-Smtp-Source: AGHT+IF8GvqV4v2Z+UcTKyj75v/BhIrDNp67gdamuSJ9+jCh0Q/Aqh8rNWor2v6/VyeAv3djC+TLqw==
X-Received: by 2002:a05:6122:925:b0:55b:305b:51b4 with SMTP id 71dfb90a1353d-5615befdb8amr4634658e0c.17.1766487864628;
        Tue, 23 Dec 2025 03:04:24 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5615d06627bsm4270156e0c.8.2025.12.23.03.04.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 03:04:23 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dbdb139b5bso4118044137.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 03:04:23 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVpFjlSwV2nBPPssWOZ/a1Ds2F9KOiVXFgePHC9wVVbpnFVMQQG/PFFwq4IMXPo2yb9Nl0AGRN3KcqE@vger.kernel.org
X-Received: by 2002:a05:6102:5689:b0:5db:d07c:21a8 with SMTP id
 ada2fe7eead31-5eb1a7d5994mr5054676137.25.1766487863544; Tue, 23 Dec 2025
 03:04:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215031318.2219-4-wsa+renesas@sang-engineering.com> <20251215031318.2219-6-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251215031318.2219-6-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 23 Dec 2025 12:04:12 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVw-4ZxtQo0+yE=iPyrW8=bAPmWk1YYJwpuK=c+m-A4kA@mail.gmail.com>
X-Gm-Features: AQt7F2ptGEnVFsY7BDzUIm4jUxTIQE0Z4gYHuNiD1tGfkEW1wEuYp__bEkKpWsY
Message-ID: <CAMuHMdVw-4ZxtQo0+yE=iPyrW8=bAPmWk1YYJwpuK=c+m-A4kA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: v3h: mark SWDT as reserved
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 15 Dec 2025 at 04:14, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> This watchdog can't be used with Linux because the firmware needs it on
> V3H boards. Sadly, it doesn't mark the node as reserved, so this is
> added manually here.
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

