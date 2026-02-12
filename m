Return-Path: <devicetree+bounces-265054-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KP6RAaC+jWkZ6gAAu9opvQ
	(envelope-from <devicetree+bounces-265054-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:50:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A0212D2D3
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 12:50:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C2246300D746
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B5D934DB72;
	Thu, 12 Feb 2026 11:50:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfhq4X7N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19773446CB;
	Thu, 12 Feb 2026 11:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770897051; cv=none; b=ns37Lbme9tBbREqNOW2QmAMIb9orx+iYZa8FfYZZ1XpHeavqVNFvWj5W1EXIE34A5Ha/Z/se2CfYSh2MLA3y1vozU7sYqSTMEVll39qYyX8YcZpiQRIco3ljFVUEgxEeBeHwMW+HbxHpatrEQQFmbLhzif1HRSgVcaLcFQNLVpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770897051; c=relaxed/simple;
	bh=+mExdPYywevcvTVMOl/PdDwU0c7GmCCHMXPzvVMq6UM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kJt7jslUeIumHYdPISQbKeOnlVXiP35o56RkVl5te8rvep2NrUMiLdP88R0hnbBghzsuetfN+cBclEX/CyRss/tZ9CFIG2WXUqcKJu7Z+99tcyOIbH2StJYkoxwAZqOXle0WZZCtouW6v37mEpDzycfjt3t8eXlxA15nJ5zpjv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfhq4X7N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0827EC4CEF7;
	Thu, 12 Feb 2026 11:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770897050;
	bh=+mExdPYywevcvTVMOl/PdDwU0c7GmCCHMXPzvVMq6UM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gfhq4X7Nd2ol8tYyzTSAp2DJsTjXTg6NnzF49nXm3CiqnOFg1D2UnzKsMukVc2hfJ
	 43rlm9JVEo3sHFFZVAtY6C/noH7tpJjK08akCTRD96BwRkoXeKnBlYXpi6vvmxpOD8
	 aueMn3LZZL9bu6msxr0L42nI14XyVazKBQisY4vxk+1MFhEGB67lbTmv3FuMVohhqP
	 GtCXa+afth+5xWL6xOanccLURNOl1tCVVEXZXdaK5/phYSN7FJoY6VBRd1abG3ENuI
	 ph8AUknVr9XyW4Nm0TYfyI6SyQ9VXfbHn4Zufp7fggTtcrkZnPaLPL4M9V/Pl5+bJm
	 deWCG4G8K3j/g==
Date: Thu, 12 Feb 2026 12:50:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, 
	"open list:CLOCKSOURCE, CLOCKEVENT DRIVERS" <linux-kernel@vger.kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <imx@lists.linux.dev>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/1] dt-bindings: timer: fsl,imxgpt: add compatible
 string fsl,imx25-epit
Message-ID: <20260212-vengeful-pretty-seriema-9f6b74@quoll>
References: <20260211214947.3705328-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260211214947.3705328-1-Frank.Li@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[bounces-265054-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,nxp.com:email,53f94000:email]
X-Rspamd-Queue-Id: 60A0212D2D3
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 04:49:47PM -0500, Frank Li wrote:
> Add compatible string fsl,imx25-epit to fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx25-eukrea-mbimxsd25-baseboard-dvi-svga.dtb: /soc/bus@53f00000/timer@53f94000: failed to match any schema with compatible: ['fsl,imx25-epit']
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

I see you are preparing for the next LPC status of validation :). Nice!

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


