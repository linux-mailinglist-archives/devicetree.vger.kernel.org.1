Return-Path: <devicetree+bounces-278588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAQJJR6cvmkcUQMAu9opvQ
	(envelope-from <devicetree+bounces-278588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 14:24:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0314D2E581B
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 14:24:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 738D3300A605
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 13:18:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A95C338AC98;
	Sat, 21 Mar 2026 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDlwbhDy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8561C38756A;
	Sat, 21 Mar 2026 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774099083; cv=none; b=qsTTSaA1PJZi9XIv2mRXjqhKh1tmwnWX/0llpJx6lQESv4L9KI0fvQdwTOYFFGQgRQFRIWkeUe5w6JAGhCAg9YyGXRRF3tQ0TJj6kfw2QH6bkKViB0cZtK65D+Mbh9L7h9QvMBziEIpDOwIThT80yg4wWoonJaKUavLUOnULftA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774099083; c=relaxed/simple;
	bh=M800nNzUvv0zNmdxOy67LWqFXo6bvZJuekBLzvfcWyE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ai8R9Ax4uU/fbHVKTgIqLntet7YA5jnxH05H6nnxCjuQ1BnmCT92WXe0BD55UNQ5I5hyv68LWjXKDn97sz0P92SFL/wJ8mUnAFkDw4eB6rCvseGLj1TvbuxqxAdjz3361wxZU6n2KT4iSCbWnElYCOQ0bvGidn9aOG4Kr9s6t50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDlwbhDy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E53BC19421;
	Sat, 21 Mar 2026 13:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774099083;
	bh=M800nNzUvv0zNmdxOy67LWqFXo6bvZJuekBLzvfcWyE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=EDlwbhDyHF0PzAdik8rVakHd3eUdZ9PyDC8gg3KYnibPnmGvndc0/T/WyHtmaTml5
	 X3SqDVfGJwBo+Qm5gBDURc1CnoEm5Um87c0huJYm3dN3YZcCcyJ4f9E/OyYZP7fApD
	 lb0YCk2fHZGsGZ2AJ7Nmn8zluiIQPvb7jWFaKuFZWU2ifsjhMzglWcEZrgzRGzOd1U
	 4D6Xo0TejsatJ1rDPCPf2GsFXU3roboU1Sa7aPQysyx3pDVjJF1ZrgryvNEi4enLNp
	 WWpuV2OLOxJfoelZkuhQXouiVtFpLRR6PrD6+hZktEFnIYpbN5QAFpesnIUHRxhnqJ
	 wTMCiip0SFggA==
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
References: <20260318-gs101-pd-v8-0-241523460b10@linaro.org>
Subject: Re: (subset) [PATCH v8 00/10] pmdomain: samsung: add support for
 Google GS101
Message-Id: <177409907930.268981.5882592990447577348.b4-ty@b4>
Date: Sat, 21 Mar 2026 14:17:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.15.0
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
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[samsung.com,kernel.org,linaro.org,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-278588-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0314D2E581B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 18 Mar 2026 15:27:45 +0000, André Draszik wrote:
> This series adds support for the power domains on Google GS101.
> 
> There are a few differences compared to SoCs already supported by this
> driver:
> * register access does not work via plain ioremap() / readl() /
>   writel().
>   Instead, the regmap created by the PMU driver must be used (which
>   uses Arm SMCC calls under the hood).
> * DTZPC: a call needs to be made before and after power domain off/on,
>   to inform the EL3 firmware of the request.
> * power domains can and are fed by a regulator rail and therefore
>   regulator control needed be implemented.
> 
> [...]

Applied, thanks!

[01/10] dt-bindings: soc: google: add google,gs101-dtzpc
        https://git.kernel.org/krzk/linux/c/10084aeadadfab72648f6ed1cc78f7cd87b861ba
[03/10] dt-bindings: soc: samsung: exynos-pmu: move gs101-pmu into separate binding
        https://git.kernel.org/krzk/linux/c/3ec3c42b426fe5e2b48ff19c551dec50bc78788c
[04/10] dt-bindings: soc: google: gs101-pmu: allow power domains as children
        https://git.kernel.org/krzk/linux/c/c8229a5160eea145b796f54317d6e659cec9b080

Best regards,
-- 
Krzysztof Kozlowski <krzk@kernel.org>


