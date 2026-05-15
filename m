Return-Path: <devicetree+bounces-297991-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLovL1vWBmpjoQIAu9opvQ
	(envelope-from <devicetree+bounces-297991-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:16:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC1354B27D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50D76307DFEA
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3CDD3F660B;
	Fri, 15 May 2026 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oi/UuL1L"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EAA83F0A81;
	Fri, 15 May 2026 08:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778832662; cv=none; b=eYMFrnRuXiAc4OYaAGpIthpTLmZPHtV1KzcchoBodJDMwClo/DFN5njJt2OwowwFYZlsFnod2xAZPKZkYGCyZdYk0Bf1zOfZ1iX6gTrsI3fNYf5Md7xanmtIRV1vXX+7bvmc8KivdniKFXW8Tv66E3+TtVusS9IOILTan1uPpDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778832662; c=relaxed/simple;
	bh=dY87oxcNd6Plp17E/7k3+AqTR4VAYLZgpmp+DlDQquc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TR9+gKAWXAAawHjoowrlU1XtcWgG314+2vvcVrwFAOq8HeOBC32CZ5XkYcimSmOXAZdeH4Eq4H5+/T1kGPECz4LwqwQfZnYFQoUzPMvTJonm0YNmIZFqAkb8pEOglR9FEuCiTArygdiIJxVJoExykQd4rybbN/1em9amX3CCiww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oi/UuL1L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FC60C2BCB0;
	Fri, 15 May 2026 08:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832662;
	bh=dY87oxcNd6Plp17E/7k3+AqTR4VAYLZgpmp+DlDQquc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Oi/UuL1LieUa7RCIK/099R2KfxRQxtNVVvuqv7V6a5QXlf4EpSLfD1Cq3yqekWzvV
	 MiCuerQyqg6H0oLcbHVMcWSy1EY7OyLnPk36DDtyosritaAITa2g60jAGanGoTZsnm
	 29ItWZFesltRiqZZVSq9a6yI1N53rkV2q+XaoH6qLbDoke9fMz4y6rCVH/R4eZnPF7
	 SVtyAkyCWBreWqIHKuhdVZbsnfZl1UfiPxj4Wd7CAJOBPK8mSFnosRKa2umf5FH2wo
	 eIuTcqaiaiXfb2xfDypx+R7RDt+XCDQ2sIRBzSWa3a6pFXQ9zJ6sRHnTKS3OaPzbpN
	 ou9iPZ8j3uohw==
Date: Fri, 15 May 2026 10:10:59 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, 
	Xianwei Zhao <xianwei.zhao@amlogic.com>, Kevin Hilman <khilman@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 04/10] dt-bindings: clock: Add Amlogic A9 AO clock
 controller
Message-ID: <20260515-resourceful-diligent-hound-b666e5@quoll>
References: <20260511-b4-a9_clk-v1-0-41cb4071b7c9@amlogic.com>
 <20260511-b4-a9_clk-v1-4-41cb4071b7c9@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260511-b4-a9_clk-v1-4-41cb4071b7c9@amlogic.com>
X-Rspamd-Queue-Id: 5EC1354B27D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297991-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,linaro.org,amlogic.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amlogic.com:email]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 08:47:26PM +0800, Jian Hu wrote:
> Add the Always-On clock controller dt-bindings for the Amlogic A9
> SoC family.
> 
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a9-aoclkc.yaml          | 76 ++++++++++++++++++++++
>  include/dt-bindings/clock/amlogic,a9-aoclkc.h      | 76 ++++++++++++++++++++++
>  2 files changed, 152 insertions(+)

All comments apply.

Best regards,
Krzysztof


