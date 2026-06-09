Return-Path: <devicetree+bounces-309345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XRs3CmmPKGonGQMAu9opvQ
	(envelope-from <devicetree+bounces-309345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 00:10:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B14A66478A
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 00:10:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=JSqBpBgO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309345-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309345-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C48073056ACA
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 22:07:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 801544C6F0E;
	Tue,  9 Jun 2026 22:07:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8168374A0F
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 22:07:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781042862; cv=none; b=Y7LfxrkaRwfxeS6xh37bZK/sZOH3UoZsd95rLBQCyhFHFL6Z7tLi8fi1Hv213vVnJqaRSBAjlmxrH7hfgNAphVkn+7B78fqFTpQxtO1/9eGnaSbDl3F0NS752Zbqrv8x67LOvXBjMBnCVN9sA9dX10W1ZooG8HCrIdIZRDb3kk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781042862; c=relaxed/simple;
	bh=pfst8Pl1eMIbnL+CLz2qwcP1CNCJ01jwiT7Pi+Po1Q0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=kQ52aoKL8XNtx0T/JCQXxsJJufTuKsxTsH/yX+vUg7mpOrNS+YHCCvvMGQ9pEPmjV881HO4/H6Q89Xo8gfy+EDcxtFP2M+Rf7WmUyxLFJ51VkTdy+8l+nEPzQWZfTEvltPrczo9A0JOx68AtJ8+PBCknhqH+qgECzz12zOGBmVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=JSqBpBgO; arc=none smtp.client-ip=209.85.210.178
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-8423f52af13so4256125b3a.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 15:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781042859; x=1781647659; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=OuxYNglbzg4w1eq48zhKqAxq6WHek0Yx27zZwn93ut8=;
        b=JSqBpBgOpUPU4YnujU7ZlBFkeoQAFz5S2qGBkqf9kyY99omh+7WQ81++jex9DzmoFf
         156HOgHlK3g42NnoqAxLcIQ675bAOoOGfk4AgBZCqaw/CmvopbvHnUI8wYSOIHd3fNEF
         91IP7masUWzLKhb/qslGjsgxpDW1WQg/D3TGvayx5APOHAfJ4bP21kie+4H/u3cb8kPD
         J2C+kpHCKqoMbd+O/uPf7S+DJ7r3Y0FUBNoGxrjYIX05JscBcvTR0Iwlo18igSn1hAM0
         PAWgp50XcBY/z+hCAGkHoQ9YoON24rr8BiakSIVp9Zkaz2OYKP6eKoPdZd9xz7DxeQvc
         rCBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781042859; x=1781647659;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OuxYNglbzg4w1eq48zhKqAxq6WHek0Yx27zZwn93ut8=;
        b=RkEo/o5zZoaH2hT/7tpUTWX/AtajDPDt6Dh6Cc9c0idorEqAQpQM08EpUWlagY+JU7
         K5pxF4qXTN5B4epzS5s3Vwwf52/oMh7MAq3P9XprM8lZP8Sq4fIJxzNTM/Hr73QKYIjV
         AmY/B59iGFqaDK3tpkVuT10SHkPbfnbJXHyZ83LxWfxwXbgy9IKEPOSdWkz1hK8cx/7i
         zccWsDGtJBC77gEXkp9lKD86NIDipX3ctpFbWC5/959F00Q7qbVJ1+b5/unzDnJvO8Bw
         ZBjt/6FILfZiPsMASQFVH/9pfS4BCRZKYauh4i8LOC7m2MaI7PNksNTImCa8CHZtaabv
         uFwg==
X-Forwarded-Encrypted: i=1; AFNElJ+9ZRv65DrF4MEFNBl8pCXU155j+CzlLP68254X+/GuXKWuVcEyQtc1Mxxnd885g4Zkqxf7n/KNdr+3@vger.kernel.org
X-Gm-Message-State: AOJu0YyVU2NWK5pyjZf3CGgv8tTfQC7gtamJ9TMSx4Mgfm8mffohdytr
	53d209O5EYLkGv2i0Q55UdhPoBE4A0MQ/Sm2gdd+jc043NpdHU5vuP57EJy+dBLA4vU=
X-Gm-Gg: Acq92OGhcyNykyokfdJTmQwUflcdCeWP2RofA6JMYjtL5m7RLbq7vkp/ToGg2XvmT/Z
	OLzvkirKtZ+MGAIiGemOy2a3hDkRhW8/D3PUNAF4xYmh1f+QV3yLIBHJ0YkffR4gfHFEdC5httB
	Y8eK6p/RQEX/UXVzkJ3Y8yCm8Y2IfXzpUygcxCi6FgPGC5l4bjuq4n9kSKXkbSYgWnsZi9F/QUX
	pClxeWlQqgL25BE47H+LfeB3OeipEDwN7ahQD0p/kxWjyn6cV8fyg8QVpV2ZBu8B8qx/jKbSVAC
	ZWfccuL3nC2RzTc473YLRSerzH/dwxO0WZNt02rl5lWaX6wSGz9jYaQ99sLHUgxZsXMtH3jdvWG
	2GXDUsxX+wWToRXYDFux4UNqn+Oa/f2DUky8cYcsrZeUYRQ6/9/U90desE/PHU7+2kZEdhnfw9G
	VJsjAfPN3GNPowAJUW0QXOHsPtkDZWGIY=
X-Received: by 2002:a05:6a00:84e:b0:842:708f:39a0 with SMTP id d2e1a72fcca58-842b0e1e4c6mr24016847b3a.8.1781042859082;
        Tue, 09 Jun 2026 15:07:39 -0700 (PDT)
Received: from localhost ([71.212.202.210])
        by smtp.gmail.com with UTF8SMTPSA id d2e1a72fcca58-8428221cc48sm23176324b3a.8.2026.06.09.15.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 15:07:38 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Thomas Richard <thomas.richard@bootlin.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo
 Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Aaro
 Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>,
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Oleksij Rempel <o.rempel@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-omap@vger.kernel.org, Nicolai Buchwitz <nb@tipi-net.de>
Subject: Re: [PATCH v2 2/2] ARM: dts: ti: var-som-om44: Add USB Ethernet
 controller node
In-Reply-To: <f3280b6f-7cf1-410b-9711-6dfaae2596f2@bootlin.com>
References: <20260506-b4-var-som-om44-lan7500-v2-0-b8af59ab877c@bootlin.com>
 <20260506-b4-var-som-om44-lan7500-v2-2-b8af59ab877c@bootlin.com>
 <f3280b6f-7cf1-410b-9711-6dfaae2596f2@bootlin.com>
Date: Tue, 09 Jun 2026 15:07:37 -0700
Message-ID: <7hcxxzmkpi.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309345-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:thomas.richard@bootlin.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:rogerq@kernel.org,m:tony@atomide.com,m:o.rempel@pengutronix.de,m:thomas.petazzoni@bootlin.com,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:nb@tipi-net.de,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,baylibre.com:dkim,baylibre.com:mid,baylibre.com:from_mime,bootlin.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B14A66478A

Thomas Richard <thomas.richard@bootlin.com> writes:

> Hello Kevin,
>
> On 5/6/26 2:13 PM, Thomas Richard wrote:
>> Add USB tree description, including the Gigabit Ethernet controller
>> (LAN7500). Adding the LAN7500 node will allow the bootloader to patch the
>> devicetree and set the MAC address.
>> 
>> Reviewed-by: Nicolai Buchwitz <nb@tipi-net.de>
>> Signed-off-by: Thomas Richard <thomas.richard@bootlin.com>
>> ---
> Could you merge this patch? Or maybe you have some comments to do.
> Jakub already picked the binding part.

Sorry, due to travel I missed this for v7.2, but I've queued it up now
for the next merge window.

Kevin

