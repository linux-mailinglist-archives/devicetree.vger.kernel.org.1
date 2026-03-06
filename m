Return-Path: <devicetree+bounces-271892-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0AgyCVGRqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271892-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:33:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF1121D1DC
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE9653016922
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 281F3370D66;
	Fri,  6 Mar 2026 08:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D33jCfOz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053CB17A31E;
	Fri,  6 Mar 2026 08:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772785994; cv=none; b=b8t5E//qMwovmNZNB5MrauOjytC/bCngHHQ97iYgPhQCGaoak9du0yCOdbEgjGSGHektwcZ7+9GBvHIj1r7jEKiSvW+aW7ogmq9CtVZmwGwIcUZFAZ39BPKw2wZBHJHsBQ0pCIGxAlTAxkaxejkZ/4Oq3DRGnx1joB+1X/yUBlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772785994; c=relaxed/simple;
	bh=SN5+pzGWNBQz6tOepDPonTQdUd634bUktGHyYoxmwEE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QfGH9HZ5iTCfvMFopQMrwq+Z+fpwuVwXYUmhuXHxHWNu+jF36mNE4lKCS16S/yydGSiaNT6v5L8B1KbhwDgqS5bpyDkQLtlfDmsP+Vd1jZomkOaXv1XtNcjGllZwkqYS/9lp9OFjwBn2V75E/Br3HCI3wwaN3YPPhkByIWcqi4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D33jCfOz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05709C19422;
	Fri,  6 Mar 2026 08:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772785993;
	bh=SN5+pzGWNBQz6tOepDPonTQdUd634bUktGHyYoxmwEE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D33jCfOzP6hQmRqt0yEZJ81e7N++jbMf+uMWy2FBD75wnT3/xVstWsPVT37htqmMg
	 dVbfJk5I49PrB1dm5u/RutRJvG0A/G47n83jMN7eKhxhjoK1T+NNnwfeyszXecRBb7
	 sPptfG2Oo8Gxb2g3B+XUjj4Rr4LhQlO1/B1jP+vqROd6454zhZ4Mbl0Ci2o7kNIMFs
	 nho66IXZqp4Bf95Y/DwAkiLCGyZdlvPHGk5qhvTOqOHuxDKcMOlmJHFZzbIs+6qpoa
	 Eiz4d/GVnSCuMLTWOBe2K12b187MAc+GMzhfwSuQBtQxEqeEOTSPDjweDVoSsyp7pV
	 WT875zij2TRGw==
Date: Fri, 6 Mar 2026 09:33:10 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ernest Van Hoecke <ernestvanhoecke@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Ernest Van Hoecke <ernest.vanhoecke@toradex.com>, 
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>, Francesco Dolcini <francesco.dolcini@toradex.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: arm: fsl: add Verdin iMX95
Message-ID: <20260306-berserk-dormouse-of-efficiency-dd4dbe@quoll>
References: <20260305-verdin-imx95-upstream-frank-li-base-v1-0-823fad02def9@toradex.com>
 <20260305-verdin-imx95-upstream-frank-li-base-v1-1-823fad02def9@toradex.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305-verdin-imx95-upstream-frank-li-base-v1-1-823fad02def9@toradex.com>
X-Rspamd-Queue-Id: 9FF1121D1DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271892-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,toradex.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email]
X-Rspamd-Action: no action

On Thu, Mar 05, 2026 at 06:24:29PM +0100, Ernest Van Hoecke wrote:
> From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
> 
> Add DT compatible strings for the Verdin i.MX95 SoM and its supported
> carrier boards: the Verdin Development Board, and the Dahlia, Ivy,
> Mallow and Yavia carrier boards.
> 
> Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
> Link: https://www.toradex.com/products/carrier-board/verdin-development-board-kit
> Link: https://www.toradex.com/de/products/carrier-board/dahlia-carrier-board-kit
> Link: https://www.toradex.com/products/carrier-board/ivy-carrier-board
> Link: https://www.toradex.com/products/carrier-board/mallow-carrier-board
> Link: https://www.toradex.com/products/carrier-board/yavia
> Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


