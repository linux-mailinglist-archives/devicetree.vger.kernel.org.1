Return-Path: <devicetree+bounces-295756-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAR2EYgnAmrFoQEAu9opvQ
	(envelope-from <devicetree+bounces-295756-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:01:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B2890514CA2
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 21:01:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3B7CD3011581
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 19:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD90C3033DA;
	Mon, 11 May 2026 19:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5GH1ahl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A7C298991;
	Mon, 11 May 2026 19:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778526039; cv=none; b=IcYnJyNmO08oHc3++B+wOBO2hXpcvF4NHHyogXQjJH+n08xTvSGcG2LNrpJbF1GsN0UHGqHfhs0Yc+sus+YkchkDMg+XTBvMOPtFQ6t2G5ORf69Z77yaEpAK5jASD7PJGWBRx/S5by8fixKBfxGRSst81mK+1nGK3jO4BdrL2YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778526039; c=relaxed/simple;
	bh=axJJaOXDyfhWhcz3462ZN7vmIIKn0/jAYo7vvDBHFNE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UUCOMYkRafvCKJJYQAfVqaP0pERbFPLmZoU9o53Cyv/kCpJmOCuCofVBeDMH1MMOF+QCzK80xr2TCoLtaTDyQCcU7ShO16BnnpTVbSi2o5rhdffrKIscvAFtKb2WvD86+FTflPdJGR1R/PdlnlQ44JyO6E6pBViGYEqz26tb0Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5GH1ahl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E278C2BCB0;
	Mon, 11 May 2026 19:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778526039;
	bh=axJJaOXDyfhWhcz3462ZN7vmIIKn0/jAYo7vvDBHFNE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=W5GH1ahlB0Txx8EAJdui3DTUxbkjRBgm+7FdXguMamCfXin36Bv9UTyFjHdJRmloz
	 Tn5B0NftCv/CutmnCIBgWrsPO9rEK4YbfLG8xIaQeG83+JchMot5ppHo3xgYowAwGP
	 5s97tm4vzvChqPgp5YP+e/j86lyViXQN9ERzmiosxhIkW9EA5F6I3DkaDdXhVAQywt
	 RlQpFEC1/hls5aqOvyEIRllOBUTlLwo3uepmWnlwGLcfQb+pPAHAvSU+hfIOIt2VAZ
	 5qrNALkAeZHc0G8fSSNVfi71WipR4DM4HeSXeodI/xmI+LUlOESacvbMH8Epcvu/lz
	 o0B/rO1Sm+b7w==
Message-ID: <7ca609dd-8983-48a8-b485-5eb80e340cf6@kernel.org>
Date: Mon, 11 May 2026 14:00:35 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/16] arm64: dts: intel: Add EL2 virtual timer interrupt
Content-Language: en-US
To: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Hanjun Guo <guohanjun@huawei.com>, Sudeep Holla <sudeep.holla@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Daniel Lezcano <daniel.lezcano@kernel.org>,
 Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Ge Gordon <gordon.ge@bst.ai>,
 BST Linux Kernel Upstream Group <bst-upstream@bstai.top>,
 Jesper Nilsson <jesper.nilsson@axis.com>,
 Lars Persson <lars.persson@axis.com>, Alim Akhtar <alim.akhtar@samsung.com>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?=
 <afaerber@suse.de>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Lin <shawn.lin@rock-chips.com>, Orson Zhai <orsonzhai@gmail.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Michal Simek <michal.simek@amd.com>
References: <20260507125544.2903406-1-maz@kernel.org>
 <20260507125544.2903406-10-maz@kernel.org>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20260507125544.2903406-10-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: B2890514CA2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-295756-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,huawei.com,arm.com,gmail.com,sholland.org,linaro.org,baylibre.com,googlemail.com,bst.ai,bstai.top,axis.com,samsung.com,nxp.com,pengutronix.de,collabora.com,nvidia.com,suse.de,sntech.de,rock-chips.com,linux.alibaba.com,amd.com];
	RCPT_COUNT_TWELVE(0.00)[46];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action



On 5/7/26 07:55, Marc Zyngier wrote:
> The ARMv8.2 based CPUs used in the agilex5 SoC are missing the EL2 virtual
> timer interrupt. Add it.
> 
> Signed-off-by: Marc Zyngier <maz@kernel.org>
> ---
>   arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> index 02e62d954e949..6db2d48b9bad3 100644
> --- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
> @@ -155,7 +155,8 @@ timer {
>   		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
>   			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
>   			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> -			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
>   	};
>   
>   	usbphy0: usbphy {

Acked-by: Dinh Nguyen <dinguyen@kernel.org>



