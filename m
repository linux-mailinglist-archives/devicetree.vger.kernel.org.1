Return-Path: <devicetree+bounces-6951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAA07BDEFC
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 15:25:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B496281573
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 13:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC89A1A5BB;
	Mon,  9 Oct 2023 13:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b+eN7QGE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 891981A5BA
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 13:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF059C433CB;
	Mon,  9 Oct 2023 13:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696857906;
	bh=Z6eqqE3jHcCQCoAk0iVQ+k59tYwfIx9uCwy4N9r4o0g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=b+eN7QGEqBqyeYp1jqsSW5+PiQNJQFkRelMQ/0ODCc+7mY77gT6u+Mz2+0anJDzgG
	 d7J4l14NnH+HUgxRXt2UlPSMMsB/vPEfPmcf6okO1Z8titMoaZwmnfclvVtjVfd/js
	 Lw4P29oED6p8HpJIzgG6/+VeLXC5XdEP+VJfjJeBeJI05bBTgPAhK5gYsq8CFCTD/C
	 VdqtIrGdpaKKZZ4dyktzXfVB/ZrY74OO2qXWYYe5FxI7ex4eWDXlqFyJ2V972nXXLA
	 vJ1VHq1foWWIDybuUS/adMOaGe3d6/KEnRC7ypdvFmjDOBROhlq5+HkhxnDrAsEA6e
	 /FoMIRJ9RVlow==
Date: Mon, 9 Oct 2023 21:24:55 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Laurentiu Tudor <laurentiu.tudor@nxp.com>
Cc: leoyang.li@nxp.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] arm64: dts: ls208xa: use a pseudo-bus to constrain
 usb dma size
Message-ID: <20231009132455.GE733979@dragon>
References: <20230925151015.4449-1-laurentiu.tudor@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925151015.4449-1-laurentiu.tudor@nxp.com>

On Mon, Sep 25, 2023 at 06:10:15PM +0300, Laurentiu Tudor wrote:
> Wrap the usb controllers in an intermediate simple-bus and use it to
> constrain the dma address size of these usb controllers to the 40b
> that they generate toward the interconnect. This is required because
> the SoC uses 48b address sizes and this mismatch would lead to smmu
> context faults [1] because the usb generates 40b addresses while the
> smmu page tables are populated with 48b wide addresses.
> 
> [1]
> xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 1
> xhci-hcd xhci-hcd.0.auto: hcc params 0x0220f66d hci version 0x100 quirks 0x0000000002000010
> xhci-hcd xhci-hcd.0.auto: irq 108, io mem 0x03100000
> xhci-hcd xhci-hcd.0.auto: xHCI Host Controller
> xhci-hcd xhci-hcd.0.auto: new USB bus registered, assigned bus number 2
> xhci-hcd xhci-hcd.0.auto: Host supports USB 3.0 SuperSpeed
> arm-smmu 5000000.iommu: Unhandled context fault: fsr=0x402, iova=0xffffffb000, fsynr=0x0, cbfrsynra=0xc01, cb=3
> 
> Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>

Applied, thanks!

