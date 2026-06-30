Return-Path: <devicetree+bounces-318037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UyPoET0YRGqxoQoAu9opvQ
	(envelope-from <devicetree+bounces-318037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 21:25:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E92856E78A9
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 21:25:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZL83Ybq4;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318037-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318037-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 61894302BB87
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C8873C3443;
	Tue, 30 Jun 2026 19:25:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A71323EAAD;
	Tue, 30 Jun 2026 19:25:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782847547; cv=none; b=PI7K1K4yb7GPIklfiguRWlIScYn/N0Otd0fPWm91P6o3LKzPVtxTTwZaa+k36ppjIfgahbXRr3xMZ6miRDM1KS1RQ+2pVZXmQbDpnb0FkLwH9ZP5pDP/QRTeQ5LMyVXcBWexBBsO4s1Tya7WeNTin1/7aXfdmrLssXudAxVPshk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782847547; c=relaxed/simple;
	bh=qVBhNvjLvqEv6SToBYLZ2hYwJhsDQoG2WhVoHDe0XzI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gXb70FamT53nieysZnHFGU3213r4qRec2L3OJu2YK0jTxQzEZZXXXCIjwJckJHIRIZIVARiYQ/V/Bq1DXUs14v/1aVUUWU7mkGMrbMiqxn6dPaF01yOA80GRGz17qR1D68Tb7D9mGJTc3V8PVZ2ruGxT2Y0Ygig0Xu76vhy2y0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZL83Ybq4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8F731F000E9;
	Tue, 30 Jun 2026 19:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782847546;
	bh=LTrA9g5qo+wGJ1gI/ApiYTCUbrzQgSfo23idl+HlRRg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZL83Ybq49JV55XfuhdylUTFvAhxCS0TvJxx2mxr9NC5FsSU5OYl+ErsanMZ/c0gxW
	 ZcaxRI3FDnpwDC5EQPI3HmnxbLf2dLd3g5mXtzXf6obKzXNiujZOAY5ZkA4N6FwHFy
	 nAv1VdmT+WWIqCbkmzbHmky6vb/spnpUX3pcBi0xFmcgYfGJVvrT1LNW1aTUu0Hnkm
	 ZMQc6dkuE/DPt39sILJbGPf2BXQS4e+8iLCJvFTTJMT1hlDTahCXX8QOGz5rE2r6cs
	 PnHLkRsR2AC5URHagRma3NG4HBdt5umcRVo4jsqQIHo1Eu6cwjyaTbZjkEM2rbjXRl
	 KeI0Ee5XAaS+A==
Date: Tue, 30 Jun 2026 14:25:45 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Gerald Loacker <gerald.loacker@wolfvision.net>
Cc: Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rockchip,clk-lane-phase property
Message-ID: <178284754478.82737.4770095981342524898.robh@kernel.org>
References: <20260630-feature-mipi-csi-dphy-4k60-v3-0-176792ab71fa@wolfvision.net>
 <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260630-feature-mipi-csi-dphy-4k60-v3-2-176792ab71fa@wolfvision.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318037-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:gerald.loacker@wolfvision.net,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:krzk+dt@kernel.org,m:neil.armstrong@linaro.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:vkoul@kernel.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:linux-phy@lists.infradead.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,wolfvision.net:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E92856E78A9


On Tue, 30 Jun 2026 09:48:25 +0200, Gerald Loacker wrote:
> Add support for the optional rockchip,clk-lane-phase device tree property
> to allow board-specific tuning of the clock lane sampling phase for
> improved signal integrity across supported data rates.
> 
> Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
> ---
>  .../devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml        | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


