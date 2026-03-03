Return-Path: <devicetree+bounces-270493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aF0sLDLfpmlkYAAAu9opvQ
	(envelope-from <devicetree+bounces-270493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:16:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 315431F00C5
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 14:16:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 476DC3095977
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 13:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC0F1426690;
	Tue,  3 Mar 2026 13:14:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F423421F1F
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 13:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772543675; cv=none; b=rp1R98n6B8mLvKhG5A1mL0Fg1sa4rVVUkf58KvjhB1xG79DvGld+x1A0qqDLt2xxwKdX+MOFHklWb8P3mjj/ICfnlH5uSJfMbT3NgwChNWwLBydbvGlLL99OStyYr2J1aybOP1uub/R2jNIudBHsH5c3yumUENx14216yGU/dHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772543675; c=relaxed/simple;
	bh=gcVKBhiWEywu8IVtdOHISgtMYk/liHzhW9EmtjMMR6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=iQW6n2ZnCRm1YeHPl1T6/0dLYANdT0o5fIkleypLEhUnGz6P2ZDM1Q+2GBHpjrrFQYunmH9jsXOT7w89L6L16QslRGqs+1b3XpSQJ2a2+ZTCy1vpPB+CvC3sLZuEwrPMrNE+AUpu3rg6CdF8cPQMsLmIWUQTwN/wwx/Kr12M63E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-56a8d7bb872so5299202e0c.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:14:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772543673; x=1773148473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T7piWhiIWgPegFcPXnZxv+AF8LrC/qNugfBvwGvY2QQ=;
        b=HGvBpcnN7mfun9dVBkjHt3ZPX7dasCRG+UMKP+7bxwyFERIlxHuvYw3b49q73i7dQC
         yWe6oLpXW8/hM5zd7TrCTb58WFZGbPh16JDNzVuT1dm1v+FNMdkHR5y5WoA6hdBb6m58
         id9ip9m/L6DuUPjzb3xgM2UbJdQVJMwtIHQJC2y/OGJq2uXQBtwSOs2rB79wXqTqmK7k
         RP2ElD3rLs96tXyEn8qAIjYmxK13RfNjyH2oWAX5DX+qKByChMdMCr/u2L018eXeG1gN
         IaMRJh4rFwZZOwN62EtFTEAHoGoXT3E5jWyCpmLKRMa+cGd99ESv18FQM2cVjLIv900P
         vqcA==
X-Forwarded-Encrypted: i=1; AJvYcCVLcUyssA9ZuOS/0mOmkx/I8KKDoYALDf5JQTyzj/WXW1D29hkXQP0tkjikQOMG4UfNxrsz8jn08hqe@vger.kernel.org
X-Gm-Message-State: AOJu0YxfdP7L70RtMRqDV4UjHDtd58E7MUv/oP312GmI4BbnrbSNFkUq
	x6RjS6uQrUBP9H3hTWnCGhqCHHrsjgToBnUGZ1RBQAKbw9ls5WL/cKRe8EAGA1rz
X-Gm-Gg: ATEYQzwSItTlVQQhiY5jNty1mbTq/zszNxuKqOOYmzhYH0JeFocR7bhb9dSA/03iR+P
	2phM+jsbgzT4EaaIKIgGltMChHy+zoenV59CpXCYzc7pAU/leh21d2HfaeltwOJPDfg8zWFSt+5
	OJdTeYuoNNRvK3wrRgqEW08SrBVC/szhJ+kaRTQiMZOjHEXye6XIoRe/vGaO28LWldwHatScfJS
	pXosRBib6lYRdnUrF2I8PxT9EijHtbyHaMq2G3XiaecNswAC384i1AxewnJoq8tyt1GZ3dBwRiY
	0nlwB1NaUVyUoj1x0H3u9eXDcEpkOZ+fNpK1NZtxWDmDX5hwcnFKqnoRiGqClZ8lU22NLaCIsyW
	wVdlm8PJ/sK2HrlQDJu0o6iIXxRhTmbhSoPRFnX4mPE9uxD4upPHOD+m6EMmX0YW3ItpzffYFWI
	tEtXqwl1sGiJhsy8c99rky8GEJ69ZVQXrOVpcmB3+M5uAiAfRwbdgiBT+QIrq8
X-Received: by 2002:a05:6122:829f:b0:563:7062:2a75 with SMTP id 71dfb90a1353d-56aa0a169c4mr8144280e0c.8.1772543673584;
        Tue, 03 Mar 2026 05:14:33 -0800 (PST)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-56ab4aad2ebsm10364828e0c.17.2026.03.03.05.14.31
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 05:14:32 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5ff9d225a0eso117956137.3
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 05:14:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW2c/TAf0TxbKc+OPdGa4hrM7kTGELF0brbRdajm/XR0mDCgEQIYCoanTEwFJfr/0zMYUK3kMHCQvZ3@vger.kernel.org
X-Received: by 2002:a05:6102:32d1:b0:5ef:a59e:617a with SMTP id
 ada2fe7eead31-5ff324e88d4mr7987495137.21.1772543670903; Tue, 03 Mar 2026
 05:14:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123225957.1007089-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260123225957.1007089-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260123225957.1007089-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 3 Mar 2026 14:14:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUKVXyyT-kB9BdZsgY1cUeXepcA3ZSc5k-yv8-dB9Unzg@mail.gmail.com>
X-Gm-Features: AaiRm51CxZV-LXYs7xMcfTPengr0S-ob571jJ20tJGIKLTg8dNkzKwHWgTDa6o4
Message-ID: <CAMuHMdUKVXyyT-kB9BdZsgY1cUeXepcA3ZSc5k-yv8-dB9Unzg@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: renesas: rzv2-evk-cn15-sd: Add ramp delay
 for SD0 regulator
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 315431F00C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_FROM(0.00)[bounces-270493-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	NEURAL_SPAM(0.00)[0.526];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,glider.be:email,linux-m68k.org:email]
X-Rspamd-Action: no action

On Sat, 24 Jan 2026 at 00:00, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Set an appropriate ramp delay for the SD0 I/O voltage regulator in the
> CN15 SD overlay to make UHS-I voltage switching reliable during card
> initialization.
>
> This issue was observed on the RZ/V2H EVK, while the same UHS-I cards
> worked on the RZ/V2N EVK without problems. Adding the ramp delay makes
> the behavior consistent and avoids SD init timeouts.
>
> Before this change SD0 could fail with:
> [    2.646242] mmc0: error -110 whilst initialising SD card
>
> With the delay in place UHS-I cards enumerate correctly:
> [    2.633493] mmc0: new UHS-I speed SDR104 SDXC card at address aaaa
> [    2.641687] mmcblk0: mmc0:aaaa SR64G 59.5 GiB
> [    2.651489]  mmcblk0: p1
>
> Fixes: 3d6c2bc7629c8("arm64: dts: renesas: Add CN15 eMMC and SD overlays for RZ/V2H and RZ/V2N EVKs")
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

