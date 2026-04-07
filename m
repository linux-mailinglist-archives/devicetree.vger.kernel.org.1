Return-Path: <devicetree+bounces-285427-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UBcnIVU51WlY3AcAu9opvQ
	(envelope-from <devicetree+bounces-285427-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 19:05:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA12C3B22FA
	for <lists+devicetree@lfdr.de>; Tue, 07 Apr 2026 19:05:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A7FB8306A1CD
	for <lists+devicetree@lfdr.de>; Tue,  7 Apr 2026 17:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 738DF3D1CCC;
	Tue,  7 Apr 2026 17:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAowgwY8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDB23D16E5;
	Tue,  7 Apr 2026 17:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775581432; cv=none; b=O+TtJxoKn67luB3HQzgMol1mYBVO42y9E7MMabC/FGd3KwwPO6FsbsorL1doLY+dmTukYqt92kMBYMOWxWDaHGJTb3lP/NYijIluA5X7Z0lh7HyX94nTQ2WLwJY+iAyZti47iQ5XJFAU7SZ0JFNDmHKXujfm3WogRxEtMg2E5/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775581432; c=relaxed/simple;
	bh=cvSfD19P7uTmsATu2GySWCnv/dAXkRtQ9Eb0rF3LY/I=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=vDzmekMBBkGY5c5VYIhZKMLtllw2bx1M6uI5Inn/HqScI9Xy++ku+b7PHaQYIPQNsAMsfZ8/rrKM4a5jWDMlryninB/B0XE3nuK3UnpG8iiDK4n9MOp7Oc2r/D5P9FL3yTzp70dsGimkpiTsgm8EQj1fkmzWnSBPf1hH7r1NpK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAowgwY8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D687C116C6;
	Tue,  7 Apr 2026 17:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775581432;
	bh=cvSfD19P7uTmsATu2GySWCnv/dAXkRtQ9Eb0rF3LY/I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YAowgwY8frarC3ngk17I+k/t9K/0gPezR4wsmrg2wUodIyeKKKyY3f4j83jovC1UG
	 x0OU8wils+E0iyIsFAs2LHttPoJ1px8fDhbFmOePXHRoZPtpsH4/07+G228uFFzCP5
	 1DDiOPyZ1BQgTnwHtMatOWcIqpeFJDH4X3cj63X9gtA3BK1EPpzgqCA6PgQtxFOBkF
	 Sk3AT55vezhVu9+R7EMhGolvc4eHRoNKHQGvJPQMJoYl+WVHcmj6o+8MOiCqPU94or
	 3/x+qmiof/kn6hH4t/ofc8JN9+BMEiHqde+BtiKTUrvzpWJ5/PEsaxcT+1XhnvbhVL
	 bNGXJMsjAZVpg==
From: Will Deacon <will@kernel.org>
To: Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Robin Murphy <Robin.Murphy@arm.com>,
	Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm-smmu: qcom: Add compatible for Hawi SoC
Date: Tue,  7 Apr 2026 18:03:43 +0100
Message-ID: <177558103339.2252830.5428863486031269927.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260403080956.2714415-1-mukesh.ojha@oss.qualcomm.com>
References: <20260403080956.2714415-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-285427-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[will@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,arm64.dev:url]
X-Rspamd-Queue-Id: CA12C3B22FA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 03 Apr 2026 13:39:56 +0530, Mukesh Ojha wrote:
> Qualcomm Hawi SoC include apps smmu that implements arm,mmu-500, which
> is used to translate device-visible virtual addresses to physical
> addresses. Add compatible for these items.
> 
> 

Applied to iommu (arm/smmu/bindings), thanks!

[1/1] dt-bindings: arm-smmu: qcom: Add compatible for Hawi SoC
      https://git.kernel.org/iommu/c/5e8323c3d528

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

