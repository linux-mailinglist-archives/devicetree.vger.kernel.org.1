Return-Path: <devicetree+bounces-135457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C80E4A00FB0
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 22:22:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A904D16112E
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 21:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44FFA20013E;
	Fri,  3 Jan 2025 21:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BsB7G6j3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1232F20012D;
	Fri,  3 Jan 2025 21:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735938889; cv=none; b=gAsaUdusOwD19341ozDQ+BfBZBjuoSJwB3DjFpX7v+91wpRGwGiZEk0lQxJhK1GRt/zNJHPbwCw0Hbq1iKX1cXAEiH+zcWGSKpBMTxE4M07etLyGE/Jo+Nb4UyCaXAQyvYNagIX5ivmm3pVn6ujuH6HJivqQFHorvVguBEmaNxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735938889; c=relaxed/simple;
	bh=sFO4OH9CVkKVkoP3ZaKlYjcbwVR1mQy5pmUDUDk+dxk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=cH9Ezzme4lv9oQGT0OGWlLoDIb4vjCKs1dskOJPfLvtT2Q2XbhGDxodBUgl6uk9wSWi8OPPlbAnARjs91AHkW3CDHKjHM8zMbgPlG2hB/h0xEthWXlGmRzSZuM/ljxNnnPJskDmtLs6I3s6KcYNvtLeYVabgehLJ7xNFgAtRGSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BsB7G6j3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61E1CC4CED2;
	Fri,  3 Jan 2025 21:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735938888;
	bh=sFO4OH9CVkKVkoP3ZaKlYjcbwVR1mQy5pmUDUDk+dxk=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=BsB7G6j3mXf7S+4Or7YmadtifMWp4gWAqz/jVXG3Cba2mG0jI9jSDe2FVrTapZ+ZL
	 7WBNfkKJW6CkYWMvqMefbyAPXboKV/QNqHRge9ZkE6b2M1UcLO73RCTsx3EIQzxpLN
	 VOn45m+Hr2nJJo0EbSd3pEQxf6PRNbUKfC3nWj+LpJ6mqYAe0JoClW1aw/nwpoUA2q
	 yD4VoTB8tMqr/Kt9ClyJafBkXP5hxWyd0B2cgbnDUkTnOtog4ieGFHcgxaPCwYb34F
	 h3QGz49mTd7DsgSNy2G0swP6tQwc3d/kT/MrGFj0PUBbVKzMN9pYXWVhAvB0wOW9Kf
	 GoxTAYk9K9YUQ==
Date: Fri, 3 Jan 2025 15:14:46 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <nfraprado@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	kernel@collabora.com, Chen-Yu Tsai <wenst@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v4 14/19] arm64: dts: mediatek: asurada: Enable PCIe and
 add WiFi
Message-ID: <20250103211446.GA4063@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220629155956.1138955-15-nfraprado@collabora.com>

On Wed, Jun 29, 2022 at 11:59:51AM -0400, Nícolas F. R. A. Prado wrote:
> Enable MT8192's PCIe controller and add support for the MT7921e WiFi
> card that is present on that bus for the Asurada platform.

> +&pcie {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_pins>;
> +
> +	pcie0: pcie@0,0 {
> +		device_type = "pci";
> +		reg = <0x0000 0 0 0 0>;
> +		num-lanes = <1>;
> +		bus-range = <0x1 0x1>;

Hi Nícolas, what's the purpose of this bus-range?  IIUC this describes
a Root Port, where we can read and configure the secondary/subordinate
bus numbers from the RP config space, so it seems like we don't need
to describe them here.

> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		wifi: wifi@0,0 {
> +			reg = <0x10000 0 0 0 0x100000>,
> +			      <0x10000 0 0x100000 0 0x100000>;
> +			memory-region = <&wifi_restricted_dma_region>;
> +		};
> +	};
> +};

