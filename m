Return-Path: <devicetree+bounces-307516-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l4mmGe4dI2qaiwEAu9opvQ
	(envelope-from <devicetree+bounces-307516-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:05:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DC91364AD44
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 21:05:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hm5LKmx+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307516-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307516-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1DF9B3005399
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 19:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 181D3404BCE;
	Fri,  5 Jun 2026 19:04:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B88A309EFA;
	Fri,  5 Jun 2026 19:04:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780686298; cv=none; b=JdyzYtRhVEgBx0lsOuWyPo6Swf01AJSl3Ai1Eb7Vjpt1RBPLbXHLzABywj264H6upVp70d9z/LXdHz8a41NCT8S2rx7ocPij2Vs+aClgjzsCYhEWLEXuWXb74H8k3Bx32XPGKgFCnQwjhKRFUznCQmefVW5mNbsQxmo8i1+YxcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780686298; c=relaxed/simple;
	bh=r1wlywnJiQ74kt5wDlJ1Ja1cshRmDMMYYHoc6SRbhSE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QqZsYazuM3ueOH8akbTD33OS40Wg61JcWWXnQ5PtXaH50+Y4wjTPxmCjztXEPksaq2NQ3iWhtmb8EJcTrosIIv2Pn2CRaW2CLUhmSgeSSTV1iXlPjjeDKIP9jR7d0iizax9vlQtjaalJOI+XsPWcx3Jn90ygHv4aowtESZbBT7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hm5LKmx+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14FD81F00893;
	Fri,  5 Jun 2026 19:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780686295;
	bh=Yse0SqJjEnbdUJl6eHAZpQ7EdaKzGdPFnXWp4ZHcKng=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=hm5LKmx+R9my0USGZtnjUidWmmc3a0Ick8ey1lhhvjn+YlomoCYpBVpfnGV8ZwVzD
	 e+Aix/+uzmGiy3JEOhaBtkmz4SbNx9v3UnDoTcv+qNXygUDDy3nZL5/iz0JoZ0tLLs
	 1yYluIXXdRt1kTAJ98Q7wRkcP/g6LJ5J/govIWZ/qyb+IxB0R6jES9Yqiqmg39h5IS
	 6lw+6+jSj82wcAn/K17qd4ku6lxWXc0hibLmfBInTLkLqAY34Jmhg0eI6q0UZkQ3E0
	 F4dCo6EJopot1yOKNYeBlhwcgMoSUJSlECwDOlV6kf+yxS8TTRUVaDzIYQWhz/iJ3M
	 rxZevRcs8fV6g==
Date: Fri, 5 Jun 2026 14:04:54 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Tanjeff Moos <tanjeff.moos@westermo.com>,
	linux-phy@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	devicetree@vger.kernel.org, Ioana Ciornei <ioana.ciornei@nxp.com>,
	Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH phy-next 01/13] dt-bindings: phy: lynx-10g: initial
 document
Message-ID: <178068629376.4187871.11165995094571921556.robh@kernel.org>
References: <20260528172404.733196-1-vladimir.oltean@nxp.com>
 <20260528172404.733196-2-vladimir.oltean@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260528172404.733196-2-vladimir.oltean@nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307516-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vladimir.oltean@nxp.com,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:tanjeff.moos@westermo.com,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:ioana.ciornei@nxp.com,m:vkoul@kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DC91364AD44


On Thu, 28 May 2026 20:23:52 +0300, Vladimir Oltean wrote:
> Add a schema for the 10G Lynx SerDes. This is very similar to the modern
> form of the 28G Lynx SerDes, which is very much the intention.
> 
> We allow both forms of #phy-cells = <1> in the top-level provider
> and #phy-cells = <0> in the per-lane provider for more flexibility to
> consumers, and because the kernel code is shared with the 28G Lynx which
> already has that support for compatibility reasons.
> 
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
> Cc: devicetree@vger.kernel.org
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/phy/fsl,lynx-10g.yaml | 131 ++++++++++++++++++
>  1 file changed, 131 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,lynx-10g.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


