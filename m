Return-Path: <devicetree+bounces-295595-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHOtCDfaAWoDlgEAu9opvQ
	(envelope-from <devicetree+bounces-295595-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 15:31:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A2250EF83
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 15:31:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B1B5304856D
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 13:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19423E6DD2;
	Mon, 11 May 2026 13:24:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2133A1A2F
	for <devicetree@vger.kernel.org>; Mon, 11 May 2026 13:24:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778505873; cv=none; b=CwPxkmO4hLGxgLX4x2tg6FesG2ycgth3517VeSTfbn0XF2ZoC8wemqqmCj4Jn3gLEc0VqrOR/IycQHlIB6tKkM6eykwGy8PwKEmxR9aSN8x6k/diHNgU1laM9rtnwICzmxcGs4I7y4Q+Y0B0bNfoQ4yRVp5Ay3smYjRiECJxPZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778505873; c=relaxed/simple;
	bh=YfKRsoMpcmlRfc2xnButWGYPrfkohycR20/XxXRIfqE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Tr+aO1ShMfrg8Qgc4cXLOvVPn2Wlhurh+ARSHCNrxygA1/SgUiNf5LQlPqoSHVb9Ceg/KEq8FzHQRKDT0i2G4FwUCvEulDek1ZMKMoRnsdBEtKKVHLKSSLS15ZCf82bpR2S/1Y73tVMwAN85Q5B28ITafSyYcRB/7L29LLo1SG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5673804da95so1376492e0c.0
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 06:24:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778505871; x=1779110671;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=law7pV0kaAFlrOEy6awjJWyzbjCOdnKqodHrGvaGQIk=;
        b=dJprOM5zrkmoWhgXt6mClptVc0h5yDABgxIVeE+GGOyFX8naqZRoCSvtxY3QGF25rT
         EkmSb9PSej0t7WJ7e8t75sqLQbcFhk7ykMi5q8cZl+wyVd3hxCq+aiAEE94mqdzaqm/4
         VkqITa+/1boArIWFP8C4s24Vw7sNtoqiv9/wb8zvfMLWITtm1NUH6gG+hGY6HLgR+L6n
         ASkIFsjhSS6xE+j5uhi07mk7bApLNky0FRsqGevQJoQyDhTzNUbc1rpkpGuXiv1E8aqF
         NKpI/xPYzZVpLgQhB4oddrfcaefmm75ZS2bQj3iSykjFbSlWwlU5JofnUwiK8cTZUKiG
         Fd7w==
X-Forwarded-Encrypted: i=1; AFNElJ/3DgxJjzd3cl5gpt2+3vHy8T42hnl+iNnlDy+PXDI1Izv5L/4qDHzC4A1aHJGU8tiR4hnv6ogVjdk2@vger.kernel.org
X-Gm-Message-State: AOJu0YwkkpsvanKdrHiKJmpNCHcwmXhovVahWYn2RFM+uE/TliVI9mKU
	iecj+zXL0z2aDCAwQRiFdYjr84zGKgSA+L3pzX+zdE9sXrq64IG37yJ0wr+wtCKH
X-Gm-Gg: Acq92OHFE5vMRJDEx4v7M16jedoJ5WHwfG+moITl2sAkCfgu3Vh/uUp50ToEIlA9g02
	alx2swBTphO8IOm75qq7zC4osi7X5QW8TxoBV9j1uo1VSNk0aQv5wg3Ii+tPtnIC1iLIa/XY/e1
	XtC+Gb+zvdeDgnCcxBj16SPxeeKF6Y1WS6yqmI2giSpcct1I76K4k9bAJeExRw4WEb+zWHd1iye
	pXd98Wx2/popeoDKRw3QXgu3TPaiUqersnO2bxhAoPTBMz59jusgBoCCbrwz0qdcXZmVLKa47QY
	kMpfkuhBit2/OYhoIfJxCVbuvUE8F7gJ7jwJ+EjeRsXZJ1/DbjiFtkuTC4xqHvF+plNnTfVxSTz
	Sj25Z8JuHzszjurBr6I40ujjA3Zhz9zXvp483ZBSfToc+TdnqSpQWLQXHeEYqNb4DdnICx6NiKN
	1KwDdFgKyGck4Ss7H28rBiFKskXQfRpsbay3JEWBek5ukkA+cZDS1y6YG7j9j5dGnkaRq+PJTkc
	ZA=
X-Received: by 2002:a05:6122:3784:b0:575:24b5:88e7 with SMTP id 71dfb90a1353d-575596afa83mr12273820e0c.11.1778505871057;
        Mon, 11 May 2026 06:24:31 -0700 (PDT)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com. [209.85.221.172])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-95f21a274dbsm5310342241.7.2026.05.11.06.24.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 May 2026 06:24:30 -0700 (PDT)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-5673804da95so1376482e0c.0
        for <devicetree@vger.kernel.org>; Mon, 11 May 2026 06:24:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+Q1WNZIzm+QXf1w87oHcGD+IWVNmSzxEvDYxIrt6CMIcN4PjcdsCrgZPifgfb1VJF1+d8s8I4qaNTf@vger.kernel.org
X-Received: by 2002:a05:6122:a07:b0:56e:f071:d4ef with SMTP id
 71dfb90a1353d-575595be49amr10895995e0c.8.1778505870316; Mon, 11 May 2026
 06:24:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027211249.95826-1-marek.vasut+renesas@mailbox.org> <CAMuHMdVwXjE0Bq1KjENkN4m2h0_nN0F2S=CC8mW3B92NdpN2_g@mail.gmail.com>
In-Reply-To: <CAMuHMdVwXjE0Bq1KjENkN4m2h0_nN0F2S=CC8mW3B92NdpN2_g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 11 May 2026 15:24:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVmpxtMno3Tt5LbiUHH1etGD2aq0c2rjde1kcs5e4Acsw@mail.gmail.com>
X-Gm-Features: AVHnY4KM_QK8CB2bNfMDHhNxtA1NDb0fdW8Zso7UqyzZiddKho5PeDYIcKub3kQ
Message-ID: <CAMuHMdVmpxtMno3Tt5LbiUHH1etGD2aq0c2rjde1kcs5e4Acsw@mail.gmail.com>
Subject: Re: [PATCH 1/5] arm64: dts: renesas: r8a77960-ulcb: Enable GPU support
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 72A2250EF83
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,kernel.org,gmail.com,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-295595-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	RCPT_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,glider.be:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mailbox.org:email,linux-m68k.org:email]
X-Rspamd-Action: no action

On Wed, 29 Oct 2025 at 15:51, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Mon, 27 Oct 2025 at 22:13, Marek Vasut
> <marek.vasut+renesas@mailbox.org> wrote:
> > Enable GPU on M3ULCB with R-Car M3-W.
> >
> > Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Now the crash in case of missing firmware is fixed by commit
26735dfdd8930d9e ("pmdomain: core: Fix detach procedure for virtual
devices in genpd") in v7.1-rc3, I will queue this and the other patches
in this anonymous series in renesas-devel for v7.2,

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

