Return-Path: <devicetree+bounces-291524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDQzJvj98WmElwEAu9opvQ
	(envelope-from <devicetree+bounces-291524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 14:47:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D16494415
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 14:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 98CD03022942
	for <lists+devicetree@lfdr.de>; Wed, 29 Apr 2026 12:46:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958163CA4B8;
	Wed, 29 Apr 2026 12:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="acc7YbmW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3D72BFC85;
	Wed, 29 Apr 2026 12:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777466774; cv=none; b=l7BhTb13G5dU1CLP7ADEHyyO4Hm1B842tW8zkH7f15amb5RGUqvq74Iz+OLzimMCI6Qldox6ulh++pVgadG2BykFvBjCxqaFu7EQGCwCejnw0rY2DUf2CsQByrvngufzllKkQfGEqIOgIMVGQzYm2NHvCRzw4nxSUis/KLTVy0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777466774; c=relaxed/simple;
	bh=ACbog7xw7Wnwn8unL5NhQXkcT+RQGICtbl7byDwhpxc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CeKZ35VYLsNVMbWBGSTPePpb0sQ7Z+1uCOOQ/ThWoGvC86Gl2aQ2d737V/YdoK2U3BFbgoJmwwuIe4gQP5yjK0kWhlEuyFu1bAgyKahfq/GHKiesrP9KyeYmaQKYTxXq4n2RAduyclblxhKf7gEYfGcSxa2TvrDVwcosL3AhIhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=acc7YbmW; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 1CBE622B80;
	Wed, 29 Apr 2026 14:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1777466770;
	bh=F8YrPdCR+u03ef1UAvjgy6RoNtkjTp2zBuXHNNCd0/s=; h=From:To:Subject;
	b=acc7YbmWC0WpRoKbLyQBQKAchhy8m8X/n89Sb0CKBYtXDTrGj/yn//yUoCln5LCSK
	 qFAMpgjVJponjMPWoVqOXbGu72KDNJjsiB1kuDuQ9wI7oZOnOwLR8ky/pj2z8tOddT
	 sbkJjJfRrsA0co2gZ2eNZ6WuuS3De3zw9ZJ7jGG/uGOfi3PFt//Tvm1gseUF3fYBd0
	 EpUgXHZVHmKoMSoBkdYB0qk0yTRlmLRJqZl1fhin8WJb6sdmn4RiUV7fmmWmVfn2sk
	 QRj+62AYVPf4EJyTkGhLes8Pav+FnDFNA7u9JKEOWmaGm8iUaYUBlnr9whZaJCdc60
	 LrE0HzWq2EfFw==
Date: Wed, 29 Apr 2026 14:46:06 +0200
From: Francesco Dolcini <francesco@dolcini.it>
To: "Joseph Guo (OSS)" <qijian.guo@oss.nxp.com>
Cc: Daniel Baluta <daniel.baluta@oss.nxp.com>,
	Joseph Guo <qijian.guo@nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Frank Li <Frank.Li@nxp.com>, Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, xinyu.chen@nxp.com,
	justin.jiang@nxp.com
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: add i.MX95 19x19 FRDM PRO
 board dts
Message-ID: <20260429124606.GA62742@francesco-nb>
References: <20260428-imx95_frdm_pro-v2-0-434240b652f4@nxp.com>
 <20260428-imx95_frdm_pro-v2-2-434240b652f4@nxp.com>
 <d0dc01c7-dba1-4f25-88ea-a0840559cf38@oss.nxp.com>
 <bde82660-0550-4614-80a2-bf4f49b92063@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bde82660-0550-4614-80a2-bf4f49b92063@oss.nxp.com>
X-Rspamd-Queue-Id: 25D16494415
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-291524-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[oss.nxp.com,nxp.com,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On Wed, Apr 29, 2026 at 05:26:02PM +0800, Joseph Guo (OSS) wrote:
> On 4/29/2026 5:26 PM, Daniel Baluta wrote:
> >> +
> >> +&flexcan1 {
> >> +	phys = <&flexcan1_phy>;
> >> +	pinctrl-0 = <&pinctrl_flexcan1>;
> >> +	pinctrl-names = "default";
> >> +	status = "disabled";
> >> +};
> > 
> > Why add this if it is disabled?
> 
> The resource of flexcan1 in System Manager is assign to M7 by default.

I think the correct status in such a case is "reserved", am I wrong?

Francesco


