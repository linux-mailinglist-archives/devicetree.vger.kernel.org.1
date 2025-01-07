Return-Path: <devicetree+bounces-136114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C27A03E83
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 13:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0D1221884C81
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 12:05:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526341EC004;
	Tue,  7 Jan 2025 12:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qMqWO5jg"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B97F1E0DD1;
	Tue,  7 Jan 2025 12:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736251494; cv=none; b=MAqlPMWp8CxMYsYvVcADPZkdEWlJcjz/5cuSGWCNwHSWKFMu/ennUBd1WHKRaD5EUhhiHgCDrBCFJ4BolM9KTuhkrfy2XDMKtrOVr2uymVDl22FN8oHX7DxeTXN8Wu5p0Mh2t86McTLph0HNlTvmQJpfC/qcGyb/zvoDueSYegY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736251494; c=relaxed/simple;
	bh=tQFTVQklOFJuS0fnyGbP+5Y5K99avOFLQwUn/VZ/qmI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SYTm1t1P2Ef2szoqanZgydrPQeOgnmGsdovtMRBYo0hMNcLSTDfXK4XCDpaZr5iS7dlmL6BpuvFwf6CVbnxAAc63lESKIM/kwv4YD3NHOMPcPi7ma2+I4zrlyHiML3bWUv/68fhE3G8BVUXlhhWCVsFMfFmwvpnyLSLFisggtFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qMqWO5jg; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736251490;
	bh=tQFTVQklOFJuS0fnyGbP+5Y5K99avOFLQwUn/VZ/qmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qMqWO5jgf/B8kNJP7HOObfAsnWQXwBl9msxJiVk6IJYdDwv6KtOjIPi4GZuS1lueo
	 9g0tjA+/9PItLTU6T8+/YRhm2Azput50yR11gGBBx292LaP2piShJ8XI+QidL2cRYe
	 XINgqnge7Rt96Jqnnp3XKF4zK82eXFeLkI8+IE9g6LRaQ0bhHMA5KVa3xbpSh8jbbZ
	 SH4U54hhfBdyMkxVTlKNKZGvoXZh1VewWV/WFFl8H07b8LUE636Itot7Iex3zbQl7V
	 pewff/vMkoxHElvAa71VzUMmD23llvcqT1KxZIKwa3QqFfKyG9Xwqs6pw0t5c5Cwjb
	 W+LZNEPHT8AyA==
Received: from notapiano (unknown [IPv6:2804:14c:1a9:53ee::1000])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9CD1117E1567;
	Tue,  7 Jan 2025 13:04:47 +0100 (CET)
Date: Tue, 7 Jan 2025 09:04:45 -0300
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Bjorn Helgaas <helgaas@kernel.org>
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
Message-ID: <042ee88b-61b4-436b-8d34-a5cfd5fd953e@notapiano>
References: <a58d5fa4-0d00-4ca1-941b-3ad69e65de80@notapiano>
 <20250106205607.GA132098@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250106205607.GA132098@bhelgaas>

On Mon, Jan 06, 2025 at 02:56:07PM -0600, Bjorn Helgaas wrote:
> [+cc Mani]
> 
> On Mon, Jan 06, 2025 at 04:10:32PM -0300, Nícolas F. R. A. Prado wrote:
> > On Fri, Jan 03, 2025 at 03:14:46PM -0600, Bjorn Helgaas wrote:
> > > On Wed, Jun 29, 2022 at 11:59:51AM -0400, Nícolas F. R. A. Prado wrote:
> > > > Enable MT8192's PCIe controller and add support for the MT7921e WiFi
> > > > card that is present on that bus for the Asurada platform.
> > > 
> > > > +&pcie {
> > > > +	pinctrl-names = "default";
> > > > +	pinctrl-0 = <&pcie_pins>;
> > > > +
> > > > +	pcie0: pcie@0,0 {
> > > > +		device_type = "pci";
> > > > +		reg = <0x0000 0 0 0 0>;
> > > > +		num-lanes = <1>;
> > > > +		bus-range = <0x1 0x1>;
> > > 
> > > Hi Nícolas, what's the purpose of this bus-range?  IIUC this describes
> > > a Root Port, where we can read and configure the secondary/subordinate
> > > bus numbers from the RP config space, so it seems like we don't need
> > > to describe them here.
> > 
> > Hi Bjorn,
> > 
> > that was carried over from the downstream sources. I just tried
> > removing it and indeed I don't see any difference in the PCI log
> > messages, or the bus number, and the wifi works just fine. I can
> > send a follow up patch removing it.
> 
> There might be a DTC check issue if we remove the bus-range:
> https://lore.kernel.org/r/20250105101612.t6c4pw5uxhb5rdde@thinkpad

Ah yes, indeed there is:

arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi:643.18-647.5: Warning (pci_device_bus_num): /soc/pcie@11230000/pcie@0,0/wifi@0,0: PCI bus number 1 out of range, expected (0 - 0)

Thanks,
Nícolas

> 
> We might need to figure out how to resolve that first.
> 
> Bjorn

