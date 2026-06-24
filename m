Return-Path: <devicetree+bounces-315059-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VL/4CfB+O2ooYwgAu9opvQ
	(envelope-from <devicetree+bounces-315059-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:53:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3ED6BBEA6
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:53:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="qC1/0oRK";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315059-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-315059-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4F0CD3008639
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 06:53:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14014389458;
	Wed, 24 Jun 2026 06:53:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFA13384CC8
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:53:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782284011; cv=none; b=dhfOpNc8qJsYgWYhLeAiyPm7uYbbMT0LoJIrxafjYG7stCNGTvJN94DbscNx6aIRe+GdRXCL7yBhg2icfeV6okr+MfCsF0kMxIGCEvV6WNi4mCCufhJSOW5+zr7/1+DNFwCMZ1vPb2eQFO/1PjEaFnvTHH6u5WU2XV81xm8lbmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782284011; c=relaxed/simple;
	bh=8tdWPRE0pVXGZ58tQOSYcN2XJM1zzZQa50Q7iMBweQI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CkN22fsOq3zGw7eWQYvnz+PRbE5GphqgcQWMiz64pcWnNRXcdbcpNXOVtq3cbJWiro2I2IH+hko3+N3lM7cfrDyZUb1GNIbFikQU7ikwnJMgvPdnh22hr88zfbK/r/tI7K4naSq69PunVfk61XmUXe4hC+US+UR8HGkG4EpayMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=qC1/0oRK; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-45ef29c5561so393276f8f.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 23:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782284008; x=1782888808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GQLimcB24UVWEnsefG7vB3o2aiCLX+pbO4V7JdAkm84=;
        b=qC1/0oRKcVTEO63v3W/ROJkYEFU8OdQelaDNt1dwHzmht8xosq/F2Jcl7C5sBhupd3
         T2NKz3PmHsWYGau+UhzK09vZJWBuh5+Bo6CZ/FzOOpsLOaxTtxA3jmq7SPFJt/OJQQHv
         M3hyVpHJCBAhFojQn8O1BwfVQK/i3u4pOoiFyiSb78Xwn7abGaX3vZyBjxLV0FTOAFp8
         BtRnJ3zIaUDbbsDTxjX4nbDcY5OZ8y6e7SQHhQpDSXRcHL9jb0P3SULmwIrTczyfsMzG
         TG3LBHGtDpnI9GwATqLYxP3ez1MjMWBSzhGgCMWkNveaxa7GGOLMwUpoTBGgvmRi83GH
         tC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782284008; x=1782888808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GQLimcB24UVWEnsefG7vB3o2aiCLX+pbO4V7JdAkm84=;
        b=QMUD3BXu9nJH48/j6OmPMJxy+Zhf+oJd+RQz93U8ouCKRXHxFqzCy9nmGv/NIvkbb5
         7druTJ4C5Xh1euxdoRandblrXaMvlmk9SDYkIaOUGsTCGYzsRv3Xg0XezUfZ70HPkxIE
         6zI5oeVBy/pDdd/v6ynJB5z34VHH5jQEKG0AiMc2pEvMbRbU14TTXd45sEDicy9QD5EF
         AJrC0/i3+NUMcj0n/Snb1x1242al5WTC7Ua3fOVXAIC/M2oZSrJA9GeW9c4/QmBzPTYG
         Rtcil3K+aOqvlvNuB4qPBEoj5roUrHf3iKqDttA68E9lSH/cj4NMVcePH04AZJdk4ifI
         9vWA==
X-Forwarded-Encrypted: i=1; AFNElJ+peIO9QyZsDjHeTV9heIH0gHNI8xGACpU4dOfx5G+57X7wANHBNq0bd/78b3jDaACD+yxmMYRUnQBB@vger.kernel.org
X-Gm-Message-State: AOJu0YwDKsXYmWZJ/3bC7/bYFa0ge2IFW5K9XC4/YI9o1czWLb92bYoj
	29DLzMr9aN0MzZN4VgJAgQrZE9VZB9a6K88aoecjY///YO9yLblgPrrnN3pOrmSx
X-Gm-Gg: AfdE7ckJb8+f7od02Q5xifCwxEi00z8YhZJvYaTwyZ/RLJ//ayAV4XFJjhFk6zSWFpb
	Ge7EsPg1VC01fFlk8RH/JVatQijxtWAKxMoyNroOU3NsEmqUP5pPsezgBEyGKJd5wuGmJmeBXQS
	fP+Tvq23ZoCijAQf3S4NhCRjk9kHcIEKaCgLy00y5zCOlI/sOApN5nDlDmJW6u4DgXKnY4omGtO
	GxqCta3AlKusFu8BXFWfJ+keL4i+WSyeRcX1tiiCiDrTGqu3Bs24QlN8PlC3/eqLTZucTBRNTwz
	PRV2Vlezh0lVRqmZKw369HGLh+n2riA0w3ynjrybCNOD0QVNtctmCBNC5DgK8hHIhIN03CwxMPX
	xeNsKqtn+BjWW2LIEkkwydZLwPYa1o+Ss1UgFjWuQJGx7UHxlwSuT9nGGdlXIk1k37r7xxwIxRK
	EAB2qJhmr2OOMsilaQ2Ur7qYSsiNQsqqQQ16jvSz9VObZbWH6nqSVBwAggcDdhReekquTLvPivB
	l4SmfIkvLWDTeszT5+MJCd96VSONbXCY3+98uvANqJ96X3cHmcVbCIdyqvlVcg/T/atge5U4fni
	d1OcwiNYNH3c0o/c1cGTkVTJEyjpFbO86sotWdwluZF+vvDt8KDcrFA=
X-Received: by 2002:a05:600c:4455:b0:492:5bc8:5e77 with SMTP id 5b1f17b1804b1-49260878051mr20659095e9.29.1782284007872;
        Tue, 23 Jun 2026 23:53:27 -0700 (PDT)
Received: from localhost (90-182-112-124.rcp.o2.cz. [90.182.112.124])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49249207dabsm634295175e9.0.2026.06.23.23.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 23:53:27 -0700 (PDT)
Date: Wed, 24 Jun 2026 08:53:27 +0200
From: Joshua Crofts <joshua.crofts1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Md Shofiqul Islam <shofiqtest@gmail.com>, linux-iio@vger.kernel.org,
 jic23@kernel.org, lars@metafoo.de, conor@kernel.org, conor+dt@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/3] MAINTAINERS: add entry for MAX86150 IIO health
 driver
Message-ID: <20260624085327.00007e3d@gmail.com>
In-Reply-To: <25846cbb-8318-43d1-a57e-16734cdad6bd@kernel.org>
References: <20260623174600.17100-1-shofiqtest@gmail.com>
	<20260623201124.18271-1-shofiqtest@gmail.com>
	<20260623201124.18271-4-shofiqtest@gmail.com>
	<25846cbb-8318-43d1-a57e-16734cdad6bd@kernel.org>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-w64-mingw32)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-315059-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:shofiqtest@gmail.com,m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:lars@metafoo.de,m:conor@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,metafoo.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshuacrofts1@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1E3ED6BBEA6

On Wed, 24 Jun 2026 08:22:48 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On 23/06/2026 22:11, Md Shofiqul Islam wrote:
> > Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
> > ---
> >  MAINTAINERS | 7 +++++++
> >  1 file changed, 7 insertions(+)
> > 
> 
> 
> You need to slow down, please. One version per 24h.
> 
> And the last one is not even correct anymore...

Additionally, refrain from sending a separate patch for MAINTAINERS,
fold the new addition into your dt-binding patch, and then add the
F: entry for the driver code in the actual driver patch.

-- 
Kind regards

CJD

