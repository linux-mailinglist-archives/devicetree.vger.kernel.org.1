Return-Path: <devicetree+bounces-311845-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oFSnGALUL2qlHgUAu9opvQ
	(envelope-from <devicetree+bounces-311845-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:29:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B92546855AD
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:29:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=kDg+JyKu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311845-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311845-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2CD6E30031D2
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 10:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0653DDDA1;
	Mon, 15 Jun 2026 10:29:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA5C73DD539
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 10:29:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781519357; cv=none; b=EVQAkAPQaYl/PU9etKtrYWMw15sebOqV2KP7KYSUEtO5x9ygNVffQ3pBW2hBEDw/1cJNL9CeF34RGKUzlGiMPlQA1UlI22UfxNNM046t8U/iyEAhG3jbdRhjguiGzRXGQaSbsDsjMPyFoiq+MCOFLWKuIvXixLs5GEmfh6B3AJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781519357; c=relaxed/simple;
	bh=5JDnhwZw9AeUrdtRem41MPZtkkjfAz3vR+qZxfZaCk8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TRiOKQH02H5QVELnvxOhCA7Hst8VbrnKsHUJ+ut5vwrKDl6cmk1Bgj6RLqDPyQ9hCa5/bq2hUHWtqbt/XUnHGrQr/3O26fx12vawGN2Ze3DRy/Go+31LrP01QUwIarL+2ySEWVU1Ge+5HvddqU/p9hZ9fXntrRR1VmdBcIaKfsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kDg+JyKu; arc=none smtp.client-ip=209.85.218.52
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-bec4639953dso508741666b.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 03:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781519354; x=1782124154; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=5JDnhwZw9AeUrdtRem41MPZtkkjfAz3vR+qZxfZaCk8=;
        b=kDg+JyKuzcDssAQrrSga8iHKVCcKuDry7456fYbLuIXqu1/V2QtXYQ8JKHfODZulKx
         fRDvyyN/RJoaGM6A7of8ExH2sLqif2syC0LI9DPewEPg3t9HTb83Xv2alRSRhIwxtQXo
         MDQZtb2o6vAH5EA7hZtRybqxoBGffkwKNO/gX2rDA1cOK6f2Xsmkpd52sExRjF4sNS1F
         P8xWsO6GbwNbNtLHBvqQ6+wAIbdnJHbR87IPiKTQHWrDbG71VSxA1dBkSCG8sV1IIH/G
         GNz81d92n89Uv2gOUmz+Y28Pqk7gg1RIKyVOtjlwRByPEJs5AMhl4lWFzwcQLoW3bfVk
         9xJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781519354; x=1782124154;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5JDnhwZw9AeUrdtRem41MPZtkkjfAz3vR+qZxfZaCk8=;
        b=Tyd/ELMdHPLxrKDpgpgFN6wPFwKhrBaljtMNPUUTt3daw2yFFZWZ+vt4d5fUgBNt8y
         N8gb39m2/8RNncFEiI/lPYAM0dzGB+4ApcUPZ/rVdccFPjhtmyb/ZWp+dPYPl84ziX5F
         4OwsdmsCfn6RHZ/lwK/f+u8MtXSaKAZgxeIjX55NDPRVViUP1a10q8UhedeKgwS7TxUt
         k03U8C3Pdx8iykSXUIAmHUEaf9g7/1D8ohkl523bV+DFBfZmmnpgUpzMOihrTfjgd4ED
         P/x+zXuvEKOiY6CNP2o6KHu6FLqWOZYqVId/IFs2Zrq0sSQJHMzld5baJk95RF3jD5rv
         jyTw==
X-Forwarded-Encrypted: i=1; AFNElJ/rBW762gH/hRFvSJyCX8odqX/BN7ZXf6614lbfTKHUY/CIFIoZsx3vlu7RqtM18f1uFuQzn8CfgCX7@vger.kernel.org
X-Gm-Message-State: AOJu0YxfzdT4iToHfCN7qWf6bYlLNBb1nsLxWFiBcNWypuJyRWeumgoS
	Dz0gP/qunmJj8cLV2sv9nkxR4GyZY+a0GcD7hSbimxZT4HsewSIbUhfy
X-Gm-Gg: Acq92OFFtH2M4GKpWJPn0QKCz1lI0T3ExfZVT6uQln2hb/oqmv2Pdra33CpUYuRCFPM
	4d9E4a67RsvzSF2y8GCp0yGfzld4IRlxQ6fikSqJpfu+6bnkrHnAEAxBXU5wGAf3iVOewM7Wu2l
	cBJbLRGhD7H8H0Su3flQvUcX9RmYsirXvCiyLUHKq2e6r+8odi7MMgz57SgMSvIiTuDWeK6ZdT5
	wA9SWwoJDb+oC4neWOIbvgXwjLySfahqK6kHEJR4WgscHhZg1w2B2ORJhdBrMt1Zlr/Xr4y0f8P
	Jnrvowuro6kaqWYCUU6UcdPVcfieJAxsCPCcn4R0GOTk1gXIzsawbrfrq4bldZktKzlQvHESr+u
	pA6F4H+EHgxfUgXAlujpyEkbdlGfBwW/r5hNRWO7WSvlvfGtaY55RScEsN7FFTDR+E4HlR4uBFI
	QuzfyYfjCNiZmyRh3nVVbU09eVgm3ooc5FWIExWssK/4nKwCQKHTm7UqxkPeOolrdgT9sgo+w98
	zFtQXQ+8Z+1d+2Y93H4AXggGHixcQiRfg==
X-Received: by 2002:a17:907:c30c:b0:bed:e2e8:d8af with SMTP id a640c23a62f3a-bfe27b2075cmr568641466b.5.1781519353824;
        Mon, 15 Jun 2026 03:29:13 -0700 (PDT)
Received: from ?IPV6:2001:8a0:e962:d100:8e61:1648:83a3:9167? ([2001:8a0:e962:d100:8e61:1648:83a3:9167])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bfdb7b6d934sm443625866b.40.2026.06.15.03.29.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Jun 2026 03:29:13 -0700 (PDT)
Sender: Julian Braha <julian.braha@gmail.com>
Message-ID: <6babbdea-fa93-4cd7-8198-5cd3accc34cc@gmail.com>
Date: Mon, 15 Jun 2026 11:29:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/3] pwm: rp1: Add RP1 PWM controller driver
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Andrea della Porta <andrea.porta@suse.com>, linux-pwm@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Naushir Patuck <naush@raspberrypi.com>,
 Stanimir Varbanov <svarbanov@suse.de>, mbrugger@suse.com
References: <cover.1780670224.git.andrea.porta@suse.com>
 <f8dd46a553351adaf9d29fbba9f98e803b672fe7.1780670224.git.andrea.porta@suse.com>
 <0b6a7f41-b753-48dc-b46e-77aaf0e999f4@gmail.com> <ai-dNlC1_nbQTy5Z@monoceros>
Content-Language: en-US
From: Julian Braha <julianbraha@gmail.com>
In-Reply-To: <ai-dNlC1_nbQTy5Z@monoceros>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-311845-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ukleinek@kernel.org,m:andrea.porta@suse.com,m:linux-pwm@vger.kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:naush@raspberrypi.com,m:svarbanov@suse.de,m:mbrugger@suse.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[julianbraha@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B92546855AD

Hi Uwe,

On 6/15/26 07:37, Uwe Kleine-König wrote:
> IMHO selecting REGMAP_MMIO explicitly here is fine because at least to
> me it's not obvious that MFD_SYSCON enforces REGMAP_MMIO.

I think it's better to use comments to document non-obvious behavior,
rather than dead code.
E.g.:
'select MFD_SYSCON # selects REGMAP_MMIO'

But I guess this is not really worth bikeshedding over.

- Julian Braha

