Return-Path: <devicetree+bounces-271749-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uN/zHkQWqmnFKgEAu9opvQ
	(envelope-from <devicetree+bounces-271749-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:48:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDE62197B9
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 00:48:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 02F7A30B481F
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 23:44:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A535368297;
	Thu,  5 Mar 2026 23:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0WoUXAX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1717734B19A;
	Thu,  5 Mar 2026 23:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772754283; cv=none; b=LcWITbKYQvyjVGqyhXn9T968Cfywfejny63t6VIHFrsJXglp5vWZvkbwY9tJ7mvBOGEOrvtRnvk90+fI7wZGoWRyrBxYVZSqWWcIqQ1ogXhWOki92WUsEwAbk2R40x3lWadJpOPib1HB+BxDVG5Yvq6ag/jGXk0XTyhXDGooeEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772754283; c=relaxed/simple;
	bh=8H5/ixWTCBmB68S6OPOuZGKRBwpz/tdQ/2Nru84zMW4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=emna9HYlPes71XEKqndZ44WfhhfsJ9PPxwcGaBInWv3RRtCEy3C6Ax9G8E8+iCxySiwvgEq3aFSXjf8gxMMhLPT2zFZdvhC7JZD8k3QmX2QMKOw2fOQX5av/RZoV6McsSK84xsZOyiSddKU09hdZrUwBES6HiBQxUIqRON+P80E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0WoUXAX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E00EC116C6;
	Thu,  5 Mar 2026 23:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772754283;
	bh=8H5/ixWTCBmB68S6OPOuZGKRBwpz/tdQ/2Nru84zMW4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T0WoUXAXtMYs6dfzoGfCw6Xqglu4yklsx2eBEEA/38nBLLGCfJRTEXpjy7V6tMK9k
	 RrKkg7fhAWFWfwehR3EkD3nY27x6eG9Zm//jQjAc5kx8VEAcYeB+dEjD5A6aOwKh8H
	 WEBNYLqfM1jrwJGlpcBL+6IlOQaeCxlE3IwZ9Yo5+eTfzuZg3mfVvnn4G+2DwCM9ys
	 6S5hYyR5Rx95l5cNgUMzBnqyIU3XEsikD8UsG1P52PXFU8Ax1IEX8u86oAYa74domW
	 8DrDJK7ZJMkb6mfBB4WK2QLWHbP944ejGLFWImN300md3cGDYrLO7k/uioldlw842X
	 0OGb+U7yLH2DQ==
Date: Thu, 5 Mar 2026 17:44:40 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, imx@lists.linux.dev,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org, Lee Jones <lee@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: mfd: convert fsl-imx25-tsadc.txt to
 yaml format
Message-ID: <177275427981.796382.9876886275408916713.robh@kernel.org>
References: <20260211-yaml_mfd-v1-0-05cb48bc6f09@nxp.com>
 <20260211-yaml_mfd-v1-2-05cb48bc6f09@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211-yaml_mfd-v1-2-05cb48bc6f09@nxp.com>
X-Rspamd-Queue-Id: CBDE62197B9
X-Rspamd-Server: lfdr
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
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,lists.infradead.org,vger.kernel.org,gmail.com,lists.linux.dev,kernel.org];
	TAGGED_FROM(0.00)[bounces-271749-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Action: no action


On Wed, 11 Feb 2026 16:41:05 -0500, Frank Li wrote:
> Convert fsl-imx25-tsadc.txt to yaml format.
> 
> Addtional changes:
> - Add ranges.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  .../devicetree/bindings/mfd/fsl,imx25-tsadc.yaml   | 97 ++++++++++++++++++++++
>  .../devicetree/bindings/mfd/fsl-imx25-tsadc.txt    | 47 -----------
>  2 files changed, 97 insertions(+), 47 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


