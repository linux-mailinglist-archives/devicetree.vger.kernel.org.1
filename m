Return-Path: <devicetree+bounces-285588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNLSI58B1mk7AAgAu9opvQ
	(envelope-from <devicetree+bounces-285588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:19:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FCD3B8085
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 09:19:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8551D300694C
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 07:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E320377EC7;
	Wed,  8 Apr 2026 07:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mk11pr2u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B979352C39;
	Wed,  8 Apr 2026 07:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775632469; cv=none; b=UpPtgpghMOQAstiE1Hh9tV0qA+p/VXFYv2qBjbSrqR/1YG796VSSYK1gwMxHuLkaBu7Y7osR1WNZzx4vGpBYSVZYBsQK5RkxE1cJQAhBuLSu+mx3oqLY+ZdK9WxDLuu43hpHXg5SVn/iqRrbXveEh5lqxY3vjaC+G42ANVsRyzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775632469; c=relaxed/simple;
	bh=ExBanwN3wOqkTwq+krnxMclqKm5hg2S1Hk02PXLNQvM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f4jRwMK1mtCPhFqpK3a86JbvWK2VaIPfXIJ4Ns/RiGFkzcyfSSPmpv97fCQOTdTVn6BAbWBPJXMsG2PK2g+bd6gxhqpZ6teGXCZt6zQC/24BPvcTh26nIODvSeY80XTXqIvMsbNT5dRa7DIxBJ3apQH+gGRyk6bXAXPEbKk4Lj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mk11pr2u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBFD3C19424;
	Wed,  8 Apr 2026 07:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775632469;
	bh=ExBanwN3wOqkTwq+krnxMclqKm5hg2S1Hk02PXLNQvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mk11pr2u8hqLm1w4RwN3zV/s61yM1hSdDMLtYhLMTS01NtjY+fuxz+W5FHVKUNAkm
	 FpJe7hWGx8ljxrgmtbn7aqk4CqhRYG4rHLm9J+t3gvtJ3f8RRe68W68/DA93SKjhPP
	 OjQAKgh0Te/TFgYMo5BX7orgAG+JGza88wep6xZGL6EKWPOa/gT48znuoR+O/w5wKC
	 QaUPfM2afTqlgUPGV6tk21/ShWf0zp75Hg59JEIIsaEHtvDg/Eolxk6XF2cBw1RJXn
	 w4WImMZ1FpcAq8Y0UOCKw/kQQttT3pxLC7fmN0UIeFF/dA/eeRpRKis6x5FhSso8KO
	 3hC0ZFW7NMZkQ==
Date: Wed, 8 Apr 2026 09:14:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sen Wang <sen@ti.com>
Cc: linux-sound@vger.kernel.org, broonie@kernel.org, lgirdwood@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, perex@perex.cz, tiwai@suse.com, shenghao-ding@ti.com, 
	kevin-lu@ti.com, baojun.xu@ti.com, niranjan.hy@ti.com, l-badrinarayanan@ti.com, 
	devarsht@ti.com, v-singh1@ti.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] ASoC: codecs: Add TAS67524 quad-channel audio
 amplifier driver
Message-ID: <20260408-fuzzy-savvy-serval-20809e@quoll>
References: <20260408053149.1369350-1-sen@ti.com>
 <20260408053149.1369350-3-sen@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260408053149.1369350-3-sen@ti.com>
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
	TAGGED_FROM(0.00)[bounces-285588-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E9FCD3B8085
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 08, 2026 at 12:31:46AM -0500, Sen Wang wrote:
> +static const struct dev_pm_ops tas675x_pm_ops = {
> +	SYSTEM_SLEEP_PM_OPS(tas675x_system_suspend, tas675x_system_resume)
> +	RUNTIME_PM_OPS(tas675x_runtime_suspend, tas675x_runtime_resume, NULL)
> +};
> +
> +static const struct of_device_id tas675x_of_match[] = {
> +	{ .compatible = "ti,tas6754",  .data = (void *)TAS6754 },

Drop. This is the entire point of compatibility.

Best regards,
Krzysztof


