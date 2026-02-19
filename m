Return-Path: <devicetree+bounces-266592-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMVcExPDlmnjmAIAu9opvQ
	(envelope-from <devicetree+bounces-266592-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:00:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF6915CE3B
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 09:00:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5125F3007B1A
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 08:00:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30181332EBC;
	Thu, 19 Feb 2026 08:00:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MS84KN2f"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0BC327783;
	Thu, 19 Feb 2026 08:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771488014; cv=none; b=SgdeGViRBXXVTecMpndcRgkQcmhOuCbYhykZ+meOjbsCd24VBAaIIcxnqftyXUSA3NGw6MN55XY/VMiF3vnFnzxANrnhLFJfTB2ojUCwtSxBKyBwheYT6/c4NRn/M1rShRgEwEF3xOBRGOQUd+qK/es5NT7uCwggIBUnRwMxgzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771488014; c=relaxed/simple;
	bh=XYlwtE2XShbCHOdPpCqzHTJ5GsO7ALsdm9+A0QCFNX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HGOpPz6rChMOiEo/J4F5+KgoK8dvfX51xpiFOTHldArav+e12eXPf0L4zXifCfGB/vhotXTAHty9b4/NW+dmBxPao26vStLOyayxd7avOmXLaKsBGDcq7h0cE2kFk4QLMAD+cN3Wfj6jhi1oVZI2LgnVIf1f+PgopqzW/Grt3dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MS84KN2f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A49EC4CEF7;
	Thu, 19 Feb 2026 08:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771488013;
	bh=XYlwtE2XShbCHOdPpCqzHTJ5GsO7ALsdm9+A0QCFNX0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MS84KN2fdxviSN9p3/EqdDp+IzQawl3ikh1DsXDbFpfCsVp2eSPlmT/cU4N5Duw/A
	 QNgs4Sg2MyTDq+bw36cs9ydIhGK4ZvXWqjCLNQ8JzwqpJJPR2ZBrGfd44B/f1HZhQ3
	 r8+5zFr2BGBMo8akxdF3UhWD8vsJtWXrfEBB9TDeVhqdcLnFzvBX9Sa2Ars23sOGDn
	 ZjVCbSLvl5R3Qg5y+A2WVhHHl3mzMNTUrlYQc2et9kaSSbQ1Zj5q5oxWv4o0uFgc3N
	 o5cUxex2xo0lyGKDbyjFrMwH7uszkNFpyXYq8XKx/sXkEBslELKs9ex1kB5Cib24rT
	 LghGlz6D2E0QA==
Date: Thu, 19 Feb 2026 09:00:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Max Merchel <Max.Merchel@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux@ew.tq-group.com
Subject: Re: [PATCH] dt-bindings: arm: fsl: correct spelling of TQ-Systems
 and TQMLS1012AL
Message-ID: <20260219-pragmatic-cuscus-of-eternity-e25fff@quoll>
References: <20260218132413.32250-1-Max.Merchel@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260218132413.32250-1-Max.Merchel@ew.tq-group.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266592-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AAF6915CE3B
X-Rspamd-Action: no action

On Wed, Feb 18, 2026 at 02:24:11PM +0100, Max Merchel wrote:
> TQ-Systems is written with a hyphen. Correct the spelling.
> The correct SoM name is TQMLS1012AL.
> 
> Signed-off-by: Max Merchel <Max.Merchel@ew.tq-group.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


