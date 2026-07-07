Return-Path: <devicetree+bounces-321987-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BJ2qFl7qTGofsAEAu9opvQ
	(envelope-from <devicetree+bounces-321987-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:00:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A66771B2A8
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 14:00:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=OxAaE1xC;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321987-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321987-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 81669300139C
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 12:00:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66B413F65E8;
	Tue,  7 Jul 2026 12:00:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77313FD123
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 12:00:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783425606; cv=none; b=bkdL6Q07Qyi5LZpeimKeQQehffDh6jOjNUQmMXPR5TM0TMvC72xe4Gtr4HNBv38Qwu33bTIN0lo3jScb+1aoFNGm0r1XZKdphEKzCOPuZ2vReAX/wfOaY+NFjvarZ4NkRyM+/c8miRch5/Ht/heZAxziMwLs658A4hZGqQIZBUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783425606; c=relaxed/simple;
	bh=qlDJ746JGiTFJNRIapHXqXoAzifdALXvediQx13XyIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bq4CU3kDYzCVkF1cC3B30ZPLg9iiK9+3aU7GVG//AG4s91ZKS0wtDuhvXqz6i9sNRxOd7pLAOD4Hk4gpgEUP1A3TkY7D8hYu1gL4XZmmSYxl0PkEZKmlnMqjA200szwPvDYYV4X8BU0iZ/o3WdYdUrzK0dLi6cYeiBEHE0GAthE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OxAaE1xC; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-493b77b150aso37363225e9.2
        for <devicetree@vger.kernel.org>; Tue, 07 Jul 2026 05:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783425603; x=1784030403; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=qlDJ746JGiTFJNRIapHXqXoAzifdALXvediQx13XyIs=;
        b=OxAaE1xC9empgB7Oh8znVpWuy/t/AqYZnOvpr6qkGq1FCl4Own//li1VQ3aUQ0qVIY
         +KfWwAzw7vxBiE3uaJk/rVVnxnqCSYabZel2F9YtMP5vnAYeC2N6L5LWRA4aPEyxbxsE
         iSHE8O5k1k2fdruGxV5+rYz4zN+HoLoA95mBJBztgdeAcPUrzO4qxSzDlA7TqRQCKxzl
         aYjEa3r5ab4wefrofDX/2kOZZS9pfIu+EzHsfTlMWpxX5Ehl2lPN08cOwlLXo/E6QFGc
         07vypalpD44TtQCXv+wrV0YqQ+EKR6v3hRffVt0gmCRcwcUlsb6yh9Ujqu9jclkSjtM8
         JCdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783425603; x=1784030403;
        h=content-transfer-encoding:content-type:in-reply-to:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qlDJ746JGiTFJNRIapHXqXoAzifdALXvediQx13XyIs=;
        b=d3hzYuZgArCu2NE5jN1kyPYor2JvA9braxCWigjKMoIY+H9PheDHOOleY33jThwf+t
         ZNd0vN+3zmEubToxzzPdPfWi/uMR97jWUeCxt5/JLEjD4dbMeaTszoPWTHstOBK3iH6+
         e/lFcm1NvL/mbxtHXUPzb3GAnvDd3FTsSucCvsyr6+aGDScTHE03M46zMNe1OrJumX+b
         JLuwjYOazm7woXJKk8l8ZFBOEHXY/lOPTTZp6sH0x/1uUsGYXzw+DCdpcVVoHfAWp36z
         sSSw4uVtBBHqdvSjUcjsXmMJrK8ZDfaoRMGZ+Y7Qp/J4A9tsSLIPxuv5TO0K7HVn7MWK
         Hv6w==
X-Forwarded-Encrypted: i=1; AHgh+RoUs2unaOcCrlOWpDjB3uTjWDEUPiEpjxk8yTPfV7B8at6xcxgBnltGBzXJ/YzBrDPPSwl21qyXfbH2@vger.kernel.org
X-Gm-Message-State: AOJu0YxyMB2l1G8eriONzv0RawneHPurXnSy6Ru6joBIC1KBJ2xgKaaL
	ltyZqubDaCyu4X7g1Q97Z06WlyLSBk8LWbMD+usqgXya/O7EX80HtzOo
X-Gm-Gg: AfdE7cn+lVFGWeJvD8zrVENBBAlWmRQJ+ISePgwGSAOA9j4Nmj7sT+SVMx6WeERlqqr
	5jco/x5+LF+x6xjI760AmmK7x37L87X3cUONqTAf1r3trJjoyoD1pCuXF4gdfglFTVC4uieANtU
	/Wr6czXGA3IiqSLXhGxjKqYfr1Dfr4Wr+dnHkEvh4oh9GOQnmklGDC7LVhy2sh5IuEl4cnQoFvI
	/43CYwQ39Y75UyYqd4Go4aJh52YmXoMbzeKcb7SHQdx/oUjs6zAZTbTSz8ocGUC6mFsCCEVqcDQ
	9LH49biZF9AweNOkSuRyLceGy2I/9dwNuz7YWX9ioIMqPcVE8UdeI+/jqadxGm2FCPx/KJha5T7
	EBR5bc+MnS2MEfI3ORCEpddX6JvL7kLG5EJdd2Fw5ysIOy2XwPCqqHMf13intp/k2euF2YNBU61
	jdqvhEKzyOvX7KPyRo9ex5ScGUxpQwlTvP07eJGBovINR5h+WTS42cST/1ivSAcNiv/A==
X-Received: by 2002:a05:600c:3b01:b0:493:a570:df7d with SMTP id 5b1f17b1804b1-493df080ce5mr49199465e9.20.1783425602811;
        Tue, 07 Jul 2026 05:00:02 -0700 (PDT)
Received: from [192.168.255.3] (85-11-142-46.pool.kielnet.net. [46.142.11.85])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0f439fesm54216335e9.8.2026.07.07.05.00.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2026 05:00:02 -0700 (PDT)
Message-ID: <e5e61dab-5ff1-4a7c-9b74-d3ed61e6c81a@gmail.com>
Date: Tue, 7 Jul 2026 14:00:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v5 2/4] net: pse-pd: add Realtek/Broadcom PSE MCU
 core
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
 Kory Maincent <kory.maincent@bootlin.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Daniel Golle <daniel@makrotopia.org>, =?UTF-8?Q?Bj=C3=B8rn_Mork?=
 <bjorn@mork.no>
References: <20260706112425.3149226-1-jelonek.jonas@gmail.com>
 <20260706112425.3149226-3-jelonek.jonas@gmail.com>
 <akvhq1YcUFP6eizf@monoceros>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <akvhq1YcUFP6eizf@monoceros>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-321987-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jelonekjonas@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:o.rempel@pengutronix.de,m:kory.maincent@bootlin.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel@makrotopia.org,m:bjorn@mork.no,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jelonekjonas@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1A66771B2A8

Hi Uwe,

On 06.07.26 19:12, Uwe Kleine-König wrote:
> Hello,
>
> On Mon, Jul 06, 2026 at 11:24:22AM +0000, Jonas Jelonek wrote:
>> +#include <linux/mod_devicetable.h>
> Please only include those <linux/device-id/*.h> that you actively need.
> I'm working on getting rid of <linux/mod_devicetable.h>, so please don't
> introduce new users.

I'll fix this in the next version. Thanks for the hint.

> Best regards
> Uwe

Best regards,
Jonas

