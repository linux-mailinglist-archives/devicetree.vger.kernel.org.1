Return-Path: <devicetree+bounces-147087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 31603A373AF
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 10:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D20B7A2F3A
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2025 09:54:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B77D189B9C;
	Sun, 16 Feb 2025 09:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFVxLyce"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1383A290F;
	Sun, 16 Feb 2025 09:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739699726; cv=none; b=FMQmphnCbX3wlf2WI/lGYZX1HsRe2yqr6FUICHcbMGbfubCw5wrxhalu34TXP39tWvkKMMPzpGZE1cxrgWZwc0fVqkBqXOOcsUXKnwGcxPQlxLAWK0UXMBY4tRGKD5bmiSLBXTyyMqjC7Z4ABUa4cRY29N6RzEL7V33pdFI5Xd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739699726; c=relaxed/simple;
	bh=uxeXeJ6bnFjUDM2/tZeOi6I4UpOhwNCOUpFKYkaIesA=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pCsq1Jag1nOQTL7+n6h8SWXoI4dCn6pXuec328ji8b3PVKAgIPy+o/sIWTnFdXEJGsIKq0xQvbHjWEwAC8VCdkCIF+b6+2DHvrQbBMZlCxhc7Z0z7fDFcGd36zCDaEki81yXJ3T+xII6GaXWNb5r4sSa/TTorG36sL5ZM5FSMIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFVxLyce; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A565C4CEDD;
	Sun, 16 Feb 2025 09:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739699725;
	bh=uxeXeJ6bnFjUDM2/tZeOi6I4UpOhwNCOUpFKYkaIesA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=cFVxLyceRo6lO/Cu3nvm5w6ePc2RI5vfYAL6WD2CPnRNex1Zpb+xxt/Qt8EuEEwk/
	 sNY0RXPqF1tDkhjwQd3Tgm78ZpkaUZ+rDDKRczTvoBaJei1wZCN9aG/9sT9xKyB3/K
	 WPVlAcSI6htO7ka9iuk7+g9CWLvLXyhbOhbEmUXJ4PsaFudRpvEIoAsfY/v4e4zNqN
	 B/9rhR/e6wc+JAKaEHwZG9kPWMARHnXdlduMUMDp7CJncS2dDTh4ggYO0y20InxGsW
	 +RmuJKrbpoHgj+82Dbk8OZO1cri6E+8EO5OdRlWo2EQPtP4y0kk0P5ptKdKbmL9vAe
	 6zpKHXX7iKgfw==
Received: from sofa.misterjones.org ([185.219.108.64] helo=wait-a-minute.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1tjbMx-004WpP-4V;
	Sun, 16 Feb 2025 09:55:23 +0000
Date: Sun, 16 Feb 2025 09:55:21 +0000
Message-ID: <87seoe1aeu.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	kernel@collabora.com
Subject: Re: [PATCH v1 1/4] irqchip/gic-v3: Add Rockchip 3568002 erratum workaround
In-Reply-To: <20250215235431.143138-2-dmitry.osipenko@collabora.com>
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
	<20250215235431.143138-2-dmitry.osipenko@collabora.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.4
 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: dmitry.osipenko@collabora.com, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, tglx@linutronix.de, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, derrick.huang@rock-chips.com, pgwipeout@gmail.com, robin.murphy@arm.com, kernel@collabora.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Sat, 15 Feb 2025 23:54:28 +0000,
Dmitry Osipenko <dmitry.osipenko@collabora.com> wrote:
> 
> Rockchip RK3566/RK3568 GIC600 integration has DDR addressing
> limited to first 4GB of DRAM. Rockchip assigned Erratum ID #3568002
> for this issue. Add driver quirk for this Rockchip GIC Erratum.

Thanks for taking the time to submit this. It only took 5 years for
this erratum to be published...

However, my understanding of this issue is that the integration is
limited to the first 32bit of physical address space, not the first
32bit of RAM. If the memory is placed as physical address 0, then they
represent the same space. But this is still an important distinction.

> 
> Note, that the 0x0201743b ID is not Rockchip 356x specific and thus
> there is an extra of_machine_is_compatible() check. Rockchip 3588 uses
> same ID and it is not affected by this errata.

This ID is that of ARM's GIC600, which is a very common GICv3
implementation, and is not Rockchip-specific. Please capture this in
the commit message.

> 
> Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  Documentation/arch/arm64/silicon-errata.rst |  2 ++
>  arch/arm64/Kconfig                          |  9 ++++++++
>  drivers/irqchip/irq-gic-v3-its.c            | 23 ++++++++++++++++++++-
>  3 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/arch/arm64/silicon-errata.rst b/Documentation/arch/arm64/silicon-errata.rst
> index f074f6219f5c..f968c13b46a7 100644
> --- a/Documentation/arch/arm64/silicon-errata.rst
> +++ b/Documentation/arch/arm64/silicon-errata.rst
> @@ -284,6 +284,8 @@ stable kernels.
>  +----------------+-----------------+-----------------+-----------------------------+
>  | Rockchip       | RK3588          | #3588001        | ROCKCHIP_ERRATUM_3588001    |
>  +----------------+-----------------+-----------------+-----------------------------+
> +| Rockchip       | RK3568          | #3568002        | ROCKCHIP_ERRATUM_3568002    |
> ++----------------+-----------------+-----------------+-----------------------------+
>  +----------------+-----------------+-----------------+-----------------------------+
>  | Fujitsu        | A64FX           | E#010001        | FUJITSU_ERRATUM_010001      |
>  +----------------+-----------------+-----------------+-----------------------------+
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index c997b27b7da1..0428ad8f324d 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1302,6 +1302,15 @@ config NVIDIA_CARMEL_CNP_ERRATUM
>  
>  	  If unsure, say Y.
>  
> +config ROCKCHIP_ERRATUM_3568002
> +	bool "Rockchip 3568002: can not support DDR addresses higher than 4G"
> +	default y
> +	help
> +	  The Rockchip RK3566 and RK3568 GIC600 SoC integrations have DDR
> +	  addressing limited to first 4GB.
> +
> +	  If unsure, say Y.
> +

s/DDR addresses/physical addresses/

>  config ROCKCHIP_ERRATUM_3588001
>  	bool "Rockchip 3588001: GIC600 can not support shareability attributes"
>  	default y
> diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
> index 8c3ec5734f1e..f30ed281882f 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -205,13 +205,15 @@ static DEFINE_IDA(its_vpeid_ida);
>  #define gic_data_rdist_rd_base()	(gic_data_rdist()->rd_base)
>  #define gic_data_rdist_vlpi_base()	(gic_data_rdist_rd_base() + SZ_128K)
>  
> +static gfp_t gfp_flags_quirk;
> +
>  static struct page *its_alloc_pages_node(int node, gfp_t gfp,
>  					 unsigned int order)
>  {
>  	struct page *page;
>  	int ret = 0;
>  
> -	page = alloc_pages_node(node, gfp, order);
> +	page = alloc_pages_node(node, gfp | gfp_flags_quirk, order);
>
>  	if (!page)
>  		return NULL;
> @@ -4887,6 +4889,17 @@ static bool __maybe_unused its_enable_quirk_hip09_162100801(void *data)
>  	return true;
>  }
>  
> +static bool __maybe_unused its_enable_rk3568002(void *data)
> +{
> +	if (!of_machine_is_compatible("rockchip,rk3566") &&
> +	    !of_machine_is_compatible("rockchip,rk3568"))
> +		return false;
> +
> +	gfp_flags_quirk |= GFP_DMA32;
> +
> +	return true;
> +}
> +
>  static const struct gic_quirk its_quirks[] = {
>  #ifdef CONFIG_CAVIUM_ERRATUM_22375
>  	{
> @@ -4954,6 +4967,14 @@ static const struct gic_quirk its_quirks[] = {
>  		.property = "dma-noncoherent",
>  		.init   = its_set_non_coherent,
>  	},
> +#ifdef CONFIG_ROCKCHIP_ERRATUM_3568002
> +	{
> +		.desc   = "ITS: Rockchip erratum RK3568002",
> +		.iidr   = 0x0201743b,
> +		.mask   = 0xffffffff,
> +		.init   = its_enable_rk3568002,
> +	},
> +#endif
>  	{
>  	}
>  };

Another thing is that this patch conflates ITS and redistributors. As
it turns out, we use the same allocator for both, but they are
distinct architectural concepts, even if GIC600 is a monolithic
implementation. It is OK for now, but it will have to be revisited if
we ever move the redistributor management outside of the ITS driver.

With the other comments addressed:

Acked-by: Marc Zyngier <maz@kernel.org>

	M.

-- 
Without deviation from the norm, progress is not possible.

