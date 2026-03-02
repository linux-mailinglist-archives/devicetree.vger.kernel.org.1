Return-Path: <devicetree+bounces-269828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cDTCDKFMpWmt8AUAu9opvQ
	(envelope-from <devicetree+bounces-269828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:38:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 926401D4B9C
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 09:38:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 570AC301F188
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 08:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EFF7638734A;
	Mon,  2 Mar 2026 08:38:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="J+H0c8Tg";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="FmfmKITf"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3243D3876D6
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 08:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772440681; cv=none; b=A3MmqcG+sv1u/DN/tKtoPvgcZt26WGIL2LcepfgpYTvvrLHShZC9K1dqS73SHZPo3HzfspNWEXZjgdS5mvhKC6Hu2NWNnjBUA0EwPlwBLHjBvVVDvib+uM9cAdxcqhR8GaheCO603KCmsJUUJMuGX1xr/oBttQqxD5Z4W52m860=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772440681; c=relaxed/simple;
	bh=gZsKGliAWUqfmyK0ymwLDcsrfvLvemojG4uLqBwLm4g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=Q/wUy+7+FFZT2ab3WTZ983dSMBRRZbqie64jtxjktos99Fk7DjJVzMc/10rbpfoSG9WuJXUAk0cN78XTsTGg99IjY+3EoJtSY0TIvJrG6cHg0kxuR3tq9xnZ5oXKwQJCc9ghlN0h+zf2qf8SGOUrYzGmsdXwhuI9abiUCq2YqME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=J+H0c8Tg; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=FmfmKITf; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1772440675;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=vdiPWtYWuhb9fL37CazwRyCdnnWG5JaBkwTXBZF0Kdc=;
	b=J+H0c8Tgyrrwce4Di6wxSH4jF830vty+smSGyzR15TKutqucx0f/m7qYGWpojcU53RH68c
	SbWwQXsTvK/byNFr8fmeTiaPyWN49yDqo4FLIZhTVs31+8dz1EOHO9miUySUKevaD3ekhp
	z1VGaysHkVFP7WfTuSIiSVdhtBqgtIY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-166-m6xQ9wZwOXKBYFrIVDXYKA-1; Mon, 02 Mar 2026 03:37:54 -0500
X-MC-Unique: m6xQ9wZwOXKBYFrIVDXYKA-1
X-Mimecast-MFC-AGG-ID: m6xQ9wZwOXKBYFrIVDXYKA_1772440673
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-439ae2cba40so996700f8f.1
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 00:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1772440673; x=1773045473; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vdiPWtYWuhb9fL37CazwRyCdnnWG5JaBkwTXBZF0Kdc=;
        b=FmfmKITfyBwOxydslFUyQ1HM6dAXREqeovgkWjeTwJxTwEZscUtM1RWRtGpAtLEJ59
         4ulUuj25ngzeo3QEsaRRAb3dgdNtzlA4sH5IdPRiQAk9f54DaSt3DINXoQFa7BU86+e/
         Xkmj7nHXnfmZZzGnFRwqzGJr976vHqJFQH80VDNZQlQbkcIshTIjipjwu5tZdUZXYkbe
         zLIckjdBVPF4nsF3M6TSw8AIIxOhWVTmWDJghPhoWYdXAzssn4kI9LfJ4JdPwkUMpcHI
         Lb5eQZAT1PQ6VBMLnaI9/NgrNZBEC9ERrbC6uFBSLvbH3xK3Tp+gCRgvMDOvaCFYp6xQ
         hhbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772440673; x=1773045473;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vdiPWtYWuhb9fL37CazwRyCdnnWG5JaBkwTXBZF0Kdc=;
        b=mUSME5MLLbqJwZXeRJrpQM41sLt3xj3bTeuD+jWYq+0Hh+uz12RoIotnD9fQBl0qGn
         OYPKNlpEiFt50U7J6HrzLtZdM9tiPV9QKbcs9/ZkOnTlxK9amIa5YmDaltbjfFK26rP5
         Ev4yr93x5eQNz8c3vKimZHMwF7rGupY9wRqB15HLQiF8UEc4Pz8L3YJ4mtSXxB/N0bxi
         h1w/5zyOPr1+oe+am0IySJdRU3tvkftcN8NzH3siAA80Zr2EeWeA7A4arNjQvBeaRhVS
         7G+m26Qt1GMaYZ3fbqSAYTEG5U1cNmVoKAHNEbUCkDvFCaJVPFbOWba/v0fem1rR3Dln
         eIkw==
X-Forwarded-Encrypted: i=1; AJvYcCVy5fw9mKdM5gfQkZX6CBU6Je+Yba/2jN3+a365xp4fbAL0q2iYrnQpe6BnhpqngXE6pp2p0EiwwWny@vger.kernel.org
X-Gm-Message-State: AOJu0YzyWH7cF5nESmZBqR5HeRdJsFkalO62+PwlT67E7jGhEc/WBaKh
	6bCFcs2UTF4C7ys8BzOEEWHpQpp9mRk8FmIAil7Klr7bo4FKnguSviAqhs/X3/1i9MpJMPK/Mqi
	gBTos8bx48Xuv/yvZJqcaLpBTH2wm1PlB5NZCxhYDhh7ejgmBkWr/W2NjxDXYA+k=
X-Gm-Gg: ATEYQzw/wuWLYxwLCzK8JJLl6E2fOgVzitKmAe1WEz7SjoQ/2SuVDgYA6xRH9Di3GdG
	MxF4nCm75r36I0TzHYpr49RI9tUgc8uu+EgwnGPVEaW7WZlSOu06j7q3lvzDJOZCCl53uzVMcp0
	gayltlvtO8mZuFRKfFseBOIsWf7tE91fiv0fmc/8j0NjNJ4YY086jtlifPQZPwH5j+fAkXASCQz
	X6ygO9PvMVhKrJp49PKPfTvpz6T74wyhnQoTLaR7Oktu6FNTyPxPM2wFdp3SKxFETeqLBHRTrUS
	cEsjuH6+ZYeH2mo235iE5PdXTtrMostJ94yaceowhdzkrmj7hu6tVL8hBpZ7rT9i7DQLs5Ry46n
	6PIinbvFLZmTdHsVJV1jdvk2p8QcDUOwY4BHY7wsPbkAsyUjhYUruMfrW+vur5O5PYKr1fbOOag
	iSPapGf6Cfd246
X-Received: by 2002:a05:600c:8b30:b0:483:afbb:a086 with SMTP id 5b1f17b1804b1-483c9c0e31amr187765775e9.29.1772440673354;
        Mon, 02 Mar 2026 00:37:53 -0800 (PST)
X-Received: by 2002:a05:600c:8b30:b0:483:afbb:a086 with SMTP id 5b1f17b1804b1-483c9c0e31amr187765305e9.29.1772440672920;
        Mon, 02 Mar 2026 00:37:52 -0800 (PST)
Received: from localhost (220.pool95-22-156.dynamic.orange.es. [95.22.156.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439abdf5430sm15077496f8f.5.2026.03.02.00.37.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 00:37:52 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Yixun Lan <dlan@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul
 Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>
Subject: Re: [PATCH] riscv: dts: spacemit: adapt regulator node name to
 preferred form
In-Reply-To: <20260226-02-k1-regulator-names-v1-1-e87695d50159@kernel.org>
References: <20260226-02-k1-regulator-names-v1-1-e87695d50159@kernel.org>
Date: Mon, 02 Mar 2026 09:37:50 +0100
Message-ID: <87o6l6vd7l.fsf@ocarina.mail-host-address-is-not-set>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-269828-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ocarina.mail-host-address-is-not-set:mid]
X-Rspamd-Queue-Id: 926401D4B9C
X-Rspamd-Action: no action

Yixun Lan <dlan@kernel.org> writes:

> The preferred node name for fixed-regulators has changed to pattern [1]:
>  '^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$'
>
> Adjust all SpacemiT DT regulator node names to fix this.
>
> Link: https://lore.kernel.org/r/20240426215147.3138211-1-robh@kernel.org [1]
> Signed-off-by: Yixun Lan <dlan@kernel.org>
> ---
> In Review of adding DTS for OrangePi, Chukun mentioned fixed-regulator
> has preferred node names [1], so let's change it now.
>
> This isn't strictly a bug, so I've not added the Fixes tag.
>
> Link: https://lore.kernel.org/r/20260123145015.1926865-1-amadeus@jmu.edu.cn [1]
> ---
>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts   | 10 +++++-----
>  arch/riscv/boot/dts/spacemit/k1-milkv-jupiter.dts |  4 ++--
>  2 files changed, 7 insertions(+), 7 deletions(-)
>

Looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


