Return-Path: <devicetree+bounces-290072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2AtTHqp062koNAAAu9opvQ
	(envelope-from <devicetree+bounces-290072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:48:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4F345FADA
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 15:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 874353028EBD
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 13:44:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386B23D75B6;
	Fri, 24 Apr 2026 13:44:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76BE3563D4
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 13:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777038279; cv=none; b=IetEjNQyAXHLYVCoh+F95SDvKcovyr6wibuI+xVZ7m6cmL433Hv2lZIqeJAXG2d6JlHA6HkzZGaMAjW5aDR1yc+hlIWQ7qve1jj8xzxNFq6p8kKHygzl4ko1Im0kGJggbwoxsqyd1JKaGfgFIZR/yFdEI7/Rl2dz5unblptva6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777038279; c=relaxed/simple;
	bh=1EsaHT8Lnwn6OB/XIdccrHAPqaw20A7gRtQ2nTSrx3c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZCu5j4fdD2LAwRQ2mTBCFrhvUtWRM9wosqPQGM0rxZgDWFZE3Xw8eqDQzlNBJVFWq2ndZjcfTrjl2wsbZD8EtFkleuqSVdgox/0grsXmC3tnkHaIe3e2g8xUJC0V+E0gCm1J3zhehl8b54lIbsLX7J2VLvIOlkk2dj+wQsbjaeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b9358bc9c50so1062174666b.1
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 06:44:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777038276; x=1777643076;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qVITAiWvrW92i7MAbP6rXRmEbOpDAiwmF+Jd0SOVBOs=;
        b=IHL2sghoenMSawOUMEewKo8hWBy2ZrHGpl23wAWA2ZMEk0t7rz6/zIBwnt9qmYXFgf
         A2tHY29kX6cyJQ/2R4Hk5JhEVAw4xhEBHCKlpCXoG/bLBCCiqu+oBWwkOx5VCPPMEoBR
         QMTUN2TobrAtCGKQVeWgQq63u/DRJdHxAbpHaRJgxph62S5WKOLttKDikq3DWa7g9dbw
         cD+wess72jK5t20W63nX2sHQLYxBlEWOYdQpBFUHMx9jVBk5aErR6EiclYCrd2oMKafc
         rQaOtObYf/FkZAwc6VIFvUk5IhJT19uRAbF0/1pz0BCNZ2fMFES3a1ZffhCtpHx4sjVZ
         oDSA==
X-Forwarded-Encrypted: i=1; AFNElJ+cadzmicr2E/1mOYfKoOXzUkjxj77KdnngEaus9GhF6AXqp0NzxoP1z3SffBqqjFLL6Npce3L4RSXT@vger.kernel.org
X-Gm-Message-State: AOJu0YxAJ3TnBhpLNckTMo8BdF297N7U9tdPCsWDFXjtsilbz9O3tnoP
	zb1ChvgzEe8s5nRZ5roE5G/ggWSs/QQaZPqILPwUU0if6RhOtJjY88S9Zv7Qss+jza0=
X-Gm-Gg: AeBDievogfESAWQ5+R+hjBJa2qAjbr8H9Jtc8au2xV175Pu9NvsM0FiOu0bKlOA/wzO
	2BGjSmBcPuANvwyxrcbsBwccY3n4+mKrTOBC9xrMpMpIgc7jSnzMg6CGiVwBsn0Yo1NOl0E3o4Q
	BmWcbUvZ7VpbyLEK9TFPxUUB1wn6plMhmku8gF+AAkDbFUfuwevp01vLZfhWIsVwTw+fDR4IyWE
	DU37SwitWOOi42iMaM+38KjzTgcFGoJfxHqwdnT5fCrS5pOL8PVyXQmUtSpZoA2MjTlbURqE1t4
	2GcrF1B/IvdZgSqBvSV0hNbRAKwKKJ3CElVdwEGoHaAd29hWo8HGQSXn87pwEmBwXraSd5dIkdJ
	0hq2PF+IQgyfOIkpxcs+9Y9k5NSPbfO/izKbi5MIbn49fgABNTR8h43BbIIIK13NeZd3vIsYK90
	nsxmQmeae02M7KQDWKzKoFKt0IpOshzEOu1+lnMSotEQ6hwRa1FYJXnl4YmGLsl8ye4+5CSQawI
	TakRLs2qw==
X-Received: by 2002:a17:907:97d4:b0:bad:5231:d5c with SMTP id a640c23a62f3a-bad52310d9fmr215274766b.47.1777038275932;
        Fri, 24 Apr 2026 06:44:35 -0700 (PDT)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com. [209.85.218.46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba455046223sm778610666b.49.2026.04.24.06.44.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2026 06:44:34 -0700 (PDT)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b9358bc9c50so1062167866b.1
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 06:44:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9kOKpuftSacUcjDAXPpAujOHwIVil5O0NtWnDZhPhka+mMZ2DjWA/VqJl4ILIgyi10RIwQBavl6V7O@vger.kernel.org
X-Received: by 2002:a17:907:9308:b0:ba7:34cb:388b with SMTP id
 a640c23a62f3a-ba734cb3cd2mr1213880966b.42.1777038273933; Fri, 24 Apr 2026
 06:44:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260422233744.149872-1-marek.vasut+renesas@mailbox.org> <20260422233744.149872-2-marek.vasut+renesas@mailbox.org>
In-Reply-To: <20260422233744.149872-2-marek.vasut+renesas@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Apr 2026 15:44:19 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUoiAagA16Cg08vTzOzC2Lx_PAZd0K7rggEsxBgZ0NMdw@mail.gmail.com>
X-Gm-Features: AQROBzBA7dqZ2ppfvOSrUp0QRX1PbdziYnEq3L5TnWuwS1i-ktuGiob_NjXbKkQ
Message-ID: <CAMuHMdUoiAagA16Cg08vTzOzC2Lx_PAZd0K7rggEsxBgZ0NMdw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: renesas,cpg-clocks: Document
 ZT/ZTR trace clock on R-Mobile A1
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Michael Turquette <mturquette@baylibre.com>, 
	Rob Herring <robh@kernel.org>, Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 0A4F345FADA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,oss.qualcomm.com,kernel.org,glider.be,gmail.com,baylibre.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-290072-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,glider.be:email,mail.gmail.com:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:email,qualcomm.com:email]

On Thu, 23 Apr 2026 at 01:38, Marek Vasut
<marek.vasut+renesas@mailbox.org> wrote:
> Document ZT trace bus and ZTR trace clock on the R-Mobile A1.
> These clock supply the coresight tracing modules, PTM, TPIU,
> ETB and replicator. Without these clock, the coresight tracing
> can not be operated. While this does change the ABI, it does so
> by extending the existing clock-output-names, therefore if an
> old software is used with new DT, the coresight tracing parts
> will likely fail to probe, otherwise if new software is used
> with an old DT, there is no impact.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue for v7.2 in a branch shared by clock and DTS.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

