Return-Path: <devicetree+bounces-269842-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGpDDVBTpWkR9AUAu9opvQ
	(envelope-from <devicetree+bounces-269842-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 10:07:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D16381D53FA
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 10:07:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 362313014A1E
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 09:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5A98379EE6;
	Mon,  2 Mar 2026 09:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uEfZ/9Yy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B35A38CFFE
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772442446; cv=none; b=buVl5n9zq3yh1DaUSl96uv7E1v6PgFjffYMPlviKfUy0ME5p7gcYbtSQlbAjBaxUp0zG9pcAgp7RfaU1B8hq7Qt6jQNhfjpux50FMHVS2G0vVJF8W/MJ1rHy7/+j2oEeE8WxuG0ReCZNgLiqzK1Dsu9JagaDFVgW2lEJLqKobmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772442446; c=relaxed/simple;
	bh=1Hlh3tnJvRQvGvsfO4Noy/pZx4WjfAthD2cgeDPBDSU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WevI+BfLzIs7xcmjUPi/HRNdw6lS13Ply/q4VLmdKaltZ44bK9U0WIMM+MLeKt0h7bhlm2q0A7nqNExOJEjQzSSOfOend5VtdhGYd/5kyxQcSVyDRnJrzaoYENC3ZNjtQ+ccTs50sjpOLgyjxu2xybjnqh7op0GHGzC4aSJmCa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uEfZ/9Yy; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48329eb96a7so27665065e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 01:07:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772442442; x=1773047242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ltNDP6q2mUdMtPqpRgX6YzMyjY4kZxSKj4nBNx4rkj4=;
        b=uEfZ/9YyQsBmcX0cM+Uk0yjd09CVydlp96acEAYG5n6jM7w8s5HuZ//F/umP3rL0oT
         jsHdXRduiMNSeNK0XmylLirZKnaTPv7jSlBjobg9ORNfa0Ni7Y/Vp9xM1QZj7oRofn3C
         rkMDEpAAiLv+nnFDqWLYJ6L25VilF1jq2qNlc2q7icBXlvnmsM8gMrDoKsA785a7FtrW
         ApWcYB6yah325EIQ/e7O/zCkvitLJ7yCqjugL1N/Xqvd3TY3j//AHel6CS3mq/xs3cGf
         32LsnONpzlHt7s7gKGoij6I5xz1ChkL+x+SY13nttIFkEtmtfqhVJwqmRqDj/NELca7R
         vwSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772442442; x=1773047242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ltNDP6q2mUdMtPqpRgX6YzMyjY4kZxSKj4nBNx4rkj4=;
        b=JFT3OLfASe9WcaPxXvx08igZ8QAp4nkCOZNpYQ6Ji5V/wYGYJBOsZ9WHEvmAoLoO27
         cJRT9KqXA+79VBqCFBgxNmJuCFINhcLmCLzhcTwpB5pvyQl+7PaP0CudzGBU2XspWWFi
         GbjsPbVu7Cr4sx4aUot71NaumgRWK8GUmNUiWRbhW6/ndIkx8DeYo/DmaZUMbCSq4UhU
         Gfph/PYyNUPGTjYSqcZNanjBwAsQwQY8wMs8ynk0uRlLzR3TxBjf0NN/A36qS+CanE8G
         MoMGgM+SwadZVaYjr/KzjZGpSl2sdAXq/1glYKRtF95iOeviZCIBWMjPeSLzjRrj04RW
         6YAg==
X-Forwarded-Encrypted: i=1; AJvYcCWlrV1GT02U551PPBQqXjnBFckQNhrk0lTYZ37tJWFzFgPHwxTGFi52FftCH0B0SNGQ/ehC8ceD3kk6@vger.kernel.org
X-Gm-Message-State: AOJu0YyGM+Y56I17yupELiLC+N3EclL7dFz+6TXPc/Usj32DiFdPxUQ6
	+tpC04y/N1wEmzCGSDowtc+JeWnSyCmem24afKyryY3f04H3g3ay9n2bKox8CDCfMK0=
X-Gm-Gg: ATEYQzzDRNJwP2qCkXO4q2x01d6khFg4S8wnD8aQamUypc13Bl2XyRoZBv98wMcv74L
	Hd6UQ9AmNJA8rzWiO1sMGG21UAx4nl9EPNkkpFmW4wkxo/PjhBW6JzFvz40x+o+THSejwkkpWs1
	yeAKiqgz5yKTOrbA+29wES7OVcDA68pAslGhsdlIg6B4jsugs/uhJ0sjnrhIcFuuwU+Ups/imF0
	kLxTL1BBdhe94TA4h4KnAvsoN5kbAvm2Z47Bq18OaeKtchdGrsaVX3owSStExJdvVcyKJ/w+WAU
	UaLMKXjl2ERdfjjlEjYszeRHOM/RcDiy0XNTmry4VExb2N8Ky4IYSA6WbJ8Y90N54YwPd1XONTr
	3sMcy+AZqkym0egOQs7gzWPIdepzd4LnhdfXz54KY8h7WBAXO8PXPrm4E1BO+DQCrScctLHFOOo
	OkHIAbyPmfMHiwVQPptazMIpBbSCXsj8o=
X-Received: by 2002:a05:600c:8289:b0:480:1e9e:f9c with SMTP id 5b1f17b1804b1-483c9ba7cbdmr202248045e9.10.1772442442277;
        Mon, 02 Mar 2026 01:07:22 -0800 (PST)
Received: from [10.11.12.108] ([79.115.63.77])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b89c99sm271364845e9.15.2026.03.02.01.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 01:07:21 -0800 (PST)
Message-ID: <b1f5be90-62eb-4482-bf42-f331739733ad@linaro.org>
Date: Mon, 2 Mar 2026 11:07:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] thermal: samsung: Add support for Google GS101 TMU
To: Alexey Klimov <alexey.klimov@linaro.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>,
 willmcvicker@google.com, jyescas@google.com, shin.son@samsung.com,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org
References: <20260119-acpm-tmu-v2-0-e02a834f04c6@linaro.org>
 <DGR3X53FPO88.3C2UO0HGRVQGF@linaro.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <DGR3X53FPO88.3C2UO0HGRVQGF@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linaro.org,intel.com,arm.com,kernel.org,samsung.com,gmail.com,google.com,vger.kernel.org,lists.infradead.org];
	TAGGED_FROM(0.00)[bounces-269842-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tudor.ambarus@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D16381D53FA
X-Rspamd-Action: no action



On 3/1/26 4:57 AM, Alexey Klimov wrote:
> On Mon Jan 19, 2026 at 12:08 PM GMT, Tudor Ambarus wrote:
>> Add support for the Thermal Management Unit (TMU) on the Google GS101
>> SoC.
>>
>> The GS101 TMU implementation utilizes a hybrid architecture where
>> management is shared between the kernel and the Alive Clock and
>> Power Manager (ACPM) firmware.
> 
> [..]
> 
>> Sensor Mapping (One-to-Many)
>> ============================
>>
>> The SoC contains multiple physical temperature sensors, but the ACPM
>> firmware abstracts these into logical groups (Clusters) for reporting:
>>
>> - ACPM Sensor 0 (Big Cluster): Aggregates physical sensors 0, 6, 7, 8, 9.
>> - ACPM Sensor 1 (Mid Cluster): Aggregates physical sensors 4, 5.
>> - ACPM Sensor 2 (Little Cluster): Aggregates physical sensors 1, 2.
> 
> What about other non-CPU devices? Are there no sensors or implementation
> currently doesn't support them?

The implementation currently doesn't support them. On GS101 other sensors
are for GPU, ISP, TPU, and AUR.
> 
> Is this implementation and ACPM TMU support exclusive only to GS101 SoC?

no, it can be extended for other Samsung SoCs.

> IIRC, mapping could be different for other SoCs and, for instance, last
> sensors could be non-CPU devices.

right.

Cheers,
ta

