Return-Path: <devicetree+bounces-327003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cWpKKamEV2pQWAAAu9opvQ
	(envelope-from <devicetree+bounces-327003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:01:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DAB75E6B1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 15:01:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=g+5IplrS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-327003-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-327003-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 456653050CB8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2DCC47B413;
	Wed, 15 Jul 2026 12:53:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A110647B423
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:53:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784120010; cv=none; b=T6Dkx8giU7UKwvrsf0thxOGiLfQt+/ot3ordZ3iXEk2rUrFRAYOIWGtwXkPVFknqMZObX/jWZLtWlvpTDwP2gw1ERG0Z0AQmWX4lreDls+9OIULxxzlsl0TtrLtDMshD9ZjQAUTuKm1+eP+P/MoFVKI/RpRPGZYamOfQqGHD9iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784120010; c=relaxed/simple;
	bh=hWz5XuNNH6IsELRjB/pr17epEqauWvX8kaZ2l3hPuZ8=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z6oaHFrMSkC3e1CsL+xdgTRPK5WFp6kcvQTqvVZBm/LzMzZD81OAGIJp/PLqd7/NjuPYQKftNg4latnMXuTEcR1KPpiXstAIrQoBY/WBNIUGvKRJxFnl1zR8bmzbVLgt4yn/hDAMwGAc1NAOxBJGrWN9cXYl0QhqgI6um4r13qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g+5IplrS; arc=none smtp.client-ip=209.85.128.51
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-493e8d4f4dcso40926365e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 05:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784120007; x=1784724807; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=hP7wIP17IllMUj2NiPW3mgVs5U+s5JJ48RRRp+m/d5g=;
        b=g+5IplrSq+d8mCe7g/wdx9efOv03kjXKMZe2lacoSEExozbWiZUzw7JI6yfytFDaK5
         NtPLjisa8F2UPv3tkmfzqbBxuJv2sVrjNgcSkEH7bE0ujoj2M3/O+ozAp9HQDpXhBoDY
         ek093hwF6fCXcCfozmx3+p6++b1qUgyqZz8tQoKjohdjgvk+4vPJsgzIcJw5hF5Stgcd
         Qn2VO5x9jXv49IRr/8KuRRhRmjLkpDlSXdeckWL+Om5w5HXP/Ano5CRTzdtDP9XbtJz8
         HCu4U3bjgnLpOAcNsR7VpbPbRhao6jAnZnv/4qdWaK5ATfoNrjAhRyt1aJxZxWqasaZK
         NFyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784120007; x=1784724807;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=hP7wIP17IllMUj2NiPW3mgVs5U+s5JJ48RRRp+m/d5g=;
        b=IdQcRRwBktvDWmARCtDscAK47Ao2vbgEmkMtw6T6zPE5emrxRO5B3B1ErD5VHgEKMw
         ws7RVcjsiLk3DW4Fl8HHy2TfGuhDpsOZM+Kc8x/4yBTzQAqHz4MshC3uP4NMdssd5Scz
         5CqzKLAtxRXyp5XrH0S3xLlKtdC59LXJ5j5ZMumllxvFPvIEs+2GTbygoVOIanQ8JDNJ
         L9n47AuQYlia3KmDdYlSvs8/Z00tGq6Has8nCW4rddDVjNodlkyPAaAfVNXS0490r73k
         iRF4f6VaZi2491NYTrJjGcin2cXfoqCwZ4QwyKRhkgwMQWb+A4dNSaZWgXuTlz0I6/1M
         KJcA==
X-Forwarded-Encrypted: i=1; AHgh+Rr/DVGUKauT/TzGjHckMt/IBqnKFTxdN16or+epLPaMPR9ss7gygOCUpOXmjqb553j2HaIzjsPIidH1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7ZVYUdxKvNPR8/r4VUP8rsi+aF6zpefMiOMAMyzBbpLo6fimw
	6072CtbmKhw6QzsoxaNSPbXUQ4ngD1CWYSTljoKOz+yjuIM/hopEixvo
X-Gm-Gg: AfdE7cmuFDtTeTISd/opeqGCwMKicesUuszCx2Nc6ZlwOve+0gXjJR5gsjbQiMKW7Fn
	X8jsRhAnWgjOoZ7nTS9Ong0J2E7WzYvcmKckoVAyg4m6Ih7kMtoYky36GTlOcZyLfxCgkTwZVus
	lO3EuP6U9lndvYoS3gGA7Xknz8jTumzv6MZtb4LRYbBBvDsdx6HfP+PWWdiSACRClfsQ2lkhBo+
	CWOe4SMoF19RxShTA4iABpo0LwTZq+C3+E0aPu2sCmruzl4JqngvSDYFevdHJ7F1FzIzobYib1V
	E5wItWato+VgJu2QA6SAWOkDUriacG9qYU184vwVWqurPiwNFLpJMUE3N3F2lI7xuCU15BqWH1N
	DIkdQWlBfQcF5BT019MpfYdSWarQr7pwYmHZg15mCNUYsua61PQUdo1p1VJWrNY9MwhNCB8Y+OY
	ypfBM2JlrzszO3sJ7MsrWODh9nDvOHy2o43BnUDTotdMouo8Da10/QUp9EoMdNxn0K9knISIycK
	e/AJYD43L8cCf5LfUuXEZ9uqdZoN7BYo4IhYuyE11caOPdLnGm7KmHVI796oOg2Sfd8j3i2+5bU
	fTIe+l/faUu/7dqjXbZCzvJI17pfzMc03tAt6fu1XzZWKNBdSjkcgNHeXuyJj8z7ebW2p+P38Em
	3xQy9/cwyS8v5xzs/HQ/qm9U=
X-Received: by 2002:a05:600c:37c9:b0:493:bc4a:fb55 with SMTP id 5b1f17b1804b1-4953c28951fmr30630675e9.38.1784120006763;
        Wed, 15 Jul 2026 05:53:26 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4953c6ff429sm38564585e9.1.2026.07.15.05.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2026 05:53:26 -0700 (PDT)
Date: Wed, 15 Jul 2026 14:53:24 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Esben Haabendal <esben@geanix.com>
Cc: Jonathan Cameron <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nikita
 Travkin <nikita@trvn.ru>, Maslov Dmitry <maslovdmitry@seeed.cc>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] iio: light: ltr501: Add ltr329 driver support
Message-ID: <20260715145324.000005c6@gmail.com>
In-Reply-To: <20260715-liteon-ltr329-v2-3-d18af55edab5@geanix.com>
References: <20260715-liteon-ltr329-v2-0-d18af55edab5@geanix.com>
	<20260715-liteon-ltr329-v2-3-d18af55edab5@geanix.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-327003-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:esben@geanix.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nikita@trvn.ru,m:maslovdmitry@seeed.cc,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[devicetree@vger.kernel.org:query timed out];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 46DAB75E6B1
X-Rspamd-Action: no action

On Wed, 15 Jul 2026 14:27:25 +0200
Esben Haabendal <esben@geanix.com> wrote:

> This adds support for the LTR-329ALS-01 chip, which is similar to
> LTR-303ALS-01, except for interrupt, which LTR-329ALS-01 chip does not
> have.
> 
> Signed-off-by: Esben Haabendal <esben@geanix.com>
> ---
>  drivers/iio/light/ltr501.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
> index 7d045be78c6d..379e57ac5f5b 100644
> --- a/drivers/iio/light/ltr501.c
> +++ b/drivers/iio/light/ltr501.c
> @@ -15,6 +15,7 @@
>  #include <linux/delay.h>
>  #include <linux/regmap.h>
>  #include <linux/regulator/consumer.h>
> +#include <linux/array_size.h> // for ARRAY_SIZE

Just a small nit, even though the list isn't exactly ordered, please
try to add the new include approximately where it would be if ordered,
i.e. array_size.h goes to the top. Additionally, you don't need to add
a comment.

Everything else seems fine otherwise.

-- 
Kind regards

CJD

