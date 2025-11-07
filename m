Return-Path: <devicetree+bounces-235990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 027AFC3F006
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 09:44:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B8B294E7E53
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 08:44:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71AB1311964;
	Fri,  7 Nov 2025 08:44:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E673631077A
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 08:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762505085; cv=none; b=heXXZOBhUVXbU1gZKjPJaoBwlk4z29s5jRHxJWSYSt13vdc20VY1yLupoXf4wCsaKT3hZhUBsyCCGkMhq/E0OmKsveydBHuJyrrDi2RhsWF3w6XRjsIsGI1ooFWRNFeWGdJ5aV+n8SBcNrnOzcrFMym5gnaMTAL4+Bc4JlYPaOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762505085; c=relaxed/simple;
	bh=N6xgWoHDs7XMDSylQ0aZJ9sOOduQO7UazwaRI4anKug=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WlI1+/qDWfylUlNYrO3DJ/nOM1tfPrgrCWc7CG+Nx0lA0TDAHlPzdmSeoBrdY+kJ8OqoBNtzvsmDKCFnivlhUB1rt6D0JMeINnkwfuIe5PI8N+Zf23FBwnN3bXHv9NgekwLOi7EifUbZC/7YYKrTQ/tbybx8v6UPHEHbLDH6KpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-559a849bfe6so135586e0c.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:44:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762505083; x=1763109883;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=67Ay+8Yya5LB9/YiJJ49ptEwAOu7ahTc/J+O60ROzS4=;
        b=g7WQdHnoYoIRUhN/AmbvsklJjYX2hhBcmAh7EiRJ3KHQCnllZjwiDinhqlOpkOOY3V
         jc/pfXAkNt2ImJGNuGKGvUCO6pRK52oArWoC2Aa63EkzK06iZrpKkvN2G6In/jr8ty8t
         WycA4dnkmLEvPNyXV9ds22YKF1ANj+nGHRoN45j+EBsFnL/5gQNARFof+x0/xf7Uda/+
         gdUomfR4kCid53KfbKzv0b1srhVLEvs/Iph5b//MpRO8vowkkXtA7pk9axY4hPRnmHl/
         rAMjvd+SOH4XPNq9P1yLINXymaURxlxJNbImvXg3zb8koTBacnIG/laCL38JJiIoUXOd
         dIjg==
X-Forwarded-Encrypted: i=1; AJvYcCUT3FL4K0ULeNUmlak1+vKDAMRhyCRe19RxmYjRlTQXrUGBcuyrfJLZTa45PD+NUA5XSoGAv1OLijge@vger.kernel.org
X-Gm-Message-State: AOJu0YxUHhEh3Lf5FBHLNUGrpYjOIwnD3tABI+K8joc4CNie1gyUSI60
	Tyt79o0XdGRGKOtuz6Br9OfL6LMV4TrWwgAlZdiopKkAvhbl0rZ+5FkXxn1+/oEqFJg=
X-Gm-Gg: ASbGncu4vb/qFq3avXVJcLXrvhXZex5D+NjoxGLdPGi7Jn+YXSrlUnli7k5I3OhoTgE
	kslo82ynHxO5NZ440ZGd5Ex/oZCv3NbZuKtYdQRD1pNzbpd2NDLWZlzMj8TytBkiw3PIAumhSPw
	4sXTfFU6vrih9SEcUQmJnlTeKTua4zAsx1bXU3FK0KxzyyCp1xxNLvggvHEZ7oGvrrvvyRa2Q6T
	7saklF/0LIOla/mocoAlzgSqE0Y+bAO3Yk8vBZ714EJst7bBUcazKv+UppPRSUxWB5EuDmj+7EW
	GZlZviASMPggL7rAUq2cnVdiAbJcVrMxYo1sZwwwx+4J6VSsWqv6y0X66iU+fh6kvufMnxAcwDW
	u6VUwwtvwsi9PtLttiF0rq9P4y/4ru9lE5fLAr+cwm5WyrCjBTME134UWdz65uO2hGQPhdIHQ01
	OAL7ax+/AProamEqAtSp8XUXiX9sAVw4ORBr01ZE4KI/MwaH/Ptj07
X-Google-Smtp-Source: AGHT+IGjWv/rIDp50KlJM3pIH+4ZFrYvAvcNBx89qq8q6adWGBlGkBCWczcqd3SvUVccd9iy2x6gXA==
X-Received: by 2002:a05:6122:2a12:b0:559:5dbe:fe12 with SMTP id 71dfb90a1353d-559a3c01342mr902143e0c.14.1762505082606;
        Fri, 07 Nov 2025 00:44:42 -0800 (PST)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55995863b6dsm2687567e0c.22.2025.11.07.00.44.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 00:44:41 -0800 (PST)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-559a849bfe6so135575e0c.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 00:44:41 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVu7njVXmFEApUpGIDM6uX3yr4FcfzcWYjfDgVc4EwXcTj0fCUB2d/4sNWTKKasKZdhN+ZMgzRHTfso@vger.kernel.org
X-Received: by 2002:a05:6122:200a:b0:54a:87d3:2f09 with SMTP id
 71dfb90a1353d-559a3a111a3mr827903e0c.2.1762505081472; Fri, 07 Nov 2025
 00:44:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251106211604.2766465-1-niklas.soderlund+renesas@ragnatech.se> <20251106211604.2766465-2-niklas.soderlund+renesas@ragnatech.se>
In-Reply-To: <20251106211604.2766465-2-niklas.soderlund+renesas@ragnatech.se>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 7 Nov 2025 09:44:30 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV4gFjba2jPEp65HwvvB3OH_jWkXhurTWFYCk6QiA1FJg@mail.gmail.com>
X-Gm-Features: AWmQ_blrrptFzMWpvu6Y-7pL5-tJ_1h0P3WXNduygzU8YG1UWYjXmC7OG5BpV9c
Message-ID: <CAMuHMdV4gFjba2jPEp65HwvvB3OH_jWkXhurTWFYCk6QiA1FJg@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] dt-bindings: clock: r8a779a0: Add ZG core clock
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 6 Nov 2025 at 22:16, Niklas S=C3=B6derlund
<niklas.soderlund+renesas@ragnatech.se> wrote:
> Add the core clock used by the GPU on the Renesas R-Car V3U
> (R8A779A0) SoC.
>
> Signed-off-by: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.=
se>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in a branch shared by clock driver and DTS source files.

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

