Return-Path: <devicetree+bounces-318985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id uPtvEcbBRWoLEwsAu9opvQ
	(envelope-from <devicetree+bounces-318985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 03:41:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 413756F2D25
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 03:41:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MkSjaMKU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318985-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318985-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2024F300B510
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 01:41:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05B712C21E6;
	Thu,  2 Jul 2026 01:41:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD6E2BDC23
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 01:41:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782956477; cv=none; b=lfd6hs4j7E33S1pY9zWGWPYFrazJ4koZ1M4eyA7aTrR8/tHVZ9ZK4E/mtq7SMcMnlmR/nv7jS5k44B9x7cn7S9FD239AL4r2ntwsVIcE9Bi8wqUQNv4pf2orXBpFbFRbP7fOlcBQPYuC2B1pCWTt8DDpKQU1IkiIavvs2S26NSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782956477; c=relaxed/simple;
	bh=UEIngbVpgPQmaeUHLYYQek6IDrSlEeFzwurktpFRBSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SUcXf4cNaAi4wbgIVxZL9kT19pAwO4KRJCeERv5fFLa2gGX/uSB9uy8enEe5hWQ7GUhpmMIT90X60cA4Oo7KY9xbKBWJZ6LEo/PJncZTXKlT9J3DQN7QDRXdPzYbX4L3MzVuziMhY8efCFGM1V57+S0vUWxjoYULvFmWNkTzkOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MkSjaMKU; arc=none smtp.client-ip=209.85.210.182
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-847968ca62fso1152068b3a.2
        for <devicetree@vger.kernel.org>; Wed, 01 Jul 2026 18:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782956476; x=1783561276; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ShQQKj8s/Lgk+6VwLi37Fynh9m2UvesLoaAxNarS/n0=;
        b=MkSjaMKU2nA19uExOWaNYa/4Bf0lw0wKYvk0BjZPdkwWDwDoVWLpfpbzUNupVjJ2ys
         pgp7dIU0MAI2ZsR3ekg97AmGtAAieesMS4SW2byp3TTRDIbiWNvf59qCa0qNg3QV2loH
         1FSqZ1eUexPKLx3htRJNLTgW5DGWzFPYxJL7xBYKyI6pvftP0WDmgmXiCZeNPxjDX/AK
         GBYl5VhZhdynZA4subavQoEsI8ASI7zJHWNC0IIi3hfCUtRbYn9TG05cpXSa5F93jgA7
         wCGs75z5LbrDXOW7tBgkS1Ap6/thdz5Xsm+1EOLi90NLmy2xkYs/I0o/PVCLe4xOl2NK
         gwQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782956476; x=1783561276;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ShQQKj8s/Lgk+6VwLi37Fynh9m2UvesLoaAxNarS/n0=;
        b=FkOsfq1munfo23p24fBgTo4KBW6/aurb2VrImYNF0g7DwUbyl/tMF/K82FxWgVYJan
         mSZPdni5g6FBq+GNOWPZKt0rRNZ1B4g1h/aA5BBF+RDY6f0AXZgFBAx0IjmWG2irjnIM
         /qm3mCHf2/GIGys62m+B2zL/coFKdtxIX/2m5hYyQKS0AxomQpISheZh81UiU8GhCEFR
         K9cltiny6uDJIen7Fi1GfhLLwVdomcneAUh54nzYz2v/D/5uhTLK0b7sgaCEhjPU4khi
         c0z6AyPVbkQp9SWci7H+nULx5/yO9Ca02nUh4We5KXMEcW7I9jRZa9ag0DZNj35laLmy
         c0Eg==
X-Forwarded-Encrypted: i=1; AFNElJ900QEhxFpIwu4DuUTpLl9qiW5YuoXfElMM3Ceu/e5UiW13K8rgkS1HqH3FK3j1ohpeqiAA01e5t/Bs@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9qvlOJKEUlbnRoZ1wkygjjVcxDDcfX4iDNl4e0nCYbS4q02ga
	ifmr1RR0NhOYxFVeqOf/q7DbKEiGM48iXnylTxiPch4v9qcX3ztw4EJW
X-Gm-Gg: AfdE7cnxpguF7N1+H8BzZL7yfAWucMU/11zWTjH3FV58j2YdvmJIfNvK3FJXka9z+UG
	2oLlogNb9/JfjXak4O9smtvHuj1UbUuA0MAYopJUqJcaAIY3nCPb5LFstHKP/cjQWRhC9IdNaMD
	Q7Ik8zufBj28Nq1EBydG4xEehewYR2uzGEVxFY0Z2N8lzWR3FkR8rHMKtn6MFlZsoXAxxdfAKAC
	6ehS1h23DqyB6DA3PeQHLTo0jCWhzhQhcKUvQxV/TwW43UCuUWS0DoTha2OVReFUEVRvGoIFQYB
	zePYfQUPcpukivA1WgR82l6TK0NyTolGCuT2DtgV8ulYcXyZJjezTBgmTfJSxXtFq2tvtfms8pL
	tWYa4sfwq+yz4lC1PqEopT5DbYTxX7c4yi43ivvD8RgcXzrdma3yq9vsn9ItynFkQ42nmCLhtpd
	dOMglmjLMz9NF12ocq4zYTLkN9cJVP8rX/0YrRcHNh+EW7FRsKR+9f/4fJhDpIX8Nl
X-Received: by 2002:a05:6a00:cc9:b0:847:8449:2ba6 with SMTP id d2e1a72fcca58-847c06739bemr3641015b3a.8.1782956475767;
        Wed, 01 Jul 2026 18:41:15 -0700 (PDT)
Received: from [172.19.1.42] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847cb99f546sm546592b3a.46.2026.07.01.18.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2026 18:41:15 -0700 (PDT)
Message-ID: <ead0aab4-4bb1-4979-8451-9b5bf1183bc2@gmail.com>
Date: Thu, 2 Jul 2026 09:41:12 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: adc: Add Nuvoton MA35D1 EADC driver
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, cwweng@nuvoton.com
References: <20260625110638.38438-1-cwweng.linux@gmail.com>
 <20260625110638.38438-3-cwweng.linux@gmail.com>
 <20260701221115.544e33fd@jic23-huawei>
Content-Language: en-US
From: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <20260701221115.544e33fd@jic23-huawei>
Content-Type: text/plain; charset=UTF-8; format=flowed
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
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-318985-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 413756F2D25

Hi Jonathan,

Thanks for the review.

 > Look at the ACQUIRE() macros for claim direct stuff (in iio.h)
 > and then use guard() for this.  Be careful to add {} to define scope
 > to being this case block.  May not save much code but it will be easeir
 > to read than this currently is.

Understood. I will switch the direct read path to
IIO_DEV_ACQUIRE_DIRECT_MODE() / IIO_DEV_ACQUIRE_FAILED() and use
guard(mutex) for the driver lock. I will also add a scope around the
IIO_CHAN_INFO_RAW case block.

 > Move assignment down to just above the loop.  Makes it easier for
 > reviewers to associate the initial value with what is going on.

Will do.

 > For new code
 >     ret = devm_mutex_init(&adc->lock);
 >     if (ret)
 >         return ret;

Will fix this in v2.

 > Second part of this is set by the triggered_buffer call later. So 
don't set it
 > here.

Understood. I will keep only INDIO_DIRECT_MODE here and let
devm_iio_triggered_buffer_setup() set the triggered-buffer mode.

 > Failing suspend because a buffer is enabled is unlikely to be popular.
 > Can you not save necessary state and restore so buffered capture 
continues
 > on resume?

Yes, I will rework the PM callbacks so suspend does not fail just because
the buffer is enabled.

For v2, I plan to suspend the IIO triggering path, stop the EADC
conversion/interrupt path, save the state needed for buffered capture,
and then disable the ADC and its clock. On resume, I will re-enable the
clock, reinitialize the ADC, restore the scan configuration, and restart
the buffered conversion path if it was active before suspend.

Thanks,
Chi-Wen


