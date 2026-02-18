Return-Path: <devicetree+bounces-266327-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALbtC39/lWkqSAIAu9opvQ
	(envelope-from <devicetree+bounces-266327-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:59:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFE9154615
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 09:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84C853004CAD
	for <lists+devicetree@lfdr.de>; Wed, 18 Feb 2026 08:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9343333344A;
	Wed, 18 Feb 2026 08:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P8GcJCEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F45A332EB4
	for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 08:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771405177; cv=none; b=JfOoDzVOuYWaiEhMtQR8rGESJNTPqMkS7vQ2ZR63xAwUJ/WTf6Vt17y1aZ8HVug89aDGSA8iEWMJcRqZ4+vWtUGv3SSEftu1Swhm3BGx19jCUo4jOABSNLVK6HDgXwFyDU/e2VHgs/Xb7GmojSL4o8GYure6KizyGBRZ+Sxre/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771405177; c=relaxed/simple;
	bh=bp0SGlOFbs7qaFo3i1X5NVk+cXHP+qamjp/rZmnb9Kc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MvH59dunxsmYdCIcJccEUdsqHtXfI/GZFwUTHzhocBdh4wPJHbev1/l4P5CuWxx7/YFHX28Q4+53QadNILGyJkSKIKfG+5djRtfgRhfaKA9+WhwYZ9lgajai0kRKLqILCCcQJ+152bObnA2U+gA59XuNl5QdctabFQfqJPAL9/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P8GcJCEA; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-436317c80f7so387978f8f.1
        for <devicetree@vger.kernel.org>; Wed, 18 Feb 2026 00:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771405174; x=1772009974; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s4xtdZq7ZOIcHdSeKfZqgNu8Mz/fkUqSTcDWpnIDA68=;
        b=P8GcJCEASBn7BRXqPyrcBhlNhAFFXlJEAMOe4TqqMbQ86gZ0O4x9pXNn04qGQZgIAQ
         CLlq1mUVN0TBA59Y5vN8cAVHDZnVFKQ+cUqDhtVx/6euowjcRewbinlN+mYdWUQCWDUg
         1xOdsewdbDJPelbWWk3VCGBN/W4OCV5qvOMJMdo23fuNUkdN2AmJx4sC/pYMe5MccRgT
         Te2spoFKi5SJpiIdsUmtqj12X/9+JMAuQD3PAuoYOjUMXbPmcs+zEK1fqz9gYGkqNZ/Y
         zqbBHv6iFD1GVwBic3USy04QjwC4suH/IkMPXEcEVqfsKNEOoxEwPwzMThKDy3yQblfM
         SVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771405174; x=1772009974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s4xtdZq7ZOIcHdSeKfZqgNu8Mz/fkUqSTcDWpnIDA68=;
        b=NoYX4VxUJcdbgMLYBygE9f/yfHz+vjM8QE7RjhR4D7tpTwyMJucxVB4LOg/4evSrCU
         Jaqr1X8sqrfP3qfENQBk0JtCdmZpP3+VdKiNh0ll365ufV6c6Gw4dYIROM56OP+/P5U9
         T8L/Y764/36SIlKCqUknsHJVDW85d7KTs9JzlHjS8hU1Dh5nJnhdJTHeJzqYsxkBkbHj
         DgBC5tmquzj22Hjk+SHzOXn9TmDEhGVME8nQckuYayV17pjbkFnS0H/KJT70dQ7FZdLZ
         hOzFm8jWhMatEIfyN7KcMnnKuB0MnzM9tnYcoOmq1xW5MaZTr+ot6ZdIersU63tU9Jqp
         4fnw==
X-Forwarded-Encrypted: i=1; AJvYcCWYspqaHAWe5nZ3DXajo57Yc4qt3yxhNk8GsvjUjeqGoaTOExehMPvYO1lOQihAXtwfDOu4YnR+TFnP@vger.kernel.org
X-Gm-Message-State: AOJu0YySpuYfFJs4XC18ZfMUYMJHBYRbeQwrPGfvjBUf2aT9MFcKnRg4
	Jh56Vk1IeOuoqrbq7Fac0AHum+aelUpSPWCduLOBI7MkCHf0y+eIRAlE
X-Gm-Gg: AZuq6aI+bzVi3w0QiFooJX1/wtk+B5AwbOBJX31oUsl8rOkHCNT+X6rddl5ZvMhekh2
	BijU4NCazoHHyq9vDOWwbEkztY5tlyLVv1s+pqb8/lrcvPURoNarJ3yQMjxgZlBaq7pmb8k3pzg
	/78OmtNwvURuFavgpVnPMLLC++q/IHPyPZ8NuSMK3WN9wz8exa/qMiViZ9Os0JRDELID7Gy86cA
	lOyqKQUVKpG8gOVomcxupddOqR3VZ2kh7JC7J8dh1jbpHsVD7tw+Gb/s+qzJLowU33b04iiGSk1
	LB+Th0Rx3m/DRpnlGgYg64Qj0MthCaYR3dA3A/KUmZrHn3KnI1ymlNWlNGJtki9DvvVzyz1j5ok
	NYEEN5v5dlkXMOOX+BQZGOedCUES4NpKnyJqNemJtSoYZwBxINjnKy0G40+1ArKUPb2Oj4DYacl
	dUNWrmsACk116SPASTyeBZV2cShpU0MtSPS94ptxUFVcEdKqTyfFFffFypRAF+woPwR32tSK7kZ
	fcACdFaisVc7OoSioa39gTTYz+4Pl6MvofjADrmukZuXTM=
X-Received: by 2002:a05:6000:2410:b0:437:6b6e:d108 with SMTP id ffacd0b85a97d-43958bfe6a7mr1881588f8f.8.1771405174240;
        Wed, 18 Feb 2026 00:59:34 -0800 (PST)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.vodafonedsl.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43796abc85csm39968574f8f.22.2026.02.18.00.59.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 00:59:33 -0800 (PST)
Date: Wed, 18 Feb 2026 09:59:31 +0100
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
Message-ID: <aZV_c0lmBwjOI_Ep@Lord-Beerus.station>
References: <cover.1771353301.git.stefano.r@variscite.com>
 <3b984b93a43a07bc9c4f6414a08a3a0f45daaaa8.1771353301.git.stefano.r@variscite.com>
 <31f30651-7c99-42cb-9e27-e4806529d137@lunn.ch>
 <aZTCGH1rKWdvYg5-@Lord-Beerus.station>
 <fceeda41-66cc-4bb2-ab53-d4b1ec25348a@lunn.ch>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fceeda41-66cc-4bb2-ab53-d4b1ec25348a@lunn.ch>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266327-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.linux.dev,lists.infradead.org,variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.1:email];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 3DFE9154615
X-Rspamd-Action: no action

Hi Andrew,

On Tue, Feb 17, 2026 at 09:43:16PM +0100, Andrew Lunn wrote:
> 
> And here you loose me. RGMII is between the MAC and the PHY. The PHY
> is on the SOM, so there is no need for RGMII to leave the SOM.
> 
> MDIO is can understand going to the carrier, because there can be
> other devices on the bus, such as an Ethernet switch.
> 
> You say the LEDs are not on the SOM. So they should not be listed in
> the .dtsi file for the SOM. It could be the RJ45 is a cheap one,
> without LEDs. The colours will depend on the RJ45 socket. It could be
> a single LED is connected to the front panel, which is typical of STB
> etc. So the LEDs are a board property, not a SOM property.
> 
> > > >   Two LEDs are defined to match the VAR-SOM carrier design:
> > > >     * LED@0: Yellow, netdev trigger.
> > > >     * LED@1: Green, netdev trigger.
> > > 
> > > Where are the LEDs? You say "carrier design", so are they on the
> > > carrier? The DT properties should then be in the .dts file for the
> > > carrier.
> > >
> > 
> > The LED signals are driven directly by the PHY and originate on the SOM.
> > They are exposed on the SOM connector and are typically routed straight
> > to the RJ45 integrated LEDs on the carrier.
> 
> The problem here is 'typically', not absolutely required, otherwise
> the magic smoke will escape making the box useless.
> 

You are right sorry for the confusion: RGMII is internal between the MAC
and the PHY and does not leave the SOM. What is exposed on the SOM
connector are the MDI pairs towards the magnetics/RJ45 and the PHY LED
output signals.

Given that the actual LEDs are implemented on the carrier side (RJ45
with integrated LEDs, pull-ups and LED supply), would you prefer that
the LED description is moved out of the SOM .dtsi and into the carrier
.dts?

My idea would be to keep the Ethernet controller/PHY node fully
described in the SOM .dtsi (since the PHY is on-module), and add only
the LED subnode/definition in the carrier .dts where the LEDs are
actually present.

If this is the right approach, I will apply the same pattern to the
other Variscite SOMs where we currently describe PHY LEDs at the SOM
level (e.g. imx8mp-var-som, imx93-var-som).

Thanks again for the review.

Best regards,
Stefano

