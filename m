Return-Path: <devicetree+bounces-262599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIYHBG0og2kxigMAu9opvQ
	(envelope-from <devicetree+bounces-262599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 12:07:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 80EEBE4E98
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 12:07:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0CE23013895
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 11:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446B53E8C7F;
	Wed,  4 Feb 2026 11:06:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f196.google.com (mail-vk1-f196.google.com [209.85.221.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EFE3E8C41
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 11:06:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770203175; cv=none; b=VY8s8IvDgK5haEnKoh8i5iyIAZaUawmPEUfv31hIo3/Dz4YvRd2NVIQPnchSY5V8Y9c2DR3q1tKokyqiX+sLVIwt1vt5kLeTPQVFoA+/devdzFY7MgsYvvSNSxdbv9u0m4Wxt14jZHhTWmjbLeKcnkftsG69RBmBbIVZChotlKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770203175; c=relaxed/simple;
	bh=5NjCdT2nrZpZ57tNCtFV9pqandhyrZegGdE4QFBLja0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XglsBujgjGMz4v7m/LhNoFYvOR+po5BPQeq8HvtKF5JrlyvhBbGV/WKlo71CE05klvMooqI7HYd1Ra0xHslLrQR2I6Lu4w95xfXN0n+msXvY/v9G7Y5YIj2xFQgqH7leSwpHsltHc90SzHY0meNbLix8avo3L65R6sSH4zOugRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f196.google.com with SMTP id 71dfb90a1353d-5663724e4daso4585188e0c.3
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 03:06:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770203174; x=1770807974;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzWstbsnnDl4kKhiGYvS2ziV+JALL5t+yio0ugwGnmc=;
        b=qzVKqu68XXUNlisGCg85dw/6Je+500t2+Z6rxvkfzP1PWt82VN0PVbdu2J3cdwEHez
         UA9tWuM6NpxK0Qv+EJz5M4fCCzmi3u2/AC8Ganw1rL2LSUalAL8yQ7UHwafpPiaDvXjH
         MY7fr38dGJHsGaUq41qfhatOLZRzpTHSjGrfz+FsMG4DL4qR8kkYpuohKPjiSvQ6BXzR
         bECLPRZyp2IZtB4GEKKrTjO0WBQGvPVfT2+yQS/Syv0QD1Uv4n8wTk81bgqt+DsHDkEO
         fFHu5Ccpvw2QjNC03l8I8XKNdNYKoui2xmHaNWLYHf7D1Pfxr1tOgUNWb5X1/4Ro3MGb
         5Epg==
X-Forwarded-Encrypted: i=1; AJvYcCWCr7uVYAGFdHup3kE5OnVcpfCgJPm3ck7tZGg4Z5BEfNjxZZvZWIiq/LFX2uJwjXDt8hBvKvnNgZAN@vger.kernel.org
X-Gm-Message-State: AOJu0YyCccF81E9Ab2f2Y4D2K94Blze5e3YyeAOu988PAzVs6nDew3VD
	TUBeFmAs1oz4hfiR1ppsnziVicMQBlswu1RtjZWpq+R4d3P3f08zLCKHhsbrIQbSKISFrQ==
X-Gm-Gg: AZuq6aKZ/SGugqsafJK7pGRH6KzD7rLJ2I6Jj06sSLaMXtJzA1asuGQ8ksrG2CsNt8w
	VJuntGU0MOOrKSyyVsN1HXFPqGC7diuVstf0EnYbUZ6c60J8cPfZzBNqr7apjAEuz1CquksTG7o
	rHO/c9QLXd3B9+h7fZcQSLeFJRYNm5MQUjfFQXPTAcJSCikbkC6JJwUumno/EQbeYIusnWMkMZv
	ya6tSKuKugLr1zZxPwHPKolV8XKUOj1aDJV54L24XOHoda2Q0CgWxZEoCk8vy9knHPLfyzS9xqU
	UK4UoyVQj31dgpwP9T8ncHGpCFGwxd9gmt50ziauwm+Gbf/fGhD1TO6t0r80yudR9t5tvpSjttc
	f5sZIQK8fpr7neP7AIEVVRyEKHCf31w5bFA/cYtYW5pDKkPK9CaeeFKojEXepirtZu/gao+K0Zj
	9ppJWEKKFvpE1otUwQhDtr2XLbald/g3oGCIdz5Xhd8tzE1mnQLNWo
X-Received: by 2002:a05:6123:126:b0:566:36b9:ef5e with SMTP id 71dfb90a1353d-566e8187312mr947183e0c.21.1770203173885;
        Wed, 04 Feb 2026 03:06:13 -0800 (PST)
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com. [209.85.221.176])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-948dfca599asm795077241.0.2026.02.04.03.06.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Feb 2026 03:06:13 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5663601fe8bso5761068e0c.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 03:06:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVd3elkyWV96PPDVouu4u3Z6DzqruuhN+CvDm5OyBK+E+KB6LGh/8is9GKjDVy8BdF828WFo0RTnV0L@vger.kernel.org
X-Received: by 2002:a05:6122:e46b:b0:566:3954:f74e with SMTP id
 71dfb90a1353d-566e8019cb5mr725526e0c.5.1770203173020; Wed, 04 Feb 2026
 03:06:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203104541.264759-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260203104541.264759-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 4 Feb 2026 12:06:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVpgzDAChz1M=hbVZTeHVKwiprPwLbe14nLKc85hX=ZTw@mail.gmail.com>
X-Gm-Features: AZwV_Qh6HkVNb4BuqrGcVeKvsm8YThaQh31Q99liNk3PJicgrK2iH6IUSxwO7xo
Message-ID: <CAMuHMdVpgzDAChz1M=hbVZTeHVKwiprPwLbe14nLKc85hX=ZTw@mail.gmail.com>
Subject: Re: [PATCH net-next] dt-bindings: net: renesas,rzv2h-gbeth: Document
 Renesas RZ/G3L RMII{tx,rx} clocks
To: Biju <biju.das.au@gmail.com>
Cc: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, netdev@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-262599-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[bp.renesas.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,glider.be,gmail.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,renesas.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email]
X-Rspamd-Queue-Id: 80EEBE4E98
X-Rspamd-Action: no action

Hi Biju,

On Tue, 3 Feb 2026 at 11:45, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> As per the RZ/G3L Hardware manual, CPG_CLKON_ETH register bits{12,13} are
> to control the RMII{tx, rx} clocks. Document the rmii{tx.rx} clocks for
> RZ/G3L SoC.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Doesn't this need a Fixes-tag?

Fixes: 3ac2aa31b489eb4e ("dt-bindings: net: renesas,rzv2h-gbeth:
Document Renesas RZ/G3L SoC")

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

