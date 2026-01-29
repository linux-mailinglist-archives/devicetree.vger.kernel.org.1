Return-Path: <devicetree+bounces-260889-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLdpG2Vfe2k5EQIAu9opvQ
	(envelope-from <devicetree+bounces-260889-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:23:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5FAB059F
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1BB7301A2AF
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 903A727816C;
	Thu, 29 Jan 2026 13:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b="wNxNHvy6"
X-Original-To: devicetree@vger.kernel.org
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C37270ED7;
	Thu, 29 Jan 2026 13:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=78.32.30.218
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769693026; cv=none; b=EVfrpaGHaxxXBxMI1mOD2hZTfd6xSJV/2QNe+ebNBDjTRpfWalR31WR2qnKnuPDiHhur+tf4Fw1LH7YmCkGWulI7a+X6pKs01RABZatugoFxB6NMvhWztYTnVj95YcFPLyovpXUoN/PKTquUpboFfe8SvEZdJT+Z3qeyjUGhIBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769693026; c=relaxed/simple;
	bh=yq+rvYdfSXBntfUpIkMaTiMT1JcCaN4fZGkqeKXNAZk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BadRqgBZ6nyMfIpr+O5zvH3gVLh6W51mSY182j2WIWZLFvtMYzClA8NbI3Ua+Sc0rp5IxlB15pC6CLPRM1p1aZVyIFfwG+qLawkjXlUi5kJw8/buHuCpeCTFfkThxzDCZKm7Cr3NNPRTHwfSqOkYny60BSAFAS65qcUryPnM1Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk; spf=none smtp.mailfrom=armlinux.org.uk; dkim=pass (2048-bit key) header.d=armlinux.org.uk header.i=@armlinux.org.uk header.b=wNxNHvy6; arc=none smtp.client-ip=78.32.30.218
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=armlinux.org.uk
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=armlinux.org.uk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=vyJ741jUIEOp+cohLKvVvyGyWUuo4rd6WkrJSKQdlv4=; b=wNxNHvy6iCbOZmZ9uae3pJyA46
	4EzLt1zQul6a22lm2zyj8wFf+6asivMNv1MpijhV7aea6mKjV3fi6TlvQPljzQ70+f4xPvklqxOTH
	fD0RISdkGCZPM9RswRpPD1TLpPH4GYCbx6sHl/7TvoF/LkNJehdWc44rCfYMxI3qO4w/vwYTM32Am
	mHXvDvS0TsADfGGP2svB+1kJHYe/gwRE6dFwVvWZJyXYaotQSzJuaDA3V3iig2a+D3Mp3K4FPG7m1
	ERV+1jfuo4Pq0t0S11yePwUy4fiWed++Cux30ZvVLS1gcX6nyDS2Z7j4T6AFSAKIc57E9DRuP+YW/
	4Dx61E9A==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:44528)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vlRzj-0000000006r-0nPg;
	Thu, 29 Jan 2026 13:23:35 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vlRzh-0000000080q-2fc5;
	Thu, 29 Jan 2026 13:23:33 +0000
Date: Thu, 29 Jan 2026 13:23:33 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: Simon Horman <horms@kernel.org>, vkoul@kernel.org,
	neil.armstrong@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	ciprianmarian.costea@oss.nxp.com, s32@nxp.com,
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
	Frank.li@nxp.com
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
Message-ID: <aXtfVUb0eLwP4R28@shell.armlinux.org.uk>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org>
 <aXsuRTZUUnw0kdzV@horms.kernel.org>
 <CAKfTPtDfnpzq2CB-isVzvh1ZCWo7kit9KRJvVGoU1C3zZTgdXw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKfTPtDfnpzq2CB-isVzvh1ZCWo7kit9KRJvVGoU1C3zZTgdXw@mail.gmail.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_REJECT(1.00)[armlinux.org.uk:s=pandora-2019];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[armlinux.org.uk : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260889-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[armlinux.org.uk:-];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[linux@armlinux.org.uk,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,shell.armlinux.org.uk:mid,armlinux.org.uk:url]
X-Rspamd-Queue-Id: DA5FAB059F
X-Rspamd-Action: no action

On Thu, Jan 29, 2026 at 02:01:13PM +0100, Vincent Guittot wrote:
> yes, the usual pattern is :
> - phy_set_mode_ext()
> - then phy_power_on()
> but I can add an additional check

Please read Documentation/driver-api/phy/phy.rst section "Order of API
calls" which suggests phy_set_mode_ext() after phy_power_on().

Having different requirements for different SerDes PHYs quickly becomes
annoying for users of the SerDes PHYs.

E.g. I'm trying to add SerDes PHY support to stmmac, which is used
across different platforms. Having all SerDes PHY drivers behave the
same as far as their PHY API calls are concerned means that the whole
point of having an abstracted interface is maintained. Otherwise, it's
completely pointless.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

