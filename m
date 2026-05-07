Return-Path: <devicetree+bounces-294213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICFpD4Dn/GkMVQAAu9opvQ
	(envelope-from <devicetree+bounces-294213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 21:26:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C65894EE080
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 21:26:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1886300D61E
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 19:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B8B447DFAC;
	Thu,  7 May 2026 19:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZStBxt2G"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F6647DD6A;
	Thu,  7 May 2026 19:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778182013; cv=none; b=BmeNbIi1dQepjCl5QRnj86dl1Wqw6T6jsoQqC1y28RE0/W8KLSKTnT+flJLWCH+PgZe2OvjcYBbxAuPScnktx11+FCunGAODAzs0v+yt9DsSBVJQ72cmk3DFWfvB0TUXZS+sQQ+XT4RZ5IMi7fKyWHXVMA6SWwwquyiQhalAmwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778182013; c=relaxed/simple;
	bh=CWoQLSknCfPM9HhQka4GqpdKh5SuMZsj0KISVOGm2kQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A2Lvu1iRh5zKmkflHGzUCxW2iLbrec8dh+rM11OTZbvXtFFLcH051o156bX3luq8BG4yPwxXOpvhqqCe8OYx1ZSN8Xt6nCyXJl3HGMSZ9Ai84y+SnbwEFuLFbrYihtuuX/l5YhAwHJI/B/Fgf6aNCl5kjCaDpokTXgvbHmzkANM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZStBxt2G; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCFFDC2BCB2;
	Thu,  7 May 2026 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778182013;
	bh=CWoQLSknCfPM9HhQka4GqpdKh5SuMZsj0KISVOGm2kQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZStBxt2G04rbxl9c+I/zkYmIGdMjBvSV7plTnA6ryDVwDzzJUh3Q/qRZCmtYeB8cS
	 viVDw8KFENEHtYTeuN7N8UwUyvWBOKcmO27Er2NF+v3i+ixok2AI7rHuTX0Op6/ABb
	 e3KEk9rUjhg93MAWTrvMAxc3Hr/85Pd/+rbZBXC/u+uQ1G25TAwo88dmgDdUFjO0fs
	 s/FIwAoPR5Q77QjsqxmGgfTzlheFzUQ/Vx8WlTR7U3IjjLl94oe5arRbgSWRFaTs7b
	 Gn7jX55FlTYcdmmuGoJydjq8NbeCMjAq+zq1vSAHUkxhTLpmVVdEt6Gds8NG2DRoGx
	 Nn6PTC7BKqybA==
Date: Thu, 7 May 2026 14:26:50 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	Joerg Roedel <joro@8bytes.org>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm-smmu: Constrain clocks for newer
 Qualcomm variants
Message-ID: <177818201019.2428078.9991648853065913089.robh@kernel.org>
References: <20260505071453.34000-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260505071453.34000-2-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Queue-Id: C65894EE080
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294213-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Tue, 05 May 2026 09:14:54 +0200, Krzysztof Kozlowski wrote:
> Many of SMMU on Qualcomm SoCs come in two flavors using same front
> compatible but a bit different fallback:
> 
> 1. For application processor, usually without any controllable
>    clocks,
> 
> 2. For the Adreno GPU, with some controllable clock(s) and using
>    additionally qcom,adreno-smmu fallback compatible.
> 
> Add missing constraints for Glymur SMMU on Adreno GPU and several other
> Qualcomm SMMUs for application processors, to restrict the clocks
> property to a specific value.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/iommu/arm,smmu.yaml   | 38 ++++++++++++++++++-
>  1 file changed, 37 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


