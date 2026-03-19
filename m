Return-Path: <devicetree+bounces-277896-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG8CEPsnvGkxtgIAu9opvQ
	(envelope-from <devicetree+bounces-277896-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:44:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A773D2CF044
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 17:44:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 57DC7306776D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 16:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90AED3ECBF9;
	Thu, 19 Mar 2026 16:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/IoNtNY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F8B3E95BC;
	Thu, 19 Mar 2026 16:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773937583; cv=none; b=T0HbrWkdw+wSRrm5qLATIFk5Z9IdAMmGef4v4Vd7qPMs1z8UMke32KwlSWHO1KpsffuP1p9g7L2TNlJcPJ3TDNN0T2yRsTJMDqksx9QH9V4/osF8SpcHH8JT7MuhiwOBh+my/5ifBouXEvsGBrfsEAx3z/ZNAO1EbFHQYnDPYUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773937583; c=relaxed/simple;
	bh=VlfEhZSHWJ/d6WoSp6w9E8+o7tdb5q7lCZgsb9Fy0oU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z6qndMhaHMvMZCfLGEXw28AF93SUSkwguHCm078axWJqHaxl0A+uPbfEkf7sDQM+nZ1nWg9EmWCia/1SwuI6OvQoUqVtkQRFR9+mOmQIPgM1A+GeM5g0ks2/uIuazhrQyAIzsiLRhWlyt5kg6OKmf2cqBp88kOrWOHx0gIB9Yeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/IoNtNY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2048C19424;
	Thu, 19 Mar 2026 16:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773937582;
	bh=VlfEhZSHWJ/d6WoSp6w9E8+o7tdb5q7lCZgsb9Fy0oU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=V/IoNtNYjHJdiHRBVTroucToO5jBIF79lHKQLHYcQCLFvTtuLhVeEUDprxXzXGoyw
	 Af4DFHBvfTUdOyN3LATVmwvQC+ePdcCnQ9DwtbfZC9j7qj4UCn3cjhdR4Ot5mPU+qp
	 ioTfEEJNpc+jNWQrRnbszONW3ez4XmWbSCcx0i9rGVnWTarIJ5XCfp+nS7mCWAkZDM
	 xJNkaTgCPfW3zVhKQ5asXSOlHjSB3EuY8JXWeSNKxf9sZMLDWlnma143bXfcsoiykI
	 ogulsYScYxFP+mvTc/6NbyHhqJwXQYAqOCxSgNt+Vapl/UnntqKFRP6+f8U1AXFSWi
	 5KCkB5OVu6EEQ==
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: catalin.marinas@arm.com,
	kernel-team@android.com,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: arm-smmu: Add compatible for Eliza SoC
Date: Thu, 19 Mar 2026 16:26:07 +0000
Message-ID: <177393144424.3815946.1539453168871501217.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260223-eliza-bindings-arm-smmu-v1-1-7a35a76201a5@oss.qualcomm.com>
References: <20260223-eliza-bindings-arm-smmu-v1-1-7a35a76201a5@oss.qualcomm.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277896-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[will@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: A773D2CF044
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 23 Feb 2026 10:46:39 +0200, Abel Vesa wrote:
> Qualcomm Eliza SoC implements arm,mmu-500. Document its compatible.
> 
> 

Applied to iommu (arm/smmu/bindings), thanks!

[1/1] dt-bindings: arm-smmu: Add compatible for Eliza SoC
      https://git.kernel.org/iommu/c/889cdd9e1b37

Cheers,
-- 
Will

https://fixes.arm64.dev
https://next.arm64.dev
https://will.arm64.dev

