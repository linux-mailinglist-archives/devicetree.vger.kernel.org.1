Return-Path: <devicetree+bounces-318015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OWJuDYIPRGpmnwoAu9opvQ
	(envelope-from <devicetree+bounces-318015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:48:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E9B6E74F3
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 20:48:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=IOGVUiDE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318015-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318015-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C8F0304D257
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 18:44:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F93F3E1683;
	Tue, 30 Jun 2026 18:44:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD2B3DE44B
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 18:44:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782845093; cv=none; b=TxY4jQiMM5xVfd+UeDNi366cnwydt/MoQfpxmfria3U2Wm9TcG00MiGaJZmNet0t6QUCOafFJa8OlqImaEnbAWKpSECXToMGewmVeK4E6ID9GaxoS+4bIrqNmlGeu6M1GQpI+bWfuLhiv9nMRUQXaqHzZBXPDVHfdoQd7UyAstU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782845093; c=relaxed/simple;
	bh=DhFySjiaQrDImKhkVf9bePYqm2Xs8wcnJaQOplgeQw0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qkGv5pZOEHm7tZD0KjijpCoTj8AAiI/gGns5HXBYD2fbU6ObNUrPD2GdIPP+SUwU8wirNaisqTCZ4+r456wO8vZZmAsU5kmnIsftuHHwUhRYoKQg5zVDbAo0s9NtMsUBjvxRchNsBgy8hKxnF9cuTrW6/YsGZrPO59IdkYALV1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=IOGVUiDE; arc=none smtp.client-ip=209.85.161.50
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-6a0e55e82d0so2847529eaf.1
        for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1782845091; x=1783449891; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bxU8QdXeoChBz6XExHvsJppZI9tmvliW8ipdhE3FPqA=;
        b=IOGVUiDEkKwmlez/G6s3Z11k4R5o12vxUvnRbc4t9K23s0ql4R4c3z21t52IP0vUIc
         1vrP98Okut63ZkMzbQqZ+K3k8XSwL3Gz6tK/RKKTN5c0KoHcr2P5fnRBfcEpulce9tEO
         r/oXC1DNG+42MwU+gku34hUiUtvXCN6jFSO4Cq50EzpZjKdZmebAjZbkwA0r5dJ9crVH
         qFcVWELnDWa0+wsvWkfF1yKrgjbAwTsRGkYqGI9nQWM9oCPraGlY5yCKYqMoQOK29JoQ
         430pfSki5mnEklHcOcZ4LMtpAjEK8AMQBMMxd23gubQpz5UN3JNJ3K/LJskTLvHibZXY
         Hlvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782845091; x=1783449891;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bxU8QdXeoChBz6XExHvsJppZI9tmvliW8ipdhE3FPqA=;
        b=LrJgWzjACEPV+GuLmyn9OGnIzLoUL+RGo/PFCdw2ue3J/T0bIjIqVNwKsZD6XyW2LL
         0miECOHbHJMG1n3s/UndTvBXPY/nzb+/yJTWCUjgyqRbQI957HwoCY0Kb9rxHwBa49Lr
         eGKLXqSNAa7U7JXkzeDR4gnDKPQKdUm2YqOc4HG9yIeKcvHZEGpwkNyrC8Er2HWT1uHH
         xrJ5n+iUqUXQtwGHsLRw9nSFXMai1eY9C/cOZhiiZZAGL+LUNio8FQIP2u76mfBHzSXQ
         FtJRHRSdMTT8o3wwXDjLCC0BqbW3XFYGRIXau4hstm2wAV4VcA86sUz2fxyuP/zzC7up
         kBzw==
X-Forwarded-Encrypted: i=1; AFNElJ8ENtyWI0afuoBD3jhxN7eoDD0g4jWOdJrfOLycU8/JKNUeVt9y8JpaciMgb6mo+9+xIBVTdJ3V6fw+@vger.kernel.org
X-Gm-Message-State: AOJu0YxM5fMfV1RDMasXqKliYt/G4rXa1s8WPRUTnfUH0PdVzm6cC0Qf
	ILArVsx3eLm4xKG6DXu9TJd1dRmbaIqTt10osNIUDjC/e/GV0nSvDZ+LL/VzJleKvDo=
X-Gm-Gg: AfdE7clei9cNGCiHpC8o8TVmDGjyjcya2nlJ2lFJUiFjuXGLlkrvP9GwdT2pEV9fAd9
	+/b7gJRUsMJsHQtdRehWJDqXBhF2/BwZn5nMP5uKWiyZWr2vSMutSOLZDTRVYouHsYVYY/VdsYW
	4QSsFACxRr9+h9qON1XHmxsl/G67sWyRR2bq24Q4wGk3TgCfT2sxhL1Ad1AKHEsEKSEKXLJC8EP
	JuQPY6CjPV3dol3zVltbCK+mMKJJ1hU5BL8BbNNLZ5szq8EMY6E8vd5qXstPmvPOXWK6eWSlAQ/
	p/1X6qVOSeVP1+LDorUfxzTi51f9NU/d8tPDWWmToRBzi5L78akYkPefgb3EfLSAiyYVkzHXltF
	G2StG6Epcx1EIkfh0ZP0DELJ7guYvFDRrgmrj6+hqHD/YidbnCKOF16pYjS81SyEi0O/43+18+S
	zdnQOII64+9Mj+6wMuVAAR1at7HJco3YJW/czhxI/enBlmHIWswRGjhbiXmxlE1S0=
X-Received: by 2002:a05:6820:1ca3:b0:6a1:50eb:2115 with SMTP id 006d021491bc7-6a18933a0b9mr3319594eaf.57.1782845090644;
        Tue, 30 Jun 2026 11:44:50 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:e190:78b2:dd4e:ba94? ([2600:8803:e7e4:500:e190:78b2:dd4e:ba94])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-448dbb2302csm2921003fac.7.2026.06.30.11.44.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2026 11:44:49 -0700 (PDT)
Message-ID: <d8fbab77-6cb4-435d-aac9-0d72cd4a59bc@baylibre.com>
Date: Tue, 30 Jun 2026 13:44:49 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] iio: adc: ti-ads1262: Add conversion delay support
To: Kurt Borja <kuurtb@gmail.com>, Jonathan Cameron <jic23@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260628-ads126x-v2-0-4b1b231325ba@gmail.com>
 <20260628-ads126x-v2-5-4b1b231325ba@gmail.com>
 <20260630015027.3afdfc3a@jic23-huawei> <DJMK3NCDCHL8.1EHG93D5O7ROZ@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <DJMK3NCDCHL8.1EHG93D5O7ROZ@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318015-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:kuurtb@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[baylibre.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 80E9B6E74F3

On 6/30/26 12:23 PM, Kurt Borja wrote:
> On Mon Jun 29, 2026 at 7:50 PM -05, Jonathan Cameron wrote:
>> On Sun, 28 Jun 2026 00:36:06 -0500
>> Kurt Borja <kuurtb@gmail.com> wrote:
>>
>>> Expose the programmable conversion start delay as a per-channel
>>> IIO_CHAN_INFO_CONVDELAY attribute.
>> Coversion delay was always a somewhere weird bit of ABI.
>> What are the delays relative to in this case?
>> Is this a device that does simultaneous sampling?  Pictures
>> suggest otherwise, and convdelay is currently only defined
>> in that case.  We might be able to extend it but it needs
>> some thought.
> 
> The chip has a configurable internal conversion delay to allow for
> external settling effects. See datasheet section 9.4.3 if you'd like a
> bit more details.

Since this depends on external components, it sounds like it belongs
in the devicetree. I have the same feature in the chip I am working
on and was just looking at this and plan to add it to the ti,ads112c14
devicetree patch.

This delay only applies to a "new conversion", i.e. when certain config
registers change, and not every conversion, so isn't like the convdelay
attribute.

> 
> But you're right, I should at least also edit the ABI description of
> this attribute. We can postpone this discussion for a future series.
> 
>>
>> Jonathan
> 


