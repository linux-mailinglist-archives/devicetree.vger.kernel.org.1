Return-Path: <devicetree+bounces-285667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sFkyD5Mb1mkxBAgAu9opvQ
	(envelope-from <devicetree+bounces-285667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 11:10:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 908D73B9A49
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 11:10:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00C83305FC1F
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 09:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CCC9346FCF;
	Wed,  8 Apr 2026 09:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEl9X3eh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A278226CF6;
	Wed,  8 Apr 2026 09:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639097; cv=none; b=mPsX3HT/FrNlp3yr8vF0dp+lB9ddsjEc18YdKuqCdBoXPLhreEGPKMoaFIF+xm1UMYbsWCqP2FzwvF7ZpWM9SLISiKPrfpxeRe+2AvshAL8LLVlxag+kGO8Ab7/vxQeX01KYg91Q8GsR/W64q3q5pd8V4/bZeiHz4E87EVZl9fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639097; c=relaxed/simple;
	bh=aF8DxmycAUusg6ddo2v+8jGkzQd93VRHBt0ivhZIHrk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ow4dWr107tNkQNC9t5n0Ao05SFUPs+jGw6Fl9SRWtx3/l2J9UIR084KMrTz+OsdfDyGMUjIVc51C1dSttPxRiAYMwXf6Vws2o4SJ+4C3Jnn/xbunNBK9ansDlNHFk3EzijOw1Fc3q4CkgfSJd/tDMteqFVC8hGtjMZgXdbN4Sok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEl9X3eh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EE4FC19425;
	Wed,  8 Apr 2026 09:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639097;
	bh=aF8DxmycAUusg6ddo2v+8jGkzQd93VRHBt0ivhZIHrk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rEl9X3eha7Aju+3yKz8Zroohxn1Rd36yzuLQz7GP/4ggUoc4hPwPWh4nQGm2dQCod
	 uEqIhCCFHGYylyC0LPbI5dPqyktHTPCcYX/gymnWWLing1EtnwHhsEmsmV4mfcDImJ
	 bKYJnetYZHnicQalObZVcRFtxcz7OlZ1+auXlNe19ALy2X9tEGqX5SteRRV/2DmSIX
	 bRFO46iUaS7GwONT5ORPU/hzmJl3HfwNnPlmzY96JaErMg31R0pCgBiKIekgSxiKIc
	 7Mu2g/M27CBmtIyhd4bI2a2CCFDKAi0Gc+KMwniFXS2rIZOkrANgLwNRRiV9zh8WDj
	 XXANxp9pZZtsQ==
Date: Wed, 8 Apr 2026 11:04:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH] Update my email address
Message-ID: <20260408-loose-encouraging-wildcat-6f75ce@quoll>
References: <20260407164722.211610-1-sean.anderson@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260407164722.211610-1-sean.anderson@linux.dev>
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
	TAGGED_FROM(0.00)[bounces-285667-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.dev:email,linux.dev:url]
X-Rspamd-Queue-Id: 908D73B9A49
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 12:47:21PM -0400, Sean Anderson wrote:
> Soon I will no longer be working at SECO. Update the mailmap to redirect
> to my linux.dev address which I still have access to.
> 
> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> ---
> 
>  .mailmap                                                    | 1 +
>  Documentation/devicetree/bindings/timer/xlnx,xps-timer.yaml | 2 +-
>  MAINTAINERS                                                 | 4 ++--
>  3 files changed, 4 insertions(+), 3 deletions(-)

You CC-ed Andrew, so maybe he will take the patch?

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


