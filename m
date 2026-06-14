Return-Path: <devicetree+bounces-311510-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AD1MIQMWL2oj7wQAu9opvQ
	(envelope-from <devicetree+bounces-311510-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:58:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2765C6823EE
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 22:58:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=I+qVrHZ7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311510-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311510-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 94FB83001FDD
	for <lists+devicetree@lfdr.de>; Sun, 14 Jun 2026 20:58:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC43932ED27;
	Sun, 14 Jun 2026 20:58:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A1C30FC1E
	for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 20:58:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781470721; cv=none; b=pTAU4zNiG4uSSRhwg973tcShePEKniWe82QJwm7zhkNjeqg1yki+dCB/hFB8HovB3wlmFK8gj9irgVSgq8XVTYCqEGLzHzSgxLYbPKcEbjlKY/vbBbXKBwFZcAmgjEeocyUK7Txwv9bNcURQbJDOpEPC8VUCT/eKw7HDNnVL7s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781470721; c=relaxed/simple;
	bh=lBTPnN9uHjEIpqMJLv78Zrf4kbGuYs2/tRFB+GgGmJA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=QzssgjzsMFokrDzzAcTTzUn3GucbbHDKn3jQaYJQQDiGi5wY90ahwBW3sM20nntiz7wTk7WvUrjc15L1h22sjE2byEu3/Obpq0CGeIUV+zL1nzI87JROZhESP6KvMlXkW0SCWkQ92z15xzPDMmYYHLc7ibq0QPhflLoEmwJt81Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I+qVrHZ7; arc=none smtp.client-ip=209.85.222.45
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-96392241154so2050065241.1
        for <devicetree@vger.kernel.org>; Sun, 14 Jun 2026 13:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781470719; x=1782075519; darn=vger.kernel.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lBTPnN9uHjEIpqMJLv78Zrf4kbGuYs2/tRFB+GgGmJA=;
        b=I+qVrHZ7I8U4ijJDhrmzvF5/PxMFzJ4oJ+UbjZ0i00oo+uc4k2OAUtGZub+5lTODXY
         YXIczpM3GxTPVPPJB7931pxuiXTMfOqM5BiB0nr2C+xsZy7YEh9N8g/6G13+EcMoPST6
         TFqnXeGryKGb7QrTSNCitcDt2LIV6x5W5WFJR8gIPNOPM4LKe8BP1+SuxUjkbYX3B6FB
         VmQ5QdoKSB2u1stV8Q+xM9bPpYRWPx1HKb5vDrnkFSt1qO38+P/nNbuUr5Sa1xaFDX/H
         W8vAECOIJx6URZZLw9koKUSP4dBaI9Ksi6vTSoovNsH8pARWqupbsa+2YYA/A2y4Z9/i
         N9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781470719; x=1782075519;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lBTPnN9uHjEIpqMJLv78Zrf4kbGuYs2/tRFB+GgGmJA=;
        b=tRlCoXDb+k7JPrUq74gO3KTrIbVBI+Gl1B6oQpm6YT1/bsi2C6qXpvvQURfNeh9VDY
         iAW28E4uUKWoTHbmv1fVhIf//5uTRptMWi+G/4k516iXcbSpF/U9Nu6kNTAISiKLAgft
         G33LDEk37gbadjIvgB9POoCEQt0IEfx0XWVb7T/wnljeXCaaJDI6Lb3ALqLyyQEabhHr
         bvO0F/Urw/U41buvq2XooQ6yLuLBfhbnfW6IzZH6L4qeW3Lt3EcLxOq/26XAVKC12RBg
         QoZoSOSMQeskdl5SRMRSW2TVamfvGlhBi9HWGSxMMZ7o9IKOxBdeLuACTipFc8MZar4w
         2PEw==
X-Forwarded-Encrypted: i=1; AFNElJ/zO0PiNV/wdfQg2kbTv35+g2cQK0aCREggeSYTH3JFBge4qHw+xG9NpqRPWOXW6x8ftKltLZObeJLE@vger.kernel.org
X-Gm-Message-State: AOJu0YyGUafpd79/8kThuA/CN71/KVtvx9ROV5Jk0ppwLRodi3zWnDvC
	uscXbUcaPo0yb+iJ0yjvVGwW8oXgZOckoujncxMS/rv+Rs1kEexIE8Wk2t6ung==
X-Gm-Gg: Acq92OGwhnW3k7iWNCeOx7TucnK7GA6NpZqCkDSfzHuMK+CSt8+B56WEgyc7PlZMTpV
	B0ghFuoKjO2v9CCdBrzFC4v+72A6vM2IZfIXg2D4MFNyU0ttvPYv2NQU7uO9F9BbEAjDGBEdcG5
	mKioSXupNM031oDBSc3faSy99irQ+rzXfJNsJUsitQVmZbh5m9Z1i4Yk/knCwZOj15p17AwI2n1
	r5614S8eul79A8Ukgj6ctYMGiH9sqokI2krYizMzxsyA0fmtHjp0DOKvPNyGD4v4A/EgaZ1QBG7
	wcKQP1BDSrqApvZs9KAHwlLzbHQAro7uTzn3HbLvJ0EGe9RoFui0InieWOLpZbv26sdD0gH3EIu
	sIhOmTuBQCq5/t2rHQd2dHZyo3sSNKBl50FQBtSK+q8gt4sZl9/R6t9RhuNyekX61VlvLCeVblz
	Bsrb6mXKZfisskvQ==
X-Received: by 2002:a05:6102:5693:b0:631:26f6:7022 with SMTP id ada2fe7eead31-71e88dcef1emr6025602137.23.1781470719221;
        Sun, 14 Jun 2026 13:58:39 -0700 (PDT)
Received: from localhost ([2800:bf0:82:11a2:7ac4:1f2:947b:2b6])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-966a03767eesm1754284241.3.2026.06.14.13.58.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Jun 2026 13:58:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 14 Jun 2026 15:58:32 -0500
Message-Id: <DJ92NVDRAKQY.1RQQVGA7FSK03@gmail.com>
Cc: "Kurt Borja" <kuurtb@gmail.com>, <robh@kernel.org>,
 <conor+dt@kernel.org>, <devicetree@vger.kernel.org>
Subject: Re: [PATCH 2/5] iio: adc: Add ti-ads1262 driver
From: "Kurt Borja" <kuurtb@gmail.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>,
 <sashiko-reviews@lists.linux.dev>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260612-ads126x-v1-2-894c788d03ed@gmail.com>
 <20260612230132.E04DB1F000E9@smtp.kernel.org>
 <20260613-graceful-berserk-rook-cc5ecb@quoll>
In-Reply-To: <20260613-graceful-berserk-rook-cc5ecb@quoll>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311510-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:sashiko-reviews@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kuurtb@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2765C6823EE

On Sat Jun 13, 2026 at 2:00 PM -05, Krzysztof Kozlowski wrote:
> On Fri, Jun 12, 2026 at 11:01:32PM +0000, sashiko-bot@kernel.org wrote:
>> Thank you for your contribution! Sashiko AI review found 15 potential is=
sue(s) to consider:
>> - [High] Architecture Compatibility / Undefined Behavior due to direct b=
itfield mapping.
>> - [High] Out-of-Bounds Memory Access / Hardware Misconfiguration during =
active channel iteration.
>> - [High] Infinite Loop / Denial of Service in IDAC microamp parsing.
>> - [High] Logic Error: Inverted bounds check rejects valid pin numbers.
>> - [High] Race Condition / Lost Wakeup due to reinitializing completion a=
fter hardware trigger.
>> - [High] Missing Error Handling / Type Mismatch: Unsigned check of negat=
ive error code.
>> - [High] DMA Memory Corruption: Unaligned DMA buffer in union.
>> - [High] Uninitialized Memory Read (KMSAN) on stack variable.
>> - [High] Illegal DMA from Stack in regmap bus implementation.
>> - [High] Logic Error: GPIO get_multiple returns pin states incorrectly.
>> - [High] Hardware State / Timing violation during device reset.
>> - [High] Logic Error / Performance: Unconditional stall without IRQ.
>> - [Medium] Memory Leak of fwnode_handle reference on the error path.
>> - [Medium] Resource Leak of runtime PM usage counter on the error path.
>> - [Medium] API Contract Violation: Buffer mode lock released with direct=
 mode API.
>
> Amount of findings is horrifying. You should probably involve some
> internal review before posting next version.

I'll set a local Sashiko instance before submitting the next version.

Also my local testing is a bit loose. I definitely need to take care of
it.

>
> Best regards,
> Krzysztof

Thanks for your feedback!

--=20
Thanks,
 ~ Kurt

