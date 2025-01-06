Return-Path: <devicetree+bounces-135914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 57DABA03036
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 20:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D51EC1882EA6
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 19:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 666781DF993;
	Mon,  6 Jan 2025 19:10:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="k6kyKbkz"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CAA1DF97A;
	Mon,  6 Jan 2025 19:10:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736190641; cv=none; b=lXzrw4ly6G91JOf6yxVastYqHO2YQkxET/d+T0aEurdgG67hmCrzDjFeloBWnz/4KMV0P/CBXgjenN14Yf8DX8/3rpo8b+NDbEs9zUfts6i8i6hNmiBycM9HCdmGL0OM0qoMGdi6ljQIVzwaBac/RxxI5Olck4tuWzIXCpibN34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736190641; c=relaxed/simple;
	bh=WzcDAuGLKvkvy9b11Mfq8Pz2IlzT9+yewUe37tBQURw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Wm4kjyVwdbvnYQzwqYQFkj7Cz4EmhFoIhscr2C20fKOm9zZ/TEv492zLlJ8cukGioCbWEDfnj3ILUO8uV1j2AiKsd5WmaBLcDtpqwXJTLplI04yFXEsl9/Mr4L9c212yltHEq63pnM4SqsYUUUdBzfRBICspIf9zZE4jjDOuGc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=k6kyKbkz; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1736190637;
	bh=WzcDAuGLKvkvy9b11Mfq8Pz2IlzT9+yewUe37tBQURw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k6kyKbkzVWAmpOi0nGnfGoY8Fmq2ZxNtXl6lIWh6eZNArJnBOUJLiXpaGSxBNwel7
	 phgTVXN2bIBCJ5nZkPUXZPITMyvmrYpdHj74wyCJU9aZeEwTq/tcthI1tY9N5DAxO8
	 CWvIMTSgoIy+vxbd0QOeIgLNX6Es+j1qfh4+C6rh6UnNVsPZwZVdHKwNwWdz3ia619
	 0xWqvL16DA+8mmEoSHf1g8vNMdt9Kt7YPmcN9XPk8u8g2e2mP6o+uWKo8vP4eZosK9
	 aXRJgPSZoQF9wpADmqVIibZjRHCZlqid4rrExzGjf6GFnXLMdysAkqbgO1RkV9jb9O
	 K6drKuYQL4/ww==
Received: from notapiano (unknown [IPv6:2804:14c:1a9:53ee::1001])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8F2B317E15D2;
	Mon,  6 Jan 2025 20:10:34 +0100 (CET)
Date: Mon, 6 Jan 2025 16:10:32 -0300
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kernel@collabora.com, Chen-Yu Tsai <wenst@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 14/19] arm64: dts: mediatek: asurada: Enable PCIe and
 add WiFi
Message-ID: <a58d5fa4-0d00-4ca1-941b-3ad69e65de80@notapiano>
References: <20220629155956.1138955-15-nfraprado@collabora.com>
 <20250103211446.GA4063@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250103211446.GA4063@bhelgaas>

On Fri, Jan 03, 2025 at 03:14:46PM -0600, Bjorn Helgaas wrote:
> On Wed, Jun 29, 2022 at 11:59:51AM -0400, Nícolas F. R. A. Prado wrote:
> > Enable MT8192's PCIe controller and add support for the MT7921e WiFi
> > card that is present on that bus for the Asurada platform.
> 
> > +&pcie {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie_pins>;
> > +
> > +	pcie0: pcie@0,0 {
> > +		device_type = "pci";
> > +		reg = <0x0000 0 0 0 0>;
> > +		num-lanes = <1>;
> > +		bus-range = <0x1 0x1>;
> 
> Hi Nícolas, what's the purpose of this bus-range?  IIUC this describes
> a Root Port, where we can read and configure the secondary/subordinate
> bus numbers from the RP config space, so it seems like we don't need
> to describe them here.

Hi Bjorn,

that was carried over from the downstream sources. I just tried removing it and
indeed I don't see any difference in the PCI log messages, or the bus number,
and the wifi works just fine. I can send a follow up patch removing it.

Thanks,
Nícolas

