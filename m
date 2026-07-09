Return-Path: <devicetree+bounces-323898-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d4dLMXm6T2qRnQIAu9opvQ
	(envelope-from <devicetree+bounces-323898-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:12:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3398F732AEB
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:12:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323898-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323898-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 90AE73129CBB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 15:02:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C3A933B97A;
	Thu,  9 Jul 2026 15:02:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D045331EC4
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 15:02:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783609376; cv=none; b=CL9TwDN8pklPbXzsP7ekhmmp6Bnc4w4tsJKsIcxRmb407yEbImIFMP0hkpvrqz3JP5od0faFF2L6IJsYedvFtPm8nC6hxWpD6rXZps6KS9C99akoE+bGghD+ZV52bBh5GiUpARI0SMi3Zlfr7S76RLMX4IySCk/OSabmrzzhXxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783609376; c=relaxed/simple;
	bh=35aZAkEec1mqGdc7KaCpDOZV8ahaarylBoPlmcyfWT4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U/d2B7Ixw4St6Y+Ktu51K5wmKAuYRcwyMisSkL94HVmGqgtLa1ISjNlIw5TPsTd5xIVTfPo409C5u1znOUpYuQnxZxSI6IYyHA/giITNKqQ4DIg6RSayIiSaU0N0HAlplQplhdnHpAQ9X9IL18P0AnZZ7yxQCvRf1inOHT3DzXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.218.54
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-c15e0c3f395so137967866b.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 08:02:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783609373; x=1784214173;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=o8A38Q0CzB2zKsBTRsMuUjW//3gRc5GwSTxcbEWs/H0=;
        b=JeOnkm/Fz6S9/QcMj2wfd5W4+ZDNrC0lvKSNOO3o7VjKVOvjA2fR3hHjIuUohyT//L
         ibLdVF8rmsOvTQ4gGFnPG5gzs46MexMkZbbb5JuSDDRXboUeH+wPsFr4I0lmvSEEfjQK
         APMCguhf0iLaJKDTd+as1U+ey0dF/CKaRKBPun4/g9rUJsSBdwlK3jG0wHFOZAsqPyRM
         Zhr6/3lbIKNgWsx7EHWHNgW0SxdIKxv1qiR3lT0MC5oEaQ0+ombEJfLYgVmDxgCCh01J
         LyITjccMOWVj1zrbJiR+ubYoZDlNAy4S9wyfq2HAOM0ptDIxPbNKtNwmAuftqdkrU/Qh
         eYUw==
X-Forwarded-Encrypted: i=1; AHgh+RoFFf6k5vmGKpr7oKwDAf7AK8Q3VjAzpD4LLGFtoICW2SGFEchUFJpcN8qH9AsghFpEkDtcpDDFD19x@vger.kernel.org
X-Gm-Message-State: AOJu0YzSdecUsevL+xkIXQVCHMWxbBd4Dl3BMdYrcKatb87ZnelrffjW
	QKSD7ZJWFGvTQHyQa5hKPczd0I1WkPkhjAe0BYsTXBlGXPwHnXIFm7semrAi8dGdTBA=
X-Gm-Gg: AfdE7clErX+Hsj2GdpTKSiPzHfwDHFqysGdeZl9jjQC/CWdQVi7uhhOH4zUbgeK4x2f
	3yBioNqfLl0hItSWdHHP5FkpJ2CzRJaJu1k5+c/qJA7YKf4A0AIMXeHiZhRC8RMWt91mkrAVfY5
	ocgVQ5cEuxcKtBnHejmbpJgVcIHqNRSNhNZ5pfwll1XrFPp4y8pCyu+VyNHJ8tXcapGHC0B7Q97
	jnGs6OEcnBwEVHWfB7gsWTlLO0bYyMmP+V3GA+iGCUviBuFH5fHDhDjNDGBmoTlhrT2v77zEUpB
	CfcyyoC0TLAqL9Z/rg5QaUXhl7JCQwaGauTJUihbss8xcM97I5AYbOXQ+svPv5HjY6spnq+h21i
	vClOPxnyXIMZbKzsTcwvNnYo/0EmK/xxYkOBfm6jv0PpOHfDYqchdVZb1/hU42w3mSCkntk7Sfl
	xEwCqVKNWYB314znu8j2Fa1Mwokd+tH7vqg91KgGwD/bb5lMWftg==
X-Received: by 2002:a17:907:3f15:b0:beb:8c28:254 with SMTP id a640c23a62f3a-c15cdc62f3emr448013266b.0.1783609372925;
        Thu, 09 Jul 2026 08:02:52 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c15beb53b86sm372079366b.25.2026.07.09.08.02.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2026 08:02:47 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-698ab9aae16so3664649a12.3
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 08:02:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AHgh+RoirOOyrIaY0EnSaoEySj035n5bgcuC1mZYFJN+95jOQ8diLKhiMVidBJTM7G9Gxn7elYzju0M6PhNv@vger.kernel.org
X-Received: by 2002:a05:6402:428a:b0:698:5610:76e5 with SMTP id
 4fb4d7f45d1cf-69ab445ea87mr3175758a12.6.1783609364585; Thu, 09 Jul 2026
 08:02:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260708163311.222176-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260708163311.222176-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260708163311.222176-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Jul 2026 17:02:30 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWm+rUZ3um4Gp=vRiPfST=yRHcWebR4vf=EjDDOY4nJ0A@mail.gmail.com>
X-Gm-Features: AUfX_mwZn7h_J-NKdmMEPwufWjNmkA7n54fFSHEyd0HltN9FnLIY1Os7sG5RsDg
Message-ID: <CAMuHMdWm+rUZ3um4Gp=vRiPfST=yRHcWebR4vf=EjDDOY4nJ0A@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: renesas: r9a09g057h44-rzv2h-evk:
 Enable PCIe
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Prabhakar <prabhakar.csengg+renesas@gmail.com>, 
	Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:magnus.damm@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:magnusdamm@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323898-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,bp.renesas.com,renesas.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,mail.gmail.com:mid,linux-m68k.org:from_mime,linux-m68k.org:email,glider.be:email,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3398F732AEB

On Wed, 8 Jul 2026 at 18:33, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable the PCIE1 slot which is connected to PCIe0 channel.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - Renamed the node name from pcie to pcie0.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v7.3.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

