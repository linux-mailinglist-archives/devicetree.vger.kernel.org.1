Return-Path: <devicetree+bounces-274117-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Aj1JyxwsWlVvAIAu9opvQ
	(envelope-from <devicetree+bounces-274117-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:37:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D975F264ABB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B987313BE57
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E263B31AABC;
	Wed, 11 Mar 2026 13:32:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E7F31F994
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 13:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773235926; cv=none; b=uB606pD7I8HzGVCrArG2ZWMFsa5iY2vvRR+nt1j3RCUMk4vxnhBlziffJPnhiVksIBXvmdKGEPSvNgtOh+K4oKz4A6ov1eH3ouJhd2bhGEasELXguCT7DDCwKqvtj/VkBH/N5HlNzEEFC5FatwG9KkoEWeJlydoB+YDfQcUNXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773235926; c=relaxed/simple;
	bh=TEGOliZPIKjcYMq/SlpUhrjTFTqBozUfJkzHQj68wwc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iDon81Ah7z/1F4H8jqQdUPKPgcdeJtoKoK1lFuLSfQB3rV/kRLvgi0swQv5+AtH1OQtakLhao1Mfv96iDGsfzQBC3aPKT+hR426Dtcro61Jiy9dL2qBJcVZfhnlXqdd5qZWfQU4cKiiiN4RvtPCXaH5pDtBEOgZA1R/NzaXwE6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-56b16428b77so3863871e0c.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:32:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773235924; x=1773840724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aFGeq6M+ANIk5ThSAzANkY3DpNoGSDLWjfwUeKz6NR8=;
        b=B9TdVU2Y1lc0zPm7Vc3dDxsPTrw3m7ycXWW+ny+5B+tIsN1oCKGpfQokz1iOfWz2pL
         1TyrmTGF6k0B8S4qNZpJ+KEmoDOo5K/U+Ekvytu+kIvwhvagmYtCNXxVPF/N91q8rPWu
         SuBqnCMBkfhisvapAc+24+roG8+8xwp9D04bpre475aIf6V29Vdjlvnn4mm44YmrTXpu
         /Mt/EbjF4LuwOl67sF7rbYm46rSZTFQ0ePkV/PR9mFioPv4e35nEoW0RNP21CUVu8fYW
         LVuaTH29+FMwCLaPJ1OPAb6WDZZhlFijnV2CIdI8q3DvD4PVUr3r91Y0b7seR3x0YV4r
         fNfg==
X-Forwarded-Encrypted: i=1; AJvYcCWxkBzYkz60vMMdW7s54WPyvBGLmS+TJDnxJL+mtzEmjcudJkaWRpCrL5nptcYZEo4Hepmko4ojoKQc@vger.kernel.org
X-Gm-Message-State: AOJu0YzmeWTtRCVumEl7Cjs0yY9J4gqsmOTFdYKQolowdn0eGUScupFq
	N+6lZF/D7LUP2W6tYQFTIU3YMiOm15mFRcuTC+5eStawDrV9x0mPp4FfeePvTlFa
X-Gm-Gg: ATEYQzya1PaXaSY06lolx3DChlgo0fgMANLJ78aj+ZEwDuZ+Znp2PRdrzNItT7u+Ao+
	wA0KzR3Gi/cJh/cofnHJbTuQkeCBaaq/PWozi0sKZatSJB7LCIpzKVA7Lmu6LoWh43dapWvwr5Z
	Hg3H7F4Wqj08dApE8rZ8xohI6h9UCLyMN99TK9dMHsSV2kp4dpIUCeubfpTsp8H/6M7qoUtquSU
	NNg2diIA975Bq/zG+BMG3SaqeBgTh5gE6K2AGSGytggVsg16IC9M09QuHKRaFZmw+T9u4QA67ah
	zzR3EpkKKoJ2MKke7qBpKbaIiD6X9lSENYxl+0bCkTm1SwLq64TRuGrj3bORnLuO/vqa2QQlWWy
	AFu0PSEyp7yN+2QLvZuGgKupi0jWnWj4un2H2Z6PGK1fbjfHizcX/llFpHljlgZhnLIN0siQ0DO
	3sPBrZZfpjKUM3nEjLKVNLI62N2bZmbSS8Gr0u9QNoZniCEpT3QOW3PYK5jRCjb/9Z
X-Received: by 2002:a05:6122:e169:b0:563:7a35:1d9f with SMTP id 71dfb90a1353d-56b4755505dmr962645e0c.15.1773235924558;
        Wed, 11 Mar 2026 06:32:04 -0700 (PDT)
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com. [209.85.221.178])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56b4646bdfasm945708e0c.13.2026.03.11.06.32.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Mar 2026 06:32:04 -0700 (PDT)
Received: by mail-vk1-f178.google.com with SMTP id 71dfb90a1353d-56aebfb4184so7210753e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 06:32:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV0eLq1+oimnBO6VV9i+Rq4+EVTHbcd41/IYr/aY/TghNHlWz5RRUxyZldmKlXHN/iRLEo2Odv7UoIu@vger.kernel.org
X-Received: by 2002:a05:6122:c96:b0:567:4576:534e with SMTP id
 71dfb90a1353d-56b47436dc3mr914567e0c.1.1773235924026; Wed, 11 Mar 2026
 06:32:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303233314.2928711-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260303233314.2928711-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260303233314.2928711-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Mar 2026 14:31:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUVj+2OfbBbLPWtes0=oQ2Z8s8dejFGv7fu=MCGaUJhgA@mail.gmail.com>
X-Gm-Features: AaiRm509M_cbkmHsZuryn42P-hmBtw9lLyP2WI9rw9d8OsbMr-Zga8Z06XMDeEs
Message-ID: <CAMuHMdUVj+2OfbBbLPWtes0=oQ2Z8s8dejFGv7fu=MCGaUJhgA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: renesas: r9a09g057: Add DMA support
 for RSPI channels
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: D975F264ABB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-274117-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[glider.be:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linux-m68k.org:email,renesas.com:email]
X-Rspamd-Action: no action

On Wed, 4 Mar 2026 at 00:33, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable DMA support for RSPI channels.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - Added all the possible DMA channels

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.1.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

