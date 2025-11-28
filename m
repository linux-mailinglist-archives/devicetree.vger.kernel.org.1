Return-Path: <devicetree+bounces-243014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8738AC92731
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 66FCD4E4A11
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:22:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 741BB264A86;
	Fri, 28 Nov 2025 15:22:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD32D23AB95
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764343362; cv=none; b=LadFpD6QdEVq9szJCSS5mF31pglObdqNcFuGkS+juMk0FH2Er17GSKCcY2Yud+o+f/78RbsEgylfLhUbV3cJ5q0KmNznxiqzGKJrUd39a/zkIAtgoMEx2WyBdJqg2czCtutJ2rSHO7tVeqeFmYXt15a2my9FpJnaaL+/Z7Ya1cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764343362; c=relaxed/simple;
	bh=WySJ5tDr4GaYr5lUCdun1Iq88/ZJieVg0Ls3zRbLsgk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WEayIaclFYjyWWFaL6LPvgRo3AOsKqTLSCB9Ymjxp8C0YYeSdJYtl8Th0eKXWa+D5fu5Gi46iOw04lYmzUfBcTEu4G1dCTX9lvoeuR9FPMfNj473T7nc1tNzIObLEjb/RalKz4pKKUSUmtFKMrdfjswnVNFsaDjSN2VEaq7wpzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-55b104727c8so567426e0c.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:22:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764343359; x=1764948159;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vSU3eijvpTpAPGY7FhsdCeUuSldlsRzVmB+sdM/jI28=;
        b=fhPACKwc6Hxi0AiDaAvJytfNbhgYqsutoRbeijuVKjazQvcEKtj1bqKDtB3HD+waR7
         WHq61FlnFN9qa/1j72iJ5/TuBaElSDYewhdkIuzzX3dAWv10tQye6HQwaL0giDEFp28h
         ME1sOY+Nva9WWMUcMXZS/lJ2jjf+PFzC9X4SkgyZ+LGfv7tCXPWyHs/UT4HfgQFuGV1N
         fLzBPtQ9KfMQ9X+ATsgojXOaGykwPO2ULARRuG6nKEkKOFuqO1+gsHXDJEfYgB7ZwoX9
         h9mYC8CuJ4/aBMsspov+Gda66gQfEiFtrx/vQlUkR7+s3YbLJENyxIVJVgKvhWTbc+Yv
         A3lA==
X-Forwarded-Encrypted: i=1; AJvYcCXMmoa/KIS5Drzzk2Sm31NY++gjfeLiVgFGaylnsPB6mBYDuO/+rEAVrxfM6UtFBJ+wdoRtwnUHO033@vger.kernel.org
X-Gm-Message-State: AOJu0YyY1dP5zGMoQAMsa4pKI1iKmopDOCtZCp30hkM2tE83qa4yWW31
	vfP6esYEU/6aJriVChMOb530BByaRZbbQUOU2YUw7n9lO8SjPEBuCLJCh1xRAqFN
X-Gm-Gg: ASbGncvVP9EpxTJOdyFCy4cG3wOLmZ6fdmei5rfU3OBAiZoNIqFz/t8B2mo8S9hoqA0
	OIXbRb/X63aYfaMDRbELmwrxtvZbnzPTNLcwdUIaKJQEw9D9fp5BNaKzMRXKghDIsD2map2nEOh
	ARN7UCc9HyaAWWHcp4rLIxW6cEkgKiV9PmOYEeR4pcPJ62/1UBt6V6x4WYfhWDlRy0bxm4+YVDn
	bgZ4p/n2LQa8PzK2O0//yINc1LTTxeUUgnjCMzTh/EyjKkF6HDXaJA1HkVH3Hjh4Hjrq163YTGH
	GqqEx1eOLCgrxu9ufPaDCdJMeKketIXUPeM6D7MKac+zz1pa8tEYI76NEtILHrH7wB0o5bU3v+G
	IjhPSWDgiljnKKPlk9Id38ZH6dk5Hbufg31Jv9587K0aazHJHncOcNAx5sR8WEVw4fjFFUebTue
	C2H7Oj0qw+DiTNgSIFRkpTgzGn8gu29Qn97+ck25S+j767vfzTOpgrBR4YHEI=
X-Google-Smtp-Source: AGHT+IHgMNhXlhcEatGqBuCcVl0YNn986b0cv7a6qwfUSjT2s6bPCBI8ZSNvvSq9OQo/XsY1cqIKHg==
X-Received: by 2002:a05:6122:4314:b0:54c:3fe6:627b with SMTP id 71dfb90a1353d-55cd764efd4mr5694628e0c.3.1764343358426;
        Fri, 28 Nov 2025 07:22:38 -0800 (PST)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com. [209.85.222.47])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55cf518c3efsm2005824e0c.22.2025.11.28.07.22.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 07:22:36 -0800 (PST)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-9351ed45fb8so488512241.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:22:34 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX8tWhNfN2yfsk0rz72/bpfeDh4dkrXYYEgNMM1TjCpuaXGEKCsmqbAI1Gh06JnZGtVBfMy2aZ8D2O4@vger.kernel.org
X-Received: by 2002:a05:6102:3e96:b0:5df:b3ed:2c8b with SMTP id
 ada2fe7eead31-5e22442a01cmr5399952137.38.1764343353749; Fri, 28 Nov 2025
 07:22:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119161434.595677-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251119161434.595677-13-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251119161434.595677-13-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 16:22:22 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVt54J8n52QhLGC+k2FcVV=Eg57YCSgwb2imzTFkVkYQA@mail.gmail.com>
X-Gm-Features: AWmQ_bmvHPlzOAiPwp3vhsRbnO5GK1W4yQEIPYWe8DSxgLcQBpsrkHr2BizGasY
Message-ID: <CAMuHMdVt54J8n52QhLGC+k2FcVV=Eg57YCSgwb2imzTFkVkYQA@mail.gmail.com>
Subject: Re: [PATCH v4 12/13] arm64: dts: renesas: r9a09g077: Add SPIs support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Fabrizio Castro <fabrizio.castro.jz@renesas.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Nov 2025 at 17:16, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Add support for the four SPI peripherals on the Renesas RZ/T2H Soc.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

