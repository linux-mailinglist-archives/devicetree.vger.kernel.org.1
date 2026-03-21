Return-Path: <devicetree+bounces-278557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DR1eD5d2vml3QQMAu9opvQ
	(envelope-from <devicetree+bounces-278557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:44:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E852E4CE7
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 11:44:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73443301E9B0
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 10:44:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C41835E951;
	Sat, 21 Mar 2026 10:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VuOGAJB0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3703F3176E0;
	Sat, 21 Mar 2026 10:44:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774089876; cv=none; b=pTcWo/K8JAVCIMuT2JAMAzkVYWrhPH5VoAjgBYDvfqvj6P9K3vxynj9hTMl2KErQZof2bt2s1o+hK+XwnPmXDv/MuFsiLuj2Etl2S0xoThaUO2zRk2F2/vN57eRE0UpKAumm0daElGnkrQ5pnFSptkkxqtoDkUMFsBflE28RGc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774089876; c=relaxed/simple;
	bh=M9as8yUXW+U1s7wVMlwZOyhJYgE1gI5CZxx7KjO7IyU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e1pPi8C2HfOdMQozXD4JTFmxZVdphmptWKE8VKhFc6ohCbA6nAmJGVd/+yOK9XHh0Gz9PK1l0IdhSvRynbbF7hg7ecpd8SiCjZaWSWtkccL6gZi+g6zAT5jdKhbS6QVwOHaq1+dLPC8z5V+gtTZC+n4EGl0Tc353WPwZQh5E6iE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VuOGAJB0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36A95C19421;
	Sat, 21 Mar 2026 10:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774089875;
	bh=M9as8yUXW+U1s7wVMlwZOyhJYgE1gI5CZxx7KjO7IyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VuOGAJB0xPJFqXaIPyKKG9O/8ynVmBv7ltnq4TzkPKBcI4DLDvwaNuTPol5567gOP
	 WTdz3/Vzc1fPesS5H4alScfSe5kUO4u6OWdjuU62ojG/zg7Ih66XgflCGmt3WnZA04
	 GbQMagq/rOuFWW5GIm/+9In6szVSU3uIPBRtojsbFFJ2kHklo3nLsoNQ60kQcsedhs
	 mUAo1yla7VKCb3zgU6257Nn8EQvtVYeDhqZP9XGjC4seW4OLfrN6LfKftNN/y7du84
	 HsgEBWlEugI6rxeaZbgw/6lwmBa2Lm/AVTO8lkfPrUNHyEKEwMNxzx5iTXjiccTIn3
	 apXUp/j8sCqiQ==
Date: Sat, 21 Mar 2026 11:44:33 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Sam Protsenko <semen.protsenko@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] Exynos850 APM-to-AP mailbox support
Message-ID: <20260321-beautiful-garnet-magpie-de4fbd@quoll>
References: <20260320-exynos850-ap2apm-mailbox-v1-0-983eb3f296fc@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260320-exynos850-ap2apm-mailbox-v1-0-983eb3f296fc@linaro.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278557-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[samsung.com,linaro.org,baylibre.com,kernel.org,gmail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A0E852E4CE7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 20, 2026 at 09:15:12PM +0000, Alexey Klimov wrote:
> Hi all,
> 
> This patch series introduces support for the APM-to-AP mailbox on the 
> Exynos850 SoC. This mailbox is required for communicating with the APM 
> co-processor using ACPM.
> 
> The Exynos850 mailbox operates similarly to the existing gs101 
> implementation, but the register offsets and IRQ mask bits differ. 
> This series abstracts these differences into platform-specific data 
> structures matched via the device tree.
> 
> Also, it requires APM-to-AP mailbox clock in CMU_APM block.
> 
> In theory this can be split into two series with correct dependecies:
> device tree node requires clock changes to be merged. The suggestion
> is to let this go through Samsung SoC tree with corresponding acks
> if it is okay.

I don't understand why this cannot be split into two seris
*practically*. What is exactly the dependency between mailbox and DTS,
that it had to be combined here?


Best regards,
Krzysztof


