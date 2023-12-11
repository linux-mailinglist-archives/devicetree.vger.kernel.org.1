Return-Path: <devicetree+bounces-24044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E83D680DAAB
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 20:15:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6CB50B20BC5
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 19:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 182F8524CF;
	Mon, 11 Dec 2023 19:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="YNrEZQS5"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 816F3C0;
	Mon, 11 Dec 2023 11:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=WOso+pBmLou5CWghhufYbUN6QGAKv2w+0GIVbbVVk1Y=; b=YNrEZQS5GpbhYvnAh8ioHpQAjx
	972QjT0Ahb2fTQquF1sESoXaldKDQO0FSgWhcrLPoS4Akx2OKEfb/WCqNxTXRfZ5eZvQOr1b/Rtaa
	WZbYQIWoSWGefoxhdTpnr8phFaXQFDn4QBD+nczQkeAj0CsTsBYvO8xky3Osp0Byx0zg=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rCljw-002eZx-QC; Mon, 11 Dec 2023 20:14:52 +0100
Date: Mon, 11 Dec 2023 20:14:52 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v8 1/3] MAINTAINERS: add ac5 to list of maintained
 Marvell dts files
Message-ID: <2920ed0b-dda0-4a57-8097-52fd532d9f63@lunn.ch>
References: <20231211171739.4090179-1-enachman@marvell.com>
 <20231211171739.4090179-2-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231211171739.4090179-2-enachman@marvell.com>

On Mon, Dec 11, 2023 at 07:17:37PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add ac5 dts files to the list of maintained Marvell Armada dts files
> by defining the entry as covering the entire marvell arm64 directory
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

