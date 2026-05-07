Return-Path: <devicetree+bounces-294180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +J9UDpbT/GlhTwAAu9opvQ
	(envelope-from <devicetree+bounces-294180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 20:01:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 742FE4ED21E
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 20:01:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C973A3011F31
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 18:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05A34330D28;
	Thu,  7 May 2026 18:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BaO1Yiba"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D67CE40DFD3;
	Thu,  7 May 2026 18:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778176914; cv=none; b=FSq8L90V64rXK3mxgKSnjS+BadgwLL0NIn8PmlI7++TnYaR3lBUB/w17mDdVpZEsd3j8HLc0+lMt4ARz3x2/xFbmfgPjgw7R+/LS7bQ5owi5Og1L9Mw2OtdNAqPN6OHFqwC+5PKPn7PUHeNasOuSZzb/X8eNdoyubTFHDbCXvXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778176914; c=relaxed/simple;
	bh=J3dtbGZQFQZuIYIfKBeMMs8pVLnSGZmKJs6jXEj3ulU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=omSQ75CBqUgOrRWMbdU0p6hJPNg700lhNbicyu3Eo41gwUK+Iiy519OwV65jyMVft+hoSidwqViKnQ/o40IH/mwC7bn1R8S8Mls4wxocZdDZkOeaQh1ER1tlhyidOMi5ax/qxf4lbs+8b+1D+iQ8n0c0EfYf1PibCoh3z5MEybk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BaO1Yiba; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 401A4C2BCB2;
	Thu,  7 May 2026 18:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778176914;
	bh=J3dtbGZQFQZuIYIfKBeMMs8pVLnSGZmKJs6jXEj3ulU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BaO1YibaiY+IyJqY51nSLyVcd4rpmDFMD6bcmePzPwcue8MXbSCkUm7RZ5P5PxLjF
	 12qLQTmRAK0WuY15ZVTEbFhCQrsui6VNRlJImcR21p9wxvLxR/2RLI6yICGEU63a8U
	 3n2tQS5b6stI2hFdOwrhEv87G7rHqOU9oekfyVbzCO+oxVm5f7CSd4VAsU3uNoIx2e
	 EDgP3Cp76E7YQpYVSBcC8aBEFcU13rjMTsh1lQ/BKzUT8aQcaPy+791hMUEq+cxxnZ
	 Pi9O3IWWPHZTG47bl8Xl+mobT/nfRVjuKB26Osxy2cqXVoHLBno6C9UPlCCQtiP6VQ
	 REqFkX5ig2dgA==
Date: Thu, 7 May 2026 13:01:52 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-samsung-soc@vger.kernel.org,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/6] dt-bindings: soc: samsung: exynos-pmu: Require
 pmu-intr-gen-syscon for Exynos850
Message-ID: <177817691083.2170439.4110317447956750153.robh@kernel.org>
References: <20260430-exynos850-cpuhotplug-v3-0-fd6251d02a17@linaro.org>
 <20260430-exynos850-cpuhotplug-v3-2-fd6251d02a17@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430-exynos850-cpuhotplug-v3-2-fd6251d02a17@linaro.org>
X-Rspamd-Queue-Id: 742FE4ED21E
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
	TAGGED_FROM(0.00)[bounces-294180-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Thu, 30 Apr 2026 02:56:52 +0100, Alexey Klimov wrote:
> Update the Exynos PMU schema to mandate the 'google,pmu-intr-gen-syscon'
> property for the 'samsung,exynos850-pmu' compatible so the driver can
> obtain the necessary syscon regmap.
> 
> The Exynos850 PMU relies on a separate system controller block to handle
> interrupts generation, similar to the hardware design of the GS101
> SoC. To ensure the hardware is correctly described, this syscon phandle
> must be explicitly provided.
> 
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  Documentation/devicetree/bindings/soc/samsung/exynos-pmu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


