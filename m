Return-Path: <devicetree+bounces-257791-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8MwvIq2LcGkEYQAAu9opvQ
	(envelope-from <devicetree+bounces-257791-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:17:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA33535F8
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 09:17:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 90E145400C6
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 08:14:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462EB477996;
	Wed, 21 Jan 2026 08:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noaZ1R7t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142EA46AF30;
	Wed, 21 Jan 2026 08:14:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768983261; cv=none; b=X654VwVZgdfp947dpsPjTZOOnf40G4lmkRWptg2JiShEsnrB0nWa/gbVsRw1EqazKJ7YbtmStqZMgQK5Q35/77XhfyvxQAfoowmkLt8B6+BShmv7/qjSkrTIMV5wIE5xTKn4o2Bwg7pa1NxOfTagWMnJmid7JjiAsxYog4bwHZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768983261; c=relaxed/simple;
	bh=LUd6a+A/qmpOJ4h1J+lALT0u6YXdBVWgT++FjFAtcAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hn/GAePBCc8/s2qxj/gkXs02o7+b8yQ4NEK27aTD/FkYlos9ofyCQvwgFd0d4H2CvpCgLg7xccNo5iXX9bkwSE/4pE2MyvJ53KZPUFZHvDufiCVmFOXD+w7ZEfApuu2Md4S4qP+4YwdeGMiWg1jaP2696MziFXq1eYxFoOIG5JY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noaZ1R7t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13C49C116D0;
	Wed, 21 Jan 2026 08:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768983260;
	bh=LUd6a+A/qmpOJ4h1J+lALT0u6YXdBVWgT++FjFAtcAE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=noaZ1R7tUFKK9vwfLJTtv/iJ2yo6C0dn6JZRcFS92NhtVmdIg/BYhAgUJ0h+g/UdD
	 SDe6I+rjF/1g/eig0E0opc/l9nWvM4PYNXrJH9FzBN8t3FEjxqoErfbHssu895OUNq
	 6e1KHmgdtJ8E0V39rWYrWeKw0mRu7d1KRqfUMypq+GMuAboHg2peNMhT3k88pikfLD
	 NklIRpuWvfro/o4+5bjEOMxbRaGmBzklhdauYeAVpnMfOAmlbRyNaySxtW70XG168H
	 IyoLPJF/HMHHLFt5urIGseiyif1aS92vJBJ5xaKyjSlOVQnENiTV46m0iQuKXHvfSX
	 2IIxapw68XDIQ==
Date: Wed, 21 Jan 2026 09:14:18 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Shengjiu Wang <shengjiu.wang@nxp.com>, Chancel Liu <chancel.liu@nxp.com>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH 1/2] ASoC: dt-bindings: fsl,mqs: make gpr optional for
 SM-based SoCs
Message-ID: <20260121-snail-of-magic-order-e83d16@quoll>
References: <20260120150329.1486-1-laurentiumihalcea111@gmail.com>
 <20260120150329.1486-2-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260120150329.1486-2-laurentiumihalcea111@gmail.com>
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257791-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: 0DA33535F8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 07:03:28AM -0800, Laurentiu Mihalcea wrote:
> From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> 
> For SM-based SoCs (i.e. MX95, MX943), GPR configuration is performed by
> the SM coprocessor. Thus, the programming model needs no handle to the
> GPR node. Make it optional.
> 
> Signed-off-by: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>
> ---
>  Documentation/devicetree/bindings/sound/fsl,mqs.yaml | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


