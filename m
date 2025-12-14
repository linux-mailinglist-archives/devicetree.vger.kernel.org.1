Return-Path: <devicetree+bounces-246306-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D58CBBB7C
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 15:25:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA40130010DC
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 14:25:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AE0925A2B4;
	Sun, 14 Dec 2025 14:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMhCbksk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6141722B8B0;
	Sun, 14 Dec 2025 14:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765722343; cv=none; b=Hz5+DlBNMZj9LyEyz6EuiTG+ZI1xralk90V3Svd4bUk4RzT8vy5KoIDPrPY33zQkT4TVHdM51bUIcGLoaFIEzRKZ+7CvGlFO2f29iqthONNPScawrJjiwNY6cL8xj9DHmP1CZgMKfbnLhyOjtyDevkN2f0Z1zwjxTGhMO+nnZvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765722343; c=relaxed/simple;
	bh=r+/5qsA1gT0kLGW99QBrTL8ajG99+c99wvM1zFRce4o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U63a5/YXAeFKow7xWHhXK2WmnsEHG9WL8ia575AaiI47vKtMZedhiKS9zQhBFFvPJYwgKj2j6wFnee6V9eK4jBm+Moe80T/pApIkZ4h8+KXdABxd34tSCFifR+r88bdJ2sKKCuUVqV2lCUjsTiCaPSgGO0cSvfz/JM2TM/uzqPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMhCbksk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CECA4C4CEF1;
	Sun, 14 Dec 2025 14:25:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765722342;
	bh=r+/5qsA1gT0kLGW99QBrTL8ajG99+c99wvM1zFRce4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CMhCbkskHMo3hjmHVVPMVR744jFL/RTYPHYbs0py8C9gOqXTn42BBoboxM1dkbWDh
	 hoM3E8Zl+VBvz7pHkf3gdfwIIU5wcavj/H6R6wx5uW3oqCi5qp3X5BWRSiTWah51Qi
	 kitMPZZ3BTSWSSK7gLiUb2t31u42O0wLATdyOK/TBsb3C7XfpA4JMl3+tOTlwcalfV
	 BOIG3FJmsUMDYWXzcapXwJdf+el1+gkcwOH45CIaAnM5/77Rv5Oe1yecwLvTr5QQA2
	 cZCk6svbYnaAWt5CJhoOsVMCoMEFH4v+QgI9d55Gv2fqp+WBH2xuzUt1lVbYKTBJ1C
	 IvYuc0hJBTzDQ==
Date: Sun, 14 Dec 2025 14:25:34 +0000
From: Lee Jones <lee@kernel.org>
To: hangsuan.wang@altera.com
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	devicetree <devicetree@vger.kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Thierry Reding <treding@nvidia.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Andrea della Porta <andrea.porta@suse.com>,
	Andrei Simion <andrei.simion@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>,
	Mahesh Rao <mahesh.rao@altera.com>, Marek <marex@denx.de>,
	Simon <simon.k.r.goldschmidt@gmail.com>,
	linux-drivers-review@altera.com,
	Muhammad Amirul Asyraf Mohamad Jamian <muhammad.amirul.asyraf.mohamad.jamian@altera.com>,
	Khairul Anuar Romli <khairul.anuar.romli@altera.com>
Subject: Re: [PATCH 0/4] Add Device Tree binding and nodes for Agilex5/Agilex
 SOC FCS configuration.
Message-ID: <20251214142534.GB9275@google.com>
References: <cover.1765534135.git.hang.suan.wang@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1765534135.git.hang.suan.wang@altera.com>

On Fri, 12 Dec 2025, hangsuan.wang@altera.com wrote:

> From: "Wang, Hang Suan" <hang.suan.wang@altera.com>
> 
> This patch series introduces necessary Device Tree (DT) support for the
> Soc/Hardware FPGA Crypto Service (fcs) functionality across the Altera
> Agilex SoC families. This feature allows the kernel to identify, interact
> and communicate with the high-speed FPGA hardware without interruption or
> software overhead.
> 
> The series structured as follows:
> Patch 1: Introduces the core YAML schema binding for a generic agilex5,
> soc-fcs-config miscellaneous device.
> Patch 2: Add fcs property to the existing stratix10-svc firmware binding.
> Patch 3&4: Add the fcs nodes to the respective Agilex5 and Agilex DT files.
> 
> ---
> Notes:
> This patch series is applied on socfpga maintainer's tree
> https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19
> 
> ---
> Wang, Hang Suan (4):
>   dt-bindings: misc: agilex5-soc-fcs-config: Add binding
>   dt-bindings: firmware: stratix10-svc: add fcs-config property
>   arm64: dts: socfpga: agilex5: add fcs node
>   arm64: dts: socfpga: agilex: add fcs node
> 
>  .../firmware/intel,stratix10-svc.yaml         |  4 +++
>  .../misc/intel,agilex5-soc-fcs-config.yaml    | 32 +++++++++++++++++++
>  MAINTAINERS                                   |  5 +++
>  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi |  4 +++
>  .../arm64/boot/dts/intel/socfpga_agilex5.dtsi |  5 +++

Why am I receiving this?

-- 
Lee Jones [李琼斯]

