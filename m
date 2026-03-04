Return-Path: <devicetree+bounces-271158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB0+CrVbqGmZtgAAu9opvQ
	(envelope-from <devicetree+bounces-271158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:20:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA60920416E
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 17:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8847E300363D
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 16:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9BE2351C05;
	Wed,  4 Mar 2026 16:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DkQaVkAT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C589351C00
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 16:15:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772640903; cv=none; b=PNt7Hqcn2e3qTHVOBBOrcSmndzn/H9cVHvjZAB6q34oetXTZrkqQM1nscO2y0DssOaHi+U4/z/Bpfs5vdIlj37Fa2KGIFDO/hLnOxplMSt9W5D6LkrihrdHAmn6VMvgNoio9WcUn0dsJrfQF2eicLWUx0773dZB2Whs07pxjNQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772640903; c=relaxed/simple;
	bh=jwbDEATg8fW9vDaRDhRzDHXH7o9vAPHP/aATjZNU17s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=E2lu1My0H5bVR4775il6KkxuotqMKOTzhPpnaZjye3mk1U8+SO2naDjhMK4m76YkYbjdkr0OF/7d/QTSx9CtOacDWfo/3bhy+nBlAfiT36mu+y9Mx4JnDaJsUltqZxnWl4t+6idHArDToCLTLWFaw0ILJrqjqL96HyJDHbSPKAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DkQaVkAT; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439ad481518so608887f8f.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 08:15:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772640901; x=1773245701; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=te21XJbMFTrGPZV/E8Xfa+RlFYp/4cGGtQTDWYMXpZ0=;
        b=DkQaVkAT/r90BXfqvwqwNKmpWcaLeOG31JWL1M/jmsr3PHdR++GKGnP/fXoiI3s/cY
         BEehehNkrNmAcLUeKxYWqcHe3wXfDoWN2VmM3MY6iemaaG6cwpb7/3XikFcME8NtNYGR
         9Ws5LB1MqehvegXpmDSpmZ2rvug1frJOBp7FOQx3hA9BhAXGIPCtj+it+pqgpplGlIZL
         VhE8EoYyriwEIsgRnUS66Z/YLW0LQnkyvOBSVx4DR/dRFsxKnL7Vxcu6y8+frV6cDCi+
         d4lGoDdFkFkX3wxOk+9NmaX+ZBvgk1QF5bWaN9CMZJ96dSI+E7ArWpNhBlwdKiJHVgkm
         C7BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772640901; x=1773245701;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=te21XJbMFTrGPZV/E8Xfa+RlFYp/4cGGtQTDWYMXpZ0=;
        b=pwrmyrA/KV4Vji0eWECoxumZJ28mqANc0RzLc5SJeTH48iy67rWbgMgBG4RnX3BiJX
         B50ZBLxC61LMFBfqntctp8C/qvN4niT+J0BfZvUQ4IOpqaAXOYhJ3pbUzuXcT9cfb2EZ
         AHEQA9xQk+XxxSghSg0j+5lpeOCPY8oBkOlk3ek/4sdXXezlq+I1+vMugt3BV+V7/inX
         aYFrkkvTtjwvU7ZXqvmyglKh1XKvd1EUXVMUNRjOI8bL5Z6RSZPQZTxtdrY/fPWonyxG
         dRZ9RoPsIfkVY8gZSju4VzpCgLlEl+xGJlKqBpGNECz4Ucqt6PaZ10cJ6I+2ycfscrjy
         ifqA==
X-Forwarded-Encrypted: i=1; AJvYcCVqGFaL7q8cYcWqeNCdAeFgr2FD3pC/Fcz0SRIb9WL8Mu+/ZIkHt397PqxJaMQbHY3ymKXu3LFZXRWF@vger.kernel.org
X-Gm-Message-State: AOJu0YydtMcGKCUqj1yYyWCvR4CfDc80zqT/ijIQIpaYJ0II5vbr+FxX
	bYXW9ZdeDifg5P+Kjf3DuHsebxk804dOIjprrwFHGBMsqemys8tSZ14c
X-Gm-Gg: ATEYQzwB2DWGlgJCg8B3BZfls5oatg5hiapmZbWd90BmWPOhv2KqfkGAAWt+9b0RYKA
	kH5De+a5bi4FmS8+nNcV+hYyGk63LbnqxuLJ0VkYqtMFnq5fLCkEO3otz7wqgah9En2Mg5qPu8b
	jYCOG+vE97Vn2j43BTReYrSNJQU8nOfaJjiTxRPNipcbrLM1zioTK9WzpF0SaDKIQrWiccHPME2
	b/NMRwyC0UbcVft91j9+1lwIJzgNZ01zZV/ogAKvZx6v+gwxnr/MkdFme/oCgih5ODbISqg0L9V
	tVkHgmTzxQuz/zJb0Pg5XnPR8IN6BLxvM00gELF7Rxx5U8Gtkamt/C9YKNKYqdD3BQEw+Yae23h
	NBm7fTeHQXgjapccuyI1tTfil3BLZYj7GVpwiKRBvkm2WNf9i+Com779zWfPpUkuOTxfAbzjucX
	BIc9Zz3C0/1egPhc8=
X-Received: by 2002:a05:600c:a07:b0:477:7bd8:8f2d with SMTP id 5b1f17b1804b1-4851988f040mr29274045e9.8.1772640900632;
        Wed, 04 Mar 2026 08:15:00 -0800 (PST)
Received: from skbuf ([2a02:2f04:d00e:3600:3896:e6f1:29a3:961b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4851881264fsm56343555e9.14.2026.03.04.08.14.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 08:15:00 -0800 (PST)
Date: Wed, 4 Mar 2026 18:14:57 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Jens Emil Schulz Ostergaard <jensemil.schulzostergaard@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, UNGLinuxDriver@microchip.com,
	Andrew Lunn <andrew@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Woojung Huh <woojung.huh@microchip.com>,
	Russell King <linux@armlinux.org.uk>,
	Steen Hegelund <Steen.Hegelund@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH net-next 2/8] dt-bindings: net: lan9645x: add LAN9645X
 switch bindings
Message-ID: <20260304161457.l6tkxix6sgube3qc@skbuf>
References: <20260303-dsa_lan9645x_switch_driver_base-v1-0-bff8ca1396f5@microchip.com>
 <20260303-dsa_lan9645x_switch_driver_base-v1-2-bff8ca1396f5@microchip.com>
 <20260303-disperser-clone-512efa99f26c@spud>
 <65fd5f46f1f996dd5f4df2de2efb52c8fa3575b3.camel@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <65fd5f46f1f996dd5f4df2de2efb52c8fa3575b3.camel@microchip.com>
X-Rspamd-Queue-Id: BA60920416E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271158-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Wed, Mar 04, 2026 at 05:10:11PM +0100, Jens Emil Schulz Ostergaard wrote:
> On Tue, 2026-03-03 at 18:56 +0000, Conor Dooley wrote:
> > On Tue, Mar 03, 2026 at 01:22:28PM +0100, Jens Emil Schulz Østergaard wrote:
> > > +examples:
> > > +  - |
> > > +    soc {
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +      ethernet-switch@0 {
> > > +        reg = <0>;
> > 
> > Also, this is an odd example, why are you at address 0 on a "soc" bus,
> > which usually means that this device on an AXI/AHB bus, and 0 is very
> > unusual for that. Obviously the example doesn't have to match the real
> > user, but this stands out.
> > I may have some follow up questions I think depending on your answer.
> 
> The intended way to bind this driver is via a parent MFD driver which sets
> up the SPI register protocol, initiates regmaps and distributes them to child
> devices (like this DSA driver).
> 
> Similar to mscc,vsc7512 in drivers/mfd/ocelot-spi.c.
> 
> This MFD would be the soc node. All child nodes perform register IO over
> spi, using the regmaps requested from this parent so I think the addresses
> on the bus are purely ornamental. Should I write the smallest register
> address in all regions used by the DSA driver instead?

They are not ornamental, they should be the same addresses you'd put if
Linux had direct access to the SoC interconnect for MMIO, rather than to
an SPI bridge to the SoC interconnect. Or at least I don't see why it
wouldn't be that way.

