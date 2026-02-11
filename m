Return-Path: <devicetree+bounces-264860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEBGAFP+jGn4wgAAu9opvQ
	(envelope-from <devicetree+bounces-264860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:10:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 12460127FE4
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 23:10:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7F9E93002B6F
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 22:10:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A4E532860E;
	Wed, 11 Feb 2026 22:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXYkUq+O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2721A3043A2;
	Wed, 11 Feb 2026 22:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770847820; cv=none; b=cF+hkrC14pZO3Au5p+Wc38cFjhw1Isbr2Tx29yntHbgRvsGGldYzBhr4C5OfVPYzAKBmRzLoY4cXWxvWWw9iFHoiL4gGftTqTrbyQfAg5a2zlNG4oIT8wCZu5JAlelif+gSO6svr648bDS5kcNmm6G3ZEAsVsp6KC4LAZxv3vGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770847820; c=relaxed/simple;
	bh=b26k+vOwOv4WyCFhHxvZ/XK+KKEnbIyHiQIljrTskiI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MYaO9RKS6sQ2yH/yuLNPjnVPM8eYg/pE579BTbDV7kPTaRr5O9prc5EEe9gRvXmMHC5GbYvooSGVku7Rbxj+AxyTQtd7q1VfKVw8Ms/CRa3cree4CTYMc8BXWoDGEi6F++DTvWZ92NTiX4OFxVxzHSlPRYwfLUFpdeqvG5Wdji0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXYkUq+O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E4EF7C4CEF7;
	Wed, 11 Feb 2026 22:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770847819;
	bh=b26k+vOwOv4WyCFhHxvZ/XK+KKEnbIyHiQIljrTskiI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MXYkUq+ORLJMpiyzYwdCaVyaRKAHdj3Xrylsmc22gtCgeAKR3IDWej0iog0mKEhKY
	 SO2CZvhglFzKY9diwMsepHb04M6QduFFFi3AKHFRKQ1otnhdwUawU51dlWHbXzONR1
	 9mDHB6XFrFH/rhA3O4OsgnXe48a1YOJeARQwRUZQiomWhG3xRRZoQbrAnImP60aVeF
	 K/FGu4D6Ox+8UcP2aA/KUUHKThB99vrFQPCH820Kxm5fhY06F8LKHg3FNBtdc9wfyp
	 FuIYWZ6UVSn0fFdxvft3xqh9bbvIWtI06NpCUxBbdvbRAwGyUGkWDL1mIoZ0CGIiUa
	 WQYaEHDKEmrfg==
Date: Wed, 11 Feb 2026 16:10:17 -0600
From: Rob Herring <robh@kernel.org>
To: hehuan1@eswincomputing.com
Cc: ulf.hansson@linaro.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	jszhang@kernel.org, linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	ningyu@eswincomputing.com, linmin@eswincomputing.com,
	pinkesh.vaghela@einfochips.com, xuxiang@eswincomputing.com,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: Re: [PATCH v1] dt-bindings: mmc: dwcmshc-sdhci: Fix resets array
 validation
Message-ID: <20260211221017.GA3976151-robh@kernel.org>
References: <20260211094736.88-1-hehuan1@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260211094736.88-1-hehuan1@eswincomputing.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264860-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 12460127FE4
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 05:47:36PM +0800, hehuan1@eswincomputing.com wrote:
> From: Huan He <hehuan1@eswincomputing.com>
> 
> The binding defines tuple-style reset-names items for some
> compatibles, which implicitly enforces a fixed array length
> via JSON Schema.
> 
> Defining global maxItems for resets and reset-names causes these
> constraints to be intersected via allOf, resulting in an effective
> minItems equal to the global maxItems. This leads to dtbs_check
> failures reporting reset arrays as too short, even when the DTS
> provides the correct number of entries.
> 
> Remove the global maxItems constraints and let the per-compatible
> schema branches define the required reset array sizes explicitly.
> 
> Fixes: 30009a21f257 ("dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin EIC7700")
> Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
> Signed-off-by: Huan He <hehuan1@eswincomputing.com>
> ---
>  .../devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml         | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 7e7c55dc2440..8af55a53b569 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -49,12 +49,6 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> -  resets:
> -    maxItems: 5
> -
> -  reset-names:
> -    maxItems: 5

No, add 'minItems' that covers the whole range needed.

