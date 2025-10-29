Return-Path: <devicetree+bounces-232628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDC4C19871
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:58:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A8C5F4E79B5
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:52:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D341FF1B5;
	Wed, 29 Oct 2025 09:52:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE40330C378
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761731524; cv=none; b=ag6vSVqWqq8VSd6w2a08TNoyl4saeGB/00rKhIpodSs4rNTQ5ZzLiHWg/UAp9yjfN3C03zIl1ka0dr41PUEvpncIDY+0MO4SlfLVqRNkYjddR5i5/caqNmfNtKRuxPLF0nAx1wuz8Z3z5Gu8U2SOmvqd/t/4GC93Wiuv7V2YAz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761731524; c=relaxed/simple;
	bh=ul7h+XS6GRSBMYFmPhQ6YeIMEuayPqL/cWHKXtbASjE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wbp0tK+rwKOUvIk5+SDLNniwC+CqvobAr5N3iqTSm9sZ4htIYkK7n9UEaHlxNSWciX09F1r5ZtYXQOqfwPRIVIiL9QcHT/P6j7dfKcR+rgfr1lhlCw5kQSF1fLo5oUynWid1T0bTTeaCuzpNVRRernYPOZaqnpBfk2kgY1ZyJS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-8906eb94264so830175785a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:52:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761731521; x=1762336321;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FUXGCcljy1WS6CKdaLlHjT9lGZyhiLJv69Z5NYW430U=;
        b=qTMayip+W7gG2UUef8C8oWv3NzVL9QlM4V1fZynKAShc+dCYCTH9Y6qyUIqHFnJSt/
         k9nUCkemBb81fzp5n5CgEL5AXaJVz1mzrustCzZBYY5xTObehuXUOvUXHn+dHoVki167
         8gx0jgrpxbiMJrfgl5oJ+SzRSIYKDJEvntWug4SpA+884LH0A1e1/oZVt5G2Z4lJMZRf
         0+VR1sMpvPJ4Rc9SHIiniNIvaG/XodvMwZxTfuHsbXujE2f3ypgwxt8YpGMHo1sF/P33
         FVngw4oJE+830NSJmN9rLM42VYXdv9lYvwmUSNFU1WVEGTPQ2YDNnX4wP9lK+g5JYJsk
         uNzg==
X-Forwarded-Encrypted: i=1; AJvYcCVJ4jxphXm6rEuMeFuigTncXYhpe8u/29zKmPmGQLVc+gkP1QZTNLL+bAHkOw2uukCA0677i1P9lNjk@vger.kernel.org
X-Gm-Message-State: AOJu0YxhQyraE59HrXGTVXtg7WJNlWLB7jWEP1EjgDhMLO5VYngtZOUU
	CfgTLoLOK8E+VHGVOgxfilI9wfuei5VPZEoXiK6DhmoPGkJdUwHrHl0p5uu+Gwtg
X-Gm-Gg: ASbGncuKycPBEmafaIFxE/xYS9hOUj+Rb+vLXhVPasNlO39xcD4aDiDa+jCE0cOZRAt
	m0P86cOc0jtImQ829XiASkFlu/t5mrCipmZ+hn7XvCKyMVWal150ej1mHrPjoPiaqbqprd7vXz0
	SigJ4RYrxV/H772ecOBGZeI9gZ53QRtjZUgZhf2U/QOFIj/l8em1wkVaqbLHfPTbrZKGc01m8mH
	/j7MbYadVk8S9ZrPMyb/X15B5PpYgXwfJTo5+sc8UI4UFrj6B9+yicKUuxcusw23NHLQ2QDn2MO
	Lf0dx3+OJdLt0PIdxMKPC/2+v999U1fcReV58qmBda24oTCaDFJBrEBIwf3xpEKEc4uUBs3Jifu
	JO+pDf2f5z1eu7MRy9sEL7UwaK/bHuNzN9beT8m4s/prAElcaIyy1OW5xFugCf5PFRr0O85QIjn
	VUkcDRHl2GBVKAKPenNM+CSndDqPf3ofMNCAZk29NqYMO8x0R0s/T6
X-Google-Smtp-Source: AGHT+IGPg5Vg3mqp2/fkcOkO7aPU/jliTYfzJlPh91vB+o+SuA2F7QsRU0/ic/uXasgPEI4lGJY+Hw==
X-Received: by 2002:a05:620a:29d4:b0:8a4:e7f6:bf4a with SMTP id af79cd13be357-8a8e3d937e1mr283466885a.22.1761731521308;
        Wed, 29 Oct 2025 02:52:01 -0700 (PDT)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com. [209.85.222.177])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f247fc172sm1027329585a.15.2025.10.29.02.52.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:52:01 -0700 (PDT)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-88e51cf965dso998712985a.2
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:52:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUAQ2VbllDgiCAjiuPxA9UezxXsVCe4XYcj8LoEVDPpSTUPj3trovYc+YSjjEUR6x6O/0IrF46rPSHf@vger.kernel.org
X-Received: by 2002:a05:6102:2910:b0:5db:3111:9330 with SMTP id
 ada2fe7eead31-5db9066385fmr535126137.27.1761731109576; Wed, 29 Oct 2025
 02:45:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251029082101.92156-1-biju.das.jz@bp.renesas.com> <20251029082101.92156-2-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251029082101.92156-2-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 29 Oct 2025 10:44:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXaxk5mEDFJ3uWwdZYqkhd_jCRjVB55MJmHRZxyWGE=Pw@mail.gmail.com>
X-Gm-Features: AWmQ_bkf4dSdvLrN2gk-FVgCqZ8SF2_j8HOolSnL2gtCu3wVMEe_dcdoAdns_ts
Message-ID: <CAMuHMdXaxk5mEDFJ3uWwdZYqkhd_jCRjVB55MJmHRZxyWGE=Pw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: serial: rsci: Drop "uart-has-rtscts: false"
To: Biju <biju.das.au@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-kernel@vger.kernel.org, 
	linux-serial@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, stable@kernel.org, 
	Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 29 Oct 2025 at 09:21, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Drop "uart-has-rtscts: false" from binding as the IP supports hardware
> flow control on all SoCs.
>
> Cc: stable@kernel.org
> Fixes: 25422e8f46c1 ("dt-bindings: serial: Add compatible for Renesas RZ/T2H SoC in sci")
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Updated commit message to make it clear that hardware flow control
>    supported on all SoC
>  * Added Ack from Conor
>  * Added fixes tag

Yeah, this was introduced when renesas,rsci.yaml was split off
incorrectly from renesas,sci.yaml in v7.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

