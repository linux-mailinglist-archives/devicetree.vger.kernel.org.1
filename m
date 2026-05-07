Return-Path: <devicetree+bounces-294187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML5CLu3X/GnxUQAAu9opvQ
	(envelope-from <devicetree+bounces-294187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 20:20:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2084ED582
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 20:20:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 26232300F5C5
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 18:19:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 891D73F6600;
	Thu,  7 May 2026 18:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FphLEBkW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CB83C0600;
	Thu,  7 May 2026 18:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778177962; cv=none; b=AaKJEkbT3GZl4AMzdFYuczctt/xznFeghvu5UgwS3IDqIUGLwVuHS7UQceBX6hvXwT8LXFSS8XnEisuw1bDu2JeFttin4liou9EW/+/WV6ZTjI+QENdc4OflpKkQDlfrgGqR10Aucoy7+QXFnHwBpNOCh2aLhvZpOH/O+bC93ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778177962; c=relaxed/simple;
	bh=L13Ya1YLtr11/2vSHCsuWV2gqbbrk3THnoiNxoiKkoE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WU2iz9/P3y9p5PFHAw9inGwnQHmj/2CjVpP/40rKxDdodqKRtdb4HnC0LqVcKLNRNEOKMYDUAGUVE2zziSUt6jpKec3YiiFaqTUdKBACG7qffBGEFxodDAGpu4ev1qQJ8EmHTINiX+NTSPpV720+OMZ2pseDr5NXTDlD1cqw0Zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FphLEBkW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCAA8C2BCB2;
	Thu,  7 May 2026 18:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778177962;
	bh=L13Ya1YLtr11/2vSHCsuWV2gqbbrk3THnoiNxoiKkoE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FphLEBkW2BByd/51JTrKOETzSTkxz355vauLF556Z550I3Vp+8XDuYYZdq755prvL
	 WEhJgJuudOzkpTdDGu2hZkOA5mq9htHiumi5gPnpJx70xjrxGpPwTLkiQtnTcaDq80
	 ALyaa1qMgzvHEALZgpRzHSTnw1BxE4P0WOp4m5UIEbojP0vQvv+sCIwe+JOwwKLl8p
	 iXM5jj/05LCMSoJcztk1bKnc6ErOKN4l6CFxzsreiVSDmWiWpf6+9KaCtwehcKBq1M
	 /jMMUbrLADPOk54Y4a6KNJbLXzl/u6B6QjjDN36vJrmJukVXGmxgsRNS9fIkOaqZvN
	 C9d2y1omsOzEg==
Date: Thu, 7 May 2026 13:19:20 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	iommu@lists.linux.dev, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm-smmu: qcom: Add compatible for Qualcomm
 Shikra SoC
Message-ID: <177817795959.2206284.11592002109697803806.robh@kernel.org>
References: <20260430-shikra-smmu-binding-v1-1-1a28572ebccf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260430-shikra-smmu-binding-v1-1-1a28572ebccf@oss.qualcomm.com>
X-Rspamd-Queue-Id: 1C2084ED582
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294187-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Action: no action


On Thu, 30 Apr 2026 17:54:44 +0530, Komal Bajaj wrote:
> Qualcomm Shikra SoC includes an apps SMMU that implements arm,mmu-500,
> which is used to translate device-visible virtual addresses to physical
> addresses. Add compatible for it.
> 
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


