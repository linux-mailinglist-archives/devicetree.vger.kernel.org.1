Return-Path: <devicetree+bounces-264855-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCHRAnL6jGn5wQAAu9opvQ
	(envelope-from <devicetree+bounces-264855-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:53:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 76553127E69
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:53:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 173CB3017F98
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 21:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0DE535504C;
	Wed, 11 Feb 2026 21:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISQRflW/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A42346AC0;
	Wed, 11 Feb 2026 21:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770846828; cv=none; b=h3tYMpqe7GTMWE2YqZm0ShaV4kBeQ9Z7rwN9De8T8/shUaujNDynLb6it4p1Hg805lYlfz46H+lEzKN0jWZG6a0CzbcYilf3ajjIUhsPUOnu6HHbSjTxo+I97fGebCOJq+HoqekmGW+dH8qTX26LVxbzLRh7ekHJuWbYwwH5jJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770846828; c=relaxed/simple;
	bh=SPxr4SAv2EP/7Ek8+QNFengSbhX8GoDT0ohbIaJkJ7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BiVuxI+JasGMaim6yK3jYIlRs8PCOGjFty581VVgcKxvqNahxL939VXcEaoq7TAFvXcWkE5YmZ12Ef/rZRc65f3cKon8ePD76N0dJs3m97RfGNRJDzRerKCQYH+hjlbU2xMPH/3cYmVaGutP7bnaZJMAVQCMISDLe6bS/vKpSDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISQRflW/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E9859C4CEF7;
	Wed, 11 Feb 2026 21:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770846828;
	bh=SPxr4SAv2EP/7Ek8+QNFengSbhX8GoDT0ohbIaJkJ7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ISQRflW/PCx2x10MB3f9FNQpspPLEFVgB8mTC2v4ntEzT7oz7ftvCsq7iI3oZZSi7
	 Mwd0Y0+o7WSwWz3uO7UEoMK6qQZXnx/gPVwkvZRI5cBgETetHDrAHTj3Xf8ilUvbaJ
	 1zzugdN06NdDPPOyLYkWQXPioEeodhIkUdHbkI8ol++SxDF/H6lo9UpMZU+lOET2Uy
	 B198zYsXvJx8wh3qXs7FVUXGwi49K5EPMTa0xke+QHiswq4uTd5pSjyLo3+gjfJrSM
	 LxsJc7nsFvb1T0evlTBr7OAH6Eii8hTKcUUz/OA4HOqyotzn+KE8mtzyY9LRav44ar
	 X1V25V6cWvqOQ==
Date: Wed, 11 Feb 2026 15:53:46 -0600
From: Rob Herring <robh@kernel.org>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: lgirdwood@gmail.com, broonie@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	perex@perex.cz, tiwai@suse.com, ckeepax@opensource.cirrus.com,
	andriy.shevchenko@linux.intel.com, nichen@iscas.ac.cn,
	kuninori.morimoto.gx@renesas.com
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: asahi-kasei,ak4458: set
 unevaluatedProperties:false
Message-ID: <20260211215346.GA3958740-robh@kernel.org>
References: <20260211093527.2892297-1-shengjiu.wang@nxp.com>
 <20260211093527.2892297-2-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211093527.2892297-2-shengjiu.wang@nxp.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-264855-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org,perex.cz,suse.com,opensource.cirrus.com,linux.intel.com,iscas.ac.cn,renesas.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 76553127E69
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 05:35:25PM +0800, Shengjiu Wang wrote:
> When including the dai-common.yaml, should use unevaluatedProperties:false
> according to writing-bindings.rst.

Generally true, but not always. Do you have an actual problem? The only 
possible problem is you want to use "sound-name-prefix" property. 
Otherwise, you don't need this.

> 
> Fixes: 8d7de4a014f5 ("ASoC: dt-bindings: asahi-kasei,ak4458: Reference common DAI properties")
> Cc: stable@vger.kernel.org
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> index 1fdbeecc5eff..259e97b7a3c0 100644
> --- a/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> +++ b/Documentation/devicetree/bindings/sound/asahi-kasei,ak4458.yaml
> @@ -60,7 +60,7 @@ allOf:
>        properties:
>          dsd-path: false
>  
> -additionalProperties: false
> +unevaluatedProperties: false
>  
>  examples:
>    - |
> -- 
> 2.34.1
> 

