Return-Path: <devicetree+bounces-141224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 470AAA200A9
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 23:37:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43A7E3A50B4
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 22:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 959EA1DA11B;
	Mon, 27 Jan 2025 22:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQtGzaPn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D6B31B3F3D;
	Mon, 27 Jan 2025 22:37:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738017441; cv=none; b=eL+IbHOqrv3IgcfLyeVbXE+zu6WEbIhGn3sCcBwJ8hn5cUlqGwX9sHjbzQZKH+ONxCP2CTUJupMKkV2Wn4yPh/nt8oH8Hf9USqVPsxHGPV5sSXDSvJABT3Q4elA43mFvywKIvTAO8dRWWWPMcxP8yVolcaxaRJKZH2UMrEhaUZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738017441; c=relaxed/simple;
	bh=Q15LT01SKkEFQ7s0hq0N1TkWUsaoeZM4yduP53hP4u0=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=LU3e4WQj0xph70yUWfaQhX9+vj3yDld+QFu3FvwRgYUmAGM67qKxcY4+yz8XlA5HImUz66CzeCfydjDXp8x97wDMj8cpRy5KZpM1jQ+xnMJUejc5u7dxttX1QmKEo/D5tx12btF8+HS1WBvfrd6c7hicIZy3Md8kwNgP/qVQRS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQtGzaPn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6443C4CED2;
	Mon, 27 Jan 2025 22:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738017440;
	bh=Q15LT01SKkEFQ7s0hq0N1TkWUsaoeZM4yduP53hP4u0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=bQtGzaPnRrUJCqC+vTx35sPL5jya7O1ggSd0wyDWIAKkWGhhQ+p6lyxYPjaCF8UFH
	 ZIvytX26MmRny0dg5RVRbgtvTqLVCG2VFuHBPRRB44qEVKbx5QXktzDMiixc16fetB
	 4yEV5Ha16sc2wMBEZFqBfKAczUqtHxR2OkxRH+451OZJ8G/SHgjLOlITmH4ZV/xDfS
	 z/Z/YLkxAAVV/RAJY7xc7vxNbBbR/OZX6n5E+0QWN7734D93DJVF2F6Ii+2vun0MeB
	 g1ipWsL92ApcZZmYzsDTLmUSpCIDJe7dVQPfVisuZOyQywqT7mAhAKRiq3QbJCCU+5
	 7bDlm8633wTmA==
Date: Mon, 27 Jan 2025 16:37:19 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Hari Nagalla <hnagalla@ti.com>, 
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, Devarsh Thakkar <devarsht@ti.com>, 
 Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Judith Mendez <jm@ti.com>
In-Reply-To: <20250127221631.3974583-1-jm@ti.com>
References: <20250127221631.3974583-1-jm@ti.com>
Message-Id: <173801742334.1179786.10533536271725116340.robh@kernel.org>
Subject: Re: [PATCH 0/4] Add R5F and C7xv device nodes


On Mon, 27 Jan 2025 16:16:27 -0600, Judith Mendez wrote:
> For am62x and am62ax devices, this patch series adds device
> nodes for the R5 cores and C7xv DSP subsystem found in their
> respective voltage domain, based on the device TRMs [0][1].
> 
> Boot tested on am62x SK and am62ax SK boards.
> 
> [0] https://www.ti.com/lit/pdf/spruj16
> [1] https://www.ti.com/lit/pdf/spruiv7
> 
> Devarsh Thakkar (1):
>   arm64: dts: ti: k3-am62a-wakeup: Add R5F device node
> 
> Hari Nagalla (2):
>   arm64: dts: ti: k3-am62-wakeup: Add wakeup r5f node
>   arm64: dts: ti: k3-am62a-mcu: Add R5F remote proc node
> 
> Jai Luthra (1):
>   arm64: dts: ti: k3-am62a-main: Add C7xv device node
> 
>  arch/arm64/boot/dts/ti/k3-am62-wakeup.dtsi  | 24 ++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62a-main.dtsi   | 11 +++++++
>  arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi    | 36 +++++++++++++++++++++
>  arch/arm64/boot/dts/ti/k3-am62a-wakeup.dtsi | 23 +++++++++++++
>  4 files changed, 94 insertions(+)
> 
> --
> 2.48.0
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/ti/' for 20250127221631.3974583-1-jm@ti.com:

arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: dsp@7e000000: 'mboxes' is a required property
	from schema $id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
arch/arm64/boot/dts/ti/k3-am62a7-sk.dtb: dsp@7e000000: 'memory-region' is a required property
	from schema $id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: dsp@7e000000: 'mboxes' is a required property
	from schema $id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#
arch/arm64/boot/dts/ti/k3-am62a7-phyboard-lyra-rdk.dtb: dsp@7e000000: 'memory-region' is a required property
	from schema $id: http://devicetree.org/schemas/remoteproc/ti,k3-dsp-rproc.yaml#






