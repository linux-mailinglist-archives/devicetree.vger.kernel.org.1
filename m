Return-Path: <devicetree+bounces-12677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 300AA7DAD9B
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 19:03:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4AD8281469
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 18:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C602101FB;
	Sun, 29 Oct 2023 18:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="Q5m6uCVi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0783214
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 18:03:33 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55276B7;
	Sun, 29 Oct 2023 11:03:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=WyDNXOkQ4R+FvTl5P+Eq1SiMepb+oupfbJGud2IUED4=; b=Q5m6uCVi075sVN2SCbsJtwX5nN
	cGor5wsIsx0f13NqxPbKKLVXdZet1PBCDEnhDZ4WGiw7HGrQC8YUrsOXz8hK1/Vy4287zFU2KXBi7
	CVFu+QoxVBYxBULWCgKYpwiyMwSW7Kl/bf3J7O/+smu/b9BRMhhiXI9lgjSJpz1uokVM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qxA8A-000SKf-Rg; Sun, 29 Oct 2023 19:03:22 +0100
Date: Sun, 29 Oct 2023 19:03:22 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v4 3/3] arm64: dts: cn913x: add device trees for COM
 Express boards
Message-ID: <0c732f04-d1ce-4662-bc99-226784f9fb10@lunn.ch>
References: <20231029174814.559583-1-enachman@marvell.com>
 <20231029174814.559583-4-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029174814.559583-4-enachman@marvell.com>

> +++ b/arch/arm64/boot/dts/marvell/ac5x-rd-carrier.dtsi
> @@ -0,0 +1,15 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (C) 2023 Marvell International Ltd.
> + *
> + * Device tree for the AC5X RD Type 7 Com Express carrier board,
> + * This specific board only maintains a PCIe link with the CPU CPU module
> + * module, which does not require any special DTS definitions.
> + */
> +
> +/ {
> +	model = "Marvell Armada AC5X RD COM EXPRESS type 7 carrier board";
> +	compatible = "marvell,rd-ac5x-carrier", "marvell,cn9131", "marvell,cn9130",
> +		     "marvell,armada-ap807-quad", "marvell,armada-ap807";

This sees wrong to me. Say i mount a congatec Module in it. Its then
is not compatible with marvell,cn9131 etc. I think you should just
list the carrier compatible here.

> +#include "cn9130-db.dtsi"
> +
> +/ {
> +	model = "Marvell Armada CN9130-DB COM EXPRESS type 7 CPU module board";
> +	compatible = "marvell,cn9130-cpu-module", "marvell,cn9130",
> +		     "marvell,armada-ap807-quad", "marvell,armada-ap807";
> +
> +	memory@0 {
> +		device_type = "memory";
> +		reg = <0x0 0x0 0x2 0x00000000>;

Is the memory soldered down, or socketed?

	Andrew

