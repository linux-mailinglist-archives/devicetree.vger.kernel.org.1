Return-Path: <devicetree+bounces-295369-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CI5NMJWOAWpyeAEAu9opvQ
	(envelope-from <devicetree+bounces-295369-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 10:08:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D6F509D64
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 10:08:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 593233026000
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 08:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773723B7B7B;
	Mon, 11 May 2026 08:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b="lHkPDpLO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.8bytes.org (mail.8bytes.org [85.214.250.239])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E08C3B38B2;
	Mon, 11 May 2026 08:02:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.250.239
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778486531; cv=none; b=LHo1WyOO6zX5AiZxqdDzCz/bghdllW3ebNeRHkzDEUfp/YIbXUH3HCZBr8WULZVrX0v6bkaqq655IX9mFopvdwBtEr4cvHxsJpPkQhCBYMvbDRh/nMU57NsCg4kCVpVovFdqbLHDTXZZ/I/ZLg0AjCJBK+KeSIussvqyF4LZvUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778486531; c=relaxed/simple;
	bh=C4+jOE7NnKqR3CmE/a0VMxJT4JgooAYRBeQzipN8SAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V5RU81+N7upcgbWPOOollB1OwGI/UPzGfg2tD5azhUqJr5iQMfKAwiRtsVS9gLjWuUTFDWlfYAZVxivhkRhUmVi2h6t09SHIiZVOgp36Mf6nEMXoAqZPyu7XjY94Nor73bNWwWEZFPbDneItB1Gd+7VQ4tmcrJs4umz6PhVlZqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org; spf=pass smtp.mailfrom=8bytes.org; dkim=pass (2048-bit key) header.d=8bytes.org header.i=@8bytes.org header.b=lHkPDpLO; arc=none smtp.client-ip=85.214.250.239
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=8bytes.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=8bytes.org
Received: from 8bytes.org (p200300f6af1d9600f5faa5cebd6c042e.dip0.t-ipconnect.de [IPv6:2003:f6:af1d:9600:f5fa:a5ce:bd6c:42e])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.8bytes.org (Postfix) with ESMTPSA id 723AC1C41F2;
	Mon, 11 May 2026 10:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=8bytes.org;
	s=default; t=1778486521;
	bh=C4+jOE7NnKqR3CmE/a0VMxJT4JgooAYRBeQzipN8SAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lHkPDpLOV9pYetKrrbAwRHCkzRl6i8mpLC6SS8PPg0h7g0QdV1s/ZQie2S+0lr1yz
	 Cc4DXNqfNTWcrDPeR0uwQHZIoJ9wLPiLX5knWOOdAbrUSWERFQW/VtVdFU4Wg+WKUG
	 sCwYDeh3if9B28GGoTCzG8QFUL8bThS1lWi7WviANes8QwJjxBgoQCRPKh2Z3HInWS
	 f6B6aX1MnPCniGWkMaPdJR7bMpj7OeECgY4gVTA2O0toQlILbjpE+Qe8pYkjFyo00V
	 vU1r3i6U3U+aFFjIOsIlCgKFL8a75vbjbD8eC5+3NLvH5B/WwlwI4m7T3fIeDg/pR9
	 EgAPWkXCqYuCA==
Date: Mon, 11 May 2026 10:01:59 +0200
From: =?utf-8?B?SsO2cmcgUsO2ZGVs?= <joro@8bytes.org>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: will@kernel.org, robin.murphy@arm.com, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, kernel@collabora.com
Subject: Re: [PATCH v14 0/5] Add support for Verisilicon IOMMU used by media
 codec blocks
Message-ID: <33nsz23rcstwznq6dnsuibndbwtoc767evshltj35kgysdg63r@fxhwobu53cww>
References: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260415072349.44237-1-benjamin.gaignard@collabora.com>
X-Rspamd-Queue-Id: 71D6F509D64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.90 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MIXED_CHARSET(0.56)[subject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[8bytes.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[8bytes.org: no valid DMARC record];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295369-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joro@8bytes.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[8bytes.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[8bytes.org:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Wed, Apr 15, 2026 at 09:23:36AM +0200, Benjamin Gaignard wrote:
> Benjamin Gaignard (5):
>   dt-bindings: vendor-prefixes: Add Verisilicon
>   dt-bindings: iommu: verisilicon: Add binding for VSI IOMMU
>   iommu: Add verisilicon IOMMU driver
>   arm64: dts: rockchip: Add verisilicon IOMMU node on RK3588
>   arm64: defconfig: enable Verisilicon IOMMU for Rockchip RK3588
> 
>  .../bindings/iommu/verisilicon,iommu.yaml     |  71 ++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  MAINTAINERS                                   |   8 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |  11 +
>  arch/arm64/configs/defconfig                  |   1 +
>  drivers/iommu/Kconfig                         |  11 +
>  drivers/iommu/Makefile                        |   1 +
>  drivers/iommu/vsi-iommu.c                     | 796 ++++++++++++++++++
>  8 files changed, 901 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iommu/verisilicon,iommu.yaml
>  create mode 100644 drivers/iommu/vsi-iommu.c

Applied to the new verisilicon branch.

