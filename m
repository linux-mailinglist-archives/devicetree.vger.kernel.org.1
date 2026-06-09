Return-Path: <devicetree+bounces-309349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id H/QfOviSKGrHGQMAu9opvQ
	(envelope-from <devicetree+bounces-309349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 00:26:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 802EE6648EB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 00:26:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=JbycdpTf;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309349-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309349-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C903F300B18A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 22:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6AAE428461;
	Tue,  9 Jun 2026 22:25:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CA538C42B
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 22:25:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781043957; cv=none; b=XjVZtMx070Tg1COfhvfG7FCdRaD0DjnfbEqFxFV+SxgVFYoo1ITzM26Yyj+hsXHgBtenRkVJuz6T8j8/pjtm4ib7nwt2K/9uAC6GF/DBso+LKbaJMYf02uHnE/4dmdAaveuKvlbp5Fz6z2yaOOEv+oiLO47VAV9cZ91KeYkSZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781043957; c=relaxed/simple;
	bh=Vm5ommHcBR+JcZfrNPxCPFfXMyyLHxyddJFMIu2u1dA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=WjwF7YjDuVIg4VzqEW6gu2+ecpJm7ebnwscPnCJCkLRTpts0eyl6gO+bLn3UAJQy1dEK3q4loTceeEMufolOeK1redN0uZPtxsHa10r8bI9TOqK9ls/HIyvShI4i/RzEi0lG5VDVCJ4ssKPHB5EUeU7JyGzMDgv3P6tNYg9cJSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=JbycdpTf; arc=none smtp.client-ip=209.85.216.52
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-36baeec21dcso3920410a91.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jun 2026 15:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1781043955; x=1781648755; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IHAmlbVNxH0vBl7x6Q6Ymp+PlLkrCKBYT3xlbJzhsMM=;
        b=JbycdpTfgG+rAh2FkedERTMIQH8DSFvGlGOG4+gf1BcBkyvWofxyqlcIkGhXB717e1
         LkQjmkTZQvqLEOc87CZyKwmbHE++mtNnrQ4v4CaYVjLiM7u9NN50blBKW5koCOvicwhs
         wANnCBd4Ouh1rYU3iNegV5xVtnDx2kkIppvyBQ4XBAPPvAZCxb+/wFGT3jAgiKr40Jqm
         yBMlJ21UZbOgDMUt2L6/1HvN8iio5KyU4vv7dcth+Q4jnuUGizNUUBhW8Q/s46ENciel
         RwcwQS6l9/RVPZCyi+8TJYIaNPuRNEIP0lgcWewoA+EWYC0tiV+lNDixLxkArO76N06k
         ytsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781043955; x=1781648755;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IHAmlbVNxH0vBl7x6Q6Ymp+PlLkrCKBYT3xlbJzhsMM=;
        b=nCgxsgVjnZ2v1OVmEAJpttMtkJAiglPbgwnT/WlgvSrxoL8Nc+LCYNpuZ29xjPoQeH
         NzMnSghQkP6sHn8IAKO75ZT3Znn1EFqca8yLy4tvCGaHkPZu9vEcZ8igWaWGt9pVDfe3
         jYoUrT5thRRFgje2vSjuE4IiiP7hfAI8VRCGQCCNNMWsEpP/JUDvlIKGm9X0ZW2VAMKD
         H3L/VUQGyVSIOpc3gfuGZozkns6XCdDXZwbdl70OoYEZBm43xnkFXMAoUyPAlN807xWU
         ShR9InQiuA/+CfkXYycPcbgbkI0UdVxVEBtBxp2x8eC4tmNmzHGwC45nbQ7iDPf7BCOa
         POpA==
X-Forwarded-Encrypted: i=1; AFNElJ9OlHdrzH8iXmUoMHq06R1KKoBj4Hsc4nt7FChMDI6RpJo8h3LFyApfMTexvY1AJEh4o25hY7WwKVfP@vger.kernel.org
X-Gm-Message-State: AOJu0YxAYpH60OXG8YN510sKLTQ8cmRs6bbIObclmCtXf+EcAh5yR+0J
	lfBwqsvs5m06debjvSn2WrbTnanOqQqcmDBZKd6B7/YA0LdUxXzGuNOB/jiU6OWZyOE=
X-Gm-Gg: Acq92OGIjsSr4gEZ4heplokuiJyCXgOXXc90BYloLsnQxeTAYsBsMhatY505vlyyJ4a
	W0iJXlOqr2/b0XB7WIFJu2eyk7puZjOrWMXtQwVpkJEe2c8J0QvmHgFh6o22AZpEYpKCXNYMuF6
	QgBMPrWY2FQvIg4tuNI0ry2+I/36W7ccbtOns0BuF/hqXtWTja/VqTuOqaOz9i+T2YCF/6oW2Vy
	NmDTuStd4kYfoTrEYX5mHyAeULq5TvFWCAXvccn1Qe4aOjoL+JDhzXd4EEqMfmn5p4ujJwB7B0x
	siUJ8eqmIOK6CPoDCZVNJBQ65Rr21qZuaqkRyIkh6aMM6wBu4uvtkaFu0/sH/krDE47Mbiz4MLz
	nGrHrUMY6QH5+gdnD75a6WkTcVYA1/VzGJkU+h3RvriFFlJNnJB5PB6I9+Klnn165vKOIuhSJz6
	/WrtBEljX07P06HqPXUii4om6zTY3JmZwIVPK8DglWVw==
X-Received: by 2002:a17:90b:3c92:b0:368:9da3:c496 with SMTP id 98e67ed59e1d1-370f0e4ab94mr23555998a91.24.1781043955504;
        Tue, 09 Jun 2026 15:25:55 -0700 (PDT)
Received: from localhost ([71.212.202.210])
        by smtp.gmail.com with UTF8SMTPSA id 98e67ed59e1d1-376246afe56sm457276a91.12.2026.06.09.15.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jun 2026 15:25:54 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Roger Quadros <rogerq@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, Oleksij Rempel <o.rempel@pengutronix.de>, 
 Thomas Richard <thomas.richard@bootlin.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-omap@vger.kernel.org, Nicolai Buchwitz <nb@tipi-net.de>
In-Reply-To: <20260506-b4-var-som-om44-lan7500-v2-0-b8af59ab877c@bootlin.com>
References: <20260506-b4-var-som-om44-lan7500-v2-0-b8af59ab877c@bootlin.com>
Subject: Re: (subset) [PATCH v2 0/2] Add USB Ethernet controller (LAN7500)
 node in VAR-SOM-OM44 devicetree
Message-Id: <178104395448.234140.7031645283043967229.b4-ty@b4>
Date: Tue, 09 Jun 2026 15:25:54 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.15.2
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:aaro.koskinen@iki.fi,m:andreas@kemnade.info,m:rogerq@kernel.org,m:tony@atomide.com,m:o.rempel@pengutronix.de,m:thomas.richard@bootlin.com,m:thomas.petazzoni@bootlin.com,m:netdev@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-omap@vger.kernel.org,m:nb@tipi-net.de,m:andrew@lunn.ch,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[baylibre.com:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-309349-lists,devicetree=lfdr.de];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,netdev,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,baylibre.com:dkim,baylibre.com:email,baylibre.com:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 802EE6648EB


On Wed, 06 May 2026 14:13:02 +0200, Thomas Richard wrote:
> In this second version I added LAN7500 and LAN7505 definitions in
> microchip,lan95xx.yaml as requested by Krzysztof. I also added Nicolai's RB
> tag in devicetree patch.

Applied, thanks!

[2/2] ARM: dts: ti: var-som-om44: Add USB Ethernet controller node
      commit: db05498e59019488b1cf908fb3dad7174cac3e4b

Best regards,
-- 
Kevin Hilman (TI) <khilman@baylibre.com>


