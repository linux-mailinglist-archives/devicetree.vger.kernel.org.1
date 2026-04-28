Return-Path: <devicetree+bounces-290847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YEd1MxNa8GlQSAEAu9opvQ
	(envelope-from <devicetree+bounces-290847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 08:56:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 39FC347E513
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 08:56:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E842301348D
	for <lists+devicetree@lfdr.de>; Tue, 28 Apr 2026 06:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E6F1134E774;
	Tue, 28 Apr 2026 06:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ISl2U9pc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42FD2E401;
	Tue, 28 Apr 2026 06:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777359070; cv=none; b=XZVvDF0zbIb5jdgjvLDPNib80yuGbB9eqi9PZWzR8dg4wZ3XW/pqodYkpLenloTQpB0lFHaDnwNkCusXGHK/huw6GHXr84QMQsiQJVq20QNX5eMj+ftnklBHU4EXIaJYN3zbUQwGz5/JBrFRzNi91XWljNI6xsPu8TWd0TProqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777359070; c=relaxed/simple;
	bh=xRCvIjFm1qRPY86c8XK+wqrLdiC4ZGv6pNeFUGIqFMU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qHHxD/PRbCKJYux/CWehBKwlPpS4NrCjU4ZcbZKlCpCg08PEvUku4faB7nJY41ENeiJ63S04eVBxOVv0M2jEA/xCQvdcn7nhHPgfP2OAjr4FVJmdx/RS+i56WL78rZVyuCvSOXyWkzsppnuA4Wk038nWgrXg68omFtYq/LLKQvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ISl2U9pc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C34C7C2BCAF;
	Tue, 28 Apr 2026 06:51:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777359070;
	bh=xRCvIjFm1qRPY86c8XK+wqrLdiC4ZGv6pNeFUGIqFMU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ISl2U9pcz5S+w16MG1ZHzMg58ZG8NpDuh9JFPoQtHaqXTAKKIMUo0oQZ4rqCm8tSY
	 KX0XzV1X9O0F2DSTrfcSvPowRgmSQbMKhq+NXyJlg3tg9HD5lmxn9U2FXnIjp1itlS
	 QQ88a1yAoS3C+cHOdQPxFF1+nTaD3WP7BRssmiymvP0LPO2vZjrVcthGlZzeDkYg+1
	 dc6XkOSBYNlwfzR5QyyXJdvjAPOd2LUQ9fq/SO2nkJvy+gTsqjrMsiE4ZD25W7E5kr
	 MyFVA6JBG174k92s65x/c1KJzYgen8KYkxXtgLmQcOaM4wrOF5knc4ru497Y/G6/VY
	 CrraCjnoIc04A==
Date: Tue, 28 Apr 2026 08:51:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Cc: Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Robin Murphy <Robin.Murphy@arm.com>, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: arm-smmu: qcom: Add Hawi compatible for
 Application processor
Message-ID: <20260428-pristine-rose-whale-35db39@quoll>
References: <20260427174915.3639641-1-mukesh.ojha@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260427174915.3639641-1-mukesh.ojha@oss.qualcomm.com>
X-Rspamd-Queue-Id: 39FC347E513
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290847-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]

On Mon, Apr 27, 2026 at 11:19:15PM +0530, Mukesh Ojha wrote:
> Commit 5e8323c3d528 ("dt-bindings: arm-smmu: qcom: Add compatible for
> Hawi SoC") was intended for the APSS SMMU but was mistakenly placed

Would be nice to see explanation what is APSS. We do ask for that every
couple of months.

> under the Adreno GPU SMMU section. Since that compatible is also valid
> for the Hawi GPU SMMU, keep that commit as-is and add proper
> documentation for the Hawi APSS SMMU here.
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---
> Changes in v2: https://lore.kernel.org/lkml/20260422083329.885979-1-mukesh.ojha@oss.qualcomm.com/
>  - Not a fix commit after discussion.
>  - Not removing the earlier commit change instead add one for APSS
>    SMMU.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


