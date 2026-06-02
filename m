Return-Path: <devicetree+bounces-305637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0/jfHN7PHmqcVQAAu9opvQ
	(envelope-from <devicetree+bounces-305637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:43:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF70162E1EC
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 14:43:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305637-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305637-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABAEF302C6F8
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 12:35:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F9730E0F5;
	Tue,  2 Jun 2026 12:35:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFE52F0C79
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 12:35:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780403734; cv=none; b=POp+03theHtzLtyQAvyPxAl98Bw2N7TdhycORks3etLLSVs6EsoN4oR9s+kPIMnhkaAfLrhvIqLjMX8gkdmpOkqHA7dIoMFQSWxM31IqKH953MY6ckhvgbhwj3OyTsPD01KieoiCrBHCLkXk2nh1GTukpYpUsxbAZ/h2KHYqHgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780403734; c=relaxed/simple;
	bh=YaiW5lMEZqjxEjR7yy3o2vTs2wWB729kmgqYprD1MOM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XN1AiVagEXbfWmNJEiVkGL67TanOxMGSSxEqLSCwrRdnFvpMmlCHVYzvtq0FkwPF7NOpTT4mTpsnSlsTOdwk4ibPMsil1Om6TPODbHXlnP84DLAsXWHT5cVvUAwZTw7m4bzwm1a7A69/Ab2+c+bU1e6h3VcT4wROneRlyAZakR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.46
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-bec2ddee9bbso448788766b.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 05:35:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780403731; x=1781008531;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIEBsIlRVNbhvgaksiRriTZDjJMik3x/MVOWGk+MF4I=;
        b=CGBuMnDgQMBB9uO7bv8ryy8vccdls6yc0T+0DDMCy8xMfpmAvIdWMT3mfjuvrUVkB9
         lWGk2tDDBCvtD69VJ2FtUBQOZn2p8vrqn0pXQkXJoiWkIg6NeHpvn2xPkG3IsjH0ZF/z
         RVdo0wY/z90gXvVgv97M4llEdHCDxMlp+evs0kVN156Ywpb+6z/LvtaPy1BkPJ/Y0MZi
         MfoncE+YgLH4cNJxE/5AUzeC7xw1bjPEhKC82t79zokDi2SiwPuR1FxWexb/OfpkTw9W
         mSEtWk73qF8b3bNF1nDfFc5zbWwgFNkF4JZxWTZG5ssDrPLhPk2uGgPXRUGuYKZujfuq
         cCig==
X-Forwarded-Encrypted: i=1; AFNElJ+MN+wxra/Z8w+80OxdbSvie26A7VO5htXkiMR8GWHD763gPlZX/IhWQVjTs8iZL+gBKebVxNDVMBcS@vger.kernel.org
X-Gm-Message-State: AOJu0YyZ9nGFqriBRWkL0n1fZVeZQi/eJ3vAymT6ZA+oo1N/jvenfQ0+
	pX4mtaQXKzdIeA5MH2mojOFIuVCvKhG+Z1tXCrogZHCcZRe62QVyDPZ8LlN8ExgwKAM=
X-Gm-Gg: Acq92OGJIK2lfz2A+2XOfuaifa27//WyJ5DZJ66uzWz+c8dhhV5rYYuoNIJBGoctYlF
	wbpeSFl3Kj417xjYMEbEuNE3hkrH3PS64UmAxkxZ4YnVFf5mRnz6okHvm85xeUg3j5Y0J5Ctv+l
	+y1JUxg3VU6An26DhZsH1JPUh1DcBd1VxBi7H3FyoC/3yKd0ELJLMFTuaXi/2hRu8fsU+e+lvj6
	ZlV4LUmeFjwD1g0KklcqAu7J3Nu19Um8SOoSA3lV7HRy+x2tcfzNaHTOyUGfexFhldMAdEqQUW2
	KLQ9NCZGD3UCZCiBR5V9sDIqZivlJdzK8iMk8gYtOPMrVKDURkpHciVjMLFizTvceiPoTJsX8AA
	qwwxD+Y8IfVbVw8hNgdiH7etdFCARN+4gzp0CUBeu+POu5VmrZsrknXX6dqqqrryOXgfKjuw1mx
	UR8PHvhoEPiKHOPSyKXR+CnGsnx6VyxrqV+Ug4zPUUN1cNPAQyT5sS7zo80UZ9i/3NS7AH9co1e
	6lVWBqm4w==
X-Received: by 2002:a17:907:97d5:b0:bd3:1b13:7114 with SMTP id a640c23a62f3a-beab345333cmr940252466b.37.1780403730810;
        Tue, 02 Jun 2026 05:35:30 -0700 (PDT)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com. [209.85.208.47])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bee4092940asm195696966b.11.2026.06.02.05.35.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 05:35:29 -0700 (PDT)
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-68c08bfe5afso3143929a12.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 05:35:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ8AD1hiqBpQ3/SVeh9ZjT5diGRj/pylTxBNsC5/a8418vzDcSgFPe1WXZPOaIwUgtiTNKggjTbaxwdA@vger.kernel.org
X-Received: by 2002:a05:6402:40c5:b0:68a:ac5e:f4ba with SMTP id
 4fb4d7f45d1cf-68c8baac8e5mr8113498a12.24.1780403728827; Tue, 02 Jun 2026
 05:35:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260529125442.327290-1-biju.das.jz@bp.renesas.com>
In-Reply-To: <20260529125442.327290-1-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 2 Jun 2026 14:35:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWF7HX2aaghtk292kD-qPu=LyTf+d6+fSjp3zE5EKsVxw@mail.gmail.com>
X-Gm-Features: AVHnY4JwHEvdZWAFqTBrT6yPywYB47cw10kf195rdpeOG1z1IQSlnWrhgDZ5Pis
Message-ID: <CAMuHMdWF7HX2aaghtk292kD-qPu=LyTf+d6+fSjp3zE5EKsVxw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: renesas: r9a08g046l48-smarc: Enable
 rsci{1,2,3} nodes
To: Biju <biju.das.au@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,bp.renesas.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-305637-lists,devicetree=lfdr.de];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:biju.das.jz@bp.renesas.com,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:bijudasau@gmail.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2600:3c0a:e001:db::12fc:5321:from];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[100.90.174.1:received,209.85.208.47:received,209.85.218.46:received];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:from_mime,linux-m68k.org:email,renesas.com:email,vger.kernel.org:from_smtp,mail.gmail.com:mid,glider.be:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF70162E1EC

On Fri, 29 May 2026 at 14:54, Biju <biju.das.au@gmail.com> wrote:
> From: Biju Das <biju.das.jz@bp.renesas.com>
>
> Enable rsci{1,2,3} device nodes for the RZ/G3L SMARC EVK.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
> v1->v2:
>  * Dropped SW_SER0_PMOD macro check in rsci2 as it is always available
>    for use.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

