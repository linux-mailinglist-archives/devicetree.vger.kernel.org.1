Return-Path: <devicetree+bounces-281120-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YHudHdAKxWma5wQAu9opvQ
	(envelope-from <devicetree+bounces-281120-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 11:30:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB4E333617
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 11:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BBD5B30CC252
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 10:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A6043A1A41;
	Thu, 26 Mar 2026 10:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQwS/ni7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D491036DA06;
	Thu, 26 Mar 2026 10:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774520019; cv=none; b=k9h7WCb1gW4Nyworf+9FGyzoA4UWd6aeKTQ4EZS7yUAa3loCjEHU3dl/gBLvzYRacn5qwqAzpD1HH3W9mQTlckzEQawzxPyEbLb6O3ljgm0h6g0Xq9+iQyQbro/ZUZMoRR5XkpFTa6loffbfi8OEgqvGsHd4zpuw73S5EOI7CnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774520019; c=relaxed/simple;
	bh=cV1UWVYgX95/a2/Q2aPKcG34dkwNFo71mKottAeXiKw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G/7tDM7yF/iErkM3n4xrS/yTHavqB0Fpb/p3QTv48szy7nua3T2Z788ByMKWAH6zRxrJPSBaXxu6kwvOdHE/oVXym+bsUgguLMOXW4D1Gfc1wgWJQmfMXJrwi9yxeIZI2/ZLjL8zCJs3PoZJ77eZlsvdK3JRSWKaVH4B70eRMOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQwS/ni7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0CD16C2BC87;
	Thu, 26 Mar 2026 10:13:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774520018;
	bh=cV1UWVYgX95/a2/Q2aPKcG34dkwNFo71mKottAeXiKw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kQwS/ni7QVXLaFYsqYDC/Z9BlGLvJmh5xMNbVs6knGSDFz4zXKaXhVv0Vq/UAY/SU
	 ytrh8jRmdVinrZK/zLFT9XIhlpav7bseVNbv6jo857nz+YOMXlQTt2okCUSE8AzVSh
	 +XsVp19yQ1KTOi1S5IdD2PUmWvEGjfKeeXcF0ZjdyUdhX9NU2WP4/bU1RduCEEcByO
	 9U9tQxQFkHwTT0A+MLjEF3LWep4pkANFD+1C0tkpMjeBxJHEB4Hjlwsvz0yAqBHc4+
	 Jv0heSow9fWtmDnBRNzee2eKfCCKuTALuDzpsilU4KkzonpjQQ2sP05Kq4GXZaALjG
	 ABQmNBhPJ5DIQ==
Date: Thu, 26 Mar 2026 11:13:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-msm: add IPQ9650 compatible
Message-ID: <20260326-bipedal-organic-hyena-0aeea7@quoll>
References: <20260325-ipq9650_sdhc-v1-1-53cf7ba11087@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325-ipq9650_sdhc-v1-1-53cf7ba11087@oss.qualcomm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281120-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DCB4E333617
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 05:10:19PM +0530, Kathiravan Thirumoorthy wrote:
> The IPQ9650 supports eMMC with an SDHCI controller. Add the appropriate
> compatible to the documentation.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


