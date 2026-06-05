Return-Path: <devicetree+bounces-307438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r6ATHPHRImozeAEAu9opvQ
	(envelope-from <devicetree+bounces-307438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:41:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D71E3648992
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:41:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307438-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307438-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AC7F630125E3
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3192EEE7B;
	Fri,  5 Jun 2026 13:39:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E6140E8C7
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 13:38:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780666740; cv=none; b=okzM//a/Tz4Ip8aOb+y/BN9hX+PXlVD5ySB8QL2yJH5ybQglUrTjh0N1LZfNMxVJMRHeQuRLlo+gwP1qmgafxItH/0E+BPGAktx/gTvcsbHHRpeZGOcObPk9AF0E6Rkwd7OIcKNqWmfmk2YjZrpu9374Y7UjXOrMMhzIBEZWld8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780666740; c=relaxed/simple;
	bh=FBNPG9V/1qWiz8sOxK8CKje3/Q9dzTuF8Px0Wy6/lMM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EGFtvj16omOEklIbKCFxchnu8uvTF5Eu1P+3deWl5eiE4iBkUDv6ZC91Q4ht/lNA5OgZgOnYMcEHpt85lhG0QMX2LUCOsiPp3GN8qufTY3zk15hYz7EbxmPPehS15Mv46iLqBbQbZqBpV+IEKviN5n4+Dg1lkqiqt4BSf/lT9Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-59dc1714d44so614502e0c.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 06:38:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780666738; x=1781271538;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s3BFc1Io0VDxVIM/lXxZrvbjyw3H3uz5gUx8im1vWJQ=;
        b=m1OTWMb3H/OIgmIpO6rH9j8UAfkiLByTjLCXQnGnAKHhOg0f9/4LNqngVwQxRdbJPc
         Q2hFbc23vRsH+JvrpzR8BtlIRMJPtjG7RizZGbu527+6RyJBTDBIKN29e4C0NdjK6Jsc
         ppRXyxR3nuhiAmFzGIcp06Dgi0YYXqOlDklt89Xu5yX310SXMeqaNvjligpp8T4nHX3E
         ghxMDmBpxv0vXaWhaDkTkwc9hz/0xfzkaDRRdGzrZnb/0xLJC/1lwYTg30LA6BBEjuDf
         XB86GWQVuuTjn382sXMAlx5vQogTu7WdWtA3VLgDh3NaesAEqPmSBuUG397SkxgdiwyR
         9aZQ==
X-Forwarded-Encrypted: i=1; AFNElJ/+ZWSNWFZNeIWOeTXHtAUWCaJeT3cuUddqExWxfbfpw4/u7XgoJTvf2PWZzbB1SX7AtXbcFP1+r6hU@vger.kernel.org
X-Gm-Message-State: AOJu0YwqdotxXjH7XgNj8uag5mc6ZOLFOg0WdUNffU5FdyhqOql/xIh5
	gU7F0L69YWJUrRqPyYBLGT/M67hahf4PWiVrncMILzba0eKKNDYRgE5QRPKVY+6T
X-Gm-Gg: Acq92OGpeWbdJZYL0/EpRntWGeyuLYasYMX2/PeeH6Hhj/kahrdiXVQvGe2mUJjVtit
	a/HrtMIYp0LuujAj/dPqy02+L0yfm6FtEi85WCc++Z9/e+UBcAqG3OtS5+Jz91pb4Qf7UatrWhI
	kPA0mvcmiK3L96DVEsZ8tJUd/Ip6lcWj3id+87iYEL1QAdHk+YCdvV+OBEuPqi2Vl2ahA4rujM8
	6ELOlPGd2/dr5eEuAS/gtOTejoZZcPoPW/oRXBcDINNg1IRxi1zQOcwTaQFO/nUJHoOhOWL5pXD
	/e0+NwoFTiOwwHyQyldeK/MWD1ayanEUv2ACL8fCf7wL23NQZdZwwu5njAAYNFjxmZ9MHrUBVHg
	6qMcAaVmi37vZPJRM+cYNtWYHu7/4aQb6SXdqKTAslzp1ZL3CukbffrfaHPOCTOTSun1Z/cT4rW
	rWjxWl5gyJ/uE4/A852H/luPW8mSReYmi6/ESY+DQfDsHqsTZGx8EOzfh8j+s7OLn0JPl6gwBS1
	HU=
X-Received: by 2002:a05:6123:10b:b0:575:fea0:559 with SMTP id 71dfb90a1353d-5ac4e5b9dd5mr1742427e0c.4.1780666738181;
        Fri, 05 Jun 2026 06:38:58 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96414156385sm6597090241.13.2026.06.05.06.38.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 06:38:57 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-59dc1714d44so614468e0c.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 06:38:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/H60njuL35rGDIiWMtpCnFVmilErlx+pYYUdrTbupeu2Vb1AyGyKkXn8KAKOFCU8sxKCrgSPA6SMQM@vger.kernel.org
X-Received: by 2002:a05:6122:3d45:b0:573:a779:62cf with SMTP id
 71dfb90a1353d-5ac4f952082mr1666770e0c.7.1780666736147; Fri, 05 Jun 2026
 06:38:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260511191910.1945705-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260511191910.1945705-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260511191910.1945705-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 5 Jun 2026 15:38:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWO=u=kEAYSqywiMkvjCcBHXVfLL7na7kwEFsuaWKMToQ@mail.gmail.com>
X-Gm-Features: AVVi8CdVv3RVEHPhsDaqredkoNGzyv__zq92-0m6DeV88WQhNmXx0Ns2Vk-vkl8
Message-ID: <CAMuHMdWO=u=kEAYSqywiMkvjCcBHXVfLL7na7kwEFsuaWKMToQ@mail.gmail.com>
Subject: Re: [PATCH 3/4] dt-bindings: clock: renesas,r9a09g077/87: Add
 LCDC_CLKD clock ID
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-307438-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D71E3648992

On Mon, 11 May 2026 at 21:19, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add the LCDC clockd (LCDC_CLKD) definition for the Renesas RZ/T2H
> (R9A09G077) and RZ/N2H (R9A09G087) SoCs. LCDC_CLKD is used as the
> operating clock for LCDC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

