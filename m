Return-Path: <devicetree+bounces-266452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8DbLIZbUlWnFVAIAu9opvQ
	(envelope-from <devicetree+bounces-266452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 16:02:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DF59D1573CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 16:02:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12ED4302172E
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 14:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C58633F364;
	Wed, 18 Feb 2026 14:59:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S4f0g6+p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1527233EB0A
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 14:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771426798; cv=none; b=W3ojq2zKMPrpjJm5rbvILObaEuFZ3jCL+KHX3y3ZrSTtO3McJK5v1zpIeSYN/zw7rxvbupRFU2HH9WtAYPHOrp8qfnIWT5arA+HrW4dWoKiCw1EDx2XdBMuYeYW175CF8ADtrREmmLMkXJR3Y6qZkmvMQXSgUfzacEuaiAre9dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771426798; c=relaxed/simple;
	bh=pPNYtcnldBrPhM4I4orLxdZKoSHcMtjskKXNyUJf+ws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=afvj+0CoGBDZkihVS3VbKOW1F2BRbVWB4wsTx1oRu4gsUOJ/AxI1vp/Nt5/Nw9c4pbSYt0kAgGPPxg04vmhIitmLts0N2mu1FziPPI+Rk7tFh0oqW6LpMuehIBbL416GebTzorayUNGhN54qeaLPClhUcsuKBinuqIq1M12CLhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S4f0g6+p; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso43994915e9.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 06:59:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771426795; x=1772031595; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=BM49FiMQXgN+7Fdf3v/nHey34rwS+KTTASqzDHMee7U=;
        b=S4f0g6+pUdnhc6PkK9xI1osCFnbAwQerGIFEqudp6mR/pakwnoXUVkxYWO1o3C4J6i
         BsPdXDGbDUWdfd7DuBXxtLd8lGFFqo7g/kGCIdDSSvEMj2Kqwdfity7xhhakDWI0TL5F
         7YSv4KxhR/Th/2+vvl9rI6VJxcaZk0MysXM9CmMRJziTjK0+qAICvfvJNm24pnN61tQj
         48htZnhClQvvTb98KrkgZV/xNI3xhb4E3d2CLbcsP3QkWcsZEq44N0ciD1aToQ9/7qch
         2FT5nDzTyZ90K8VZc5TSZVY7JknpkLAiT2s9xR+7LFzaenrYSXhnS81fefGQApT2skYJ
         hVcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771426795; x=1772031595;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BM49FiMQXgN+7Fdf3v/nHey34rwS+KTTASqzDHMee7U=;
        b=DJT+QdC/6ruF0jJgMmw9lo+z4ND1KTK/XDqIMCyhFduw5pufcjFGFi/2uSWBwkORYd
         R4xoEfaoNWgf1OYy0C57Mgbmm+Mmw5+aSo7HqqqwVFuaQihAoyXytvB2eMPRUvPqkRe4
         TM8X+wkA9Hxu+ZaKEVvLo9Pw3OoB8yaSFnoNLi29v2UCdyhRUQnL9Oi51sbW0PDzlYnK
         sOYhu+KDFrmOoiPT1lhDotQ+wpdvSWFtC6/GkXZzS6EFdcAxRaJ79bnkMzG5dYwfdtam
         GAIu/vz7pCxZ4sRKul1VOeXKBtPQd979Ck63FUSXfV6MyQH1x8jslzeKryCy6PBmv0zA
         KWrg==
X-Forwarded-Encrypted: i=1; AJvYcCXFnmbxOnbA3R5UuW7cTUvmF1y+dCOb1CC47lTnNTlEiRINNatOUpkhx0vb3gFi5I796biR7whr3/CB@vger.kernel.org
X-Gm-Message-State: AOJu0YwlOnfbNN+FvgDdTuOO44XWE2HJlfdkgKvwYudjndM4k+kKpy7M
	hJbQYieEoN0LeSBLvwtr1CZ1F4Mim4jfYncqYjFVbR2Y9Fc5LyQuiUEI
X-Gm-Gg: AZuq6aIR1cRjmmtLHa28IDwK5wkmuvHNcfQEULj2ODK/dCT+q5icUX5tcTrl7I20hNv
	1D0QAB9DvHes2RzZhRsNxMR32yRjsL5nbzwfReo8vuQwRpjPM+z7c3Y1ep9cN6zuO8ucty4ypTh
	RKErouhOoUVirwfeZ/oRInhSRdpnAaBNx5bysqMpUZv7/UBC9vCoKVgDcti93DjiZUIZdHQ8pf2
	tFXnhW4Tst274v005Oc4Z3MsABbAQYUTHB1aCU5F7rG7r1JR0YupX9166GDJBi+ccScCDZ0EvLT
	bk/EftEq4Xcmt0xE6iAPmkjRXJMuVmHpnjrMJK4rBiTmjZOzvwbdEtj/EoghP7KJuTyQRr4muXg
	fkHBNKBqZ/j7qw98Sg99XZO6vaILZsK6tT+4cMsvHGsEjVZfFuIqOZQbO28y2qZ4F7y6vlDOdSH
	FHV4gqKKAU0ONqGskqwYpdthabqPx85acEvxR/+QcCnvATR62f2OCWVylmTwULCn2a4AwOVLICv
	00/QDALf8GWxRYCUTfqRc+q9Z26kod2HI1hSVbRpCU3h6o=
X-Received: by 2002:a05:600c:348a:b0:46f:d682:3c3d with SMTP id 5b1f17b1804b1-48398a52fe5mr34213645e9.13.1771426795105;
        Wed, 18 Feb 2026 06:59:55 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483970ce7d2sm48744945e9.0.2026.02.18.06.59.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 06:59:54 -0800 (PST)
Date: Wed, 18 Feb 2026 15:59:51 +0100
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
Message-ID: <aZXT5wMGQgMKHCXQ@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3b984b93a43a07bc9c4f6414a08a3a0f45daaaa8.1771353301.git.stefano.r@variscite.com>
 <31f30651-7c99-42cb-9e27-e4806529d137@lunn.ch>
 <aZTCGH1rKWdvYg5-@Lord-Beerus.station>
 <fceeda41-66cc-4bb2-ab53-d4b1ec25348a@lunn.ch>
 <aZV_c0lmBwjOI_Ep@Lord-Beerus.station>
 <fac81a12-92c9-4e29-96ca-473c18fca675@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fac81a12-92c9-4e29-96ca-473c18fca675@lunn.ch>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266452-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DF59D1573CB
X-Rspamd-Action: no action

Hi Andrew,

On Wed, Feb 18, 2026 at 02:23:40PM +0100, Andrew Lunn wrote:
> On Wed, Feb 18, 2026 at 09:59:31AM +0100, Stefano Radaelli wrote:
> > Hi Andrew,
> > 
> > On Tue, Feb 17, 2026 at 09:43:16PM +0100, Andrew Lunn wrote:
> > > 
> > > And here you loose me. RGMII is between the MAC and the PHY. The PHY
> > > is on the SOM, so there is no need for RGMII to leave the SOM.
> > > 
> > > MDIO is can understand going to the carrier, because there can be
> > > other devices on the bus, such as an Ethernet switch.
> > > 
> > > You say the LEDs are not on the SOM. So they should not be listed in
> > > the .dtsi file for the SOM. It could be the RJ45 is a cheap one,
> > > without LEDs. The colours will depend on the RJ45 socket. It could be
> > > a single LED is connected to the front panel, which is typical of STB
> > > etc. So the LEDs are a board property, not a SOM property.
> > > 
> > > > > >   Two LEDs are defined to match the VAR-SOM carrier design:
> > > > > >     * LED@0: Yellow, netdev trigger.
> > > > > >     * LED@1: Green, netdev trigger.
> > > > > 
> > > > > Where are the LEDs? You say "carrier design", so are they on the
> > > > > carrier? The DT properties should then be in the .dts file for the
> > > > > carrier.
> > > > >
> > > > 
> > > > The LED signals are driven directly by the PHY and originate on the SOM.
> > > > They are exposed on the SOM connector and are typically routed straight
> > > > to the RJ45 integrated LEDs on the carrier.
> > > 
> > > The problem here is 'typically', not absolutely required, otherwise
> > > the magic smoke will escape making the box useless.
> > > 
> > 
> > You are right sorry for the confusion: RGMII is internal between the MAC
> > and the PHY and does not leave the SOM. What is exposed on the SOM
> > connector are the MDI pairs towards the magnetics/RJ45 and the PHY LED
> > output signals.
> 
> O.K, that is what i expected.
> 
> > Given that the actual LEDs are implemented on the carrier side (RJ45
> > with integrated LEDs, pull-ups and LED supply), would you prefer that
> > the LED description is moved out of the SOM .dtsi and into the carrier
> > .dts?
> 
> Yes please.
> 
> > My idea would be to keep the Ethernet controller/PHY node fully
> > described in the SOM .dtsi (since the PHY is on-module), and add only
> > the LED subnode/definition in the carrier .dts where the LEDs are
> > actually present.
> 
> Yes. That is good.
> 
> Thanks
>      Andrew


I will send the v2 with led descriptions in Symphony dts instead of SOM
dtsi.

Thank you again,

Best Regards,
Stefano

