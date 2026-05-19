Return-Path: <devicetree+bounces-300198-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mB5QK12IDGo1iwUAu9opvQ
	(envelope-from <devicetree+bounces-300198-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:57:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0374F581D5A
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:57:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C760E3227C3A
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 15:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E88A403EB9;
	Tue, 19 May 2026 15:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py1H1y27"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE343EA95B;
	Tue, 19 May 2026 15:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779204241; cv=none; b=NxDiF3a35Wq8yaYPWN6BiYpeXNLuuZMLA3vmVh7eGOq3woVbCmseqCrWhJFSKA9VMRQs9UhiJiiJPxvF/he6l1xtnbgIE5xTCieDpZy5cYSdkAJR4rNojjgIElSz8T+y40YT12O+8JxFRG31iG8UBdWMWs8yDHpujPeqL9+MVzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779204241; c=relaxed/simple;
	bh=D/PAHA23j1HXXTU2QCXdtDypXNlUffAPZMXfwziQEQI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Zz2B0KajfjbEzjYhvbWLLyyaPfFw+pl/qgQ2XUx1Z/RRokH7G5efeEzlBagOwetKcce6MT9Y5dnJ0C/KjdcWVocVNfavbSLfSHE9B7InMNWbdLrCbtAIVE6HxYQWl2fGzGj4bxW0bSFp9me9+TWF23Bc7PVuAhYLZ4/Hqgz89pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py1H1y27; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A2FEC2BCB3;
	Tue, 19 May 2026 15:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779204240;
	bh=D/PAHA23j1HXXTU2QCXdtDypXNlUffAPZMXfwziQEQI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=py1H1y27Qw9ckoMFQ0oCPrD2GbTcv10C8kHet4RxQHAzv1OvXWprUioT5Pvc11PM1
	 T3u4DsC+oCRxG3x/TsuIYMdQ7EE/2D1yjgKuDARYIR/cIhWfyIS1/EpMBEHMHHMFhk
	 0nRchv8MLrsWONoS23+mF2L9yUrA1NNiXMcoVQwZAWdS/+nC91BM+Sh88nbTv8paHS
	 LH4a1U5mog5VaIkY1eTvN5/aNfg5u/Xi8ofGj+F6MF+uQBUipZxf4/9Jl9LJHmcgwe
	 3NNWrrE5KEFHEsR2ylArzy/KJNAClKTYrkZvVwKlUhwdnn1g3bf70Sq7c13oNiH1np
	 iA6pQEdX1RJsQ==
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm-smmu: qcom: Add compatible for Qualcomm Shikra SoC
Date: Tue, 19 May 2026 16:23:01 +0100
Message-ID: <177919159473.817912.7697068787428918777.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260430-shikra-smmu-binding-v1-1-1a28572ebccf@oss.qualcomm.com>
References: <20260430-shikra-smmu-binding-v1-1-1a28572ebccf@oss.qualcomm.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300198-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[will@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm64.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 0374F581D5A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, 30 Apr 2026 17:54:44 +0530, Komal Bajaj wrote:
> Qualcomm Shikra SoC includes an apps SMMU that implements arm,mmu-500,
> which is used to translate device-visible virtual addresses to physical
> addresses. Add compatible for it.
> 
> 

Applied to iommu (arm/smmu/bindings), thanks!

[1/1] dt-bindings: arm-smmu: qcom: Add compatible for Qualcomm Shikra SoC
      https://git.kernel.org/iommu/c/5091bfe5d4c6

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

