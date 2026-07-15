Return-Path: <devicetree+bounces-326594-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1ZcWEpHaVmroBwEAu9opvQ
	(envelope-from <devicetree+bounces-326594-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 02:55:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFF9759C55
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 02:55:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=feB7qRbf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326594-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326594-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E56F3062AB5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 00:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA929258EE9;
	Wed, 15 Jul 2026 00:55:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E3323EAAD
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 00:55:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784076942; cv=none; b=pkm6xj9G/UXCf0oGODnIcn8fWydEZ8QcSbY3A5CT6Dls3IpWLxSpnqaKarDNCcBNUDv8yKOW5UZg7p9Wwfmd9ON0lChrXVHsS2Og+tRHLXIsNi+CpBtw6X+dSW/7RY3DHNE0+0TZZbAqQVih+EClUxwCrKgtItb70LVUI97SMPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784076942; c=relaxed/simple;
	bh=51zK9CQAvxuMhMqwfTMeRUV9N2ZjY5sEn4e6pxRjvmM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PDEuf1a7ROul9pr2x12nFmPzFD+OA37wkndl/YFNLtL4pCPiuporKdatfs/ukJEDqbLR5ciYbB17zcphyWbKzK7TZQE3vqLs4e//vDKlU2AhPEbVsg1GNr8/T5rPuCmIFf0lE8C5YTPHpX5DEGJOKo1XAqCave0nEY3pFy9LojU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=feB7qRbf; arc=none smtp.client-ip=209.85.214.177
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2caea3f742bso57655305ad.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 17:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784076937; x=1784681737; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=51zK9CQAvxuMhMqwfTMeRUV9N2ZjY5sEn4e6pxRjvmM=;
        b=feB7qRbfijpoa9RWCoYAc9mSY0IAZoJduYrMAuu7tLOFC2y/BuI1S3Z8T2LxwHb45Y
         AaAO/RexjNGg+TBalQ4WlU03IO9ZN38gXhOz61lzuyglio4OmMPsNCPD7thYZsqZ7uq+
         f2VqU1X/NQmHYe+6wtUesUk4UgwqIkX1Zq8o6acc/BUQCb0bbHIFtGp/4pCHr7VDyxym
         2yiIZln4DlTRQspkZdXHSQbo0JGfYeObjQMwIZmR/FQxARRLMijM4NXoeI87x9M7ya5p
         /Qno2kJuXZlTjK2pNAWjE2PhXMakAYIB5FmSYbT/E6i580MARYs6y7jYRjpcpG+cK1fW
         geFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784076937; x=1784681737;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=51zK9CQAvxuMhMqwfTMeRUV9N2ZjY5sEn4e6pxRjvmM=;
        b=GXXal9YjSUGFdi9HNrwYmoO+J16pP51QiFkVnOCX21HaYoez574jrJmNdFSTh12OnM
         svvJzB7KLXyq+6/Ff3RR5LP0MnBocJjH3iYTNTAqkrt/k8ESqxAGw+reRYSJxlrbMfk7
         RUuGmKloBYbVK7X+LL3P5DLASQMIM73J4cWzrlIzyu5gLmhm9PQGdG5wTt5IDgDKWSRI
         jkaDaR/4wRnNYxAAQt2gAGX1661UVc8lMATWkxSqh0KUgiNjhdo2KyC1DXzxu6gR0jgM
         SCqPNk4uuFMoS0U+3JvEUTbCjHyJ2Mgbb6KyssJ6FWfXrZTF7kaRAL7Dlb47sQmtGmsm
         cWLw==
X-Forwarded-Encrypted: i=1; AHgh+RpmAe969njf30tSk10D82d/cf+sn8Q6lku5VKO9UV/uzIV7m0vUFVwk8saLwQRfGkNftDOT5mKkgGDa@vger.kernel.org
X-Gm-Message-State: AOJu0YyIlcipUC+rG4qJIdMSQgxvudoTvsoHOF6z8KGiXkJoKd/MsjrD
	4Ec/Ifeo/GmEjYBq4zWn4/0kM3OMRynIhHqXIEHRb8Wnu1rzpaG+N5Do
X-Gm-Gg: AfdE7ckidlcGIgPIJ/SRwXNf5Nk8aUw2tO47xj0F5B+8NiVGCLkvgHIoYiF1A12u2bm
	amWw6x9M6DDyWKdumuozAsQ+i4iJ94sgenemu/OR6CCI+h5qT23ygl6k3D82oXH8vzN3jN05Sh1
	XCmTTXSB1jnojaFToQm6dsuD9gZn1r4G2YzObmexE/hCPPOfYaUyhXTQBELmkk6p8m1IX1Q0mob
	73pN/c+HaCFniY8XxJsOhjd6wv+3xlEij1tVL8R0S1FPo5XD72Rv6/OFOx9scn+OuNDXwpsj8rp
	VbEwbMJxArz4s1NbJGS9ZeWuj3HEnA6UpxADQ3Rk1zXB/7zg9ysopV1aHKQKKJrG4DxA/+d+vMn
	DbeaoVd0bAWcMWWX8TPr8kAwbdZni1EOADiG97uEonEx28sRtek0x1276XaW1uzeccT/rbzd1N4
	peZY6akf5OVOQSu8yVAEcvMBWtjRX89YzUqW9Z7tBP3jllwwOLmvI4ovvRLMeTOMp8
X-Received: by 2002:a17:903:2411:b0:2ca:53e1:b915 with SMTP id d9443c01a7336-2cef11ca8e3mr49241575ad.14.1784076937182;
        Tue, 14 Jul 2026 17:55:37 -0700 (PDT)
Received: from [172.19.1.42] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9bdb86bsm125057185ad.11.2026.07.14.17.55.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2026 17:55:36 -0700 (PDT)
Message-ID: <a883910f-b4c6-4ba3-b286-081dfc772f7a@gmail.com>
Date: Wed, 15 Jul 2026 08:55:33 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] iio: adc: Add Nuvoton MA35D1 EADC driver
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
 andy@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, cwweng@nuvoton.com
References: <20260713081127.115197-1-cwweng.linux@gmail.com>
 <20260713081127.115197-3-cwweng.linux@gmail.com> <alYqhghiVxVW2vQu@monoceros>
Content-Language: en-US
From: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <alYqhghiVxVW2vQu@monoceros>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-326594-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:u.kleine-koenig@baylibre.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8BFF9759C55

Hi Uwe,

Thank you for the review.

 > Please rely on <linux/platform_device.h> to provide of_device_id and
 > drop the include for <linux/mod_devicetable.h>.

Will do. I will drop the explicit linux/mod_devicetable.h include in the
next revision and rely on linux/platform_device.h instead.

Best regards,
Chi-Wen

