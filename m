Return-Path: <devicetree+bounces-266270-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id nLn9DCHClGlWHgIAu9opvQ
	(envelope-from <devicetree+bounces-266270-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:31:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C386F14FA93
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 20:31:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3788130107B9
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 19:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9533836C0B0;
	Tue, 17 Feb 2026 19:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZwX7UhWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483421F0991
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 19:31:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771356702; cv=none; b=KT/ug8GqQbzLcG2KKRgEQNzxmI0p7j1BJxgAZAb5vc8aKz8wp2vdgrtPdn38sBG32ERaRH5qmNbiTR57Zm21D4Kc1QHuhMpJxjEz6Iio+oyKIRF7E0Ilv4tASzih/DJOnU31ZaPeUsWdCkVXrbCz8H4fMMPFIYk5eHGPJ3N+tr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771356702; c=relaxed/simple;
	bh=lJvDpTHJVNBn3MgGbOS1Jg31wusVoMPQ1a05J0GJwgk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iJ0sHUEGuRV7TCaw19vkLdl03jCtywM0gmQApMxi/2GIyBIcHgoL7iymlLbNijOQYlMxmKSJfGCoRUbTxax/w1adKGJghF6GEqeqgjD0h/QKxuhZTUNMnqcS4zgGqVV0XVSjHJOtOWdTcLwRLv+TsM4zLN1CZ0uS0olh+zPz+Pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZwX7UhWJ; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4834826e555so45855615e9.2
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 11:31:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771356700; x=1771961500; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=xEvfYLLw3IiT9UwT6PYubkbnZroYjQk8ROv2tQqe9bc=;
        b=ZwX7UhWJtyyeWKEhWfbHzrG8EW/bryICsLQoJViXsUqYLJ/diqYvpkkYqJpJ0n9a63
         4Xsq1d7SSzytWuMPWspQtsvavJclC7yL/CVIT6sBnTixCr7EZHfqn7J5bXT1r6fdxJkU
         rYS7w5lPKbZh7nG7Mh/piuqA7p20hecqUqVAT7XEisydAc9KJBT0ob4UBUR2zWJn/a7J
         IlIep08BF/fnBBOP1BhJYIsOwJMOOIoVURuJZZqetYax94ByxTSgxoKNMbnQCIFBVb54
         2E97L3wCfFQDA8c5G9th+HFryCnW8skVN9g+WGrZvKq0/je/wkemXIYQLCbE2TLsmAo2
         npEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771356700; x=1771961500;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xEvfYLLw3IiT9UwT6PYubkbnZroYjQk8ROv2tQqe9bc=;
        b=Uvwq8CfFaPxMqpmEYKm3qDBI+DUc38wjr5IqcaZ7/9Ec6gTI8UE2QO8zNE+5DIw1ob
         VkwjPTk7RspNkfQk+XSzJ5knESulPYAB9frjY7v69f8sXdDuDoeiYSeHYOgnwR/r8QUq
         PpLLEjg3iGUOQ6vaZAjeKWryE+TDQzQhN/1zbtcWGHqoBdVZwI96udrbFB0qGsQ7bX9y
         1biWoa5LFfUvEQTNFYzoIO13l3n0aOtuAXwMGk68aNeJhIvaElZ4sfP5v2PsvOr9I5Ks
         fnxKhHya+R4Z1eR5qhAPXEgPYpeA3OOuGdLot0wazqYVbRVdUyvlppw9/IrSzsDANNU5
         mfoA==
X-Forwarded-Encrypted: i=1; AJvYcCVv/2fu9HgDjV+y6eYKQqMzm0/d0ouXMyVShKU0TolUr/M2XohClZXMnKNPzWNWYR0hA8Zs9ik1zlDp@vger.kernel.org
X-Gm-Message-State: AOJu0YydOXjFpUG21r3KHwRPraOFm5oc7+LOw7oLO2erGoHH1s+ExRDu
	TWcB/+xtYeDbLIPAfcVakLY/AkkG9Ks/uEJHIbdwijbIH926IRE7Py/i
X-Gm-Gg: AZuq6aIw7P1qxbxy5W+CKnhBkZutYS9fJ/kii79K549tDMpozh6FME5Ez7tve2UnuI2
	xkvTK/OXvcny/1+6g9dDECq9sRlpn4b528mmSgsboP6HTWRhCJ1H4PZF8WnO/IElCriRQLkAC8S
	kHPJm8JcinMakztnJ2biPrOU/jp+4JCAbV448EbTjvC8I5upAuMs/t/zBf3tcMdlV3S8tYt2tiJ
	/ctSD3koFmB3nqcOp5sqDYNkgbiadvBgHtqklD7Na6GDN9TALa6DOk1sluKpIq991EYitmAorTs
	TViN3tkHnEubm1/Fw/jDAzJmtGaNHSplttvy2TWA3kZJz2Ff91YF6UINDwlqsKVLRh2Kx8ZlQo2
	KOLMW1jy1B46Jq21UHSBVDFRUUr3GqCs1109fGULh1EXApc+/qbc8/gaCFyHesD9JTFfYfGZNp2
	CGudgPcUT7JNZ45N6tYxcghQoz5BehWhcQNszDubvDdKVMF2bQWuNWpAyEvXcbuvaiZfYkVrcOl
	aaCReXZV3dDVsyFH9uDZbHHXrbvAdBjhWUiwlsY77EmfR0=
X-Received: by 2002:a05:600c:1c19:b0:483:5310:dc67 with SMTP id 5b1f17b1804b1-48379be817cmr234399105e9.20.1771356699475;
        Tue, 17 Feb 2026 11:31:39 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48397317e84sm1751885e9.5.2026.02.17.11.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 11:31:39 -0800 (PST)
Date: Tue, 17 Feb 2026 20:31:36 +0100
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v1 03/11] arm64: dts: freescale: imx8mm-var-som: Update
 FEC support with MaxLinear PHY
Message-ID: <aZTCGH1rKWdvYg5-@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3b984b93a43a07bc9c4f6414a08a3a0f45daaaa8.1771353301.git.stefano.r@variscite.com>
 <31f30651-7c99-42cb-9e27-e4806529d137@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <31f30651-7c99-42cb-9e27-e4806529d137@lunn.ch>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266270-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email,Lord-Beerus.station:mid]
X-Rspamd-Queue-Id: C386F14FA93
X-Rspamd-Action: no action

Hi Andrew!
> 
> I don't think you say this explicitly anywhere, so i will ask. The PHY
> is on the SOM? The carrier just has magnetics and the RJ45?

Yes, the Ethernet PHY (MXL86110) is physically mounted on the VAR-SOM.
All RGMII signals, MDIO and the LED outputs are routed to the SOM
board-to-board connector. The carrier board only provides the magnetics
and the RJ45 connector.

> 
> >   Two LEDs are defined to match the VAR-SOM carrier design:
> >     * LED@0: Yellow, netdev trigger.
> >     * LED@1: Green, netdev trigger.
> 
> Where are the LEDs? You say "carrier design", so are they on the
> carrier? The DT properties should then be in the .dts file for the
> carrier.
>

The LED signals are driven directly by the PHY and originate on the SOM.
They are exposed on the SOM connector and are typically routed straight
to the RJ45 integrated LEDs on the carrier. For this reason, the LED
configuration belongs in the SOM .dtsi rather than the carrier .dts.

That said, you are right that describing them as "Yellow" and "Green"
ties the description to a specific carrier implementation.
I will drop the `color` property and keep only the LED function and trigger
so that carrier designs can reflect the actual LED implementation if needed.

Does that approach sound acceptable?

As always, thank you for your review.

Best regards,
Stefano

