Return-Path: <devicetree+bounces-297175-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +M1vJDr8BGrxRAIAu9opvQ
	(envelope-from <devicetree+bounces-297175-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:33:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1822353B7A0
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 00:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1B1C2302DE12
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16FFC39EF1A;
	Wed, 13 May 2026 22:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGKO7okS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A7339A815;
	Wed, 13 May 2026 22:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778711605; cv=none; b=TT8EZU5U8zO4wdVzeojlh5Lb3Vi8KhRqIxexiSEZ6KlN356wJ5CHpYajUYC10ceoDUhuzTtmyB53JeumVSHfWUuM61MOodah1l3Qaa4U0uZmznbLQfB2YZInU1YduTbhlmAGHK7wH8J+SCp6Dk6qFFzM7l0R4sDsYJh5iflri6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778711605; c=relaxed/simple;
	bh=hwTH+6hUhoEyj5JZNYIPEtUSA8SkvfuKwQ7mDWYWBoQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rvwZhKS+HDTJiI+boXCc0ObtDe4HfAOQ5CUDlVjYFUzRWcwOdW7bgoxRNnBl6rXvf4tFdQJlf7KHOclUvikIXrGu2hPuOYQNyjb6jxRriEY9XbNqlCV/uG1arKPvQCt4J5SaoOG3m2wXVU7t5lYlw54dRJOTGGwJXbtgRuyCu7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGKO7okS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DCC8C19425;
	Wed, 13 May 2026 22:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778711605;
	bh=hwTH+6hUhoEyj5JZNYIPEtUSA8SkvfuKwQ7mDWYWBoQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RGKO7okSgOVQ9IZrUm25mf71fR/4z438lhcaWg5EFEAt6bMnUoUYv7uyYc2jyW1RO
	 ZvNRX/He8KuHhzu2WbQYVDNit4HiSaJ3OQIVQNRdAolxdLHYGvD9P9a27K5o1aLjq0
	 xDlVkx0srUtuzR6L2cyChOIZnSNRpj/yDv4ADydw6HSgxp2TnS0Qb0QJ39rrzrn/vP
	 qruV+E04+ScJ4ihorRjadeGcbtwiKjaQOV3z4t2oWZwVPOMn6ujEATAPj3wfGD2JGm
	 vCW8dOyZZhFP+Q+JK2xZ733PW7zArcH9Fz1KMGpxpSNxtlpPlDMXW+1SdqfBVo2RUo
	 OUXl5sG+9LZtw==
Date: Wed, 13 May 2026 17:33:20 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
	linux-acpi@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Sudeep Holla <sudeep.holla@kernel.org>,
	Will Deacon <will@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Lars Persson <lars.persson@axis.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
	Orson Zhai <orsonzhai@gmail.com>, Ge Gordon <gordon.ge@bst.ai>,
	linux-kernel@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Samuel Holland <samuel@sholland.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Michal Simek <michal.simek@amd.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Hanjun Guo <guohanjun@huawei.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Thomas Gleixner <tglx@kernel.org>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Kevin Hilman <khilman@baylibre.com>,
	linux-arm-kernel@lists.infradead.org,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	BST Linux Kernel Upstream Group <bst-upstream@bstai.top>
Subject: Re: [PATCH 03/16] dt-bindings: timer: arm,arch_timer: Fix
 requirements for interrupt description
Message-ID: <177871159980.2167014.13931408615582570920.robh@kernel.org>
References: <20260507125544.2903406-1-maz@kernel.org>
 <20260507125544.2903406-4-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260507125544.2903406-4-maz@kernel.org>
X-Rspamd-Queue-Id: 1822353B7A0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[46];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,arm.com,gmail.com,linaro.org,pengutronix.de,axis.com,samsung.com,sntech.de,baylibre.com,suse.de,bst.ai,rock-chips.com,googlemail.com,nxp.com,linux.alibaba.com,sholland.org,collabora.com,amd.com,huawei.com,lists.infradead.org,nvidia.com,bstai.top];
	TAGGED_FROM(0.00)[bounces-297175-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


On Thu, 07 May 2026 13:55:31 +0100, Marc Zyngier wrote:
> The arm,arch_timer DT binding is extremely imprecise in describing
> the requirements for interrupts.
> 
> Follow the architecture by making it explicit that:
> - the EL1 secure timer irq is required if EL3 is implemented
> - the EL1 physical timer irq is always required
> - the EL1 virtual timer irq is always required
> - the EL2 physical timer irq is required if EL2 is implemented
> - the EL2 virtual timer irq is required if FEAT_VHE is implemented
> 
> The consequence of the above is that the minimum number of interrupts
> to be described is 2, and not 1.
> 
> Finally, clean up the description which made the assumption that
> the timers are plugged into a GIC (unfortunately, that's not always
> true), drop the MMIO nonsense that has long be moved to a separate
> binding, and use the architectural terminology to describe the various
> interrupts.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>  .../bindings/timer/arm,arch_timer.yaml        | 21 +++++++------------
>  1 file changed, 8 insertions(+), 13 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


