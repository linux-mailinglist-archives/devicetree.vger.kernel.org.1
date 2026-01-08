Return-Path: <devicetree+bounces-252956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A1591D056A6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:14:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5BCF731071C6
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C39D62EAB72;
	Thu,  8 Jan 2026 17:37:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65A382BE7BA
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893875; cv=none; b=Ka1aUGxLCBsF9hUK1Nik1cKohfOFTqzRy9sawEQ5o7cOB9VrrpzH0nPCpasa9F0gV6CzXTs00CmfwaYQqY7CY/OLSCERT+l7mbY7S9g7V9lIK5tFehWkPaB8IGOjIZFQK7fox3ffWi3v9aNtt83SxZ9l9maWJ0PJ6cCGLZZhm5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893875; c=relaxed/simple;
	bh=9u4IBlqSOQ6l3LSQqWSmzbPOCsn6dNCaZX1o0NoAiOs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rpnzsjaOPVnqcO/hoESg64iSW6NNpBOD3ZAzwnYTB2nbB5+ot/PTkCLLcK+d1j7bm5xmS8YfnqO4WI2bq0rg/0adz+xEDKxMLTaL4SrD6AEClAUxucCufJgRmdF17OFfGRleNigegL47X7nlMlEsOcOoCSasXeQU3VitHrrwmto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-93f523bba52so1553647241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:37:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767893873; x=1768498673;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gg/FcISCTJfxkX3GTzaYaJZ+C1ltFuSP8SdueGldqwA=;
        b=Uf/7+g8Dgj3ZS9ssigGb34kVCm7pIc5+bYOxRcot7QS1eIsj2MxoYHfZeFSN2OC32I
         +TPn+AH1Qjvb+BM8eKFCOJv4pCOYzz57dWXZC1CKRRqFc+Kp50MPARBGaki7XrRpmr4C
         p1bhJlnRn7le4TwSD528qxPIpL/wRtpIX8Bkwi68x/mkiOKNoe5SMJFeTAvb/+mTtPMl
         pAkpDh/1Up01PNYVmXRtO6ARRPvnUeRWxCppQkp12u7YcQiQj/h48CuPdxXvAz/vJt6j
         QiuYdAG0mCf6GEeW2idF69LuRE2h5gA1f6O3zDZtKPPVuKVIlRt2IXA+zot6Q4wwLuz/
         s7IA==
X-Forwarded-Encrypted: i=1; AJvYcCUg3LSogtzd4zgSNDCVKYQqjcH5AMMp8DkAdpnvkvSAurDmdPymVgnh+PZPrIeY3UwvhXJAZvNR/zxR@vger.kernel.org
X-Gm-Message-State: AOJu0YzEWug0OTmbTMUNjhIvPqssEf7dtOnI9xk80UqUaiciGviSttn3
	dljw8M1aSu1TXs9UmzHpnXib2jfa8DQohJur4S9au1h9+ka+Bdpx4gd0fJ9CdO63
X-Gm-Gg: AY/fxX6YR8ZXFbWOvLgr5jJOD016jcvo1VDon1M2xPfR9feu/X1A6Wwfu4g0IE9vE8G
	9mNMqOSFd9Zz4b1Gm7MermJJqLdmenL0Zi7HTOGt1PeyWMVQm+F3RTKCZVSnDiQRBVrmDjqYzc2
	m1ij82KSh2iYU2q7LfIxXc2xWZHiadc4vn27V6hbQbn7HkDQ3pqjSSufmBND2U6o59TUodO3+Vt
	N2A3pkfAAMslejXBSvmx3LALkI7q2S6twBthyTcQCA2oZ/dxuSMy/E2m7lXzSMZ7qV9rgJTh/jd
	y0TXxbDFQ27hAzubP/8xngrbIphaxtsMFBVDpvlIqTFGHtB9HMTXyGp6iPcvzmLd6MsaRtkgl5p
	vzYzkqJcEZZEx241j5VdjjtlkuTkdusfMQNBKOdtFt98b/MXLmTXj3BOf5k6gLCJE2KbywCBaph
	DVHdMWJLhu55ZU8vJdctOK/UeMc77+baR6fbj9ZIaWZRXx/5ll
X-Google-Smtp-Source: AGHT+IGs7KRCN0QqcQPMnOQG2Vsjwz5q6JbcHWFXSPgWpqfvZppG0LFQvmZM45eni0ucHrAJ97yzPQ==
X-Received: by 2002:a05:6102:32d3:b0:5de:a2d2:8076 with SMTP id ada2fe7eead31-5ec752dbfd5mr4023841137.0.1767893873362;
        Thu, 08 Jan 2026 09:37:53 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ae554sm6470291241.2.2026.01.08.09.37.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:37:52 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id a1e0cc1a2514c-93f523bba52so1553631241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:37:52 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVjvLj4JAzudT+FB9qiGtQn0Jki1ndXumV49qu1kbBRkK3zWt10LdveL0l4beaI1EksU5/va7raIuQ6@vger.kernel.org
X-Received: by 2002:a05:6102:5706:b0:5df:abc1:e6b5 with SMTP id
 ada2fe7eead31-5ec7573f944mr3993999137.17.1767893871904; Thu, 08 Jan 2026
 09:37:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-7-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-7-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 18:37:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXM62yhXRnQZzyH_1piR9C8nVhPNszc41Z8Q2b7EygfTw@mail.gmail.com>
X-Gm-Features: AQt7F2psJvokOqphYS5ymHo0GIXhtH0aEmkgjppDzcUqWuJACKalFIWERnHzJ_U
Message-ID: <CAMuHMdXM62yhXRnQZzyH_1piR9C8nVhPNszc41Z8Q2b7EygfTw@mail.gmail.com>
Subject: Re: [PATCH v2 6/8] arm64: dts: renesas: r9a09g087: add GPIO IRQ support
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 5 Dec 2025 at 16:03, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/N2H (R9A09G087) SoC includes pins which can be routed via
> the ICU to generate interrupts.
>
> Add support for using the pin controller as an interrupt chip.
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

