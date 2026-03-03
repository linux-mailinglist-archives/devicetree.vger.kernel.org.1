Return-Path: <devicetree+bounces-270492-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aATfIuHfpmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270492-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:19:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AFD1F015C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D4E56310DDBB
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51086425CCD;
	Tue,  3 Mar 2026 13:13:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE38E421F1F
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:13:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543638; cv=none; b=BWjc76Be8gdhePMRXzGAQlLyQv/VDY4O5conuPd0agtjeACp8flLOP7SpC6wsNIcrQeu51iFVY3KqaSQghzbEf2ujt0y66RL8+aiwwSU8+wZ16IUv9pOqVap2CpaHghKpAf0OOy3pIxglc/5WGdBzIejT0VjNVw0oRuW2izhrx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543638; c=relaxed/simple;
	bh=FEfFxP8X1sCVWYVq7jp9gZLcQaix0rbikm0t1pa0H6U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oWeRRgzueIjoRhhooLBOQzHAubVYho2qUxkJFkGX7X19ymB2ZhL1QQ5OXratgAdhPOs7W5V7etVMmlCezcDRsDIoZVFrlzc73eqNG5BnQUZeWcbF4VsVlM/JXxaK10CqxloZyNIz0Lqa+fUTJ6DXcjU6OPMtP2ygeJS+VGOdcps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-56a8584e3a2so4928972e0c.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:13:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543636; x=1773148436;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lPbwvUGe/7JcxTYMUx4R8OK85eDDkFysVThEgmDwHLg=;
        b=kNXFL/nyPyRorEBywAk6ikDoT6/VOHbft3//t+ThCQl4uG5X3K/dYwo8yRvuuAncx4
         P/v1cP0E79DutOyWiAOb7jxsnDdCn9sDEakDqjobKA5cj3HpNxUMJNe47zJ9cXbV1EDN
         KTcVSp0QTn9so7BMXH/+U+I1MMSA2mp7+3QSpTq+d9dSNe4Pweo5fMHMbB86C7HtwxTk
         5HuP7zeoBAt98ah4fywM4DBeIkp2Kc4vf/9C57PlUSMBkJ1VyiK7DQ18kQ9tmaqJ97k9
         WYscv/3WBHiW0GiX16Bo/HUfWaxpi2PASMG7jZ/P/uXrV5YwRhanyVjBKQgximiIl8Pc
         aCDA==
X-Forwarded-Encrypted: i=1; AJvYcCV9fZ2I7KIYm7h1fGhOBRCUxCNKyL4LmJ+gjrbYjjA+IB7tO4LPV4AvfKNdPHv5BPM6dnNz7F9EGsI3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl5P9vp1rdHGpKK1EA7sWLsUoqGOldtbF/trvLXxZrQeJbwI2b
	o7E/3LA2q+aqkHO3q85gqZ0MdAM69E90DArDEMCoAlnB3uajca2kWIqM3XBA2/Dk
X-Gm-Gg: ATEYQzymDpJsIXI/DBGuSbqW8MHWuKiT0giDxL2Pa3OI0c7rKBQoUCphsQNY1I2Iu0B
	962Urr6kwEW9GH8usiHh5zPtbPQw76dMI2KlsbevAlx6JwFzyx7Gh5W83C8w+Bmqdq9qtNe3vnA
	pyTAMirjBKFXhaJB2NBK6HPmsPQ6zmyzVr4C8N/3pnBP4YgXdL+BznE1Qv3JhTwVbaBOv97tjah
	2iJFjYuBSR19cd64S5Pit7iYizsYt6z1FJM1BOOaXxUQbPwdAyowak0rwHE6h+a3JpvLaWkDanS
	USx9g2CtH7SufBjIJNS7EHaGlybYX6P8s/5dN+PPeKo8SXbnvdSXbalc7OGtReEVIrNKxUCBLcH
	gjORhRyo3qF+jpg9o536N8cDrnKshLqPwORa0oN3cq0m9Ul1rKRWycgmy/+Grf8wiobKGSp9z9c
	EHUEVIPeTCjINiWrrjWQzpSCkMnvPN+MnS5L9ipsLJQbeLbhgmVZyb/BZPfXgY
X-Received: by 2002:a05:6122:e265:b0:567:44f0:b076 with SMTP id 71dfb90a1353d-56aa0a89465mr7632774e0c.11.1772543635776;
        Tue, 03 Mar 2026 05:13:55 -0800 (PST)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56a922afe47sm18912009e0c.20.2026.03.03.05.13.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:13:55 -0800 (PST)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-94dd6f452f0so3642748241.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:13:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVu1nafgkMrUm5/jwnJxAPIYxExqEI2z1NpDkUejzhUd6hYvOrst1HTsMhGoyUEX6VXiFF7Vcei0mdP@vger.kernel.org
X-Received: by 2002:a05:6102:5091:b0:5f7:24e9:ece2 with SMTP id
 ada2fe7eead31-5ff3252136bmr8506725137.28.1772543634838; Tue, 03 Mar 2026
 05:13:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260123225957.1007089-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260123225957.1007089-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:13:43 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVEE3jsaPNjOsZUqd3GhJ7uhVGkp2RpPwGBBQoSEjWqmg@mail.gmail.com>
X-Gm-Features: AaiRm51-XWLKyeuQxkB4PJ_YjrL_4uS9zAdF4loOr7hgqzaPzAPVuA7XYGBMCHY
Message-ID: <CAMuHMdVEE3jsaPNjOsZUqd3GhJ7uhVGkp2RpPwGBBQoSEjWqmg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: renesas: rzt2h-n2h-evk: Add ramp delay
 for SD0 card regulator
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: E6AFD1F015C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-270492-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_SPAM(0.00)[0.551];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,glider.be:email,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Sat, 24 Jan 2026 at 00:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add a ramp delay of 60 uV/us to the vqmmc_sdhi0 voltage regulator to
> fix UHS-I SD card detection failures.
>
> Measurements on CN78 pin 4 showed the actual voltage ramp time to be
> 21.86ms when switching between 3.3V and 1.8V. A 25ms ramp delay has
> been configured to provide adequate margin. The calculation is based
> on the voltage delta of 1.5V (3.3V - 1.8V):
>   1500000 uV / 60 uV/us = 25000 us (25ms)
>
> Prior to this patch, UHS-I cards failed to initialize with:
>
>   [   32.723914] mmc0: error -110 whilst initialising SD card
>
> After this patch, UHS-I cards are properly detected on SD0:
>
>   [   28.379122] mmc0: new UHS-I speed SDR104 SDXC card at address aaaa
>   [   28.387239] mmcblk0: mmc0:aaaa SR64G 59.5 GiB
>
> Fixes: d065453e5ee09("arm64: dts: renesas: rzt2h-rzn2h-evk: Enable SD card slot")
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-fixes for v7.0.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

