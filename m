Return-Path: <devicetree+bounces-274136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLe5F/5ysWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:49:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BC53C264D5F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:49:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6D703050214
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0D6133E355;
	Wed, 11 Mar 2026 13:46:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4132D8DA6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773236813; cv=none; b=gGqR5xbG/pCFI/zLIeYjEG6U9UPQAknMlPin0L9uDgBaTiBiyFmnbpxUtC/pDOYQFBfYBS8D3RIbtUCyVgXqr3a0DY35INnQzBiZhxp10C5as45AS2kntj3spZVDHmBmRBMxbgOeO6B2SU+yV2UVe2G1Tswds1uEswAiOGjsqXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773236813; c=relaxed/simple;
	bh=5xYUudxznhB/9gI0iYC0XCpk27j9+cjg1Iajg5XCHoM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ktgHlWjxEMtv4hDodWQ5c8cdaAUla8ftyWROk6QLHdUPvLs1zo5qDD0/Ez0TCdZdHBycSwvcjoOg8NBp9g+SQxSnVETXeZVXby/2aBeVuxJghfkIcb8aNV0WGaLZgdrZIcJXQ0VQ76jWQRcnQlLzqN/gX8R43sv1mDjCYMsc/eM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f170.google.com with SMTP id af79cd13be357-8cd847b4b23so363227185a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773236810; x=1773841610;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cArsbpNTjSz4s4xSJeS/zGPEDFrbSvYY3oJhygDvULo=;
        b=Wpqye77oTA9QMFpf+FJl8jm3B5Txjr5g90C+Gvsde6Vzf4B1L0RyuTInxX0sJY/+iv
         +VOTRnhaCScF3WySkOYd9IcsoxakTMi/imBJrwGO6KKqFQ3dm9afqIlByVY7Nrx88TYN
         h07OM0aHM3j1Wskqfv+FNJWWDOis3tUn7be7aqt4qQ/tHGUY/ckdWanb9oUtcmlEEObS
         YmBuLwi8URoK3CLuaxGEMYicnMGrdB8+ChuWDCwbVrs+TVvn++RgoZZcGH/cZFFDy0bB
         eK8p3uCti9i7mihfHu9Co5JEDXGJuLuky9xJXASosORU7MVQ5UaeJMxWI/iV5UtnhU03
         ZQRg==
X-Forwarded-Encrypted: i=1; AJvYcCW8TuPrb5XR8J2Q+x0XufpKgHw4DnIHEekjITcTw2/ltN2PABxphoGGpN8Ch/lPVmJt1L5H7krHAEpB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5EeQ/r0GC34/BZ8XPRFIxu4DkQOJrF2ehwUzvwtuRSenUf3qQ
	9PdwXdW6sv1gcHZ1OeSHk9gT6pD2wnV30e6cIEjsmJ/odvBPoDa3gd1w7xFEX7hQ
X-Gm-Gg: ATEYQzzEkxwCMv8WMBKhRo+locLUbHi690YJBgw8xPRyHd2xoPh6Rt3vtVlx9CJVWJM
	8G6ghm1nu5urGS8VgzDApsYdfSLW/a6/5PFnn02pHomyZSCiKrL+Zr/NfRRvLC3AYfRdp7+zokI
	GI+/qqBTOpXvHTRRxBHitTGKILoOAxMwkVkBDfuEmLDHqqB98q7KJGKfJ1ZjJjyNZBStBZhGh+O
	37DwSmi+g066zU1kiUn0PpOMuKW9a8+jIZIktJMPJpEbZjkIoTMdnr37c8f1RP3QjkLTZkyNQjW
	q8NU75EUgaTLpXWkYkzsAloQW/8wEEr2eAvMDLh62rSDmzT3ypFy9CDmaIv+jiXVPomGOtfZi4h
	8A7ZSRe5+SdzZoy5OeAWMRBxvj/84KMbtk6t4Ge/M+TV4PRSfXi0XHSkeFjfpQgmp1OE2u8W66m
	qopprFkskbr1URaa1d+WpBIo1ZyVxLVFKkFTNC6oINnXC8Qg/aRUiMcrSPS89Vp8aa+RXjmstav
	UI=
X-Received: by 2002:a05:620a:3181:b0:8cd:7cea:aead with SMTP id af79cd13be357-8cda19ba30fmr321420185a.2.1773236809882;
        Wed, 11 Mar 2026 06:46:49 -0700 (PDT)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com. [209.85.160.170])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cda1fd6325sm133925885a.11.2026.03.11.06.46.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:46:49 -0700 (PDT)
Received: by mail-qt1-f170.google.com with SMTP id d75a77b69052e-506aa68065eso121140951cf.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:46:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXJA6FFRelbfCXwQlDVV23D2d4VXQZzEPsFWY9N2n2JM8PvdD8Q24TUSSQYsKeADIE5p8RuBm9Tcd0X@vger.kernel.org
X-Received: by 2002:a05:6102:162c:b0:5f5:2e63:f574 with SMTP id
 ada2fe7eead31-601defb72a6mr1104622137.29.1773236445414; Wed, 11 Mar 2026
 06:40:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260205-schneider-6-19-rc1-qspi-v5-0-843632b3c674@bootlin.com> <20260205-schneider-6-19-rc1-qspi-v5-4-843632b3c674@bootlin.com>
In-Reply-To: <20260205-schneider-6-19-rc1-qspi-v5-4-843632b3c674@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 14:40:32 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVcwnYyN56Ktee0wR=oT3oMoZ=5KD=5RF4Bq2ohueJNiQ@mail.gmail.com>
X-Gm-Features: AaiRm509ZGDpwutdpDixUlMdHUAqZXZJALvV2NTJJn7lmkLWEJoaky0AqQwCh4s
Message-ID: <CAMuHMdVcwnYyN56Ktee0wR=oT3oMoZ=5KD=5RF4Bq2ohueJNiQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] ARM: dts: r9a06g032: Describe the QSPI controller
To: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Vaishnav Achath <vaishnav.a@ti.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, =?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
	Santhosh Kumar K <s-k6@ti.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Pascal Eberhard <pascal.eberhard@se.com>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: BC53C264D5F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,ti.com,bootlin.com,sang-engineering.com,se.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	TAGGED_FROM(0.00)[bounces-274136-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,mail.gmail.com:mid,sang-engineering.com:email,bootlin.com:email,glider.be:email,linux-m68k.org:email]
X-Rspamd-Action: no action

On Thu, 5 Feb 2026 at 19:10, Miquel Raynal (Schneider Electric)
<miquel.raynal@bootlin.com> wrote:
> Add a node describing the QSPI controller.
> There are 2 clocks feeding this controller:
> - one for the reference clock
> - one that feeds both the ahb and the apb interfaces
> As the binding expect either the ref clock, or all three (ref, ahb and
> apb) clocks, it makes sense to provide the same clock twice.
>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>

Thanks, will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

