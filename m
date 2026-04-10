Return-Path: <devicetree+bounces-286477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDa3F8HY2GnHjAgAu9opvQ
	(envelope-from <devicetree+bounces-286477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 13:02:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 731D23D5EF9
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 13:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F85A302B3B5
	for <lists+devicetree@lfdr.de>; Fri, 10 Apr 2026 10:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EF2F396B82;
	Fri, 10 Apr 2026 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hhv8rmIU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CD6386565;
	Fri, 10 Apr 2026 10:56:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775818575; cv=none; b=XKULhiuy0x1UUQPIqINdc1zYcWaToX7ipGLjuqeqBCf2rL+YxiseVh57eLXJ4C4KusN2ZIw0DFYGJ9kp2bJjfgNzZ2rOB4vxzq8IFrh9V6boXebL0MTrvTlGprpT1KlfNyhpOhVvfmbvkHt2vC0N5+gIZYX8klUwF0EllM6re9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775818575; c=relaxed/simple;
	bh=WYqHQ/KSVCOpW5gEvy3s00YQa3VfVpDZrOgWzcd0JrA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CKMtmpSiutpOoFhOZLT3/TCa4Jj34xBVsEZVBNXQ6ixADQWxW05RI7TUq2dd+xai1c3ZkmMu0m4Hq0l9Rs8agh05cLHgL6R5ZWt3pcfD5jKljV+/f+j3zI9IKo2lt0QrKVUXzSA8E3aAlgI7PUEAxriOYBtciZJXALVJbCtMMdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hhv8rmIU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 848A5C19421;
	Fri, 10 Apr 2026 10:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775818575;
	bh=WYqHQ/KSVCOpW5gEvy3s00YQa3VfVpDZrOgWzcd0JrA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hhv8rmIU+x5ieL3Y8PJPafaV+eMDeHmJGdnarcpWzJrM42OQnOO2yWwoQgEgW31De
	 aeatVgKRMXOzGeSFMDGjC7nacMGm4SzJMoOywSBuUOeVjtrywZwIjKioUKTYExbrwJ
	 PKJe4C1W5Pp7bAMLevQVMGQvjmYBrr7WFr407hPy3prGIzPF/LdctOBykzgfy8jYbq
	 LA7HpGzIlsHfRM5kge/b3iIGV6S1z6Qm81o9xc2q3dA1gddi90Q8k6B87lF59rEy70
	 rzxRD509NjPXIYxNkPJcZVEebQgsu6c0OAqvakWp1UAIphMhZJfGI8+HU97dZcmEF5
	 6w630GMPaJdSA==
Date: Fri, 10 Apr 2026 12:56:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
	Francesco Dolcini <francesco.dolcini@toradex.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/7] dt-bindings: arm: fsl: Add verdin imx8m[mp] and
 imx95 zinnia board
Message-ID: <20260410-great-woodlouse-of-judgment-99bd78@quoll>
References: <20260409095855.61252-1-francesco@dolcini.it>
 <20260409095855.61252-2-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260409095855.61252-2-francesco@dolcini.it>
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
	TAGGED_FROM(0.00)[bounces-286477-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,toradex.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 731D23D5EF9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 11:58:47AM +0200, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> 
> Add Toradex Verdin Zinnia carrier board mated with Verdin
> iMX8M Plus, Verdin iMX8M Mini and Verdin iMX95.
> 
> Link: https://www.toradex.com/products/carrier-board/zinnia-carrier-board
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


