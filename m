Return-Path: <devicetree+bounces-275577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Cv0JVmftGkjrQAAu9opvQ
	(envelope-from <devicetree+bounces-275577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:35:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8ACB28AB1F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:35:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC82A30620DC
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 23:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F4FC3D5655;
	Fri, 13 Mar 2026 23:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4qswcPA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC96388E6F;
	Fri, 13 Mar 2026 23:35:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773444946; cv=none; b=g8CZBDI/DV5dFvlQq6vlvcprhnBji1HpylO0pFK7gQChCc16pEKUVcXIft1ZfZdBt20KSPkw3OzQFAzcu07DslKthTPDR0cbLEb7B9Hfm6sFXuu/86TwZ3nSYmZ8GIEYt7wLdRtp6JG/5K7CaH94ySVyn8EA8Pv+0Y47433lv7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773444946; c=relaxed/simple;
	bh=xc7MjIMAXeiLgrS2X6SSXxTUrNBTb/oD67k7f8URbr0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Doz8AT8iJ9h988DLaFqsYdtD/M6a9U8o5u0MmEPm+81QofYmzBMY4NjdI/VyrLjOrumgsOJJeAJv7b9HmsABGAsK2XzCSUbGKBlSBxS8PXAN9UqlbseaslEJ+kQo8Prmrw4p6aBIj6lthFo3X71Zo43xIhIijYnvmOEJ3YbGLJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4qswcPA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E6F0C19421;
	Fri, 13 Mar 2026 23:35:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773444945;
	bh=xc7MjIMAXeiLgrS2X6SSXxTUrNBTb/oD67k7f8URbr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H4qswcPAtRFmrMfn3/76nP5TwmCCLzz6coATiku1apP2xBcq0JVLP/kB+1TsNsa9I
	 PDhTDidpmI6dwSCwBD7itqzlgroIR4iuvAR7Fkwvk5i13LqBT2MznlOVTFNcfqFTRA
	 WxOWi+2HG2Lc4sbjauL2ohhfD/MXHGvRY6Z5LRJn3e0yNH0w8e2N0ZVmYL/Jk1f35a
	 /wvrzCsTNcz937UrWrf9ImFi5+MLS4AHv+ym95eaTV0Iw6zXymzu/JnKumDDek7rXi
	 mYAoT5Zo5xMPoZ3sI7zKOTScLJY6aR7oReDurCCbkoW3KnT+g2Sgt/SGtZGj/jLjBh
	 8XHJAGf8oDwlA==
Date: Fri, 13 Mar 2026 18:35:44 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: linux-mtd@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
	linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	devicetree@vger.kernel.org, Richard Weinberger <richard@nod.at>,
	imx@lists.linux.dev, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH v2 3/3] dt-bindings: mtd: mxc-nand: add missing
 compatible string and ref to nand-controller-legacy.yaml
Message-ID: <177344494372.3644453.7349557296372406656.robh@kernel.org>
References: <20260309200351.1791162-1-Frank.Li@nxp.com>
 <20260309200351.1791162-3-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260309200351.1791162-3-Frank.Li@nxp.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,pengutronix.de,vger.kernel.org,gmail.com,bootlin.com,nod.at,lists.linux.dev,kernel.org,ti.com];
	TAGGED_FROM(0.00)[bounces-275577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E8ACB28AB1F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Mon, 09 Mar 2026 16:03:44 -0400, Frank Li wrote:
> Add compatible string fsl,imx51-nand, fsl,imx53-nand and fsl,imx35-nand.
> 
> Add missinge properties dmas and dma-names.
> 
> Change reg's maxItems to 2 because i.MX53 have addition NAND flash internal
> buffer space.
> 
> Change ref to nand-controller-legacy.yaml allow legacy DT layout.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> Changes in v2:
> - use items for regs.
> ---
>  .../devicetree/bindings/mtd/mxc-nand.yaml     | 20 +++++++++++++++++--
>  1 file changed, 18 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


