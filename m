Return-Path: <devicetree+bounces-294203-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE3VF87j/GmGVAAAu9opvQ
	(envelope-from <devicetree+bounces-294203-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 21:11:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3D24EDC1A
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 21:11:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 796DD302FB43
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 19:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0DD03EDAB2;
	Thu,  7 May 2026 19:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4DKPYLm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5F43A759E;
	Thu,  7 May 2026 19:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778181025; cv=none; b=hX5xA5zCOg5HOri0+HtgDfhI/UyfOpZnJzX+71RxIX5g2Pj6u7KJWBTyyVltFfLWFP9iDWQ4e60k8kM4Km823fGk2jFc6PHGPx9gb2F/JM7UR0pUw6UOwWHPiwTiyNnf5vMADojQlvIATzJuhtLIX+nodZZh6bd8WLCzikPYEio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778181025; c=relaxed/simple;
	bh=92a47Yrm0EFCck+SA8MtVTLouVrXOvrFH0ZlXbIjit8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=njzHR/b1aqOTRJboejqZIGXJonLAycsA/nw3i3Z2LR739vKVkQMpn+NAtCmj0ynd5Uh75wJ8lcUR1JvpCE3MsX3YI4eqiU1RRWLN1G8HDlbmyCa65hqYrn5ivJnEvdsd9y886KHKXNPcTj0B25roag+wqMtDYbSi62tBcsbLvFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4DKPYLm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10866C2BCB2;
	Thu,  7 May 2026 19:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778181025;
	bh=92a47Yrm0EFCck+SA8MtVTLouVrXOvrFH0ZlXbIjit8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b4DKPYLmJ/jQ7aliCUbzhR1JVZz0l5rcfAXa/RsvG9Vd3hO6HNV6eOFqYyqx7NNkE
	 InypQbEUJPkOeu/Ls3p56nDrHiCMX5qUFVavSMAxkZ767pgSnG8vk1K1gK838IIjUg
	 gy7Z/O8GezNjsS10VZAwyJXF/6/6bpR26G9VsPzFRwwvhbMwo7J8TBOzlh1jzrskIw
	 AiMg3DPmNQwippJdQ0PaKwQUo73ZyJeNgPRgubQA0Ggz+n32YG5LM44IfGh9yIyDYS
	 fgogalTyZsKSebJDe0p4rFK3Q9bXXuGJvKsNcuCKur+ePGF5q2MD3k/YED708PdPkD
	 a7MD6ORoL3z7A==
Date: Thu, 7 May 2026 14:10:22 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>
Cc: Yixun Lan <dlan@gentoo.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, Alex Elder <elder@riscstar.com>,
	linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Yixun Lan <dlan@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Paul Walmsley <pjw@kernel.org>, Alexandre Ghiti <alex@ghiti.fr>,
	spacemit@lists.linux.dev, Longbin Li <looong.bin@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 3/5] dt-bindings: PCI: snps,dw-pcie: Add msi-parent for
 msi handle check
Message-ID: <177818102236.2282368.7598186704669849987.robh@kernel.org>
References: <20260502101319.2364052-1-inochiama@gmail.com>
 <20260502101319.2364052-4-inochiama@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260502101319.2364052-4-inochiama@gmail.com>
X-Rspamd-Queue-Id: BD3D24EDC1A
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294203-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[22];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gentoo.org,google.com,kernel.org,dabbelt.com,gmail.com,lists.infradead.org,vger.kernel.org,riscstar.com,synopsys.com,eecs.berkeley.edu,ghiti.fr,lists.linux.dev];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Sat, 02 May 2026 18:13:16 +0800, Inochi Amaoto wrote:
> The IMSIC device on RISC-V based system does not require ID
> remapping for MSI. So this device only needs "msi-parent"
> property for IMSIC-based SoC, and the "msi-map" is not a
> necessary property.
> 
> Add new condition for msi handling on IMSIC based SoC.
> 
> Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
> ---
>  Documentation/devicetree/bindings/pci/snps,dw-pcie.yaml | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


