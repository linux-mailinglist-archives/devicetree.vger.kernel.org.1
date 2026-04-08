Return-Path: <devicetree+bounces-285586-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAioFkUB1mk7AAgAu9opvQ
	(envelope-from <devicetree+bounces-285586-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:18:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE523B8038
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:18:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99253305DF06
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:13:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF020376BD7;
	Wed,  8 Apr 2026 07:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pv9gLUgW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC660371CF5;
	Wed,  8 Apr 2026 07:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775632386; cv=none; b=n5qfv0+qWUyGNbBJyLbVoVjjb1/GBVbZvO+m8USZcIcanTeAnE1PcjayRD0EJyn76dIYBMJkaHTBwa+Uw3JWk9I+p2Ff0vaLsuRwJ//MG4PEpZINkuoOIt9/TkszfbRTNGbeSOtitoMRYFeqpyNxsbMKJZbkq/wrS4plReR/NDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775632386; c=relaxed/simple;
	bh=jEaPlQBpK9e74i+jZAnibkrCdsBl6sxZabMuxRJQnsE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ijff8+YYpBdjP2JYsM5ikAKxerhqNE7tp0M9lXY7DeKTQ/lMP+M6h7ti9I3IEq1dUyS62xlh5O0kplW72N0DqNxU4jgRuPax2yexEIEoA6GlqPqhHrgTeqIXM/i7w8KXyWHHYA3saennUtFSYJnR8RcsQZsZs1wnQgnEKEsnqmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pv9gLUgW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6DCFC19424;
	Wed,  8 Apr 2026 07:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775632386;
	bh=jEaPlQBpK9e74i+jZAnibkrCdsBl6sxZabMuxRJQnsE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pv9gLUgW2pR0FxftZeBZYnQx9pTeY6DC7bsW/oG/OZRJV4OepSO8TYrIPO+01ASu3
	 1+o/10H2RqQlKu+Yd2s40Z1juLKxuXOMRj4OrGhMQSREaIonRSLTlfIDtFbxXoto0e
	 k14JSQ7EoPiQIvvSjsyGCCgr9IzvXt/EOje2sauxCPO1A114q+lWRnfX8JVtnQ2loQ
	 BZZt75gM2fFaizmA8vKXI1iCtkY5dvPuhfCzwhr8TMSwVoadFqhkBDQaFBdee6IaVA
	 pHXtHJEP9pW3HB8pHuOuc5zIHlhtUJv4At2M8URjMDLH59mOXJ5+PB4VywOpWmBCFU
	 1bo63FcsmWG6A==
Date: Wed, 8 Apr 2026 09:13:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sen Wang <sen@ti.com>
Cc: linux-sound@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, perex@perex.cz, tiwai@suse.com, shenghao-ding@ti.com, 
	kevin-lu@ti.com, baojun.xu@ti.com, niranjan.hy@ti.com, l-badrinarayanan@ti.com, 
	devarsht@ti.com, v-singh1@ti.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/4] ASoC: dt-bindings: Add ti,tas67524
Message-ID: <20260408-bold-cerulean-mole-109cc8@quoll>
References: <20260408053149.1369350-1-sen@ti.com>
 <20260408053149.1369350-2-sen@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260408053149.1369350-2-sen@ti.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285586-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com,perex.cz,suse.com,ti.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ti.com:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: BDE523B8038
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 12:31:45AM -0500, Sen Wang wrote:
> Add device tree binding for the Texas Instruments TAS67524 family
> of four-channel Class-D audio amplifiers with integrated DSP.
> 
> Signed-off-by: Sen Wang <sen@ti.com>
> ---
> Changes in v4:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


