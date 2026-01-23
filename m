Return-Path: <devicetree+bounces-258945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDhNJiB4c2kfwAAAu9opvQ
	(envelope-from <devicetree+bounces-258945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:31:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6C37644C
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68B983023508
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 883B42D5C97;
	Fri, 23 Jan 2026 13:31:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3644414AD0D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769175069; cv=none; b=lXVH2qGmKE4EwWTn7cR54ww4LrB8gmky/IT7ZoeBqSy0JIKMI3V2la9BdOKL7LxgE1YOWjhp6OFOEIkAVH9IatwF1xh+G/Lu2Am9MmKLsVq/cYZMKejhoIP3dEf007wTceiSfyu1NezqJp8+6YiRe5Pv3PUkH6vuxAX9hRsVq+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769175069; c=relaxed/simple;
	bh=5NurO0R2/OhT6VhbIKg6bkeoRSQoLzY5e3peAIZO8zE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WS08SYBtHgIGVVPxk4gHSraJmDVt14kjjvODYE5qoKdWWRuTOPg89uaXGw+p6KQ7jtC2f9Hjp/C4baoH7+ba0SzpF38CwuBbPl9hYV5G6ReCZL9tQ4AwEFlwJ8gjy03lQGfZ8OvXivmY91I0+tJoiqRsn4e7uthUtJRlj58mTUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f53.google.com with SMTP id ada2fe7eead31-5f524301a76so2014834137.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:31:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769175067; x=1769779867;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7uRZVas5P6xxkBpdwTHJQR+xs1A0EdTWP84ona+zohk=;
        b=mA9Y+vBxnmVJIliqjQuneeqUCXKKJuC0+/+vapgNW1xJTYm0yGRU5SIhoE/hU6WTFr
         JQ9T/DRVkr0p8g8Awo8QzPGZBrdGSgVTUffhByTkMCRDwoRUf3sToVw6T4FmE25mkiyh
         apii5g8wNsbtvjAsmU76B35X29vBJ8HGyrRWrATJOOTz1mRr/uNe3sfavA7Z1mwNSR9Z
         M9fyrd6xS2lZ9Lm5dAHimpzy/EgunrQ2TDVpD4Fhn5sOiVIxUqBxzRs7x4eWKW13YHBe
         u9VleVS5zdvBybnVhyzQNV5GC2kWwuOPvJCPh98Au9ewfJgQdzbBhkURaU3twSOhwqs1
         7HWg==
X-Forwarded-Encrypted: i=1; AJvYcCW5q8qruJCWy6m+DqjZimLHf5jtOmQr00AAhUMrMhPxxqkmWvi8KYsF9ZvtIHLHN2CmfhsB3cMVJxJZ@vger.kernel.org
X-Gm-Message-State: AOJu0YxV2wCAm3YyEi1/u4axDdZUOcTohQa5GhIJ8bFxKVRjnffOHYR2
	ZDG29sA9p0sB6W3cF3i3GrQzZ2HwlvYs/pBpzdcu3fCVxFcaReinolwht8SRUZQP
X-Gm-Gg: AZuq6aLm6/chcwuv27Z3JE2/2bPNSCpGQov9DwS9aoOP9z5yi6pr2/lRihRKdhM2q43
	wvcPoanZf9nOqjYebzHUpQHqeRLEoL8b37hUYuquSzvtt67Opb3b+JOqQwJMSyRKtgwkKuU8Gft
	g854G7LQahbSduVQAuC1j1VycIzcqRCjS0AhA3Fynhu1AJd8nvMqeysppEpwOuVPvlXU/YSOQD9
	xeIh++2JWEzgp9j3eGu0seLEmLr96GgSKTe3y8TAHUz/6746xKWH0nlJrU3htsfSMksScrJM24w
	Xv2tw7DRoFjch0zB9ka3JnBTeIxez7eWSfWanMHAdGTTGsa+fmfr1SDrJ35DkABEy0mUvjxr/QG
	qXmssIlN88GWfv+nhY2+gWY/K5oqHMY6OG0I7YoR1HAMvRVEgcFTf14zpJVZgiO3029VXRQr8KX
	9GOXsz4shBKDMqMauYj4Z5ZuDfmJ6l4k6kBxwLPY8Mb382mghBqhb5hhp2o59mg70=
X-Received: by 2002:a05:6102:e12:b0:5ee:a6f8:f93b with SMTP id ada2fe7eead31-5f532da99ccmr2447834137.2.1769175067140;
        Fri, 23 Jan 2026 05:31:07 -0800 (PST)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com. [209.85.221.182])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-9482e321450sm477879241.7.2026.01.23.05.31.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:31:06 -0800 (PST)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-5636274b338so1613540e0c.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:31:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWWSMGHSwJTPZoGZwzmLI5e9+uBgyTlt5uDQBCgZdKaPS4o9BuhR4ZkwQ/cJL8ao3xpqff3ZlKsUwwC@vger.kernel.org
X-Received: by 2002:a05:6122:6414:b0:563:5bd7:3793 with SMTP id
 71dfb90a1353d-5662cc268e0mr1610597e0c.3.1769175065114; Fri, 23 Jan 2026
 05:31:05 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260118135038.8033-1-marek.vasut+renesas@mailbox.org> <20260118135038.8033-4-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260118135038.8033-4-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 23 Jan 2026 14:30:54 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX7dKG5SQt0FKc5PCpa6Ew79e5Xm=GQw3KYvY+9OKLx2w@mail.gmail.com>
X-Gm-Features: AZwV_QgegGXBPtMl9ShTKxG3gBg_w4ZVsxp7J0NjCRso-dcFlW5sDr7DiMpG720
Message-ID: <CAMuHMdX7dKG5SQt0FKc5PCpa6Ew79e5Xm=GQw3KYvY+9OKLx2w@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] arm64: dts: renesas: r8a77961: Describe PCIe root ports
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, 
	devicetree@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,linaro.org,renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258945-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,glider.be:email,mail.gmail.com:mid,mailbox.org:email]
X-Rspamd-Queue-Id: EF6C37644C
X-Rspamd-Action: no action

On Sun, 18 Jan 2026 at 14:51, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Add nodes which describe the root ports in the PCIe controller DT nodes.
> This can be used together with the pwrctrl driver to control clock and
> power supply to a PCIe slot.
>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.21.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

