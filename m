Return-Path: <devicetree+bounces-261986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHh1AlRNgWlMFgMAu9opvQ
	(envelope-from <devicetree+bounces-261986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 02:20:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6ADD3514
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 02:20:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F0B03031315
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 01:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B27B223323;
	Tue,  3 Feb 2026 01:19:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lgeamrelo11.lge.com (lgeamrelo11.lge.com [156.147.23.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDBD220F49
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 01:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.147.23.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770081542; cv=none; b=mMpEM/HXh4t7h+QTlzvpcKnnE8E0y9N+Guhc/iwuwZBgva2pDulhhBpicXp1J2kpg0OUYUKfMyIZld6uzCruRsp+z7pAkXx2iOb0YfGazbXSWrj+SGCOMsX5DCs1fbbi3k+FeMjk0G7CF8980bw877HbwNWdNUCb9XcwAVEf6cM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770081542; c=relaxed/simple;
	bh=dapWv/m2v/rbMM4yss06ex0jo373VH73EfwWrpGQgi8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=au9D9nTAgqU3IUi3sCgnoiM4ekDu+O/NoBj/Nys420yMqRswT02/sCyqDQAvAS2cSD0iVWf+TlgeDEcEGhtOV6V0E9NUEbVRkam3LGaicb+DX75s7M7aLDwWu5kPMxwK5xXgu96GAXFAlt/jX2HsNjk4aSaSfTNFV47ebQFx5Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com; spf=pass smtp.mailfrom=lge.com; arc=none smtp.client-ip=156.147.23.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lge.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lge.com
Received: from unknown (HELO lgeamrelo02.lge.com) (156.147.1.126)
	by 156.147.23.51 with ESMTP; 3 Feb 2026 10:18:50 +0900
X-Original-SENDERIP: 156.147.1.126
X-Original-MAILFROM: chanho.min@lge.com
Received: from unknown (HELO BRUNHILD) (10.178.31.97)
	by 156.147.1.126 with ESMTP; 3 Feb 2026 10:18:50 +0900
X-Original-SENDERIP: 10.178.31.97
X-Original-MAILFROM: chanho.min@lge.com
Date: Tue, 3 Feb 2026 10:18:50 +0900
From: Chanho Min <chanho.min@lge.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>,
	Kael D'Alcamo <dev@kael-k.io>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2]  arm64: dts: Initial support for LG1215 TV SoC
Message-ID: <aYFM+mHqhfCuWgRP@BRUNHILD>
References: <20260112053421.3185738-1-chanho.min@lge.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260112053421.3185738-1-chanho.min@lge.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lge.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261986-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chanho.min@lge.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6D6ADD3514
X-Rspamd-Action: no action

On Mon, Jan 12, 2026 at 02:34:19PM +0900, Chanho Min wrote:
> This patch series adds initial device tree support for the LG1215
> TV SoC and its reference board
> 
> Chanho Min (2):
>   dt-bindings: arm: lg: Add compatible for LG1215 SoC and reference
>     board
>   arm64: dts: lg: Initial support for LG1215 SoC and reference board
> 
> v2:
>  - Switched to "lg," prefix
>  - Dropped vendor-prefixes.yaml change
>  - Fixed DT coding style issues (validated with DTB_CHECK=y make)
> 
> v3:
>  - Removed changelog from commit message
> 
>  .../devicetree/bindings/arm/lge.yaml          |   5 +
>  arch/arm64/boot/dts/lg/Makefile               |   1 +
>  arch/arm64/boot/dts/lg/lg1215-ref.dts         |  50 +++
>  arch/arm64/boot/dts/lg/lg1215.dtsi            | 290 ++++++++++++++++++
>  4 files changed, 346 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/lg/lg1215-ref.dts
>  create mode 100644 arch/arm64/boot/dts/lg/lg1215.dtsi
Hi,

Gentle ping on the LG1215 series (v3) — Acked-by received, but still not picked up.
Any update or is it waiting in a queue somewhere?

Thanks!
Chanho


> 
> -- 
> 2.34.1
> 

