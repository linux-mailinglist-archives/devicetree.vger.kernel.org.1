Return-Path: <devicetree+bounces-96348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B74F95DB7C
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 06:34:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FDE11F239DD
	for <lists+devicetree@lfdr.de>; Sat, 24 Aug 2024 04:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22A6149DE3;
	Sat, 24 Aug 2024 04:34:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4C36182B4
	for <devicetree@vger.kernel.org>; Sat, 24 Aug 2024 04:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724474077; cv=none; b=nABZqUvJj5Zejr8LVWVSZ4TGrHVQhhlW8/6YsAE+j7Blvw9W6MnWP0UT+fyry4MlthiaJtqucDgcUlu56umUJUaeozivYqRJwZ5qXnmSYVp9I2HSivBScZP81RBMD/bXaNaCcadEbaOOljWhgRfWW96rCap2g7ylhnfq3YxXzzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724474077; c=relaxed/simple;
	bh=S+sp4bbVPHXJSqQ8KuHmmGCojzoNyTNW57Ae46JcphA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JYZkz+EPQQtl4K68RFDT4ecDnPsnJ52L98GaXJoVpv8qUbjcRSrF5zQEaY2KDnyl2VRveSOUSq8fPQSNjfzA8BkZuN+UUG8zc3MYHAg/SSI5Z7Yx9BcA3hxSc7O42ySt4/m114Fcib4w6L0/V1jUmAk4a8ej4NyT60A/cHVd5nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1shiTc-0001RR-9Q; Sat, 24 Aug 2024 06:34:12 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1shiTZ-002dhJ-Qd; Sat, 24 Aug 2024 06:34:09 +0200
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1shiTZ-003MQL-2E;
	Sat, 24 Aug 2024 06:34:09 +0200
Date: Sat, 24 Aug 2024 06:34:09 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Tristram.Ha@microchip.com
Cc: Woojung.Huh@microchip.com, UNGLinuxDriver@microchip.com,
	devicetree@vger.kernel.org, andrew@lunn.ch, f.fainelli@gmail.com,
	olteanv@gmail.com, pieter.van.trappen@cern.ch, davem@davemloft.net,
	edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	marex@denx.de, netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net-next v5 2/2] net: dsa: microchip: Add KSZ8895/KSZ8864
 switch support
Message-ID: <ZsliwRqz2zH9Mkr4@pengutronix.de>
References: <BYAPR11MB3558F407712B5C5DFB6F409DEC882@BYAPR11MB3558.namprd11.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <BYAPR11MB3558F407712B5C5DFB6F409DEC882@BYAPR11MB3558.namprd11.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Fri, Aug 23, 2024 at 11:07:06PM +0000, Tristram.Ha@microchip.com wrote:
> KSZ8895/KSZ8864 is a switch family between KSZ8863/73 and KSZ8795, so it
> shares some registers and functions in those switches already
> implemented in the KSZ DSA driver.
> 
> Signed-off-by: Tristram Ha <tristram.ha@microchip.com>

Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>

Thank you!
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

