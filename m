Return-Path: <devicetree+bounces-305824-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YQreOoI/H2qGjAAAu9opvQ
	(envelope-from <devicetree+bounces-305824-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:39:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 535D0631CEF
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 22:39:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="HNHVd/2a";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305824-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305824-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 42C7730D5210
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 20:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C8D5382286;
	Tue,  2 Jun 2026 20:34:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA8F381B00;
	Tue,  2 Jun 2026 20:34:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780432496; cv=none; b=fe01vxnY2djh5IuoiCocxmgNbNd6CJZJGKKllc6T71omXEOowi77TqVEsV6CUYcq8HJwNUqrdThqtsYFXzeuuw0KH+EDk7eqQapheLqp4WG5WfrdurIAGA7stzDnarTtMiS8ctWCIj/wbX3v7Ez5D+Nesauic6xmAZrKtJerqXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780432496; c=relaxed/simple;
	bh=bUjRx77sF6RwhrLsxe4flX9SiJMz5vmYCng1Ek1uNAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q9oD842644bWsqs/vTlCm+cgWOZDli/TFH47zpf5UkLN/Nx4kY/jgWUXTr5weMCMWMc7/pWnccMG0t8LLhTXg01m5XIoG458pQlXdJHXNvJVGMnM8+AWYOHhiyRBo5A5VsjC3LporgiCWDpp8qE8Ax1NYnzGX5Kds2nrzhv7j1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HNHVd/2a; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 798D61F00893;
	Tue,  2 Jun 2026 20:34:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780432495;
	bh=+0lUFj5NSuJu+BZxreOeHpODEmTQ52uq2xjuqL8vQ3I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HNHVd/2awJCfMsilFdMLK4aLaBZ+tywGoyXT8E5FNkjf/rzA2a/pu8rvl4eZiQPzA
	 NSX3MXQ92EQJV1M1WMdDiMtBy5XSDeQrk36BfIX03M6CIA5OCvbNk5xs9vKg8ObsMg
	 P2QDDjKzKcZVq7doJeMhDWqnQMomjLEaCCDhXI4UHqdo8P1vInyUg3kdwFnPFWnTOb
	 7nHWScd2SzIPNRElYxVRlEvF2tKOYBT5ghf9120vTwbyHgbWpjPK9JAuGaJf3quxb7
	 kVEgXq04EM/uZrv34FYN81MfwLEgiSQ9QOw7glkPsZXuP63z6yaqHOy1cZsDMiOlGB
	 0TD6plX5k54cA==
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Correct and add constraints for Hawi, Shikra and Kaanapali
Date: Tue,  2 Jun 2026 21:34:38 +0100
Message-ID: <178041486638.4030574.14208925839851561422.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260520110913.87271-2-krzysztof.kozlowski@oss.qualcomm.com>
References: <20260520110913.87271-2-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-305824-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:robin.murphy@arm.com,m:joro@8bytes.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:iommu@lists.linux.dev,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzysztof.kozlowski@oss.qualcomm.com,m:catalin.marinas@arm.com,m:kernel-team@android.com,m:will@kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[will@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[will@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,arm64.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 535D0631CEF

On Wed, 20 May 2026 13:09:14 +0200, Krzysztof Kozlowski wrote:
> Previous commit 75949eb02653 ("dt-bindings: arm-smmu: Constrain clocks
> for newer Qualcomm variants") duplicated constraints for
> qcom,sm6350-smmu-500 and qcom,sm6375-smmu-500 - these are already part
> of previous "if:" block.
> 
> It also missed enforcing one clock for qcom,kaanapali-smmu-500 in GPU
> case and missed simultaneously added Shikra and Hawi.
> 
> [...]

Applied to iommu (arm/smmu/bindings), thanks!

[1/1] dt-bindings: arm-smmu: Correct and add constraints for Hawi, Shikra and Kaanapali
      https://git.kernel.org/iommu/c/aab556d118fc

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

