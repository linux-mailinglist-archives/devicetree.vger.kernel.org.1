Return-Path: <devicetree+bounces-293341-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6DMxNcOa+mnCQAMAu9opvQ
	(envelope-from <devicetree+bounces-293341-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 03:34:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ABC4D552C
	for <lists+devicetree@lfdr.de>; Wed, 06 May 2026 03:34:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF1C030325B5
	for <lists+devicetree@lfdr.de>; Wed,  6 May 2026 01:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5748121257F;
	Wed,  6 May 2026 01:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ocOo5lnh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D6A1C3F31;
	Wed,  6 May 2026 01:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778031274; cv=none; b=DgzummAd+qtoB4RLSCryejjceXAGde1C8jFRBGa72lPIDYZxYlYLS2/+VDE97EK4o+8c5bMOwErZWdcPLhMxFyIyAjKuVQxREHHY5ry39uKxot+4SoPhvSZFQGYj3zFyfBnfMOHvCF5ZYmYUAv51pQ5WDa71kNC/8lW+41CsuwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778031274; c=relaxed/simple;
	bh=CWNLM1J6uhkpFXGz72SpWfGs9Iw2MjmkRXey5qg2CFU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gvJ2CZK6N63xhgbQYAp8Ji7z8uYF41EQX3gSHj3HzYIKPiPSIgR2LJPVG0JrsdPgXtVLexIYWDR50WRM0tuwuffWs6xbPAfKXglaO55FNYIyxPmutqzfVQoor3dniyROCqmI5I77dq2eAQxQUNi7zrU8A1vO8rSpfAXf4e6fCi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ocOo5lnh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9DF0CC2BCB4;
	Wed,  6 May 2026 01:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778031273;
	bh=CWNLM1J6uhkpFXGz72SpWfGs9Iw2MjmkRXey5qg2CFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ocOo5lnh/r0ZBM6T8VswicxlE2q+UAS1DSQRTaDB2VkHHXhqKZTOk9TQL0yBHxYcQ
	 3l6KyGf7T/Ckmk8AxYO9u5InLcxZzAwu7BzlRj+kHQRtvD0OJwI8DBRw0YLJyGJ8ux
	 e7/LTIT26OfWNr1INVPeDodkzOdBNYVedl/zjElG0USDf1mQvkF55w4HWZ9KZCSmy1
	 m+3h5CDvw8XWd5HpSrGNC/HL9/mvCFnmX2HX96e7aGA22G4/X9MaK5jCqhf5JFR98S
	 JRwj6v2mYrjpJtdb83OK7nfApecgxxBvrEKdmd0p5wIEwgyn0saQTpJwtTH038joWZ
	 Ik0sUkswWWm5w==
Date: Tue, 5 May 2026 20:34:31 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Luca Weiss <luca.weiss@fairphone.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] docs: dt: submitting-patches: Remove possible
 confusion of combining DTS
Message-ID: <177803126846.267521.5941552104449093076.robh@kernel.org>
References: <20260428150420.121472-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260428150420.121472-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Queue-Id: 50ABC4D552C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-293341-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fairphone.com:email,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]


On Tue, 28 Apr 2026 17:04:21 +0200, Krzysztof Kozlowski wrote:
> DTS patches were always expected to be either sent separately or put at
> the end of patchset, but the first part rule explaining it used a
> "should be placed at the end of patchset" phrase which might create
> wrong impression.  This part "should be" was about order of the patches
> and applied only to the case when DTS is combined into this patchset.
> 
> Suggested-by: Luca Weiss <luca.weiss@fairphone.com>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> changes in v2:
> 1. Rephrase a bit commit msg, minor style
> ---
>  Documentation/devicetree/bindings/submitting-patches.rst | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 

Applied, thanks!


