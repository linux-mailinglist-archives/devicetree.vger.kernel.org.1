Return-Path: <devicetree+bounces-267568-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJ8cJjaSnGnRJQQAu9opvQ
	(envelope-from <devicetree+bounces-267568-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:45:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF35017B052
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:45:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3F0163009B29
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8984F333729;
	Mon, 23 Feb 2026 17:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARdLszs8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6616B2BE03B;
	Mon, 23 Feb 2026 17:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771868450; cv=none; b=XhIIY8pCDP3OO8X/wxTqbMUyhUd3U1EgnL4fxwb8HWcbwiv2iBcshibdd2cp/Qxlvi7Og4cWN4mwpf6WqYmppf0VghQ/lqoGcMwhAnUxA0psfatm3iUnmhDCnBnnG1Pk612K6o3fTI/G3pPl0eP9l3tjvilrH6sD7VzX+Pu4AYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771868450; c=relaxed/simple;
	bh=Or4h+xHQ5FS/HiNmiFjEj7nHN/WXQsovDaKSA44TqMA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pPO7+N9wkTEIts6jG7h1ls/GAZfQV3UzrGZFJ8BrI4VfqIuZ8TVsGxEttscTw2K6YUfQDxfKaTekrTeeEWM+EqpQWwWP/TZJvufHqeqhuD50jB46Yy8WSg1PND2Wvw30x81MIGnDzPRPo6ctSBfiFOz1D4LRnRTmwq1VcaiiZY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARdLszs8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBC94C116C6;
	Mon, 23 Feb 2026 17:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771868449;
	bh=Or4h+xHQ5FS/HiNmiFjEj7nHN/WXQsovDaKSA44TqMA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ARdLszs83gSNML82XVROwKgGssmLGH3Zynb+n4i3A37u+11VB3Ra0MmFkeLVwsqcp
	 2pD1eIIeioFfNydazYpvFaV36XoVfvkj9psjyzwQtTWewlXaicI6COHdVstGUDP4Kn
	 9zjHnNcggwzTsFr3DuCJU8aSLmW/ypq5NyiT74Jij7z1SZW0wSPqVTi7VvDWsIolJZ
	 grOXYA81PBrDevgU86FNOggHRpha2Us9Qeea3Q9Qgifv1MY7etncSJIwnBieaQO/CR
	 tuGinhvisN83D+eFMvHhWp6mT6a14ZTT9fybrVLQzPaHarcdWi0V5Cdh2t9laiNcaO
	 x6m5epfwZR8DA==
Date: Mon, 23 Feb 2026 11:40:49 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/1] dt-bindings: fsl: add compatible string
 fsl,imx25-aips
Message-ID: <177186844812.4160031.3323512453919011209.robh@kernel.org>
References: <20260211221529.3745404-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211221529.3745404-1-Frank.Li@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,pengutronix.de,lists.linux.dev,kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267568-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EF35017B052
X-Rspamd-Action: no action


On Wed, 11 Feb 2026 17:15:25 -0500, Frank Li wrote:
> Add compatible string fsl,imx25-aips to fix below CHECK_DTBS warnings:
> arch/arm/boot/dts/nxp/imx/imx25-eukrea-mbimxsd25-baseboard-cmo-qvga.dtb: /soc/bus@43f00000/bridge@43f00000: failed to match any schema with compatible: ['fsl,imx25-aips']
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/arm/freescale/fsl,imx51-m4if.yaml        | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!


