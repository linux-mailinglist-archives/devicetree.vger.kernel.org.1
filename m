Return-Path: <devicetree+bounces-41318-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C42853245
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 14:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 22B8F1C26FBD
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 13:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3972F56465;
	Tue, 13 Feb 2024 13:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBQJNzpS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1686C57867
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 13:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707832278; cv=none; b=e15epOKoRMPrUttvMzhr5qxEmHpnYJIuJEwPb4LMblCN0BLvpKffVcbIqBA99U7/VtBiAj1LUvUGDxI2tqewS4WmAO63cE5As1334Pg5LHo3a0nuOay707V5jF94bYGDpSCrAWcY8cQIFl5ImZrdVlgpIrfq1P8zn2Qkcoko2+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707832278; c=relaxed/simple;
	bh=HNhK27P/m0iZHnaSdD6ARgBcTakNthY+kBcRycKd/LE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxViRLlSexsQGNyOUrqDUDpxmPxR3LDXG1AWJfeLncV63fY28KfzcYecf3bfSt0ELRYyGmUo4IRPUmdhOmq/hZWH4k4txbwQXyK+4EwLP58jicIQc2LisSZ0M58FF4h440yvP9oxa4otzg60J9pT/QEcnyNd1Nc6Z7Xptas3k04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBQJNzpS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A650C433C7;
	Tue, 13 Feb 2024 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707832277;
	bh=HNhK27P/m0iZHnaSdD6ARgBcTakNthY+kBcRycKd/LE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jBQJNzpS0WRPH8pgo/PWe64NvyKCeFuzLG/q949mn/LVMrLK5bB5x8iw8Jfb0bNIs
	 5HVDuGaY4i3dRZqMhOcq6fSOoWohTANgn8OTu3+UOB+MD/4R8HY8hpuJVQ4dJDeywf
	 9653oQzL3wKE+zp6iTR5TIwLTcuActBiun+mD91pmBEw5LAYx36jkREB8heM3yPwlx
	 B5rRJo2Z6Kv3V4sahdkkcWJs1a4aJxvBxhOmOuQb5Pw+3dviiZ7OfkxPDoCKqxTOOf
	 Bth2NP2gsRmFarGIS0E9NgQy/Tt6aQc5NLQJpKDMTUjThGABYV6d+R8sxkViMjzVNK
	 rCJzzzF/V1dfA==
Date: Tue, 13 Feb 2024 07:51:15 -0600
From: Rob Herring <robh@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: AML <linux-amlogic@lists.infradead.org>,
	DT <devicetree@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v2 4/4] arm64: dts: amlogic: add fbx8am DT overlays
Message-ID: <20240213135115.GA1090963-robh@kernel.org>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <5ac4741d-766d-4b6d-95ac-669474d05e6a@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ac4741d-766d-4b6d-95ac-669474d05e6a@freebox.fr>

On Mon, Feb 12, 2024 at 06:53:01PM +0100, Marc Gonzalez wrote:
> From: Pierre-Hugues Husson <phhusson@freebox.fr>
> 
> Add support for two variants of the fbx8am board.
> 
> Signed-off-by: Pierre-Hugues Husson <phhusson@freebox.fr>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  arch/arm64/boot/dts/amlogic/Makefile                       |  7 +++++++
>  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-brcm.dtso    | 35 ++++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso | 25 ++++++++++++++++++++++++
>  3 files changed, 67 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
> index e9baa2cf02273..2fd7c7a18126f 100644
> --- a/arch/arm64/boot/dts/amlogic/Makefile
> +++ b/arch/arm64/boot/dts/amlogic/Makefile
> @@ -81,3 +81,10 @@ dtb-$(CONFIG_ARCH_MESON) += meson-sm1-odroid-hc4.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-sei610.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air-gbit.dtb
>  dtb-$(CONFIG_ARCH_MESON) += meson-sm1-x96-air.dtb
> +
> +# Overlays
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-brcm.dtbo
> +dtb-$(CONFIG_ARCH_MESON) += meson-g12a-fbx8am-realtek.dtbo
> +
> +# Enable support for DT overlays
> +DTC_FLAGS_meson-g12a-fbx8am += -@

Overlays need to be applied to something in the kernel at build time.
Applying is done the same way as composing object files for modules.

Rob

