Return-Path: <devicetree+bounces-272664-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UGFPO3Y4rmlyAgIAu9opvQ
	(envelope-from <devicetree+bounces-272664-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:03:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 924E12336F1
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 04:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E0769300A38B
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 03:02:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFF827A462;
	Mon,  9 Mar 2026 03:02:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="EyjJwkFV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f52.google.com (mail-yx1-f52.google.com [74.125.224.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3286270545
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773025374; cv=none; b=D/Mn5eFo6l2z8NoOekXKgOB7xNr2QjEsHza+h2F8fv3VcAcA7LIzSSRzU5p1sSqkv2erSqKvIzC0F91agrElu6qfI693K4CYBNqTwBfO3S9rnsuftajxTx1qcZWzkpveNUCu2Ndi6xdrtScQUEA1MDvlM+QwaeLL7oQQ/GI09/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773025374; c=relaxed/simple;
	bh=BGjkXwXFeJle68octNDMR19EHMWwrZil3s7gHM3J0bg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jWxWnOxJeP+eW7K6L/RTaG+0oxrczAtdUjA2lLpvjAhif1DBawRlR91MwmotVqE9UxOCMDWxO7MBNJE9sOmdOlEOHqxuPuGruk+kYriaZxvC2gKXeuFvo2YB3wj5Y3opVML19HoblH5eMmcaiDI1rfqVLqXUMycJaGuh3wrOIb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=EyjJwkFV; arc=none smtp.client-ip=74.125.224.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-yx1-f52.google.com with SMTP id 956f58d0204a3-64c9c8f8783so11460487d50.1
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 20:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773025373; x=1773630173; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DRC/SSBoLNJpBv7w3HXObuyQkJlK3e7PgCYEr0NFv4U=;
        b=EyjJwkFVWzJNjMAd6yOjTRBmZI7d9gOhHIWC21TOHKITr6YTn9n4l80Xu7Pv18+KyU
         kfWBI6ymCmL4PPjGirEcqKsY4XEHfQ+nt2VQwUr5YItaGNOJNOpIzLggBVIP4zMt5Exy
         gt0gHwPViT7fTLnvyFaqp80/4bj6v3USQOkZr3LbykPGuBMqRF5NSX+IZerO/8k1qPrM
         wph0+noQ0rCJyoiBOpuaE1cEaGDY3fDA0Fh7DCydJN4afYBApqo080AIjY7REwMFbghg
         YPZAmb7nF1afmRviKdDmGihbZWLeodHLdKmQSrywDUC1oea6A9eyaDCXwYVmWvcuwSEw
         3WNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773025373; x=1773630173;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DRC/SSBoLNJpBv7w3HXObuyQkJlK3e7PgCYEr0NFv4U=;
        b=jFURR+ZiwHn/Nf3iO/hrZV3W6kE8zPvbzhrOcwONp441Ms4+hWlFae/6913pSEmFyT
         A62MtiIkmP0rqk4i5w1bpjXPdZWFGuc1PRuFId+w9uRBhg7ZfB30YxIT60EcWJN/Ow6p
         9r10TzsJPAofiwDG+t6T1s7ldD0TYqDmZl4l2S0WJTUrNMmnAipJKlssqyeiR0xubj+y
         qF6hL+qzCBUeZNPsD/UgsqaHI3RYbjBHcPqK02nZFugMwXWZ/6Y8Vp1Bq8frHCVXA1Dn
         VkH7ihOEWwGiYtojxKdUyO7t9Vt20ne2+29XmXio2FtnIBF2H3XMz2aqfTPxqfSUxysa
         cyjA==
X-Forwarded-Encrypted: i=1; AJvYcCWgdBVFExTW5mfnsXsAuvwvBreIM+IOtMNtV72x0+AP5HDoiiFZ3E6KlUpd3dvA6zIlhn8Z3jYUdIg2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzjmif5EHan7GkB9z0kJwgGDrC7mICRgwZKWJaLVV8ipOFfcDKy
	RMVM/jUz52rILjz41yOJSFKoqljvEFHwcLkpuR979wTFObAqWt/Htu839qeFAqZ2KA==
X-Gm-Gg: ATEYQzymI9Quj/fpYsP24JByxvNN6yHimmTE92wuCF0aEcg32gi9HH4S9IxVLrvkljj
	6NL+6uGoMvAJVQ0wMXs3q3cQG2Rgd0yxTduFjIeLDBeq2ZpSqoAwF/SlgIVdigwvbBkUMqR982V
	V8FmfgZoFeqE5/2hmPvsobMmsSs4Odl2PH7UnvgS0Po7sY/5B0dPi3SPuL0U0UL/zUDJqzttOjA
	8auPBE2dHmfpfUeUunklySFc8lu09poFnsxeicvZrWyDz2w7tOsSSuyMPY4rF54BOrwja6qFsri
	AWVfYwwyCQFSdkDAjcNuDBxF1kmzz+HTPJL/MAZAmyJxMhBl1Z9/dsX8jJ6+gbqE5JhCbPgo+Px
	1mV3sjiOgfH3N7GTZEkTAd2z+xJTDVQGCQffxGwzhtsjvDmsQ/m6ODdVoAfDSAEKhkmKGP5vc6h
	EU/l6qZk8lW+078fCeHqZdeUasLBuSDbkw7vmBwxYWQqP03GMvi6n9k1q+5MPlHhQXlcNOHzo=
X-Received: by 2002:a05:690e:1186:b0:64a:7bf2:3afa with SMTP id 956f58d0204a3-64d0715a07dmr12447389d50.28.1773025372369;
        Sun, 08 Mar 2026 20:02:52 -0700 (PDT)
Received: from ?IPV6:2600:1700:4570:89a0:3329:ea09:3c41:e7ec? ([2600:1700:4570:89a0:3329:ea09:3c41:e7ec])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64d176c59dbsm4094408d50.11.2026.03.08.20.02.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 20:02:51 -0700 (PDT)
Message-ID: <103a2828-c567-4b95-8583-e2358ccfc1f6@google.com>
Date: Sun, 8 Mar 2026 20:02:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 3/6] mfd: max77759: add register bitmasks and modify
 irq configs for charger
To: Lee Jones <lee@kernel.org>
Cc: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?=
 <andre.draszik@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 Tudor Ambarus <tudor.ambarus@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Mark Brown <broonie@kernel.org>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, RD Babiera <rdbabiera@google.com>,
 Kyle Tso <kyletso@google.com>
References: <20260224-max77759-charger-v8-0-eb86bd570e9c@google.com>
 <20260224-max77759-charger-v8-3-eb86bd570e9c@google.com>
 <20260306130031.GK183676@google.com>
From: Amit Sunil Dhamne <amitsd@google.com>
Content-Language: en-US
In-Reply-To: <20260306130031.GK183676@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 924E12336F1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,linuxfoundation.org,google.com,linux.intel.com,samsung.com,gmail.com,linux-foundation.org,vger.kernel.org,lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	TAGGED_FROM(0.00)[bounces-272664-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[amitsd@google.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Hi Lee,

On 3/6/26 5:00 AM, Lee Jones wrote:
> On Tue, 24 Feb 2026, Amit Sunil Dhamne via B4 Relay wrote:
>
>> From: Amit Sunil Dhamne <amitsd@google.com>
>>
>> Add register bitmasks for charger function.
>> In addition split the charger IRQs further such that each bit represents
>> an IRQ downstream of charger regmap irq chip. In addition populate the
>> ack_base to offload irq ack to the regmap irq chip framework.
>>
>> Signed-off-by: Amit Sunil Dhamne <amitsd@google.com>
>> Reviewed-by: André Draszik <andre.draszik@linaro.org>
>> ---
>>  drivers/mfd/max77759.c       |  91 ++++++++++++++++++++--
>>  include/linux/mfd/max77759.h | 176 ++++++++++++++++++++++++++++++++++++-------
>>  2 files changed, 230 insertions(+), 37 deletions(-)
> Does this patch have any dependents or dependencies?
>
This patch does not depend on any other patch.

The patch that depends on this one is:
https://lore.kernel.org/all/20260224-max77759-charger-v8-5-eb86bd570e9c@google.com/


Thanks,

Amit



