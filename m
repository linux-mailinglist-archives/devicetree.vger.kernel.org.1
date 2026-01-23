Return-Path: <devicetree+bounces-258983-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBc6KZWDc2kDxAAAu9opvQ
	(envelope-from <devicetree+bounces-258983-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:20:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFE776EAB
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 28318301CFAB
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35E3F2D8771;
	Fri, 23 Jan 2026 14:17:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C560A3B1B3
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 14:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769177862; cv=none; b=F8j+C9v6Tzr0Fu/MAYZ0OiLmtzb+3hyY9z0abTFm8O6Ff+fsAae5+bLJ0vzK/xwD627jW2sNeQjEDqwKuaHhiO0v6Kh9Sx6TSvqdHXEUspD4wtqaKSP9sX7YfacvNpwXh4VD9kHJIYv3LPGDrwepsdrT+Mg8sJJsE969co00k+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769177862; c=relaxed/simple;
	bh=r9HsTXgn1GaeqU1gNHwX8oVvaVI1l0Q1W0dpN3P42O8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QQZsMs51ipWo/NFa5q8eZZ9IWx98ihR6f9n3EiIRlRjpSKggFAGYwTO/58ASUf7Kh+PThbtU3wsy6TETezYKqH6MKDHsJBhyjnvCdbnkEzmQVIwUedjI78qnHKZXRlOOFiedxG7kQR0fanGJszxHrPEzrdTpieeJsBxuTtxcZ3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5663601fe8bso1778393e0c.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:17:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769177860; x=1769782660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qLnfjU65RvqkFmzX5x5XUooORBFON/JkVFQYLPFc2VI=;
        b=DG9fyLwDkuyJ7N1xXhpwcQRdZJO/Yzf6AZhodfopu3/o7vD3K1DShKEGLYr4CFqIin
         A23NCt2CIXcy8vChwA6DzXF3swvYvQANV7oPrg6oL9BNB6qCGfOf7aSsALxO+ejV/YNn
         YLQHLYuyMFRoc8tqRQAr0nDeoCc1/0sZja/2VK6zZjA42ui3MB+ZIgyo7unXrfz5BaOi
         Txappo58k5igdT25IGXb1UnTKvFV+430E2IyiMf5rQ291trxDvlaKT8iwbQlfvYIQ9e2
         2aaH7VQbZrwn8QK6QKD4Jsh7Lz65G0GwQZbzuoVWxHFol+ZelWGEWrnmc2Dn/GW4uRB3
         0x/A==
X-Forwarded-Encrypted: i=1; AJvYcCVtnqtyMJ9p6NoE4V7RCPY91A3d+TMu152jukwCUNRLyiRfT6WCiv+vfk41PTd4wlPcihDdD7/up0Fo@vger.kernel.org
X-Gm-Message-State: AOJu0YxUcnJQBD8rSTzNaseAtL+9reQLVxnCqcSkmDDnV7HkW9htk0aW
	F/f0wI5LN1eDrJBYhYCHLaWXvhmVupNWCgEWI+Ta5BiaMnR3P+G5St9Gtnk+Td3c
X-Gm-Gg: AZuq6aIuMq51YUnfnSMWXSlsH9UFkrE2E1EYp8Q/CIa+XWgnvikVJtxp71ahVJtIJ3K
	XiO8GhwzCcZNAmktcHi2O85kB0f6aemleFW4lQJHjgK1apSuQfU8B2kfGFN3v1sh9+KOwsvIPbp
	ZoqKBNftYiGlNBo5cwcS48AQoMooDT9055TLlM+wM3lB9Fyc1UeXG9/zadfPWd1ioetTcX28hGm
	wHygu4N/CCuX9roUOpWjqYkinsNAmTqDa97cRMTPJOCtepPvHBThguzTJpvISMEyrIZbaQr+XwO
	hZf9KebR7nvMq0X6hyvXrAhzWvC+NEqNlWkgyyGchlBr/s3+recwX/MQ6PXG3XngTRtqOJ9S1DD
	fBYqjLj/MnKljyUoGw0+zdc7A/2f3SJcdQRPRAwcdpHh2XiqDomSpeT2MKht+zH8/HxVp0nMXdr
	i3OWrW8KM5Az3EJvP4V1aHq2KwC0Au9tf+wqzD8E9/WlsEyjXYRYvM
X-Received: by 2002:a05:6122:1307:b0:55a:be72:7588 with SMTP id 71dfb90a1353d-5663eb445cemr960719e0c.11.1769177859564;
        Fri, 23 Jan 2026 06:17:39 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5663fb9bd11sm540919e0c.21.2026.01.23.06.17.39
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 06:17:39 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56373f07265so1916690e0c.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 06:17:39 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVJSiTD3jkLRkhWesILO0PZ0fGqtOqSv5e/81muPGFGYQRx9xTQ/mNHAAtdR4926Ymz9SSZDVmXVujR@vger.kernel.org
X-Received: by 2002:a05:6102:3f0f:b0:5db:1fbc:4462 with SMTP id
 ada2fe7eead31-5f54bcc01d2mr1080831137.31.1769177859213; Fri, 23 Jan 2026
 06:17:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123140031.94752-1-john.madieu.xa@bp.renesas.com> <20260123140031.94752-6-john.madieu.xa@bp.renesas.com>
In-Reply-To: <20260123140031.94752-6-john.madieu.xa@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 15:17:27 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWxNbJaDhpOsJRCkDWvqqu4e63Z+cMRndFA6F+McdbuRg@mail.gmail.com>
X-Gm-Features: AZwV_QiB25G7U1c5HmJJDzyb95Uh8yyZZslQ3E5dHn2oE_aXz9DOubj9nIVp0gs
Message-ID: <CAMuHMdWxNbJaDhpOsJRCkDWvqqu4e63Z+cMRndFA6F+McdbuRg@mail.gmail.com>
Subject: Re: [PATCH v2 05/15] dt-bindings: PCI: renesas,r9a08g045s33-pcie: Fix
 typo in interrupt-names
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, mani@kernel.org, krzk+dt@kernel.org, robh@kernel.org, 
	bhelgaas@google.com, conor+dt@kernel.org, magnus.damm@gmail.com, 
	biju.das.jz@bp.renesas.com, linux-pci@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, john.madieu@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,kernel.org,google.com,gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258983-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.993];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ECFE776EAB
X-Rspamd-Action: no action

Hi John,

On Fri, 23 Jan 2026 at 15:01, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> Fix a typo in the interrupt-names property description: "ser_cor"
> should be "serr_cor" (System Error Correctable).
>
> Fixes: e7534e790557 ("dt-bindings: PCI: renesas,r9a08g045s33-pcie: Document RZ/G3E SoC")
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
> @@ -42,7 +42,7 @@ properties:
>    interrupt-names:
>      items:
>        - description: serr
> -      - description: ser_cor
> +      - description: serr_cor
>        - description: serr_nonfatal
>        - description: serr_fatal
>        - description: axi_err

Nice catch!

Looks like the DTS is actually correct. So why wasn't this caught
before by "make dtbs_check"?

<dramatical silence>

Because "description" should have been "const".
The same is true for clock-names and reset-names.
So please fix all of these, together with the typo.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

