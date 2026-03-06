Return-Path: <devicetree+bounces-271762-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mO93NyUZqmlfLAEAu9opvQ
	(envelope-from <devicetree+bounces-271762-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:00:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B22D2199BD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 01:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 192D53003BFB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 00:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14FE74502A;
	Fri,  6 Mar 2026 00:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdBAzlra"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58584A0C;
	Fri,  6 Mar 2026 00:00:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772755232; cv=none; b=rNQJE36z162GFrapL7w5+GMf6G1eZUFaVbaQ3lhck3CdEpMf3hRUv8hYq4C4v2Wj/QmOwwhuH4GTwQxU7wYyKYfTb0ODqQaSCKg9gHXwIV3GinJp+xyNY3lOkreJg64QJuKXRtprRJvXxn5tGNjLFOed/Icr/BjCTtT2jmQkryU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772755232; c=relaxed/simple;
	bh=CTb2hC2lLdOPKHXZKqC2oj1apJLsYH2fv+0Gg5r2wWc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FmosWP9xUIasCJz16dKdkwxyHYLBwt5jHb4YaRMOVIeyjQHCuhX0N+yDybWUYUvBHJKB1mH8xk31ATldyAYmsEj6arszUKPGm5FtgHEFl1KUK8OaTV5NAXSkLwZ8rMTTqeR70nysaGvtHvlidykvL5EY0nnaM2M84jIah+Zu11Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdBAzlra; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 623A4C116C6;
	Fri,  6 Mar 2026 00:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772755231;
	bh=CTb2hC2lLdOPKHXZKqC2oj1apJLsYH2fv+0Gg5r2wWc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kdBAzlrax82aIF5fwKNMWtXxe+o2/2hT1EJc7j9V02PKVMnHrHSIKNi0k/mYNld4r
	 y5PBAvpoPS5dP3BYBCE4W+LblI1tfcFmPI4QHvhx6piwNc4Y85NYwYtW21I5/6kdW5
	 30eFl/pq1NqtKbG8inBXaqvoesWZBWP89MP2oCyU+eDTsLSnW56QvPDq/DHtdI3kOx
	 9vt9RZTh5/NYgt8Eff+Ys4IIcIsbTxmABEO9HqBM3YCHu28+mH7tUPnP2NIxxobdqC
	 hoqe2ODC5TXZAdUuww7EIJcyFG9b0hbr266SoRnUCGsNuzKACVccAfiIb5K0i1uQ+v
	 oJjq138X9PMeQ==
Date: Thu, 5 Mar 2026 18:00:30 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
	Joerg Roedel <joro@8bytes.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Add compatible for Eliza SoC
Message-ID: <177275522958.815424.2683283742395688918.robh@kernel.org>
References: <20260223-eliza-bindings-arm-smmu-v1-1-7a35a76201a5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260223-eliza-bindings-arm-smmu-v1-1-7a35a76201a5@oss.qualcomm.com>
X-Rspamd-Queue-Id: 3B22D2199BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271762-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action


On Mon, 23 Feb 2026 10:46:39 +0200, Abel Vesa wrote:
> Qualcomm Eliza SoC implements arm,mmu-500. Document its compatible.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


