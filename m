Return-Path: <devicetree+bounces-271900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oPghNpWTqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:43:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7411521D3A5
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:43:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D7537301346F
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C12D53793A9;
	Fri,  6 Mar 2026 08:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MhH2CgVa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E472318BA6;
	Fri,  6 Mar 2026 08:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772786579; cv=none; b=lI8tbT4XLOaAdctvdvz3gYxphEp+G8TMalFwDtrnnajwjeSQvoditwWADxtjg+cVRbW5t8DbFLi4gxUvwmiTvvtm8EJ27vV0SFkWpb26PjDB1p7He+IMco08SUlv9cJxP8jKDCObPLnZqJHVpvdtWCQMWg2sSMzyBFzPwOGCRP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772786579; c=relaxed/simple;
	bh=UGYja3lVWRxfQoH8Vo5RvHgm78eLeujnG9mrnbduk58=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ferzVNQSaNYN/jSUjH7Y/LHXsNiLC2Iou8sUovnGdxAVCatI9zAucfunxYk9q1Tjme2zBSXTyDluTk20gHLYuUs8lYGnKSS5fA+bvtBbKMJ2jsRmrO5P5VFN81d4+Uzn6Umt1xwyuZx7SXNzfozzN7+KngaFmWXYlGlhquizgLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MhH2CgVa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5B5FC4CEF7;
	Fri,  6 Mar 2026 08:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772786579;
	bh=UGYja3lVWRxfQoH8Vo5RvHgm78eLeujnG9mrnbduk58=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MhH2CgVaeGN71ykpuN7WwkKtEALvHzvNWMFTMc4qNRyTkQd2rO1eMCubmXyRYRmZL
	 a5f8IDjxHoZvcnon9gyKRJPlTf8nZNnd/RiYFadefuT7IBhrSsbFseHXIb6GxPjSMm
	 kvm/CvguEyxdx8gXzNYCRKX31iSqaS44q2iUumeYw04glkGvR503o8Svb/3U0glWtF
	 vZ7W4mYItaBOLaGSi/PEDpcXhQOwRIB5MWis/0S2WajnfKpmUvdoE9S3CR76JbX2A2
	 r2u1sUGOMv84toxBQJPO591twnYIsFWoFbzl4llbCaQiTjJt292jDNIDjlLgaPv9Kt
	 yUbDpX7tl3+RQ==
Date: Fri, 6 Mar 2026 09:42:56 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Lee Yongjun <jun85566@gmail.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, rjui@broadcom.com, sbranden@broadcom.com, 
	bcm-kernel-feedback-list@broadcom.com, nsaenz@kernel.org, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: brcm,iproc-sdhci: allow dma-coherent
 property
Message-ID: <20260306-phenomenal-hamster-of-memory-819b2b@quoll>
References: <20260305234703.38490-1-jun85566@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260305234703.38490-1-jun85566@gmail.com>
X-Rspamd-Queue-Id: 7411521D3A5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271900-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[3.245.164.48:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,3.245.125.32:email]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 08:47:03AM +0900, Lee Yongjun wrote:
> The Broadcom iProc SDHCI controller supports DMA, but its binding
> schema does not allow the 'dma-coherent' property.
> 
> As a result, dtbs_check reports the following validation errors
> on the Northstar2 SoC:
> 
>   mmc@66420000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
>   are not allowed ('dma-coherent' was unexpected)
>   mmc@66430000 (brcm,sdhci-iproc-cygnus): Unevaluated properties
>   are not allowed ('dma-coherent' was unexpected)
> 
> Allow the 'dma-coherent' property in the schema to fix the validation
> errors and accurately reflect the hardware capability.

So is the hardware capable of coherent DMA or not? Entire commit msg is
silent about this and says how you fix warning without actually telling
us that it is a correct fix.

Best regards,
Krzysztof


