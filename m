Return-Path: <devicetree+bounces-12676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F067DAD93
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 18:52:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A76EE1C208CE
	for <lists+devicetree@lfdr.de>; Sun, 29 Oct 2023 17:52:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A71ADF56;
	Sun, 29 Oct 2023 17:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="ytIRYPJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FE085256
	for <devicetree@vger.kernel.org>; Sun, 29 Oct 2023 17:52:52 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A6F3B6;
	Sun, 29 Oct 2023 10:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=slph0BLtYpy7tJNU53U/kccnP+pdnwLXKhMX74RmHRY=; b=ytIRYPJ/6DsNb/UuhROiJkmOc2
	r++kpmX61jW+lSTZGUvnu+dNpfUS45NF04m2deTKi6oNUFTPZlgkn4zLDHQiHobj4s0BfLiZzlcF0
	JwIbvoJtXIF0Vgxw5e7cqeY0hPavQ9pm6UFq9fBYBewOjl5nRl/FC6ISfFEgEr37+o8A=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1qx9xl-000SIR-7x; Sun, 29 Oct 2023 18:52:37 +0100
Date: Sun, 29 Oct 2023 18:52:37 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Elad Nachman <enachman@marvell.com>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, gregory.clement@bootlin.com,
	sebastian.hesselbarth@gmail.com, pali@kernel.org,
	mrkiko.rs@gmail.com, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, cyuval@marvell.com
Subject: Re: [PATCH v4 1/3] MAINTAINERS: add ac5 to list of maintained
 Marvell dts files
Message-ID: <c4f3787c-0ed2-486d-b4f7-29da2223e6bc@lunn.ch>
References: <20231029174814.559583-1-enachman@marvell.com>
 <20231029174814.559583-2-enachman@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231029174814.559583-2-enachman@marvell.com>

On Sun, Oct 29, 2023 at 07:48:12PM +0200, Elad Nachman wrote:
> From: Elad Nachman <enachman@marvell.com>
> 
> Add ac5 dts files to the list of maintained Marvell Armada dts files
> 
> Signed-off-by: Elad Nachman <enachman@marvell.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

