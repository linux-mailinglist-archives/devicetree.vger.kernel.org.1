Return-Path: <devicetree+bounces-277260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJVnDFSyumlWawIAu9opvQ
	(envelope-from <devicetree+bounces-277260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:10:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF272BCBD2
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D12EB31ABDE5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:56:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 037183DA5A2;
	Wed, 18 Mar 2026 13:52:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A362F3DB645
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773841924; cv=none; b=ACJ39W0IcL9t59nACTNxi+vJ11N6GMmMf0Hbfp1n1rILMsa6YSjOFYcVQcwMKgyakhZVaNT9sfUNoWIjRrhYfK/C6xmeN9ZdCUR2j8d/KMTuzBYFDaZsmjxUJBfb0JfCpP8RP8OA9mNvhOIuPikF3kIpmnVdfv7R9ZCtULxj6XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773841924; c=relaxed/simple;
	bh=mc3ZFYJpuY7HB2PXajjFXvvAb7650Lo20RqY4OfXG3A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qQjAijxqTC9thGMvBDKp5p3Psk/e7s6g798vwb4bST3idnP4e4OK+mbNjiMZbkLPRhVw9pICaGIUeCbDKPC+fBnfd4vCA0mWLBSSveBFYlj0s2W1zqo/J1onk0PjMY82hoM+X70rXxeSV5pHJFpUqOWuTGWU2w+qzSwKiD1V1Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-56a9c5cb48bso2743590e0c.0
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:52:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773841923; x=1774446723;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6sswZwwQf+Uk3ubatnIwSJtpQ0I+frMKeY2sBRh71Q=;
        b=mzvJc259lORXWsAibVftmcYIZJNIs/DLldrTV+0MBvuAwomSPtN66haq57JN6g+Rh9
         p9YIYvX8vu4WDl1GYtz54ClJInEny13ane1DNffTUKj8gB2Doq/BiLDmg075ZpICUhZe
         J2PIlt3IY4LL0h7VvuTbtpl3L6ai5xrDaE5hm0SWohBgtDog2COswtkY672IIfFN7bua
         3ugUDx5jcqW/7ov5GKHIH3tDJGcTtdnZYucGonJEYsHU6gBFumkkTlgseIcmA1EAmIA4
         h4A1QNS94AJpNNldMMK9aqoBO94VSjomRCAZRFg8juyTr/wNqQXEFakkqulbgtVdBYMV
         gqqQ==
X-Forwarded-Encrypted: i=1; AJvYcCUddTpQDYjRSY19vG1kjewROAREUFJnV3uvWo/54jLU5EZJWdEVa/dMw6epI1NViAgnQxlTyobmuhqq@vger.kernel.org
X-Gm-Message-State: AOJu0YyyIFN+A54Yy4FbvaU7t4UAvIdpriAXwpWplST8vdr+f1Xwo14s
	jNAffvioe8PpVv973eOINMjTEF+aNZzFN+a0BdV5UQcCQuCyoXgFU25CxN86A7gixOU=
X-Gm-Gg: ATEYQzyB6CIgM4uvVbM3nnBfQ7SyZnbg1ZxJxV6BYFQoha4EZn5uA+pngjiJinjeNcd
	parQenEFwTd7wlQZ5hQUrGSe2RpPGR+rxMlQe75bP7T1AR8FBaaHhd1mQ95oACmVqCaO1rV3jrG
	dgwBw69x/0BDCYun3tiexwF/NrK4UdKTfLGNzt2uTjzMriYhYjYkpch1xV9+XijgtttXi4Q6b0X
	gniLproDKvhx3H+2taUOEDg2Yj77Csx5HXLtQK81KT7pU37TynlzKnzlrNj6rXQ9qEyQ+JQxVAB
	6I3rCDRXKcvA3sZ4MJgNSiTHv9gJv3VUe3hq6kIkF9mkhS+tvkWBUjikK5jgjWSHdz20fpqlJAt
	tWgdZN4q8GFzjNbIDC4LQ6ZPEK0c3UGfJWeZfBVbvIrno2Td5yfautGouMzBt3JI0TSiMkeOJ0m
	2jU3+zaZ8cdQ40MbGL/g4uR2Za4g6GE6POP3hN9PqkNuq8HtLkUPRsPEcFPMF5
X-Received: by 2002:a05:6102:5089:b0:5ff:e0be:f52e with SMTP id ada2fe7eead31-6027ce10e62mr1378137137.0.1773841922545;
        Wed, 18 Mar 2026 06:52:02 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-6027eddf4d3sm1430807137.8.2026.03.18.06.52.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 06:52:02 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5ffd76e4c89so1382570137.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 06:52:01 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXckAAg31nyAjyFou7UsftqOnfFSThBOtJ1PnYzaC0qwf7L+aUUV7XozA4hK9iDEQ06VPyjJuw45p/g@vger.kernel.org
X-Received: by 2002:a05:6102:3593:b0:5ff:efdc:e225 with SMTP id
 ada2fe7eead31-6027d0a6617mr1533255137.3.1773841921455; Wed, 18 Mar 2026
 06:52:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260123225957.1007089-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260123225957.1007089-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 18 Mar 2026 14:51:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWWm4Yxe=Q_yafOoG_AZG0wMKGys+pi8dNqcE9xVjO85w@mail.gmail.com>
X-Gm-Features: AaiRm52Yqcbh7zN6n6HsuQX68d87mVfgXO7iiNKq2svci0KHhjSW3azun8ynZmA
Message-ID: <CAMuHMdWWm4Yxe=Q_yafOoG_AZG0wMKGys+pi8dNqcE9xVjO85w@mail.gmail.com>
Subject: Re: [PATCH 2/4] arm64: dts: renesas: r9a09g077m44-rzt2h-evk: Clarify
 SD0 power jumpers
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-277260-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.996];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email,mail.gmail.com:mid,glider.be:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 8FF272BCBD2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Sat, 24 Jan 2026 at 00:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Clarify the board setup requirements for using SDHI0 on the RZ/T2H EVK by
> documenting the CN78 jumper positions needed to supply SD0 power for
> either the default eMMC configuration or the SD card slot configuration.
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

