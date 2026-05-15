Return-Path: <devicetree+bounces-298051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKTZOkLsBmqCowIAu9opvQ
	(envelope-from <devicetree+bounces-298051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:49:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EA654CBB6
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 11:49:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DDCFC313512E
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 09:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD37428492;
	Fri, 15 May 2026 09:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="as/Y0OGv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF304266A8;
	Fri, 15 May 2026 09:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778836085; cv=none; b=NZ2G5M7jVozZTvC+WDfop/dg669g9yCYehE+SP+Am5pxKj7e1sS198G/WBbGaJMns6SAOyVoyEmIJRcuds6RdU2vOoeyISqnY4tcwg17rMUj2lUATtXlByZ6GyKWOrlaH2M4tO/OXa/XQksxk1EhUqVFbvl+yUcaGdjHEtgOH+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778836085; c=relaxed/simple;
	bh=EGDvlXSZJJdhyw95UvC9o4yaYlh2x+sp03RxqtQ0GNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mU5VUYFGoszk9ZX4EfzYWo1pFhaenQk7M6WGS2Z/sUxqKtBEtgOuC2A8HMKxZsfDaBJVR34GSdgLAZQkA4fF9JnzDM5h/K3ypSa/RhepAKhfv9d6K1m+UHPVFrLWdYqogdPa0XX2feIduU7eGX0rwV98eMe5U851v+A5sO4bQRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=as/Y0OGv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EAA8C2BCB0;
	Fri, 15 May 2026 09:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778836084;
	bh=EGDvlXSZJJdhyw95UvC9o4yaYlh2x+sp03RxqtQ0GNM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=as/Y0OGv5ybndniXqhFo1XfDzUY6bIvFOD3hPYTZ22sQFP6SVqk63Lv4jLHWfebEX
	 RpN292YFb+VHCVAQ4WdCN6OGDDswM1ifQHi+o+uZCSv+cbY3tW3pJgVz7f9CxdaGRC
	 TUTR39MCH6Fu6Qrg69PozC01DZnzI+h1YiCHRHs0sCk7omxoz3NQDkPRj8J+hH70uf
	 Ch+iuN54nO/wT7ldzXdMPXUz8Q8/h+9liJlgGVMAzsdt1CDT1J8WHtdOqxRDlR+y5F
	 REnEGp02CO3MaPIi2ZVaPhC79LhHoH2hc1DRGWW/Wql+hZ+GxAiz9FWB6j1t+3/llZ
	 N+0ZlaSE7vbMw==
Date: Fri, 15 May 2026 11:08:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: sdhci-msm: Add Eliza compatible
Message-ID: <20260515-meticulous-mustard-swift-e0fec4@quoll>
References: <20260513-eliza-bindings-sdhci-v1-1-b2cae44163c1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260513-eliza-bindings-sdhci-v1-1-b2cae44163c1@oss.qualcomm.com>
X-Rspamd-Queue-Id: 79EA654CBB6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-298051-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Wed, May 13, 2026 at 02:19:37PM +0300, Abel Vesa wrote:
> Document the compatible string for the SDHCI controller on the
> Eliza platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
>  1 file changed, 1 insertion(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


