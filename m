Return-Path: <devicetree+bounces-268392-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMJgDUoBn2lAYgQAu9opvQ
	(envelope-from <devicetree+bounces-268392-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:03:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DEE01987E3
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 15:03:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23B8B300B065
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 14:01:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDDD3C198A;
	Wed, 25 Feb 2026 14:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jHdNK1Dz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF097081E
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 14:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.44
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772028089; cv=pass; b=fhqB6hzyM5NuN9xy2NdgwTVEv18jw4NR84Ssm4Ma/iMjnnrt3X4uVuO/KNR7olStcqzoOV7t8IyqYGhyKD+QFSqQkZJJZPXKs9mx57UYx1Eng949tB8KpGd5QMenmZ0PBIdUmJtXa3k5ckxJ/qOm83zwqE0+Ek+60rlPRFdPlZc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772028089; c=relaxed/simple;
	bh=5Ju3OHVhNRhJLBEGBDX8Dh0cbgt/b4S0cI5EoETOJUk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=R2iV3b+t2xkCdcwkza9xyDADom4VuqRKyA+ARIJ8qcfXLkHFfwOBbCXQbmzCBqj/CJQuK9UWMzFVRK2hJc515vaLDv0pdxFdDPPOrMYDLS+eIuOD+UvCxROblH8F1PhRZFvT4W6ghELhb08M7bPXYzsHlCDoSv+pIP/1rhXyC6M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jHdNK1Dz; arc=pass smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-65f71ed7c6cso2783601a12.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 06:01:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772028086; cv=none;
        d=google.com; s=arc-20240605;
        b=LQjQvjx7duqU7C7LWc41JnzRS+63bfzt6deKTsY/dbNht9wnaJ7LRmq1uKjJz8Yuz0
         NXYp8/sc73qyr8IlCMjDe8NxwwIz6/hbqM9nz0w0/qZdF0ikjXFlUBP4wpq2hbN/B8Pr
         8lu3CEppFIZnOdoOwoPjl25gGD6kTxwsb/rmxhtkB95O7pH3n/dITKr6nNyTPAPi7BWK
         dc7D0RTrGHzqyEtjhabbLXd8iYzh2DSFJTtERI6dkCvmqKg4ayqTQKnld4Js9wbk4wY5
         P0M2H0Ga5B0cyMn52hncLQQQfHtf7xzYkUk8MIZQrCzZFje3k/IeHPfgRLubvaJz4VQa
         p9QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Vy6cNiKVqqdOzrXGU51JG+BLZ2VHPDg76L+Bf6A/K7w=;
        fh=PwA21FBRLjEE8DrcwSAyJVRht0RO6aSMqCt+CD3AKSY=;
        b=a5C4Ge8KGq6AJHuhSBL55u+TwbMyGpCU/npFcTmv+IjNe80QK7vfuWnOFS7zxXvx68
         U7RHdjGbv3XGvGUK/MhF84I+USID8q4Y6HrfZodz/DIa9l0JVZWCQkYzIkTH4IY52Sz3
         Jwk82LHNjbTS8zpy8wVIu5aEO3h3NxanmkdUQDL1hEyzvoZv+pnpbJHmjn0V/GHTQMfT
         LDcoUunIl8t5vw8c/w92U6Ccx/64Jvwqa3dsoQ3HbzajPEfprp19eln7Tv6n9vr6zuT5
         qXdQ375XqY/slNuX889awkkDtaMa15oW+As9VIHGZ+HhY7sskaE8ZCOpAewfIhD1IalE
         cbkg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772028086; x=1772632886; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vy6cNiKVqqdOzrXGU51JG+BLZ2VHPDg76L+Bf6A/K7w=;
        b=jHdNK1Dziza9lJ6rugocpTGVZu/G3QSLFYrvyupXi/mIgIyldKtdPGj/zZiwE9RlgA
         5Veug2uCKJ70ahbrTzYODxc16HSLU4p2ca1FmK9pYEoToy3AJofN6PNjB3tw4QmUXr3V
         CEg8XRe62zw5EMgfrJGoHTM/iB2gMOw41WHryzUP6Ev5VIVfAxA/k0tZCeAyGJUKX9Jl
         yIpK8w8Vg/fLhtMzrEZVWg6taW+G3BNuytDf0czNjKg4B78rjh+ddsay3nF17+Tovq5O
         WIWDQ4wa9HvK94c3Fv0t+Fa7ndtJmOzEMw9xv6iwiM0FEHCg9SVzWKTkbqNxn+HAeiPW
         bXAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772028086; x=1772632886;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vy6cNiKVqqdOzrXGU51JG+BLZ2VHPDg76L+Bf6A/K7w=;
        b=CL2ap6KjAGOiZPE4cz28vBCi16Fyl9KPS615eMEHT1mp3kk1lVPdUjjvkFpjVnvj+2
         yR9WyBjd/KM5bOHWmAMi8luZIxXyhm0jmio+iPiCyqaCXRlW8dtepMon110ugbm0G5Ko
         BaMb8LjMXxtUv2DssDXkq50zlxY7MZtiCmtN+klYtJBZP62uNvM9/zTGl061exrGty/D
         fGuzRj5B0d/XtLvjVz8nXEQvQxrgQTkHPpyNkfK3Wb7AAiKQiUqTkpEdIahnjyAP3Qvl
         d/1E0qbtSV4gwuG0jpbAuh2L6uXYANPel4XCdIGt4FaR01q6Z96J+tj0B733vAzWKqL7
         8dvQ==
X-Forwarded-Encrypted: i=1; AJvYcCU3IhQo6ztx/AmAORUhjb1fW1WdkzpiHHZWTQwRYbNeaJgz7BJYn0+LKhgSAcI2JxTKdVaZZ3BdTS1k@vger.kernel.org
X-Gm-Message-State: AOJu0YwkYH2wDidvY8TxeEx6zl/eCeijR1RN3xSk73g1Gwkc+LIVtJye
	2TFITtwF4IRCcuSUPhWtDCAlZgGvZpE7qnM6o4NcShoEhv8OwEIg22HaQJksQK2h5yVy6fv3Pjs
	covyAr2BTs5mamnuE1RBShYBl0QypnYnZWoU/kKrpFQ==
X-Gm-Gg: ATEYQzyIBfY8GIbTovxRU8FM8Qtiil5Ka5z9WXj/vDM80x0H4nWpGHUj0+b8tlFQLy9
	8+isvUQNcYs0GTwBUE9QfUsMyzyJWxGORoj2mhbmaakZf061+nE/p/ZbGZjf8JMy/9q/REdE133
	XpA8mj72wDpQcthRmVMw0QO4bWYT8/1YR8mslObijzD/z1ajxalF6hcu93WksoYY0RU8DVikpu/
	qIYwSEiHVPzzWUYFQfw5i1BDZUbQqXbrmDp04oxHkLsJfOTg6WXV6DwK+yFybyqC2RmjS4bGHg2
	7nqBPa/0gbCh58tBa/TMIWfJlsbRShIQoA==
X-Received: by 2002:a17:907:2d89:b0:b93:5297:b3a2 with SMTP id
 a640c23a62f3a-b935297b3bdmr8044466b.59.1772028085419; Wed, 25 Feb 2026
 06:01:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203161917.1666696-1-vincent.guittot@linaro.org>
 <20260203161917.1666696-2-vincent.guittot@linaro.org> <20260210004011.GA2188625-robh@kernel.org>
 <aY2rR3Hlm525kGUN@shell.armlinux.org.uk>
In-Reply-To: <aY2rR3Hlm525kGUN@shell.armlinux.org.uk>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Wed, 25 Feb 2026 15:01:13 +0100
X-Gm-Features: AaiRm52xymbtUvdX0WARhHIKYaRvNgdQ5-vzrvF5qBi6nov6q2mJRcNPXMItfGk
Message-ID: <CAKfTPtBB6ZNde+-t7FKkf0F5Uvy0rDvebM_fsGTy9tk=CBq6Xg@mail.gmail.com>
Subject: Re: [PATCH 1/4 v2] dt-bindings: serdes: s32g: Add NXP serdes subsystem
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Rob Herring <robh@kernel.org>, vkoul@kernel.org, neil.armstrong@linaro.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, 
	s32@nxp.com, p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com, 
	Ionut.Vicovan@nxp.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org, 
	horms@kernel.org, Frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268392-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vincent.guittot@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-0.997];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:dkim,armlinux.org.uk:url,armlinux.org.uk:email]
X-Rspamd-Queue-Id: 8DEE01987E3
X-Rspamd-Action: no action

Sorry for the delayed reply. Some days off kept me away from keyboard

On Thu, 12 Feb 2026 at 11:28, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Mon, Feb 09, 2026 at 06:40:11PM -0600, Rob Herring wrote:
> > On Tue, Feb 03, 2026 at 05:19:14PM +0100, Vincent Guittot wrote:
> > > +description: |
> > > +  The SerDes subsystem on S32G SoC Family includes two types of PHYs:
> > > +    - One PCIe PHY: Supports various PCIe operation modes
> > > +    - Two Ethernet Physical Coding Sublayer (XPCS) controllers
> > > +
> > > +  SerDes operation mode selects the enabled PHYs and speeds. Clock frequency
> > > +  must be adapted accordingly. Below table describes all possible operation
> > > +  modes.
> > > +
> > > +  Mode  PCIe       XPCS0           XPCS1           PHY clock       Description
> > > +                SGMII              SGMII             (MHz)
> > > +  -------------------------------------------------------------------------
> > > +  0        Gen3    N/A             N/A             100             Single PCIe
> > > +  1        Gen2    1.25Gbps        N/A             100             PCIe/SGMII
> > > +  2        Gen2    N/A             1.25Gbps        100             PCIe/SGMII
> > > +  3        N/A     1.25Gbps        1.25Gbps        100,125         SGMII
> > > +  4        N/A     3.125/1.25Gbps  3.125/1.25Gbps  125             SGMII
> > > +  5        Gen2    N/A             3.125Gbps       100             PCIe/SGMII
> >
> > Mixed tabs and spaces. Drop the tabs.
> >
> > What's not clear to me is do you have 2 or 4 lanes?
> >
> ...
> > > +  nxp,sys-mode:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> >
> >        maximum: 5
> >
> > Though isn't this redundant with the child nodes? You could use the
> > standard 'phy-mode' property in each child.
>
> phy-mode is ethernet, but the above is more than just ethernet.
>
> I've been wondering why a generic PHY driver needs to know this via DT
> when the generic PHY API has:
>
> phy_set_mode() / phy_set_mode_ext()
>  - sets the type of the PHY and its submode (e.g. ethernet interface
>     mode)
> phy_set_speed()
> phy_set_bus_width()
>
> Surely these are sufficient to describe what mode is required from the
> generic PHY, and the generic PHY driver can figure out whether the
> mode is permitted from the above table, programming the PHY as
> desired.

For the lanes that output SGMII, we don't register a generic phy
driver but we provide the pcs with

pcs-handle = <&phy_xpcs0_0>;

>
> For Ethernet, we don't call the 3.125Gbps "SGMII" using that term. We
> use SGMII strictly for Cisco SGMII, which runs at 1.25Gbps. 3.125Gbps
> single-lane serdes ethernet is not able to use Cisco SGMII inband
> signalling because running the underlying data rate with 10 or 100
> symbol replications makes no sense. So we have decided to all this
> 2500BASE-X. If such a SerDes is connected to a SFP cage, then we
> support switching between 1.25Gbps and 3.125Gbps mode depending on
> the module inserted, which requires dynamic reconfiguration of the
> SerDes.

yes, I still have to figure out how to handle 3.125Gbps and 2500BASE-X mode

>
> What I'm saying is that describing a single mode covering several ports
> could make things difficult in the future, so make sure you think
> carefully.

The serdes mode (deciding wether to output pcie or ethernet for each
lane) has to be decided before de-asserting the reset of the HW IP so
we can't really make it dynamic



>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

