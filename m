Return-Path: <devicetree+bounces-275164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEZrNk37s2n4egAAu9opvQ
	(envelope-from <devicetree+bounces-275164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:55:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6965A282841
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:55:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B62833092476
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 11:55:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08126383C8C;
	Fri, 13 Mar 2026 11:55:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OHb7LIi+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADB41C861D
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 11:55:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773402946; cv=none; b=E7fs0LI+Wk1bUWEVIMUjmaR3xSvtTt2i0uiUqkbow4+sBEH6oaFgL8aBzcQOA5bg5jcBPmtsiv8bC6tRBiohdz6zGc9OXKIyIw/pBjhwNUHoYftjyYMf3bPTsWJp3C10IdeAlXjbGGt7rjmFOm7O+8etDRPxD47oLwLeTYIaXQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773402946; c=relaxed/simple;
	bh=aVeu4W+LJcrfTZaFwAK2YKJ4rlwGvrhhqAPBfzJTzuw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WkHV8ecTsMmkxEBB2RTKrbBtD0Obq0ldfmhXnHMjoedTBjt6FUCTm/OdiYlEXt6EWhIqCLUjByE+tDt55eEU+O8IH4XxWzRRoS8G+8+MSFEUHhUR7MhYLjFWF2UanT9hU5s/vhuNhGlYkMBhdpxkGZ50sgddxoK0+YCRAKf1zQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OHb7LIi+; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-c73a5473bbdso826814a12.2
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 04:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773402945; x=1774007745; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fd6/LNMvocG+SgKxo6Jqn7P7IJDVInHSSSITVl5yXDs=;
        b=OHb7LIi+2bKjH9xAmRB++cnfldybhgZwzi9GDC+R/jKsKXHXb/YALqQtxLIIPaR0E5
         ovvbPpJqgE31602mpEKdq2GYfJMYn7ux6wkBWmCNl7IjlyS6vvDDjoAl6AQjOxGHgwZC
         NNxqyx//RZpXGGYKglGmtxFkFMokIObowjPuemLBgUiUhbsRk227aXTgrMceu9bRAtTk
         qmnU0SsjmCK5WUpushQNug8Y7oS1sEmfk6sTYCahkgHgiKCyNNnDKvZ7iFTxzFE/LfXn
         SPOwEnvWOJ3BlbqC+5Qb2AKoKj6+ltOEceEEjEr9QEyl9bTNzCnQRZLYLjxq/+lxCY1R
         9BAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773402945; x=1774007745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fd6/LNMvocG+SgKxo6Jqn7P7IJDVInHSSSITVl5yXDs=;
        b=FVbvSHPbzsGAHetIM29lWOMpRxM9Q9AVSmQfQxZI7YiIsgfASem/hWtPmNnBGSoNSg
         xxD6QuUqAAbxFte3sqHJiBTqr+97iS7sNPaBxE5CBhfy3w+h0Wn7AFsVS/2U1I52KPz0
         cnPoTAYLI79MEOOPl7LOT1X4K8cg97qeH9k/3sylkijf5Y3W2X0BKTULAaMNQQpJo3xR
         oSTfrk8ACKuRK5xC9D6nyKM/f43a7aSOBdw0zGpezP1x3UBgLfI0P8P4BKFPBtmAKHAB
         4CLpUN1VE69aMW18EJAGzQgqb2JK88UyEcfvDWfmbfiwjw9BKZRxZgoL8v+j7eJgt5FW
         rwyA==
X-Forwarded-Encrypted: i=1; AJvYcCUzclQq3d/f3eXUxlOqkxo0FNxqVrH3IOzjBopaBRAffEqFXLB58y+kHCrfqJ6hlme7tqc+OTzyEq27@vger.kernel.org
X-Gm-Message-State: AOJu0YzpQGbVwPS6vQ7A1O3n22NBYUV9kUdThr7KPsDLMMf8MwOlDWDa
	Yz4YvE8D7G+eLyNWgPhMwKliapA5qr8OnrOFuRB+UmTtfO9SEeACEaY6
X-Gm-Gg: ATEYQzz64Cc1b5VY9Uwgcptl9Z3laEbIC/R5eRcoeCYVfVvbeE0k1ectN4N6y9OVzDd
	9jhTSGNIR1IsxaOztAnHql62RDHwaDg3tZ0Upiskr5IlSkyQF39gJ6vQghnYGjCan8C2bwEMCoD
	n2pCO3xccAIvTnN+MqbOzR+NujLeKviSMvLdOKZDnHmb5crC4aj2tiODnvIl44a7iQ+z1kQgJUV
	Yz8G5KxID2XpQQzIZTHzd/8lG6mxs0auKE2djdV1oRMBPlvZNOzDIfXUFxUwjgj7XmrrdNy4i9O
	hRPHnmcpntdmzudhlDPXmJipmcUT9ankPZNgYrxZj7jn7ERWtoEr7d6YVqfyy6Yg2V/QNNyW3yR
	D6C1jC6EzNgXv8fbNdy0/Hi3TtAPw2esN1Iav6QTOBkYMkvc1K9J93AbpWPxn765VAaL9XID2xh
	IYd9s+cJvLA8MaHniRwr/oZbzPsSZrKXxWFcK6alyNH9iRyZRqJpFE9wANBM6yIVI+BQG0WCo1c
	CzZxK14vJ0rn2nEzM8=
X-Received: by 2002:a17:90b:3d8a:b0:359:8312:90a2 with SMTP id 98e67ed59e1d1-35a21ebedf7mr2902442a91.11.1773402945173;
        Fri, 13 Mar 2026 04:55:45 -0700 (PDT)
Received: from ?IPV6:2401:4900:88c9:edcc:4c31:2d5:c791:ca10? ([2401:4900:88c9:edcc:4c31:2d5:c791:ca10])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a24a7dc1csm1103163a91.1.2026.03.13.04.55.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 04:55:44 -0700 (PDT)
Message-ID: <78aaacf3-9586-4c74-9648-698f15520eef@gmail.com>
Date: Fri, 13 Mar 2026 17:25:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: mtd: hisilicon,504-nfc: convert to DT schema
To: Miquel Raynal <miquel.raynal@bootlin.com>, Rob Herring <robh@kernel.org>
Cc: Richard Weinberger <richard@nod.at>, Vignesh Raghavendra
 <vigneshr@ti.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-mtd@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260307-hisi504-1-v1-1-8bf9a186faf2@gmail.com>
 <20260312152851.GA3190071-robh@kernel.org> <87y0jwjeg6.fsf@bootlin.com>
 <87sea4jee2.fsf@bootlin.com>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <87sea4jee2.fsf@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275164-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6965A282841
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 13-03-2026 14:27, Miquel Raynal wrote:
> On 13/03/2026 at 09:55:53 +01, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
>> Hello,
>>
>>>> +  "#address-cells":
>>>> +    const: 1
>>>> +
>>>> +  "#size-cells":
>>>> +    const: 0
>>> These can be dropped as the child (partitions) doesn't have an
>>> address.
>> Well, the child should, because it should be the NAND device (with, as
>> address, the chip CS) instead of 'partitions'. If the driver in front of
>> that binding does not support that, please wait for Frank Li's work to
>> clearly identify the legacy bindings to be merged and reference it in
>> the top level allOf.
> I forgot to share the link, here it is:
> https://lore.kernel.org/linux-mtd/20260309200351.1791162-1-Frank.Li@nxp.com/T/#t


Hi, miquel thank you for the review, sure i will go through this link.

>> Thanks,
>> Miquèl

-- 
Best Regards,
Akhila.


