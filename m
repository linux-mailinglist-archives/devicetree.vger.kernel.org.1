Return-Path: <devicetree+bounces-224771-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A5CBC7A95
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 09:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1064419E6FEF
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 07:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B749A25FA2C;
	Thu,  9 Oct 2025 07:20:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315B7222586
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 07:20:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759994404; cv=none; b=jJb4GrR0ZXEEhiN0lfZNX9NOwvbRCxrUC7B1CIHSmBLGXsPXeqN7An07PBUDHbKzoBizrRFShjMvUbwYN93GGndYsQJ2meTvxHUcs9K2zUJtvmYxMpF7asgmdSlE6v5wrksl7Sha28m+mVaN0DbysK7R9lLP3my//SwtA0NFM+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759994404; c=relaxed/simple;
	bh=pXo1Ih1CCf5gDF12vQJfgh+QQk2GshZgdDAJPzo1xkw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PbVnzgrt/z0Zb1ge/tIoJWufowDq0dtFKSC9rc8wNeD0KHuWbRXOcoIN0HlXLfb0AWyJVmY5JrrSOb++G547IMY2CGzMtfNunb5lP+oFQecp9UX/hNgK3wccA6fNnAJ2ywuNiueUK91jcHMCTx4iWJFPBCbhoSVkqpL3FgFnqqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-905b08b09f5so113446241.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 00:20:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759994402; x=1760599202;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fTd3A9N8Fr7NQsplF90FqqVbDNPwdHs5HoYAo5GAllk=;
        b=A5r39JXhPmPqOTWFXj+q0MHxVz6lfUox2yu7+P6wMWLfxXODYz3Rpn9LMddzri7QKW
         iHVCYZAe6UhICNy4eL7oyTHUPjyKaTBLbnyljh1GAAC/hW9Kj0D3wb7jjFRhaAnI74lH
         jdlWZPP0tiB9dAoTRXwB4ciH+oyAbaD2GZRHtoR3Jhqr6pkmTFFB3nYuungvjB+hlrU6
         X9GyvuhmyyLt/qf+DqFxc5p0takPndytSSK18xlvQzhsesP+WfnkTHBACfu0ahn/8NEH
         EZ/FAOCGSAxIl4qE+My9MXsZgGoVS6Tq2A1/fxw40br/geUirrGyA05nqnN89s3HwURX
         yJtA==
X-Forwarded-Encrypted: i=1; AJvYcCVndVd5rId+bBTzTfGh9ML/Leu+4Q6LwzIoUmQeZvoFIYaOyFAjFNBfI2gmd3zX1prSiQutrE6JI9zV@vger.kernel.org
X-Gm-Message-State: AOJu0Yylo/a/e26BtvrShTUVcU1HPX7AYyvphkMpCryymLvuNAulugPM
	Z+SB2t0P2YH62FhBzvYU6w4jPp4Mo32R9/KEBwlPOG2qKucCdguXu+9Aa+avqeE0
X-Gm-Gg: ASbGncsBwo0lhkw7nyOGzBCf1jHJ6Uw65UoSxuHV3v5COqK9LqUl5IWl1vDa1RkaAuE
	FYzboscosNhj86U8kUpao0Yh0JNzzDDPrRI8tiIwcWo+VTo6EYtbZKA5DUbsa6TMEkeoKIPZLLI
	/xmN3nnbbXu4Gvu2eJMP9uix5H97lEOcQO0FNgla/UBKJthcEIBNpaI++tx+smEDnle1fM+lz99
	Cp9QRa8ZJfiAjNprP7rbsCM2/cQzoK6+Jvuje5v3Iu3lZFQFbO7/VqidHcTt5eTZQJSpATutD23
	bhGLFg2Yr6Rw/RlzLFOu7Pl1TYkBhl1vW0DzIasrRn3Tpi5MGYaWueaNII6XG8uRy4g7h224AZ6
	Frfj3me8HBGVH2SFV8eNo3D/HctYL3TVAONqVDYeSNsFAXshG1j5nGTBR9jJpHmmywiA+60ZLVs
	2F/IckwKUPaBTN23p8ZuE=
X-Google-Smtp-Source: AGHT+IHPHZgvI6O5idfescFkC1rMaTUGBv3aeRrCL197Au+xYlEzUhhGZ4gJn6LVz9VaZWonorghlg==
X-Received: by 2002:a05:6102:c09:b0:55d:cfa5:9d60 with SMTP id ada2fe7eead31-5d5e227927bmr2764502137.12.1759994401899;
        Thu, 09 Oct 2025 00:20:01 -0700 (PDT)
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5d39fb8e2sm2158306137.16.2025.10.09.00.20.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 00:20:01 -0700 (PDT)
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-890190a3579so101523241.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 00:20:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXioB4mH0Jmz+Oq3DzR0+0GAK5OGteRvJJRqXgcpniAxUhHhnYmWE9vDOdFSC0JZbyVbS1V8uP8ct/e@vger.kernel.org
X-Received: by 2002:a05:6102:d93:b0:5a3:60ba:9e4f with SMTP id
 ada2fe7eead31-5d5e2270f9fmr2840499137.8.1759994401534; Thu, 09 Oct 2025
 00:20:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009071033.5378-2-wsa+renesas@sang-engineering.com>
In-Reply-To: <20251009071033.5378-2-wsa+renesas@sang-engineering.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Oct 2025 09:19:50 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXWowar7aD9+og1GXY-gaUuewSjnxqLH0KCFrdpeWvCZA@mail.gmail.com>
X-Gm-Features: AS18NWCO2IVX03kpbrCrBlZzTqUTmdMD219vjt8gLFEQ4TfPmPbOnCMyqQMpVDE
Message-ID: <CAMuHMdXWowar7aD9+og1GXY-gaUuewSjnxqLH0KCFrdpeWvCZA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: bus: renesas-bsc: allow additional properties
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-renesas-soc@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 Oct 2025 at 09:10, Wolfram Sang
<wsa+renesas@sang-engineering.com> wrote:
> Allow additional properties to enable devices attached to the bus.
> Fixes warnings like these:
>
> arch/arm/boot/dts/renesas/sh73a0-kzm9g.dtb: bus@fec10000 (renesas,bsc-sh73a0): Unevaluated properties are not allowed ('ethernet@10000000' was unexpected)
> arch/arm/boot/dts/renesas/r8a73a4-ape6evm.dtb: bus@fec10000 (renesas,bsc-r8a73a4): Unevaluated properties are not allowed ('ethernet@8000000', 'flash@0' were unexpected)
>
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
>
> Changes since v1:
> * don't restrict node names, the core already does it
> * drop A-F from unit address pattern

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

