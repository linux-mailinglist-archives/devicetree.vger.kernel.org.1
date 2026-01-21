Return-Path: <devicetree+bounces-257710-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIiJCOw6cGmgXAAAu9opvQ
	(envelope-from <devicetree+bounces-257710-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:33:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE774FD01
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 03:33:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 01A007D0160
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 02:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FE64346787;
	Wed, 21 Jan 2026 02:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y/cGBS2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C3F21D555;
	Wed, 21 Jan 2026 02:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768962659; cv=none; b=u2diEcKXtt/DFxVPM0kWbEhIbyD0yFdEnMfDN/WoqtDyBUJhlrkjLr/MVWHkCBGML0A8R4l5rU9WleRgU/yBDKIvuVPJ0UtweUWDvl6S9JLXhOQIHOiedLjIY+X9grspkYL2GnzQO42EOdCwlfMEkOJGcu+HtFhkn6Ozht8CK58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768962659; c=relaxed/simple;
	bh=kakUcG5SzcJJ04uD/Xh1SJIe/+0LTLNt11k19MhqLXM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VxJ0JK9sbc8Y1UUv+v39W1WP/rEM29EHQClVVXxzglbSMbmrOSD+3/A3G4y5/FAhzN1F35jRILMZPDZtsrfQ41FLmXY/6YlVuB7I/DObqgH7WGYoiwtwtFAXwyq00kprTYKg+yaAs3dpuuvnrGFI1tKsggl2puuSi09IwIwqdOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y/cGBS2Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA226C16AAE;
	Wed, 21 Jan 2026 02:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768962658;
	bh=kakUcG5SzcJJ04uD/Xh1SJIe/+0LTLNt11k19MhqLXM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y/cGBS2ZiYJku/rO/phS4zAT6dn8nNrdqI8u+hc6Y2meUr+Es7RsLp0+Rm7l87ziC
	 C3NoqCyzyiNMNRzMrb+jVblUX2sl4m6KzPViOOYtIr0XrRQ5ON/zbpK6biDZ8PWiCw
	 QoUfeKSuGNQtezWsH+OK1b8zo4AunmsDaIsZQKMgFpnXQpVwpOBk0C68LMLQo+2czv
	 bVxOheQCsIgvu126fLB/oviuyBSovVh/Qi3dVWnXIsV9Q6/e/5o7+XtPgpKcFhJ4AQ
	 xIDTYbuJSe5Xl1ehzqDAdsRVuicF1Nr7islS6eL5n9rNFYEtyIxOuKbKIXDLK4HgtG
	 Ni0rpTqql6Avg==
Date: Tue, 20 Jan 2026 20:30:58 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
	linux-arm-kernel@lists.infradead.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>, linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>,
	=?iso-8859-1?Q?Beno=EEt?= Monin <benoit.monin@bootlin.com>,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
	Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH v3 1/4] of: reserved_mem: Fix placement of __free()
 annotation
Message-ID: <176896265605.1837058.2000534852582541394.robh@kernel.org>
References: <20260107-mtd-memregion-v3-0-f9fc9107b992@bootlin.com>
 <20260107-mtd-memregion-v3-1-f9fc9107b992@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-mtd-memregion-v3-1-f9fc9107b992@bootlin.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-257710-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: CDE774FD01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 07 Jan 2026 14:04:52 +0100, Gregory CLEMENT wrote:
> The __free() annotation was incorrectly placed before the variable
> name instead of after it, which resulted in the following checkpatch
> errors:
> 
> ERROR: need consistent spacing around '*' (ctx:WxV)
> +       struct device_node __free(device_node) *target = of_parse_phandle(np, "memory-region", idx);
>                                                ^
> WARNING: function definition argument 'idx' should also have an identifier name
> +       struct device_node __free(device_node) *target = of_parse_phandle(np, "memory-region", idx);
> 
> As part of this cleanup, also remove the useless return statement
> flagged by checkpatch.
> 
> Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
> ---
>  drivers/of/of_reserved_mem.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Applied, thanks!


