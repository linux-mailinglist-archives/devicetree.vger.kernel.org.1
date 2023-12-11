Return-Path: <devicetree+bounces-24046-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D780780DAB6
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 20:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 911492816AD
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 19:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CEE9524D7;
	Mon, 11 Dec 2023 19:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="auGTTiAF"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 407A0CF;
	Mon, 11 Dec 2023 11:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=Ex16LPTDyHoEZebn1SZl/KWeMXV5jFFCrSbz7xxNfbE=; b=auGTTiAFc7JI7Fu8KUfhh1DwFS
	EUBfFVkhUpHkaQMCucP81o30rble7GPw4Ec+Hh8ys2ThmuWZYiprX3YSICpzNlXeZv+/H6IjxL2cV
	PwpllUoEDOWN2n3aYPjsaxiIGDkAWA30skgQumB7sKe3yVxufRa77UW9Xu7dXhoC7WaM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rCllM-002ec5-QF; Mon, 11 Dec 2023 20:16:20 +0100
Date: Mon, 11 Dec 2023 20:16:20 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v8 3/3] arm64: dts: cn913x: add device trees for COM
 Express boards
Message-ID: <9f565a9c-18b1-4e83-905d-27b6585fa800@lunn.ch>
References: <20231211171739.4090179-1-enachman@marvell.com>
 <20231211171739.4090179-4-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231211171739.4090179-4-enachman@marvell.com>

On Mon, Dec 11, 2023 at 07:17:39PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add support for CN9130 and CN9131 COM Express Type 7 CPU
> module boards by Marvell.
> Define these COM Express CPU modules as dtsi and
> provide a dtsi file for a carrier board (Marvell AC5X RD
> COM Express type 7 carrier board).
> This Carrier board only utilizes the PCIe link, hence no
> special device / driver support is provided by this dtsi file.
> Finally, provide a dts file for the com express carrier and
> CPU module combination.
> 
> These COM Express boards differ from the existing CN913x DB
> boards by the type of ethernet connection (RGMII),
> the type of voltage regulators (not i2c expander based)
> and the USB phy (not UTMI based).
> Note - PHY + RGMII connector is OOB on CPU module.
> CN9131 COM Express board is basically CN9130 COM Express board
> with an additional CP115 I/O co-processor, which in this case
> provides an additional USB host controller on the board.
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

