Return-Path: <devicetree+bounces-235993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FAF1C3F045
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:47:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CEBDE4E9EED
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD5BC26529A;
	Fri,  7 Nov 2025 08:46:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4725124EF8C
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505211; cv=none; b=USs9oe55qN4MfyX9JSN5cWWIKfr/NQriP6TxrTceEzOgGKK8Q6zRSN1trX/I/vacyfuesJnDGlS/y/lTFcC4C73u8EC/w7G+qnCOHIB19KDQ03655+4ESVgsiCE3sJnWxKS02F6waD/qTXZC/4yCxu+0YuTV11/MED8VGU7uNCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505211; c=relaxed/simple;
	bh=+Po0YDozkgmLf/sDK4Y8DM/Qe04V4LbnESG5YNdAjxg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GBpcSo5TL5UNgDcyedLSC9HkxwIRXy6O1nIepAmoNa8HU4kmsGowvwk268u60V0eUYT2sCmVBoDYNaQtnhTXDW7r0oRK4J31OaML7qoZBRIKbnfEr3Oh7XuctDdGQpkHihNY+9l359KbUAPM/gEKqArlzzJ/dmrpDhUx19Snbts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5dbd150efe8so201300137.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:46:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505209; x=1763110009;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rMtkd2FvKVGnCA2BS10Veme/f3vf2jyvZt81k2mdhBU=;
        b=SzWjB9q7UqdBVRQ7TMWdPLkB1TzQC02u8HyvKLidpXz+0SLXSMaCAlM29dyuZ8OIXl
         0XpVICCoqt1DTWMHcPep5fj2yDDxkXe0CG6MoGf/W3eoaK43hGelBRmyGuQo/Bg2pt7G
         ZfIRbllUBR0JxYYC47ZcNOJ5HxmEEjU/i6tGzc3S9VgxHDdycU0jwNQfJqvzcGPd4Z4/
         AQxgZ5r0o7ldM1te5ZsjAbwFDQrdj/VeJ+mKOquT842dTf5ui5L+rAHd2p6+8tSeNYNc
         voY+04s/N2CpKlCzp0CgaapdbAGQXI58Pne78Qo47ILv0yScLR+ztMLDuaQeVTdE235d
         j58A==
X-Forwarded-Encrypted: i=1; AJvYcCUONggbxk3EelbQhaYx8Xye2yhj7Xb8PuR58bYt8y08voJyqsiUJXCp4H8noN+gDR+E6mmbSnICZKs0@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7EmUPYiAkhQ5/te13liP72n6Y/sdd+knUkKqXA7sueSL2WZgf
	1gS2TCaxfWqC7vrOFXq2oPH/7v+YQJt/WXdPAAk0TQZmODZ9ZJS/wimYcjiVvQJM4DQ=
X-Gm-Gg: ASbGncs5WAA0zzF7ccsNOMqjYxm1uA3kekQlOsfD07lablwEf5rEyrhcSB2mnMvinSE
	nwZldMPGJQeYE/+EM3xgj2e7tTs33z2RGTd2BLLSKmHq5jzg5ouw44erZ9pn0EIrvcbH03T2W/R
	TxDW3UipwrrDPzLHHnDoFbvaWUcGZK/aVyqNBw8ReIBiCnpDGF3dxhastNgi+E7UpyyLRAYAykI
	h5WWvHz+k6NBRF99doEJo277kIEO0YfX6O4asAKqm9X26lBFpBUB3smhATj4myDcGi45wzcMyD6
	se1Tp2O4E78ISLcpyuOiJxFMYcYaoxzVQxsr8709VWC/qSv2FLw4cq1FpXgggd/7A54d/4ABRhP
	iGywIQ6YXYVt4ms28gl6fNUkF0wbibWlP1abvHp7WllS/w0GvE5ZAGjoGNCmJNwqpVOV1WaXvjo
	M7zt8N04z3fKSGavibdxFbPhIekMmlPIGR9iob3A==
X-Google-Smtp-Source: AGHT+IEXW7hT2GEMSCb1J1Fv6dJee/qoSiHuHIqKoB6YwuCPFgpKfT3YPPz9f56b8kz5zyvNHe3X6w==
X-Received: by 2002:a05:6102:4186:b0:5db:f615:1819 with SMTP id ada2fe7eead31-5ddb20e62dfmr785588137.3.1762505208840;
        Fri, 07 Nov 2025 00:46:48 -0800 (PST)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com. [209.85.217.41])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dda20aa71asm2114692137.15.2025.11.07.00.46.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:46:47 -0800 (PST)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-5dd9bfba5bbso164776137.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:46:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWH6FiOc4AZ6MXBDlO2fm1sNImeJf/pbGdimaAv/Wug1ISyuhxp5sQ0Mo4GiDZ11CtOQULWhTEwvrTw@vger.kernel.org
X-Received: by 2002:a05:6102:f0a:b0:5d7:c6c1:8510 with SMTP id
 ada2fe7eead31-5ddb225654fmr655685137.27.1762505207057; Fri, 07 Nov 2025
 00:46:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106211604.2766465-1-niklas.soderlund+renesas@ragnatech.se> <20251106211604.2766465-4-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251106211604.2766465-4-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Nov 2025 09:46:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUSdXy-Xw5+mG7YAGWQAqx-kSELkKVeiscj0H9pV8a3qw@mail.gmail.com>
X-Gm-Features: AWmQ_bn0v8yL5BXNbSnZRFWTp7_mCQfJIdZYA3WvNK0EfH1127ZUHgsG4Dr3bzk
Message-ID: <CAMuHMdUSdXy-Xw5+mG7YAGWQAqx-kSELkKVeiscj0H9pV8a3qw@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] clk: renesas: r8a779a0: Add ZG Core clock
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Nov 2025 at 22:16, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Describe the ZG Core clock needed to operate the PowerVR GPU.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>
> ---
> * Changes since v1
> - Change sort order of new entry in enum clk_ids.
> - Rework the clock to use CLK_TYPE_GEN4_Z.
> - Split addition of clock id to r8a779a0-cpg-mssr.h into separate patch.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-clk for v6.19.

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

