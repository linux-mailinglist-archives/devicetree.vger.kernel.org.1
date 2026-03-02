Return-Path: <devicetree+bounces-269973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COAELKKBpWl1CgYAu9opvQ
	(envelope-from <devicetree+bounces-269973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:25:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4101D8430
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 13:25:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D228A302F6B6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 12:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9735D36C9C0;
	Mon,  2 Mar 2026 12:23:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="FYFrgNhN";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="stuAePr2"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD25366DBB
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 12:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772454188; cv=none; b=O2j/2FMtcFGcvkq0yapvO9XBPx03MRzUcRBgmRWRgeLkOtncMuzJKUSixogsgnR3S2dQIzmgbqKsefaRo9n+YdDo2KG22/uybaL4E7viMBWPCo8grCcsdKf7mGigFk2NSURiyURtYSCpjYrtsZ23S33/3dNtVCnLwjbOi5X459o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772454188; c=relaxed/simple;
	bh=AN1UX7ybnPRNMxbRnoTK3neHjvBhjhUKKMLCvp8O8kQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=pbNKleb8lC+LKo/rRBGN0GBaUwR2qRScGxQunHlzl/KI9lnn8abDQjs7HjfpkaInJ/81awVFfDnuVmQ0b59q923SRd7DvY5YJeuqQpKI0sqJ06PsOHgC/3Zguh8dHdLlZYtaVi73xIOeBaj9/pjhAfy57B0uFML3rpWYru0OXI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=FYFrgNhN; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=stuAePr2; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772454186;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FrnLTibfvtaQomZCj8lbE4/9KS67i2w3nIX7Xx6+g0k=;
	b=FYFrgNhNfORtoVBtfNpCNsPFOWgQb173RC+NyDQaMEz8Bbh+ghtDHhVkIpjr7L6OSEHRN5
	dV3gWxWCvOX9ByoPW99n6o+SW1NxPwqFypvfm96vfZ7Qxetkmvse5Tqd2K5Mc81mLN3YMZ
	sR66N+aWla9AujjzhS+/sn6x+MDi/Wk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-245-jcqpV9Z-PFi0iN6RvHFLGA-1; Mon, 02 Mar 2026 07:23:05 -0500
X-MC-Unique: jcqpV9Z-PFi0iN6RvHFLGA-1
X-Mimecast-MFC-AGG-ID: jcqpV9Z-PFi0iN6RvHFLGA_1772454184
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4832c4621c2so48506765e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 04:23:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772454184; x=1773058984; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=FrnLTibfvtaQomZCj8lbE4/9KS67i2w3nIX7Xx6+g0k=;
        b=stuAePr2vJSVZyJhkTi9pX5qABL52E42alYGhOYw405/HvfBTl1j2wS9B9h+0mClfh
         XSo1w0dx1tJvpeKC27+IOW9NjawCJEvcGwhccJyNIW3/V01dqWsin/ebKEXZvKpqpLre
         SLJvpekRdiTyNULrJ46h/GHAPJuzzgH9/+Fu0ufPJc+PeGiOiXnvUspy1AhGmvpsoRhZ
         fE3AQ6MJU4c1jAcAsAhUxwqLRfATJbJNy/qhrn3Y6XbqOWd6YIJkG7hVid+UlYMKM/jp
         /fMvGEAV2jBMV26tmjP1HNLTm8ueUrOVLxHYudCHgrIZct5+R1HTHuTOesfLSQk4pRP2
         hcNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772454184; x=1773058984;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FrnLTibfvtaQomZCj8lbE4/9KS67i2w3nIX7Xx6+g0k=;
        b=MxCrQJwD7n+9mItmFQkvsCcLmxogZdibvrLTozse47SVrfD/EYnwx6Eq0M8Pph58jv
         3LZsCRDSjpnB3sp1H34rZ7WXDKoyergIQgNff0WS1uHEI7JR3WD98G8RtBCsLn9gK94Q
         uQeZ05aXY0Ivtl76QNZLa4We9mqmRexGkPO6kY7fP5tYUdQUn20FeTZ5OQhCUe0xdHys
         x7xtKl+RzO4GvTlXIcidgpuk6WgwJKOHF6PBfX6NFAKbke094nr3/0bITZH955ARG3ZV
         kBOCUNaLT0DQX/PbbmeF03VwL47VA01pktfZkNio4rJmD1KuVdFO3lBgSOuWqXAXqeK/
         PKnw==
X-Forwarded-Encrypted: i=1; AJvYcCXcENomYidS7d67ha3FkvZ5hnpvWveCz4RuWMJUNvLQjewN/xvDE9A/cQsm2pZiRNtr1i5/eNM88WGt@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs0eYppLC0FHM6jDqhqtdvcXCeIjCPX5Bm+YCUVTWDI/Tckl5t
	A8ZojHCDYP/Dy0npuV2i1xxuAUUfzmM5xxIE9N3QFja9sEPdyBp/IKxdoT9DZM0NSyIgD5OjxXI
	c1whdWF4oudHhS1DXhPDHSPgZEy2mJ3AtmsRK5ppfItm+Iwo88tfXF7NMwgDqsVI=
X-Gm-Gg: ATEYQzwj61hIyurdLwRh8JnS+BGCGNgocUl/VAL6Y3ofarm6tWrGsOBIgA3pjuHB/g6
	wGPhpTpo0+3mTIrUOXaKBmfonhGgkJdz3vi+j4EebFy63Zx7d4IHePM63sBcLOgo/WE6fSM1i09
	XqP+70K7hV0Xx5BkAWn3+0hkhODHtGvWydPZcWfzayA+LzvpXv5bgdvpew9cdWJPNsMow2fKqHR
	BjQeFsC+wBnypXu69/OI6MzsquFlo/FsGd8HRXjqywLiS0Krglpy0c8Vd6gd53XJ5mCTUb80Bzn
	2S5518AP8swjpLGNK5irkJnO8Ebjeu/Mstd5SXSUeEKntMavIZsMyZ85hpzt9xMICJCs5Tt0bpu
	/CuxDNj5oFWhig4kxwVCL6e9wlv4k6YJgM1v+zOSjcbchi+ZAG/9ZuMeysjneSNk/smeQhDwb1P
	lOKBrI
X-Received: by 2002:a05:600c:6994:b0:477:c478:46d7 with SMTP id 5b1f17b1804b1-483c9c0b88amr205633695e9.22.1772454183852;
        Mon, 02 Mar 2026 04:23:03 -0800 (PST)
X-Received: by 2002:a05:600c:6994:b0:477:c478:46d7 with SMTP id 5b1f17b1804b1-483c9c0b88amr205633105e9.22.1772454183415;
        Mon, 02 Mar 2026 04:23:03 -0800 (PST)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfcd0b14sm129147135e9.27.2026.03.02.04.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 04:23:02 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Yixun Lan <dlan@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, Palmer
 Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Alexandre
 Ghiti <alex@ghiti.fr>, Chukun Pan <amadeus@jmu.edu.cn>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] riscv: dts: spacemit: adapt regulator node name to
 preferred form
In-Reply-To: <20260302114257-GKA289813@kernel.org>
References: <20260226-02-k1-regulator-names-v1-1-e87695d50159@kernel.org>
 <87o6l6vd7l.fsf@ocarina.mail-host-address-is-not-set>
 <20260302114257-GKA289813@kernel.org>
Date: Mon, 02 Mar 2026 13:23:01 +0100
Message-ID: <87ikbev2sa.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-269973-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[javierm@redhat.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Queue-Id: 2B4101D8430
X-Rspamd-Action: no action

Yixun Lan <dlan@kernel.org> writes:

> Hi Javier,
>
> On 09:37 Mon 02 Mar     , Javier Martinez Canillas wrote:
>> Yixun Lan <dlan@kernel.org> writes:
>> 
>> > The preferred node name for fixed-regulators has changed to pattern [1]:
>> >  '^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$'
>> >
>> > Adjust all SpacemiT DT regulator node names to fix this.
>> >
>> > Link: https://lore.kernel.org/r/20240426215147.3138211-1-robh@kernel.org [1]
>> > Signed-off-by: Yixun Lan <dlan@kernel.org>
>> > ---
>> > In Review of adding DTS for OrangePi, Chukun mentioned fixed-regulator
>> > has preferred node names [1], so let's change it now.
>> >
>> > This isn't strictly a bug, so I've not added the Fixes tag.
>> >
>> > Link: https://lore.kernel.org/r/20260123145015.1926865-1-amadeus@jmu.edu.cn [1]
>> > ---
>> >  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts   | 10 +++++-----
>> >  arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts |  4 ++--
>> >  2 files changed, 7 insertions(+), 7 deletions(-)
>> >
>> 
>> Looks good to me.
>> 
>> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
>> 
> A little bit late, I just picked this patch, but I can amend the commit to
> add your R-b, thanks!
>

No worries, Learned about this new convention from your patch and links, thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


