Return-Path: <devicetree+bounces-11334-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C90B7D5427
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 16:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3EF3B20FA7
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5BE1BDD1;
	Tue, 24 Oct 2023 14:35:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="dSonHfyU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B99D36B13
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:35:07 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53AA912B;
	Tue, 24 Oct 2023 07:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=60bjIo94UkHE2CZZn3CoER1KB39T3WL/vpJfYuOAqwM=; b=dSonHfyUX22aEeD4r9NWDM83y6
	CUq0iRwLH/Hd8pErD2rrfDql/Ha+0XsucIQd/B7voadR9dZA0XJyGjUd/t6UTSLINycD15KQWIh56
	rqGerXXI9zUt22KPbxB0H64yH609c0DBdHpHSin0YUQ2D/9Y5YbxXEhwegmi1bNFRiJk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qvIUl-00056D-AO; Tue, 24 Oct 2023 16:34:59 +0200
Date: Tue, 24 Oct 2023 16:34:59 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: cn913x: add device trees for COM Express
 boards
Message-ID: <83c5d62a-0ec8-423a-b779-62437f5fca6a@lunn.ch>
References: <20231024131935.2567969-1-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024131935.2567969-1-enachman@marvell.com>

On Tue, Oct 24, 2023 at 04:19:35PM +0300, Elad Nachman wrote:
> Add support for CN9130 and CN9131 COM Express Type 7 CPU module boards
> by Marvell.

So these are modules, which plug into a carrier. Its a SOM.

Then this should be split into a DTSI file for all the things on the
SOM, and a DTS file for the carrier. You want somebody to take the SOM
and put it on their own custom carrier, which will have its on DTS
description but reuse the DTSI file.

	Andrew


