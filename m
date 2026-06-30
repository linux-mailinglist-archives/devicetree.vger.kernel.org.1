Return-Path: <devicetree+bounces-317380-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mbh1JJ5EQ2ouWQoAu9opvQ
	(envelope-from <devicetree+bounces-317380-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:22:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEA86E03F3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 06:22:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=q5JC82Vl;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317380-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317380-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 57136302A6D2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 04:21:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC0183B71D7;
	Tue, 30 Jun 2026 04:21:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B926337C92C
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 04:21:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782793313; cv=none; b=skBueufNlHZDsfi+gEERagiV3o2GcYUczQzVeNmSbq5B1VrFYs9piHFJo/ndO+/eYjRnujfc8/RlxW2RCgh6zD9RNwCT6Hz6kypkV6KTqPAvLJCurXLnHfesqvOVIok2DV8pmq0T3ez8rE4G8bQ8Vlv/1T60kydB9WEty5RaxbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782793313; c=relaxed/simple;
	bh=lTFy5RM7kse8CAnreFw3LhsSXH2A6ONRbsuB1B52vAo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bM30oNQTStKVZ+Bs4wZrWn0lIUYSj2m8T85JJv+Xl56w0axpgukzBmMS3CkTsZemh+z6kWemH5fWEhL/OC1knss/ZXlKgmBXAyMJu9SXFMH7xYz/xWNyMUR2kZ6zZFYhYj+FFYn9jJsnfRiXx202lwAwtPeQ42iOIGpOLnmkgcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=q5JC82Vl; arc=none smtp.client-ip=209.85.210.175
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-845ea8924a2so918118b3a.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 21:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782793312; x=1783398112; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lTFy5RM7kse8CAnreFw3LhsSXH2A6ONRbsuB1B52vAo=;
        b=q5JC82VltzjwKQhzmNMeUv9rd4F0TAMek22DsWyTIXuJdd4L0D5yhSXfXOuhsJY9oJ
         zyQ+/FJUYeuTIB4kRP/G1FGQnHJF4NvLbGcHxZA8Rn5uGdEyUk1CNCMRcQJESUzcenoa
         IbOG8QR+QeJhTvq8i8MuX53wi8xW36HS6KxpmaHBrxDkGtC0IiskxWvqJG5poXpsH2tF
         /VN6k5B5BKmO7ojNVAQ37at0mN02y41Fp4fT3sDw5+hvRQjn52xXIY/Q2V8TBBDbRGPu
         5BqJ95khlT75rJ9CjYPjmT83oRFs0KVdnji+AN5mowlLld8mSOB/LLkh8KZot9iHvf5B
         wy9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782793312; x=1783398112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lTFy5RM7kse8CAnreFw3LhsSXH2A6ONRbsuB1B52vAo=;
        b=OiUGzptHIlqthpOLRAXvE8RfOQ56PSQM3RrZ+QI1WIqJ4YkKVg7fjyaNp+wAp1kOwS
         NZpw84zdErl+Ma6rq9bhnR51QenbKqFhsV018oX3BFznvQDQoV7IlkZUlZRGoexSp+wt
         dhv6Vk4fWFj7kC1EyEmGJKDZyzd3+VqBaEpjfmc5fcrjBEdY8Gika91Bw+1n28UriniM
         sXox23ZgPzMqPyH5PR/kDdub+7byQRLsZ868l/JKCei7AepWm7D9bCWHVsfJb1IMBZCP
         cnYzEQ/FFDP8i1lYf2/AAwR/4qv9VfqhUTje2NNcOvKkxM6+aQRN5Giavb7eoE5bzHLi
         iPHw==
X-Forwarded-Encrypted: i=1; AHgh+RoNbLN5aIeHlmxs92gk9sSl9wdNEesDvHj9ucizGWg1MVqJ8b86dMmS5MLfoFPZszphMzRfrDDcMg32@vger.kernel.org
X-Gm-Message-State: AOJu0YzJYtK9d0QXW8iRkuvgaUA0BNY88WcmFlPz1tnmn7f4o2OVxkD/
	BKiYLNK5wiKrDoSfnfMAb4c394JOuN8Dujk15FEqpkvKnevK/9qdmZg1
X-Gm-Gg: AfdE7cmANQ+kTjsdRB4ajYIjPAp+vX/K6bAqLQUEKz/GpS14RPwXMCTkWkY9nlgJCBD
	nVFeEL7MhRj6m3DZgpXG2mRhpne7h5Qtfq9h/LRhDFO+3/x6ZevhaLY5DcN/ilG62Pf54phwdLv
	3U5UF7A9VfuVW/HsxEYOpP8OdqWzUzkaB7ZX4joeNF96hkF/mrN6gXDsMn1LSCP+3MszlzD0DuA
	+othDfCbZT68Wv/OmxHtI+TLDPcgK4Snq2ASCcEftOetL/l7IZEYCGFuSw9H34UFtDqjJfEQw8b
	H0Yaa+JGbn9bSAQd+KYkaAyCPPntHkrZNuQQpESxuj9qwBJcKjw4fWMPchK+56RwYf+yWAjyqFe
	nuBluf7kk55u8VhSdLasY/imsfFKV5H8XNET77o0av2nLpG558D/9MBnrDjQQbu8/1fRBU69dWl
	U36w3eN8UrQMuq5nqljPfQ8oF1zeMB6M0iCve3o3SnWIsriFuvec+8Zf4n2Zzw1L/S
X-Received: by 2002:a05:6a00:b481:b0:845:e97d:447e with SMTP id d2e1a72fcca58-8479f109a34mr1696830b3a.26.1782793311792;
        Mon, 29 Jun 2026 21:21:51 -0700 (PDT)
Received: from [172.19.1.42] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8479ff8c781sm950012b3a.9.2026.06.29.21.21.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2026 21:21:50 -0700 (PDT)
Message-ID: <5c788984-1bf7-422d-a808-e05112615966@gmail.com>
Date: Tue, 30 Jun 2026 12:21:48 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC
To: David Lechner <dlechner@baylibre.com>, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: nuno.sa@analog.com, andy@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, cwweng@nuvoton.com
References: <20260625110638.38438-1-cwweng.linux@gmail.com>
 <20260625110638.38438-2-cwweng.linux@gmail.com>
 <40485b4e-6585-42a1-9b84-3019328574c5@baylibre.com>
 <7e96cc1a-eb60-4eeb-937d-64e83bc35279@gmail.com>
 <2f01a3a0-3698-41e6-8fee-1d2e1629726c@baylibre.com>
Content-Language: en-US
From: Chi-Wen Weng <cwweng.linux@gmail.com>
In-Reply-To: <2f01a3a0-3698-41e6-8fee-1d2e1629726c@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-317380-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EDEA86E03F3

Hi David,

Thanks for the clarification.

 > We always want the devicetree to be as complete as possible even
 > if the drier doesn't use all of the information.
 >
 > So for trivial/well-known bindings like dmas, we should be able to
 > add it now.

Understood. I will add optional DMA properties in v2.

The hardware supports PDMA for EADC transfers, so I will describe it in
the binding even though the initial driver does not use DMA yet.

I plan to add:

   dmas:
     maxItems: 1

   dma-names:
     const: rx

These properties will not be required.

 > Same reasoning as above, we want the binding to be as complete as
 > possible, so we should not omit diff-channels since we know what
 > the bindings should look like already.

Understood. I will keep diff-channels in the binding.

I will still limit the DT child channel nodes to the external ADC input
channels 0 to 7, since channel 8 is the fixed internal VBAT input and
does not describe board wiring.

For differential inputs, I will keep diff-channels in the channel child
node schema and restrict it to valid external ADC input channels. I will
also check the hardware-supported differential pair constraints and
encode them in the schema if the hardware only supports fixed pairs.

For v2, I will update the binding to:
- allow up to four interrupt entries for ADINT0 to ADINT3,
- add optional vref-supply,
- add optional dmas and dma-names,
- keep diff-channels,
- limit DT child channel nodes to external channels 0 to 7,
- keep the internal VBAT channel out of the DT child nodes.

Thanks,
Chi-Wen


