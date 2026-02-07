Return-Path: <devicetree+bounces-263650-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GLjM7C1h2k6cQQAu9opvQ
	(envelope-from <devicetree+bounces-263650-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:59:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F99E1073DA
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 22:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FFAF3015C9F
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 21:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AB933559D1;
	Sat,  7 Feb 2026 21:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TVdE++4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEBF2882B4
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 21:59:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770501549; cv=none; b=WyF8nAikM4V0zg9zi31FzWj95hc7f6n5E2g8vHsyPYeI7pm1StDpnCWtmrKDZgbdo0rnz6hAyknNX2EdG0RjhmnBeaGPyGFUHyJo6w5iQwkwFZ+9xsE2BwRzmIW0cbpoGgLuAHqWDnYa0Y7y2/paqHLsskCCpX19dKryc55GT6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770501549; c=relaxed/simple;
	bh=gHIdSTck+mUS1CWOypJzkEpccfiExm0hMmFwCsNtkDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cAu8MZgwXMDLPGua90/eER9gObNfkMXOeDAQ5Po0sbvb/swRHscsRx/XJVe6PY3aCMB0IdzqVv+wcf3fwqxQdAuA2O9NABxLtLpZz8+Xn2Yv3EpdStjQcx1ZZvCro0ea8i4NxtMzPa9Gmiv/1xayacY/im5LfR0Ahk7zQDdaP7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TVdE++4e; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-43595901036so452158f8f.2
        for <devicetree@vger.kernel.org>; Sat, 07 Feb 2026 13:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770501547; x=1771106347; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ofIU57zT38LFRzwk3Gh7Fvbzm+NL2eJIHdBTKuqEZD8=;
        b=TVdE++4ewXqb9DxhYHcQte943MK5RFQ/+Ren3GbTmKotgaD5Pyq9cPFdFEVRIl7Km5
         vFdYnX/zB6qlcyKdwet8FQB+TtIVk9SEqVfXsO3Men3V6TrhTTNs0YxH3xs0aLbGoi9x
         BVtVxeWXnQ9XSmI2695hJacyrMe9PrmO0gCFVjM18SIF0alCYN+P29UPM90ZAsJzxKrE
         6xxiiVdkU1BEOtqwHnjZeVLHzCb3Igd6kmOvi2zi+C2Kh4Fn/VLWx1MF2+oMOAzNV9df
         oujMYxM/HpO+Eou1as2YzZ09ibpq4uGOb9O4ZFaYc8LlZ4YDfLsa6sLBALZxd6SKjeki
         5Xgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770501547; x=1771106347;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ofIU57zT38LFRzwk3Gh7Fvbzm+NL2eJIHdBTKuqEZD8=;
        b=xFMGjDJcFSI2z+l8KjvkJmIUFVQ4VXOfjJI3yM0C+rCdWW/y3QX0b6pw0iyxmLHvPg
         uHYTqxeVQ7cPvTVk7G5CUBAYIWIWP6wE8wPMTQQgIAeKmg0Yqta3Zo9e0dNpvI+CiAw6
         ePz5YENPgN048+05rHyKAQ54lq2qAvZViali18IUstA2Fk0E7y7jiEfeZJER+PQOqFkm
         D+oUuQjH3mrA9eyVBpVoGuWlA04ytgyD9vrAi1eg239FyahorKll/DsGmNLvs0LjoSSA
         MKsYigHc74mJvGrMhsrs93ygdz8hA/v1N6Sts2YZ6AdRr1uPxd0kfoXdeAbjFGadZUk8
         2WjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqoXyvJP0t5XNbMymXdJReuQOyL0149UToHY1ppbKSZ7Ksc6R5dJYpAG6ZF4zuXW8WPf38l5PKOpkK@vger.kernel.org
X-Gm-Message-State: AOJu0YwAcNw5L3gg1lZBBLiC+RlTwUZWUmQ95yMp/evMbCoW5HN8mk3z
	m2oPYqjnN5mnDRNqRFDysZSaGP+vmRCRkamk242z7DYAuEuBVrnJZXKU
X-Gm-Gg: AZuq6aICf9yOzsDsQQd3tyEOBWpkPXVu7aDUIvx3JUj2E3QWCZf/ernKYTLQTuyRAgj
	rFE08v312r1mRPke4CyS20FfrCgPeIgUBKl+JPYuCfEONs9ve8uSLfucd06hfiZ77tZhJ1kDZan
	il1qOFLBLDWdM2pvy7ehAYZwmKClSlvP77aev55NBiy4bLT4uJlVFu7X5D2zwFZ6bG3OBX/3KJl
	CE84SwKQ6mIzTK2JvHV4cwSPjV88prEXOio9B2tQ3/g/W1iSMkX74zgnmvX8a6Mgq3Jxpp86aQP
	03X47r4SQpsE+9bZ0adxX3vV4YH23jj/RMFRzpGKcNOiRZB6v8AhpcfcIGPbNIpDhToxMhUtYXY
	V3/qMdl+LvSD5gcclRPDeTahO8pyBOs8Bpehk4Jn4kmy8KeSyGpaQgIAsauBjdlE/raDD3yDadE
	4Dswo=
X-Received: by 2002:a05:600c:4f8a:b0:47d:3ffa:9838 with SMTP id 5b1f17b1804b1-483201d865bmr61882315e9.1.1770501547139;
        Sat, 07 Feb 2026 13:59:07 -0800 (PST)
Received: from skbuf ([2a02:2f04:d501:d900:c705:d6fa:62de:90a5])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296b2d43sm15165951f8f.8.2026.02.07.13.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 13:59:05 -0800 (PST)
Date: Sat, 7 Feb 2026 23:59:02 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Andrew Lunn <andrew@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Russell King <linux@armlinux.org.uk>,
	Simon Horman <horms@kernel.org>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Frank Wunderlich <frankwu@gmx.de>, Chad Monroe <chad@monroe.io>,
	Cezary Wilmanski <cezary.wilmanski@adtran.com>,
	Liang Xu <lxu@maxlinear.com>, John Crispin <john@phrozen.org>
Subject: Re: [PATCH net-next v14 4/4] net: dsa: add basic initial driver for
 MxL862xx switches
Message-ID: <20260207215902.mtsg43zeoadqqfz5@skbuf>
References: <cover.1770433307.git.daniel@makrotopia.org>
 <ccde07e8cf33d8ae243000013b57cfaa2695e0a9.1770433307.git.daniel@makrotopia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ccde07e8cf33d8ae243000013b57cfaa2695e0a9.1770433307.git.daniel@makrotopia.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263650-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,armlinux.org.uk,vger.kernel.org,gmx.de,monroe.io,adtran.com,maxlinear.com,phrozen.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olteanv@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.6:email,0.0.0.5:email,param.data:url]
X-Rspamd-Queue-Id: 2F99E1073DA
X-Rspamd-Action: no action

On Sat, Feb 07, 2026 at 03:07:27AM +0000, Daniel Golle wrote:
> +/* PHY access via firmware relay */
> +static int mxl862xx_phy_read_mmd(struct mxl862xx_priv *priv, int port,
> +				 int devadd, int reg)
> +{
> +	struct mdio_relay_data param = {
> +		.phy = port,
> +		.mmd = devadd,
> +		.reg = cpu_to_le16(reg),
> +	};
> +	int ret;
> +
> +	ret = MXL862XX_API_READ(priv, INT_GPHY_READ, param);
> +	if (ret)
> +		return ret;
> +
> +	return le16_to_cpu(param.data);
> +}
> +
> +static int mxl862xx_phy_write_mmd(struct mxl862xx_priv *priv, int port,
> +				  int devadd, int reg, u16 data)
> +{
> +	struct mdio_relay_data param = {
> +		.phy = port,
> +		.mmd = devadd,
> +		.reg = cpu_to_le16(reg),
> +		.data = cpu_to_le16(data),
> +	};
> +
> +	return MXL862XX_API_WRITE(priv, INT_GPHY_WRITE, param);
> +}
> +
> +static int mxl862xx_phy_read_mii_bus(struct mii_bus *bus, int port, int regnum)
> +{
> +	return mxl862xx_phy_read_mmd(bus->priv, port, 0, regnum);
> +}
> +
> +static int mxl862xx_phy_write_mii_bus(struct mii_bus *bus, int port,
> +				      int regnum, u16 val)
> +{
> +	return mxl862xx_phy_write_mmd(bus->priv, port, 0, regnum, val);
> +}
> +
> +static int mxl862xx_phy_read_c45_mii_bus(struct mii_bus *bus, int port,
> +					 int devadd, int regnum)
> +{
> +	return mxl862xx_phy_read_mmd(bus->priv, port, devadd, regnum);
> +}
> +
> +static int mxl862xx_phy_write_c45_mii_bus(struct mii_bus *bus, int port,
> +					  int devadd, int regnum, u16 val)
> +{
> +	return mxl862xx_phy_write_mmd(bus->priv, port, devadd, regnum, val);
> +}

You took inspiration from the wrong place with the mii_bus ops prototypes,
specifically with the "int port" argument.

The second argument does not hold the port, it holds the PHY address.
I.e. in this case:
                port@6 {
                    reg = <6>;
                    phy-handle = <&phy5>;
                    phy-mode = "internal";
                };
                phy5: ethernet-phy@5 {
                    reg = <5>;
                };

"int port" is 5, not 6.

Your source of inspiration are the prototypes of an mii_bus used as
ds->user_mii_bus. We have a different set of requirements there, because
ds->user_mii_bus exists for the case where the PHY is not described in
the device tree, so the port index is given as argument and the
user_mii_bus is responsible for internally translating the port index to
a PHY address.

So while the use of "int port" as argument name for these operations is
justifiable in some cases, it is not applicable to this driver, and will
be a pitfall for anyone who has to modify or debug this code.

