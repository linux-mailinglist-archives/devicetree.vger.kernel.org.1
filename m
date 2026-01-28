Return-Path: <devicetree+bounces-260216-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEq4K1XBeWl/ywEAu9opvQ
	(envelope-from <devicetree+bounces-260216-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:57:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C889DE6B
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8AC4E300D9D0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EE1A32B9AC;
	Wed, 28 Jan 2026 07:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hvktWIVf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B60D296BDA
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769587025; cv=none; b=lGd8uYrvvmZTKpFdwvRj6mX+pZwpKws9EBnrmOOkX9mBTzEsLPb/SsKNAKGvk5L/8T/7MPTFMnq4FQvBfWK/aP+x8nf8Uzvt0oUvx23FezjS2tFziRygm1Ff+GCvzLAD22Re1wpMU6EGrdFJMk2rDSosdvyRoFOXhzaZ4S1eCb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769587025; c=relaxed/simple;
	bh=T1JNd0GrW/C1eufc8VoVbVNpSD/bmONu/ChHzBuHoVo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kBR0+n6f1FEwJJb3tOGS9cTRoT1z6+iRWd/cacWtTK2tXeebbrrp1dAygI1qpLNhTgbVjjj26DNatgs5F1ixrJqZH464Phlr4SC6FZ6EHn7XSaNKsbinEPTfMEjbWzkfAm8glN/7jQbuVznrwxTGBxG5wjCiNWbLPklJ4s4BE58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hvktWIVf; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2a76f90872cso34359815ad.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 23:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769587023; x=1770191823; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q3u2MzCpVX36oZ3vWzsYnd96x6eghsy01E0RtbVLfR8=;
        b=hvktWIVfjEw+y8cZHd9oa5qhoesK9lKD0jftXpU9HqyEbaUKrm1Xg4lkD9SJvyF0pM
         PH3TTKuBCYhQiqPnXzAD+Nzs1r1fTWxdIzp96/L2C/TEDmRA9I0CZPOLHvEPj7KmNj9Q
         WGhVXLjl8R5l2gnICjM8bhOdlDIAL9+sb+bEiLgxgIMnpKJHm4EBlXH4dXWYQ/nlHRLe
         GKmxSfjw2yqiQwfUIxqoGPZzHhzU+4k+t6IqGG/vv0VetM54zV3EMbZZd+b9ROge6iN9
         2efu0M8JqVwV8nhLeAmPvraiMz2a8ViOA17jNP+pxafUZ305eLZzP8Tck1XDHqnHQWHp
         4Wmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769587023; x=1770191823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q3u2MzCpVX36oZ3vWzsYnd96x6eghsy01E0RtbVLfR8=;
        b=SKRkv2YMWk3F/KQNKFsmRl0tEkuYDsRAvEwpBFXmtbLq1gYm7J0/dB7YzPo9DOWIAT
         N9z7+OUiuWegEcq1HuaF4m0i0IKWiETEnsEXWwnlTh/QSzD0J468EpUQuwtbMgHUvMVd
         3PjUSyQo/Bv2zhSiEc8itpEeLnIfIQSNiqRs+LIl5Hu/RgPCYJPeFY/HFHmfSY4QJCmm
         XPQ6vu01gzs0OjbBJx4d9/HwBJcXRqTJ96O44IMaX/IWOr+8kJXiWVKLD+F8kCa3rpyu
         x9/1Q9H92YvAO9q6EPVNVZr0eO/QmkOxznFSEtNKVvZSQS57z/iDE9Jr7GEBd4oAGJ6P
         HQRA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ5C0tR1kmPkWzZvRvkL2wwoe1smIPXRpxsvsmMAtMeLFnM3m4NXbMIMKElWH2e+M5xT5OsCF4APKf@vger.kernel.org
X-Gm-Message-State: AOJu0YytvkrsgpttbcPf7V3wAXBCERk0vZ24Wxz/VJbZTyeOg6fOctK4
	dpSj8/MQDAyCrbIx6lZcttSg8mYw3h9wXvOBbgTN/Z6/xiQiapBqe/yn
X-Gm-Gg: AZuq6aINYhX42K+pH6Nomz763VbBBXjzCJGQYSconvqJWdr9p2oqKRiAzlNebW8coVy
	caAF/8W1su3Dt3RlChqN+ezBM6sJ7DH23X78iM6ge+7dGjJ/t8gPMMg7iyiJ+jQJGB1+M+aKXRg
	2oUVSuLOkuby4vtP0ok2pp4k1Q5PRfgA/WttIen2g5QT+TLAWfdmGt0ckLS5IhovKycJ35D4F9j
	8J/q0zY4SnWS2RCO2uz5ZwcfxBckUk1NxbF0r78onnsYChtrXKhcu55WWaWMtm0bJIWOtbf17y0
	TKLxr1kA0srb7+HZOz8CH6A1g4hVfWFAoh2wS+4kBTJIFtWF8nK8U1Y6SGMdeb07uZrC9kzuE28
	QupUeEyiGRXBFR+cDp4w29Xf/F57KbBFyQUmeHhhw37I8R8gucDQmGCENSXbWiRb217rzNTqL6V
	njqBmao4rlKX6nN3PBzrAhr2ZOYUXSivf+ko3suFrzES+91AqvNHM2fxahoGarxuWnWQ==
X-Received: by 2002:a17:903:3d05:b0:2a7:9b6e:33df with SMTP id d9443c01a7336-2a870dd5732mr51694565ad.35.1769587023240;
        Tue, 27 Jan 2026 23:57:03 -0800 (PST)
Received: from ?IPV6:2401:4900:88cc:7d63:fcd9:6ef6:26f:677? ([2401:4900:88cc:7d63:fcd9:6ef6:26f:677])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b413c1asm14222915ad.28.2026.01.27.23.56.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 23:57:02 -0800 (PST)
Message-ID: <6eb5bb46-9c67-4cd2-87b0-511b792f9bbd@gmail.com>
Date: Wed, 28 Jan 2026 13:26:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: mxic,multi-itfc-v009-nand-controller:
 convert to DT schema
To: Rob Herring <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260126-mxic-nand-v1-1-557df4a0dfa7@gmail.com>
 <20260127161850.GA1968054-robh@kernel.org>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260127161850.GA1968054-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260216-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,bootlin.com:email,nod.at:email]
X-Rspamd-Queue-Id: 12C889DE6B
X-Rspamd-Action: no action


On 27-01-2026 21:48, Rob Herring wrote:
> On Mon, Jan 26, 2026 at 11:09:20AM +0000, Akhila YS wrote:
>> Convert Macronix Raw NAND Controller Device Tree binding to DT Schema.
>>
>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>> ---
>>  .../mtd/mxic,multi-itfc-v009-nand-controller.yaml  | 79 ++++++++++++++++++++++
>>  .../devicetree/bindings/mtd/mxic-nand.txt          | 36 ----------
>>  2 files changed, 79 insertions(+), 36 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
>> new file mode 100644
>> index 000000000000..97baac8b405a
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/mtd/mxic,multi-itfc-v009-nand-controller.yaml
>> @@ -0,0 +1,79 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/mtd/mxic,multi-itfc-v009-nand-controller.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Macronix Raw NAND Controller
>> +
>> +maintainers:
>> +  - Miquel Raynal <miquel.raynal@bootlin.com>
>> +  - Richard Weinberger <richard@nod.at>
> Should be someone with the h/w. Perhaps the driver author Mason Yang 
> <masonccyang@mxic.com.tw>.


Sure.

>
> Though the driver has zero driver specific changes since added in 2019 
> and there are no .dts files using it. Maybe it is unused and should be 
> dropped instead.
>
> But otherwise, the schema looks good.


Thanks for the review.


>
> Rob

-- 
Best Regards,
Akhila.


