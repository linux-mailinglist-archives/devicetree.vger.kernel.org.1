Return-Path: <devicetree+bounces-271605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DEPGIObqWnGAwEAu9opvQ
	(envelope-from <devicetree+bounces-271605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:04:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 002582141EA
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:04:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BA170307D71D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 15:00:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4E73B893E;
	Thu,  5 Mar 2026 15:00:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72FD3B8BC3
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772722837; cv=none; b=P1ISyJxfURvW8mY9lDKUy9kDrkhytU0RIopM/ZsquFi64nu+7dzVvu2GVZ/X+UNSgdFsWcJBFCffmWlphx8Yte5QhtS/2/U160VXat0bUeMQd/YleEd77IZOykFnbJ7NyQCNXOKZ+KgVKL8GOVCHl9w12+hINP+mCi2ENtOT1P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772722837; c=relaxed/simple;
	bh=GbA6aSfcx2Hqd8m3T7ZdoScgM3GztERyFBKwEGsbNx8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Q3oEIAsnojj+8QssdVHSPrIs2Y0k/sNy64DEkyJEH1vm0ajw47o00s2KZzgVOZH9t++LpHQhp+5ka6etapcU4t0PUrtlamIsoBYyFBlgETiSx0vRJp0q3AfB4Yu4JlPZDmVfosZxtQg+Lel30iCS188ohIFEzxnhOke7docBoOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5ff1836b4b5so2185495137.2
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:00:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772722833; x=1773327633;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+/1uy9mVi4gphP4U04z22L3rxy2hmE0d+BgYwDutqjU=;
        b=FW00vhtoq0eOqquLQ7gg1M9QvHcunCe1Xhdd3+Q9fO9cZ1RBCCGoSv3l/gLfys/3bF
         Mn5/nfVh6se3qF8CXW/elUAJ3GtNLZfPPQgD+O/5F7+HrOWRGOtmdlAAy1GAnPUUSznj
         D/GIVtpF8/iRxPUjYVSIg03M3pCz4n7tRHCHASK68F+yJBA4bMdaamCZYGIw9X16eA92
         dXhCsMdn7fqw75tELU+AnmvSWSJVez40fuLvZatnsGW1fZx3rpvybO9Gsl2nKIWmGvg+
         ZeF8W/O3kjolP4Mmuym9nfwhwQxPpGHROUmdIBVTK4/y8as1Jx205NO0l9tmTTlbN8rH
         pvvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkwVS3CVxo34REq+OwozZeDGi4nl5kA/XlAc1a8+ncJX7fZqmIUjL4sEwLLDnMRdnfTErrs6R8+xhd@vger.kernel.org
X-Gm-Message-State: AOJu0YwvJAxSEKe8ej39h656/IZlqGyy/7vOfAMhhRw3wMvVmMo7ASMJ
	q+rBtETwLjP+dQbNyi/sOYK4lglkRHOnvlWImU7ZGWylaVJhyb/eUIql/7kSqtSBG2M=
X-Gm-Gg: ATEYQzzRZ1OZGzNUhrod556i18sXsaixxYm7Xca9AOBmyT3ynRKZjQrRILRfTFE9mJS
	7lvZOISRGX3UIFf2iTy/4X0g845qQDD7zRLzwuP8ds+Ex7LBJuSWZcmP4fBWIcOLZLPCFI4odPs
	TBborRZnqBYfGBJHYmAp+lsHYityBt8Rm6WLB1C+WUvGZz9xWac1l1+PH3+YaCmSLG69XmhHun1
	xNl6LYRlflpXUqVLkKClpfddLj9ed3Zw6qcFcNX9dQkZaSErE1QcznxFLqFW+lbWQXF+7AiyuM8
	DsWuW7O3ftvtQDQb888RCfN2b+NvwjqigKhgpfMKGWONcXyDolz/TCeCKYVAZ4m8zIi4oVQts+C
	7oK5LETV0pFu0fGE6Jl1Ar2BfWqJb5CYREvlV77yOg3sRVGVXnQ79WWHw601LA362UccmCUcAZv
	YH73hLQ+v79PozHlBoMuInNQnhDfFYyV+JCwgpB2C96zT6N9VBxwQgNnt5ld4VhCEAkGiQR90h7
	Yc=
X-Received: by 2002:a05:6102:32c1:b0:5f5:5925:defb with SMTP id ada2fe7eead31-5ffaac3a4bbmr2488812137.10.1772722833103;
        Thu, 05 Mar 2026 07:00:33 -0800 (PST)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com. [209.85.221.169])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ffaa208aeesm5681183137.12.2026.03.05.07.00.32
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 07:00:32 -0800 (PST)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-56af41d1e0bso330459e0c.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:00:32 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVvjmoe7/gqA60S97ACMPuPPFb/Std3cI8k59Zd7JqcpMwKPzOYzeVE0EQ4NpmxcF91wVQipV96hdH5@vger.kernel.org
X-Received: by 2002:a05:6102:3709:b0:5ff:2dce:82b1 with SMTP id
 ada2fe7eead31-5ffaaf5d425mr2398231137.31.1772722831229; Thu, 05 Mar 2026
 07:00:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203103031.247435-1-biju.das.jz@bp.renesas.com> <20260203103031.247435-10-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203103031.247435-10-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 5 Mar 2026 16:00:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWs0wX2feonmMw1aAGwNR85gTWKW1FqbpGO1t4rKcdwxg@mail.gmail.com>
X-Gm-Features: AaiRm52FWBkPSYtq8h0YFO7WWmHF8v9I_omS-XjFKfqCRS69zoA9SXo9G5r6Z9A
Message-ID: <CAMuHMdWs0wX2feonmMw1aAGwNR85gTWKW1FqbpGO1t4rKcdwxg@mail.gmail.com>
Subject: Re: [PATCH v3 09/10] arm64: dts: renesas: renesas-smarc2: Move usb3
 nodes to board DTS
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 002582141EA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-271605-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.353];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,mail.gmail.com:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,glider.be:email,linux-m68k.org:email]
X-Rspamd-Action: no action

Hi Biju,

Thanks for your patch!

On Tue, 3 Feb 2026 at 11:30, Biju <biju.das.au@gmail.com> wrote:

> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> SMARC2 board dtsi is common for multiple SoCs. So move usb3 nodes
> to board DTS as some SOCs (eg: RZ/G3{S,L}) does not support USB3.

s/does/do/

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

