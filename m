Return-Path: <devicetree+bounces-308156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ekF+HgSPJmrjYgIAu9opvQ
	(envelope-from <devicetree+bounces-308156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:44:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 06370654B39
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 11:44:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=D8DWm6E+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308156-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308156-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 6A92330089BB
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 09:44:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EC163B635F;
	Mon,  8 Jun 2026 09:44:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06EB03B5319
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 09:44:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780911872; cv=none; b=Tr3dGunWn+arjsS5QAYXkSObDPcofF4EthrwMm7nbLOw8MYAazKTfhO6h65sdyHSBMol7J1uE9F2rPJD/zVx0mbNiQpYGR34jMB3w4q1hpUxKWo7abw5/WsZSy5X+L8MlLitE/6XyMY5RZfLhC/1qrT41Exo60BhjeSf7l1mYxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780911872; c=relaxed/simple;
	bh=i1yQS097VZxkGZ4nQOdxqGiWCo0ltNh9Qx/zXg51ui0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WNqv5Tst9k1dyHO3q6TUtKiuTdzHsnodj1gm2UQXXq965xbs2cAFu/Mu8IyFQZLOC1ZGkw+Pmdm91ZGi0BZCWKPAP95zQG2DN5dgLkjKZvYSyGxoONzzKKEtbnD31G1rkSHHqXSNeacNKGUReDyNQJmpNLjkq73SrPoMoM1ubXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D8DWm6E+; arc=none smtp.client-ip=209.85.215.177
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-c8629bed4e7so657397a12.2
        for <devicetree@vger.kernel.org>; Mon, 08 Jun 2026 02:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780911870; x=1781516670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s1wz0gmvL+00jwYzggF0MlmA1dhQA7/85d2swuD/6js=;
        b=D8DWm6E+ol+EQ4GpXvCRWVrIVPc0K9eg59Ex2xP9oHMUIM/ywNT4njDDOJj0FWYSqO
         KidJrow+NTglrTDAcHv4F/wl3w6TkuRX9qzEr/VJPw/pOm6P7eP723USSBpOieLTxOCA
         mJHG6SXAuANki+U1AEXkn2GGPi0ag7WxapjXXa3Hp1cPKAd3I2TAyybTmh1UhAQihJtS
         KIYHyU1ejsN9cwjCCf0fk5+7FNKxit8RBlp/b7omNssZB1o4qjXQgVJNP23uhQnozDs2
         ZtrPYAlhtNY0m69W5G4ep0hs/gbt9qKzCzpsLLLTZIw4HSAym+ss4t3ickJfyggHJBZ7
         ghxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780911870; x=1781516670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s1wz0gmvL+00jwYzggF0MlmA1dhQA7/85d2swuD/6js=;
        b=JU78Qt6QovfQ2lg2RfN2HY7phUuRORjbZ5Uy/NgKBllCynCJo8W0mncfatRmGxNCu2
         C+m42+i/WiRLuambJnCXsHsbT/r6DMXeBXkeD+o/r7DjcEPlDQZPjN19NwVwQ7tTIWlQ
         X8xuPx4d9pSQDYMZpmOkMfQ2R7CcUCLEP2WROTDmg1b09retq5OI3zAVZcmXBUFaCwqf
         ITgwBqZhhZKkwcgcFA9pyalkFgmC9yZs6lhLRpWHjffslRs/3uREuQgtKnk2I2yXguXv
         pdcbtp9mzCiSHdWk5rbQj0groPTmfUJoMBBqjd7okvfkqzO0SiVfY/lEdpSg/u+a4mh2
         Mlrw==
X-Forwarded-Encrypted: i=1; AFNElJ/8t4bFpYeO5kMkY+oCCxjzsKrMxx3D3ATJl09kuThJ5xdgatk2nk/4fZ6ah16G17UhebSbN84CKZn9@vger.kernel.org
X-Gm-Message-State: AOJu0YwSGn9Ld2opZDtI825aJf3PQyRElKetCa9egwxSAzvNfNDCC84L
	kQMHw+Ymdr9zEXy+GuQTuF5pG7x3uu3yVg40AGPd2P9NlU5cEbhzffDf
X-Gm-Gg: Acq92OHkSyz2CLWyncQWar0cb+UwbI3kO3kGXvnN7ZYl0RpcCSkj73KHVeJdLMMufLX
	9Zb6uR7Gol97wykHbULo+gjUW+VedGI+EQdta9RiUf23MsOwHH2lCGz8B0s4zp0HVDF/N3BDWQe
	9Pc0nZqAnYMT5JWqBs5duxZjiKhQr2nxENVWrnaUs4DNjqfsABU1heiB99fL2gsbt+xAkQQu2Xp
	N2xC94zjNCqV0gze7TXJ/oVzr4E85QbkYRzqiGluUUMUoXUUQXUdA06F1KnOXIBJG7fpQjxh68B
	QNFgsCvG9kwxhomyn/K3uSNWv5f8pvm11sbFi5qWgCVY2inwVT3u5DRB3xa81+Aes7qL135SBIG
	qHXHGih0mOguElL3Is2iQs88z/y2/JoWJqiaKD2q5VeQ2vR9aHevM7pKO6HSXvdrGGMzF2iWVna
	ng24WeQ2yAzko7V9ZuXOPnFetglC3z7d8F4TMPN79eJD6E8qFPtGeq0VIrKp5SoA9vSq9GMHI51
	YNjFQeKqwHE8j4=
X-Received: by 2002:a05:6a20:d48f:b0:3aa:f9cb:d43a with SMTP id adf61e73a8af0-3b4cccf7d06mr15690657637.5.1780911870286;
        Mon, 08 Jun 2026 02:44:30 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df034ab9sm14584651a12.5.2026.06.08.02.44.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2026 02:44:29 -0700 (PDT)
Message-ID: <28292e35-f41c-4719-a5e0-cac4ab3884f2@gmail.com>
Date: Mon, 8 Jun 2026 17:44:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: display: verisilicon,dc: generalize
 for single-output variants
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: zhengxingda@iscas.ac.cn, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ychuang3@nuvoton.com, schung@nuvoton.com, yclu4@nuvoton.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260608023237.305036-1-a0987203069@gmail.com>
 <20260608023237.305036-2-a0987203069@gmail.com>
 <20260608-baboon-of-theoretical-stamina-6db63f@quoll>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <20260608-baboon-of-theoretical-stamina-6db63f@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308156-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:krzk@kernel.org,m:zhengxingda@iscas.ac.cn,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ychuang3@nuvoton.com,m:schung@nuvoton.com,m:yclu4@nuvoton.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[iscas.ac.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,nuvoton.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a0987203069@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 06370654B39


On 6/8/2026 4:02 PM, Krzysztof Kozlowski wrote:
> On Mon, Jun 08, 2026 at 10:32:33AM +0800, Joey Lu wrote:
>> The existing schema hard-codes the five-clock/three-reset/dual-port
>> topology of the DC8200 IP block, preventing reuse for single-output
>> variants such as the Verisilicon DCUltraLite used in the Nuvoton MA35D1
>> SoC.
>>
>> Rework the schema so that variant-specific constraints are expressed via
>> allOf/if blocks:
>>
>> - Add nuvoton,ma35d1-dcu to the SoC-specific compatible enum.  The
>>    generic verisilicon,dc fallback remains the driver-binding string.
>> - Relax the top-level clocks/resets definitions to minItems ranges so
>>    the base schema accepts both variants.
>> - Keep ports in the global required list and keep additionalProperties
>>    tightened to unevaluatedProperties.
>> - Add an allOf/if block for thead,th1520-dc8200: five-clock (core, axi,
>>    ahb, pix0, pix1), three-reset (core, axi, ahb).
>> - Add an allOf/if block for nuvoton,ma35d1-dcu: two-clock (core, pix0),
>>    one-reset (core).
>> - Fix a stray space in the port@0 description.
>> - Add a DT example for the Nuvoton MA35D1 DCU Lite using ports/port@0.
> Difference in clocks and resets does not need a new new example.
>
> Best regards,
> Krzysztof
Understood. I will remove the second example for nuvoton,ma35d1-dcu from 
the binding.

