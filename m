Return-Path: <devicetree+bounces-268436-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOpGHvwTn2nhYwQAu9opvQ
	(envelope-from <devicetree+bounces-268436-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:23:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D27E81998A8
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 16:23:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 682B43259F40
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:15:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E26CC3D6487;
	Wed, 25 Feb 2026 15:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="D9w3udQE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D203B3D6478
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772032418; cv=none; b=bDhNBpXW1enOipAJjljnkeY3Sjgtw1gsZc0+pSjq/NEO6JIisuP8DCaQnr4ndRksJzL3bxjwMTDPz4elVNgaIIBXFKNe3HvMLuMDcZQ8a/vFPUnahEk1l5fIg9xQ5fI9FKHu4lNmm0cDCBwqpZGY1V+U4r7iJA7lKEammuk+fXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772032418; c=relaxed/simple;
	bh=CfwXv62B6XKuNCw4ovxeXU7vea0OMdFZ7meSezon65A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YqqThia8wbcu2f7PI/Ca8PePrFpNEScPAlLnL80IVeI5eI0YlRnw4zGtZsyERZN+8JoUXES4x+5gDZYivjH385fzaleLz56Eu8eoO6jl2PATmeKUmmjpNUV7tdd2XIloJGfB7TzWwvGSF55WOvBDUoWJ+TFwd8SxN9Vu844BryU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=D9w3udQE; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2aaf9191da3so44295985ad.2
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772032416; x=1772637216; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=joTPipNFHu59OdMkfE+xQxRwOrFr1KjwgYQLCdHrQ6k=;
        b=D9w3udQEwkVAi71Qxiu+cHGw7rmGoQV3SwQMK6X738SFYYEqJzGReES72hQN6OnBtX
         o/lPuP20Ow8JObERoHTSTe1P5bHMss5rizvWPZGmpoUFrro9LtpAyoxCaD9OKvXzuAFe
         /hKG+txvME/IJV5h08YUZc7T/lexKQnsUzeWOMPr6lXNVHvOm/owwUiCpTIszYEhvED0
         eN1Jk9CKhqYWztxriDEfPKqqX01hkp3k4AZDaqL3gYVSYJZizrvziCGQh4g+DQe/8OAR
         2cAiTvw8kleKGJbVwU4v+QniUzplTum8cK+pZPv22ioejTxF87Kkzh0rsqJzMcrLWe7K
         EgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772032416; x=1772637216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=joTPipNFHu59OdMkfE+xQxRwOrFr1KjwgYQLCdHrQ6k=;
        b=hxQoKq7IVQ+q+c7xRAv7lQ1glLnbqhpKJqhgA7s4qe1yT+fXnMDSYNiC/DvLK6ZZU+
         eKglCP6KbB3fa6ojITy2+7C5iihEZzWuIK092hrwF/lxIptSWFnS0bs0aQaoUjZaaIvl
         LSLsaRYQy4Etjlixfsb56jfvN4uFhuqXaAJ4s7jl24QJjv/QR1De/S0xTx01ILBlTjLR
         XnclxnHm+bunDm/OqixrPeU3tfM3wrZRW3bs6hTNBaCGgjz+dSTSarLmlCzEPF5juXnY
         YewhPokcKbj17dVIu/VKuOnGouTTDN36j1BerdiVjMdRopqz2qg2K4IHC/cv+ZNUxA0k
         93jw==
X-Forwarded-Encrypted: i=1; AJvYcCX5IvKuVH5IIBJzF9vX9sgFpo3t66y+LiwVuCMpYK6GN113M7zaSwPr7PriQ4uH9FGY0+Nc7bzvcBFd@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+wNZMigga0hU9MoExwGEjxYbQfEeLATNPxo/UnUdJZ/1x/58L
	AbEDhzpQLjNAaqYbMZ9WUL+eS37kbtJj9mYWXSuyEOBJn3SIZfCoMceU
X-Gm-Gg: ATEYQzx5x0O9BIxo/lkYnc7HVKH3d53RAdkDf8IdXFqq19O4DvR0quTD/mWbirU2O6k
	P8MmFAM+HQsGsGHTYBsmtCVCAS4tKMkVxlpyW6a6KmwIRLwV5Xq9yaA7L5J9oGkYmqZZUgMK/NC
	7L7IV2vuhcCyZpt+i+zs5Sp09wwfmq8TaP8EPYe6U7H+NkShlAxtnFC1qDCafPoFYQAj2X1nkHy
	K0DzzZ2JzsgXvyr0yNf4aeBguEGF/K50Fy7FOAkzAjhwwayjsOqZEkkYErULHjTwuTEQEXrLm8K
	nHsrBc+kxx/feDfvVPt470a3X/OKENf8VHN3/z1P35VBDsPFHbZFjmFmtOWzfQbNxdTET6wcJPi
	C9beWoHtYCvBuzar6a+TP4TwiVQmS/YMtb+4COpJDolUT11ZNaRKgU8ie3/ZVy/FZ2H3XBcpHx9
	Af1sqUwbtVR2uzx+OyVqh6R+aSKgUvqiR/hK3/StP2V8auwZ6RTU6w2U3tXTp2qflLvNcoWIOno
	7+fynPb0gk=
X-Received: by 2002:a17:903:3b84:b0:2a7:3dbe:353d with SMTP id d9443c01a7336-2ad745697f6mr146921445ad.53.1772032416069;
        Wed, 25 Feb 2026 07:13:36 -0800 (PST)
Received: from ?IPV6:2401:4900:892f:f52a:c575:426a:cd40:5f5d? ([2401:4900:892f:f52a:c575:426a:cd40:5f5d])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad750586e3sm145714935ad.90.2026.02.25.07.13.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 07:13:34 -0800 (PST)
Message-ID: <f78e59c7-547d-4a78-8092-e9b7d62cff78@gmail.com>
Date: Wed, 25 Feb 2026 20:43:28 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Claudiu Beznea <claudiu.beznea@tuxon.dev>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Claudiu Beznea <claudiu@tuxon.dev>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
 <20260224-recolor-hatching-e7d1b1894953@spud>
 <20260224-resisting-mongrel-531537974fa3@spud>
Content-Language: en-US
From: Akhila YS <akhilayalmati@gmail.com>
In-Reply-To: <20260224-resisting-mongrel-531537974fa3@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268436-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:email]
X-Rspamd-Queue-Id: D27E81998A8
X-Rspamd-Action: no action


On 24-02-2026 23:21, Conor Dooley wrote:
> On Tue, Feb 24, 2026 at 05:43:15PM +0000, Conor Dooley wrote:
>> On Tue, Feb 24, 2026 at 02:46:45PM +0000, Akhila YS wrote:
>>> Convert various legacy .txt bindings for Microchip (formerly Atmel) AT91/SAMA
>>> family system peripherals to proper YAML schemas. This includes:
>>>
>>> - CHIPID (SoC ID register block)
>>> - PIT (Period Interval Timer, old style)
>>> - PIT64B (64-bit Period Interval Timer, newer parts)
>>> - ST (System Timer, including watchdog subnode)
>>> - RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller
>>>
>>> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
>>> ---
>>> Changes in v2:
>>> - Change email for maintainers.
>>> - microchip,sam9x60-pit64b: modify compatible and clock-names in properties.  
>>> - Link to v1: https://lore.kernel.org/r/20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com
>> Please give me a chance to respond to your messages before sending new
>> versions. My comment about partial removal of the text file still
>> applies. You've got to send another version anyway.

Ok, i partially  remove binding from txt for each patch.

> Also, you probably should have checked the what I thought was Claudiu's
> email was actually correct. It's actually claudiu.beznea@tuxon.dev!

Sure, i will change email id for each patch under maintainer.

-- 
Best Regards,
Akhila.


