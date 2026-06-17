Return-Path: <devicetree+bounces-312859-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yyGOIsZaMmrtywUAu9opvQ
	(envelope-from <devicetree+bounces-312859-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:28:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E386978CF
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 10:28:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=idJZx0nB;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312859-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-312859-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 05E283015A70
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 08:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56794380FF8;
	Wed, 17 Jun 2026 08:28:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F829380FE5
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 08:28:49 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781684930; cv=pass; b=J3mkfvPe5CXhNTHilVrZjIIKlOYfqSspKH3YFddmCa/zf8qzCm3VT2xX4UpcdOmLoqYUDhMJ4eQZtRgVnR6ln2Fu39pkqF0aJKvWX+/w1UYBMu67dUe44E3aLcZaj/Ks+6WnJKArQL5wjkTTuoI8SNS2wsjS3AsixXSaTbVK1gk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781684930; c=relaxed/simple;
	bh=REUabZ89fdzJHQBfR5WXP0yj910l7rE7V9tU7qHuhFw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L5FAmSTyn3ODDtLx5GFmrBU8QMhIj7SGuoy7joMM9PNna30DRsnvs61IQJ9wBTES/ZqPH+joRHIY/tCfhfYJ13l2FxzseePg1PSk9LZ84g3bx/qP5cLSs5LxTa8DUEsrp98riT3rZLee89pnYonup68odWdvycQrrrjKAU+mpdw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=idJZx0nB; arc=pass smtp.client-ip=209.85.128.179
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-7e266714bd3so63929037b3.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 01:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781684928; cv=none;
        d=google.com; s=arc-20240605;
        b=SnX3FLGv8PMXJ8HFD8WMoVODjcBZ+xt5EoUbvzHZwjr2uJmTy9me1g3Xe8PcSgfxzg
         TTgZSF32rOR9Ba32/MfwkR3V3kBk3OYJJLOjpSRGLLCEwe2yaCIkvDKxgoif7yiI3ABj
         x96dfzK9cHAjPwDhpl7jI6niuciCm2Alslae4yc7EBSnrUJ4kbf6sarqhcrRazm3ck1f
         DsAcRo9RFIzfIwLfxYW+SUPFrzxA2udW707tOGvUEkNGF13UGsPS/m6FpTTm7PtT4R1k
         LnqW7OHyOagKp7OVlo6ZOquSwH6k/QDrJMX+bsH1jYJMtVFl+51YG1OMME3F9KMSuuN2
         czdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=REUabZ89fdzJHQBfR5WXP0yj910l7rE7V9tU7qHuhFw=;
        fh=NnTSzD51tVg/kuCYdC682TrmLwVHris+VXr90SyA2wo=;
        b=VwPsDAQW9+JzVcIRRXs0+coH/p8ZUko3gAR5BlsFlXLMPQ/xOI3URoJsPP/ySRXgKI
         E27CYILwsFe09oifD2QY2MS5UGLACBdV1IiCxNCK4Bwsd6Xg3Pax0wmrz2eMCSC/3oWT
         gcKyRAoisfxlgR3KHW8C3NTvtV+Rs/iKqKvSLpQFEPQC5Ew6pvYOxpIIWow4wgqjAsV8
         o6WhNpk45ly5FEN6AUqFtm9SqQA+aVkDIKN1bfx9fw+yMDMY3shvCeKYxj0sTy69FO71
         YTkF0NN6/T34Z1jfhCAuMzi3+h5CiKSwHEKRFKUdVTJn43Rrers8QzNCMyuXOLffUcFT
         UfbA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781684928; x=1782289728; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=REUabZ89fdzJHQBfR5WXP0yj910l7rE7V9tU7qHuhFw=;
        b=idJZx0nBQgigpMQVX7Kxf3eWtz4k/2upygB98XQRs61yjYuUPXS0RmBqMfwDfckA+g
         PHZ41eb29zZj70iLQgkKLlIEweCVjbES2tkqz3KoSVM/Khrg1Sl0Y11ZAUFEKihFzefU
         3wAQqEmHpZVpqmsvlcmPJF0X4diKRTBTBDE1xypJtlx8gvyf7jD7RIdtPqOtU+7uj+Q7
         H/cxXAwyM8S5IQzfjuvPeXZqJ6c2kLEsWkomb6Q+M0+wVmOVHb2rsHmNK1bp00pU5KNU
         j8gS5DSzMpUP8v2rbM0pbrNR7uK5uFj6GTLfQfOg39ZYjoMa5NbD1twlbwd5/qinwsea
         d1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781684928; x=1782289728;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=REUabZ89fdzJHQBfR5WXP0yj910l7rE7V9tU7qHuhFw=;
        b=RZGpU9tQq+84RBzavx1dWIbfrh+pQN6ZXxfxnbNtSYP2bA3Jnw2gaUsZ7NhQsScnt/
         FkQ0rNoN+IncJrmaiZ14IMZclDshK7cehBlwn13CYJqxzP4mm64il2gbCXdO9d4qMzDF
         u1om8+0TFkmBND9GopfEiauNdgX5/sVS3Y+Uxd38Up1K//w8biV81o7nKiPfuxCZq2d8
         8FPLqsNuR39jQiTu0pDO9xRpozJtvKEMP0yu+u/+Bfa44dqrY+8wS0Nsiab5KKoImMRO
         11bLZeww+hIkk5Ro4Zq+aVYjLZBEa/iwU01DczgsAi8eqb/loE4rwEmx8PyrK342KEuk
         /xYA==
X-Forwarded-Encrypted: i=1; AFNElJ+ujXKaBdOEos6DaU5M/GPeKTBm3p4qD1nX3m7UtJOAV3IzvriOw306whEINUpxQWFoiKsA51g2IYkL@vger.kernel.org
X-Gm-Message-State: AOJu0YymLsJbQILdWZukAuKSzEk4S9c8W0QwJyqdseqTN6PdQ6THwILD
	HcO4hr2WLpKRLOrF1U90ld8eB6BDRr+uLnPv4yhLvpLZWv4ywOYq+NPUpc605QiXyzFAjAEYbOR
	Vb066GbCHZ/yGz2F5ilrMTUfwgiLZkgg=
X-Gm-Gg: AfdE7cmIHxrUAIUeiEYrb1q9KdzBonqjoJ1/kYe0kzjRXXpeHvqLv54gvk9/Fva7WNx
	T+JgR+7vwvNhN7lT2FwSjqvMXul4HASNzsOC7zmbisUhLQNbCUQ0vQT3ZMWRUcGNj0qe96Z9SQ4
	A5TpKoPcVjtK+f2bfJsWbke3NiZSobJpVg7GzjARmYNXNzg7hLB4+8wn351RviQzhLcW/0hYpIQ
	Oa5maCBKKY8fmo+LVYJh0EqkEmlGISRp2Mf/EYUUvk1YLCmfc+4dWIcAHvhSKcnSJHA2jbbRuJm
	N4Aewgg=
X-Received: by 2002:a05:690c:a84:b0:7ba:f712:95d7 with SMTP id
 00721157ae682-7fe5bd27fc1mr27706497b3.5.1781684928188; Wed, 17 Jun 2026
 01:28:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615115311.515404-1-challauday369@gmail.com> <20260617-sturdy-silver-bison-bfb6ba@quoll>
In-Reply-To: <20260617-sturdy-silver-bison-bfb6ba@quoll>
From: Uday Kiran <challauday369@gmail.com>
Date: Wed, 17 Jun 2026 13:58:36 +0530
X-Gm-Features: AVVi8CdvHcrizKqHwbnPdHShHyXWZ-18gCtWSxqioGqFu8vf5KFakIdcI98C7UM
Message-ID: <CAAj-GB=GyEBjBrRkFKyrD=dceMoHy=P1yeb4zakLqzO5WMA3vQ@mail.gmail.com>
Subject: Re: [PATCH v2] spi: dt-bindings: microchip,pic32mzda-spi: Convert to
 DT schema
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: tsbogend@alpha.franken.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, skhan@linuxfoundation.org, me@brighamcampbell.com, 
	linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312859-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:tsbogend@alpha.franken.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:skhan@linuxfoundation.org,m:me@brighamcampbell.com,m:linux-rtc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[challauday369@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,mail.gmail.com:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F2E386978CF

> > Convert Microchip PIC32 SPI controller devicetree binding
> > from legacy text format to DT schema.
>
> Please mention here that you dropped requirement of 'cs-gpios' because
> it is not a mandatory in hardware design nor in current Linux driver...
> and then CHECK it actually against drivers, which will lead you to
> conclusion that maybe it is wrong decision...

Thank you Krzysztof

I rechecked the driver and found that it uses spi_get_csgpiod() for
chip-select handling and sets host->num_chipselect = 1. Therefore, dropping
the cs-gpios requirement during the conversion was not justified.

I'll restore cs-gpios as a required property and resend the series with an
updated changelog.

Regards,
Udaya Kiran Challa

