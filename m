Return-Path: <devicetree+bounces-277263-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0L7EOMWxumkVawIAu9opvQ
	(envelope-from <devicetree+bounces-277263-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:08:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E129E2BCA54
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:08:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA14530CA787
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3783DA5B6;
	Wed, 18 Mar 2026 13:53:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCA93D88FD
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841987; cv=none; b=O1w/V3SixxaqRPSYI780oas7zLRtE3MC1Eiv50WYZPlvyLchIS00RJPzURNPYWvNDSlMSt+2RccnhnERTkPwEQPtDY2x+pExA/LYwzmR/0Mf7SqpcIbar4peWh5vu/pe+JXAdUJ7pXgWCt9NBTdiuH1fc8a0fI+6o6PA4+vD3qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841987; c=relaxed/simple;
	bh=Xrx3p6GjwbeMwcpjH5g7VGLEdLArDh49wPH4MF/vJRY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TGswWuw8GYUCUSpmTw8p7hmG+hOFkX+FKPvnyuAnNY192lL9rzwoL8ga2iUiPnh3G5TszEwu2uuAJaxzqtTPNG9L5+G9DToMdG0ogjdsRwdaDHT9AQlNW7B96wUnnTNn8e8YMl0G8CXETx2HI+S2zouyaYdMA71GhW2uK1zwZZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-5ffe6887e29so4090423137.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:53:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773841985; x=1774446785;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NSJQCWLDdC8QZhI2uaIgLda/zPgl7cbIArF59/GxqM8=;
        b=Cyx9KTO74gv4a/sv5SoZbLGglAe1YR8JxU79nddAjwXeGq7nMElm3A2X2YDOfyTUYa
         emXholOqBrdNo/XMbfJjzHvA8+Gmt/+7lVaIU4TXqyhzhG9y14IqbvbcNHfoauPpzA4T
         hYQsiOt/s3IEKTMStOwpup3R00+2zsf4gM/WJgtDlrvc272z4Q7adSBcD4H5cUvpjiKu
         6pqjCTPCmt8T1SPddJqGE9i1FQrf5Wi6Ew50tVVpchuvBiESsga5KwBToFDUm/OoSOv2
         FcIC9xuWME6yHpJymgOXSqpzYgvmkWWxxaKbVv4M61e/nklUHDYDRYxlVR+KoNxL4MBd
         816g==
X-Forwarded-Encrypted: i=1; AJvYcCUSdQET5IB8xvGKDHfweHa8B083sCh2A0pG/lCpivmtUxdgf4bWwFJxCZIOwMH0QME3kq+QGIKH+oFy@vger.kernel.org
X-Gm-Message-State: AOJu0YznuDBrC8/knbCumYzj0RK+vfkTtRJi4hQGBixJcpoTPcYhDnDt
	rH7722VSh0bzfwjrbIWdwKrl8/Asxpq+glpAUxS7gGCwMvDNDQIZXVnjOcongIND1pQ=
X-Gm-Gg: ATEYQzy2gG2BnMGAOkJoR/npKBmzXuhOSPYmrWqmUxqJJuD0cdijQuFWzMNj9wRZdiX
	U1K/oGX1jflBPa+iiwk9bSbKWqfIw1AocrdpJC821PpYqlAhfXouwAJoFzO/ydijzDl157JmTcn
	nFVAdXdAOjAvlqz9olQceGxF/0fv4CGzdjHEjzOU1p7cBITHCti1I5Vl/gJzzHgJAgFJ/1qHRA6
	34bLMrPznD7CVxFVsGwKlJvaqa0ioB4hmZ02vwgS+gQTJryk8A8pur2yaGQac6EgiBHXBXnC1GK
	xz+imOsPXjDyyB/Ixa6O/QN5Uqd6GmhSjBm//efZW9LzqaHB2J792MWIrwf+2JAMHHnJEaEzZf1
	X5DLB6L78sJKTjJceu5Y33Qc4Q+T51eOnFpccyNCLGC0+LD3ubrg0iho2/TKa81jc9V4wfgR3Vy
	Hr77k/NhBRqj7RKU1FehtDmbBzxqQr89cBNXOlPhcpA2xIfgqpAU9K48qthts5
X-Received: by 2002:a05:6102:a53:b0:5ff:c510:b7e8 with SMTP id ada2fe7eead31-6027d11ba69mr2010755137.14.1773841984832;
        Wed, 18 Mar 2026 06:53:04 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-951032a2eaasm1306312241.6.2026.03.18.06.53.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:53:04 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5ffc8987050so4371682137.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:53:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVY1NfIPDD7Y9Dv5H+4Ep7YMaL49dK00gBmIrg3qooHsLjyNVmfb67naWElFoxohxuyZHlkYKAmSw6c@vger.kernel.org
X-Received: by 2002:a05:6102:c05:b0:5f7:307e:80d9 with SMTP id
 ada2fe7eead31-6027d38adaemr1718902137.28.1773841984432; Wed, 18 Mar 2026
 06:53:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260312160407.3387840-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260312160407.3387840-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260312160407.3387840-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 14:52:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU4MGpKEXC_b4KwmmbUmT-Pn2uZzexLwK_u+k7P7UO8_g@mail.gmail.com>
X-Gm-Features: AaiRm53fXg7MWpSDezkfJaNcTrAFPZdVPLUCc8GkMnQppM2uhe9tRQPMBRntQ28
Message-ID: <CAMuHMdU4MGpKEXC_b4KwmmbUmT-Pn2uZzexLwK_u+k7P7UO8_g@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g087m44-rzn2h-evk: Add PHY
 interrupt support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-277263-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,mail.gmail.com:mid,glider.be:email,renesas.com:email]
X-Rspamd-Queue-Id: E129E2BCA54
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 12 Mar 2026 at 17:04, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add interrupt support for the GMAC1 and GMAC2 PHYs on the RZ/N2H EVK
> board. The PHYs are connected to the ICU via IRQ14 and IRQ15 lines
> respectively.
>
> Define RZN2H_IRQxx macros in the SoC DTSI to map the ICU IRQ_NS lines
> to their absolute ICU interrupt space offsets.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

