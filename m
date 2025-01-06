Return-Path: <devicetree+bounces-135952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A522A031A9
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 21:56:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDC673A3A93
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C1901E009A;
	Mon,  6 Jan 2025 20:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrWxyX9H"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81371E0086;
	Mon,  6 Jan 2025 20:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736196970; cv=none; b=kTHKCXTltDqLrICN3UaivPQAxT+PZ7IJpH1+cf8cjOBPO1tCLCKmU7uud/tMaU5uMr2iIBDGZO/jvADdbf0HHV6c4tXzBRzXk49xOXUs56cHt7n6DMmDY8Z41Pv7g3Ql6CXQsMK9PtUJcLUsLulrKTR+/kEnQtPxKFLdK05xwrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736196970; c=relaxed/simple;
	bh=Bp0AmOc4jyy9KcD833oCqGI0Rcpq9xAyFWoXkihM1xA=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=bnLI2zIbBp8HsTVc+494inSK6PasXAWeh39WD/nuI4lJriFTND0SkXimeJlnnT7Uv86tJ9vmSypufzdMNvmCfSTrChVxo+KTBCcvYUIieErnJctGDDV5BcK23q8whh9OYQzK2cFFBRkDLniEFOTO3ZvaQFolaIKpdGND0YFLkRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrWxyX9H; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 489EAC4CED6;
	Mon,  6 Jan 2025 20:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736196969;
	bh=Bp0AmOc4jyy9KcD833oCqGI0Rcpq9xAyFWoXkihM1xA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=NrWxyX9HMrCCGr6Vuia3ueWRnwtyQJsj8CMkRfV2Ji9LxVDD+yI8GnHV3d/aoAwmt
	 u/zh0T5RZ4cI2DXubYgAPPVYnwCKSil06bTNXgSV/OxMAuRGB5+zdqG0n9vDQLdEU9
	 E9S78gaqRcmBuknnW8VP3BB5Gjo0lAStbDoVqlIAwphadEVY468PDIb51fwmONRbUv
	 ufK6G/kP0HUZNRC0TaZlJR82e8dNbbpYWFSFHC45LB95U5MDUrwVo6KM17Sh+EAAel
	 p7qet0Vq04PlnXqlhrZ/a9m7qMDIKWR2U5nyIqMWRjdALNIEpxNBioU5uuOREZKoyl
	 aGQPlKQ+MnpGw==
Date: Mon, 6 Jan 2025 14:56:07 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kernel@collabora.com, Chen-Yu Tsai <wenst@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v4 14/19] arm64: dts: mediatek: asurada: Enable PCIe and
 add WiFi
Message-ID: <20250106205607.GA132098@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a58d5fa4-0d00-4ca1-941b-3ad69e65de80@notapiano>

[+cc Mani]

On Mon, Jan 06, 2025 at 04:10:32PM -0300, Nícolas F. R. A. Prado wrote:
> On Fri, Jan 03, 2025 at 03:14:46PM -0600, Bjorn Helgaas wrote:
> > On Wed, Jun 29, 2022 at 11:59:51AM -0400, Nícolas F. R. A. Prado wrote:
> > > Enable MT8192's PCIe controller and add support for the MT7921e WiFi
> > > card that is present on that bus for the Asurada platform.
> > 
> > > +&pcie {
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&pcie_pins>;
> > > +
> > > +	pcie0: pcie@0,0 {
> > > +		device_type = "pci";
> > > +		reg = <0x0000 0 0 0 0>;
> > > +		num-lanes = <1>;
> > > +		bus-range = <0x1 0x1>;
> > 
> > Hi Nícolas, what's the purpose of this bus-range?  IIUC this describes
> > a Root Port, where we can read and configure the secondary/subordinate
> > bus numbers from the RP config space, so it seems like we don't need
> > to describe them here.
> 
> Hi Bjorn,
> 
> that was carried over from the downstream sources. I just tried
> removing it and indeed I don't see any difference in the PCI log
> messages, or the bus number, and the wifi works just fine. I can
> send a follow up patch removing it.

There might be a DTC check issue if we remove the bus-range:
https://lore.kernel.org/r/20250105101612.t6c4pw5uxhb5rdde@thinkpad

We might need to figure out how to resolve that first.

Bjorn

