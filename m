Return-Path: <devicetree+bounces-92719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E8594E1FF
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 17:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E4212811DF
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 15:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F64114B971;
	Sun, 11 Aug 2024 15:54:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="A7jTCXvU"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD967F6;
	Sun, 11 Aug 2024 15:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723391657; cv=none; b=cgHetkVzIIJLfI47nLuJGilNfzy6MAspek8O0QEPiDOzP/LhlkjlEyQMRN8PHNEux0P2Ikg+RJagtqxF0mfaWi7qQxo9dYO/KuedgJJRdHWpEVEJUeZCIPSVqI+81o/p+/vFh1/wegJ5huP618tCtS/Axiz3WVJ4DPzgSLFomCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723391657; c=relaxed/simple;
	bh=fn1UzPLI6FrNfkhAyw/vnxT8ggGCA+eAK9oHiatVcLM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oH1a7K/MEfRvILnA07dEczeyE0UQLIbyoxfOVVlqqchChQ0L8LgLuUs9Z0mPO3hDaiijN/OylFGI14jnpiJf2mUGJaE9uANAKA0X4E1+RHzQ28FNCtOskQMt8UtUg7e401v3Y7o9cSzm+J6gobWvU0qlE1AC2mDQ0ckZLbWyWNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=A7jTCXvU; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=UuZDssQw1c79i+xuRbA8xN3ZpYWvEHDUc64BQGNXC9A=; b=A7jTCXvU2cTr+52uwUaLahf+zd
	KIPtDgZ2xTa5HRyY03sMvPI5WPQCS3Z4jv5+boQzFiKefR+pxfzY010/rTJe07TdwdI9xiZ1SsJg5
	u0X+KuKA4iVLDSJKoB6j58/4I4L2Gmrl3TX2TVzUQyX7q3tqeArXQzm+/xEWYsqqIX9U=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sdAtP-004VV9-73; Sun, 11 Aug 2024 17:54:03 +0200
Date: Sun, 11 Aug 2024 17:54:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, horms@kernel.org, saeedm@nvidia.com,
	anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, corbet@lwn.net,
	linux-doc@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, horatiu.vultur@microchip.com,
	ruanjinjie@huawei.com, steen.hegelund@microchip.com,
	vladimir.oltean@nxp.com, masahiroy@kernel.org,
	alexanderduyck@fb.com, krzk+dt@kernel.org, robh@kernel.org,
	rdunlap@infradead.org, hkallweit1@gmail.com, linux@armlinux.org.uk,
	UNGLinuxDriver@microchip.com, Thorsten.Kummermehr@microchip.com,
	Pier.Beruto@onsemi.com, Selvamani.Rajagopal@onsemi.com,
	Nicolas.Ferre@microchip.com, benjamin.bigler@bernformulastudent.ch,
	linux@bigler.io
Subject: Re: [PATCH net-next v5 09/14] net: ethernet: oa_tc6: implement
 transmit path to transfer tx ethernet frames
Message-ID: <36ac502f-e24e-4aaf-a905-4036e8ea1ea3@lunn.ch>
References: <20240730040906.53779-1-Parthiban.Veerasooran@microchip.com>
 <20240730040906.53779-10-Parthiban.Veerasooran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730040906.53779-10-Parthiban.Veerasooran@microchip.com>

On Tue, Jul 30, 2024 at 09:39:01AM +0530, Parthiban Veerasooran wrote:
> The transmit ethernet frame will be converted into multiple transmit data
> chunks. Each transmit data chunk consists of a 4 bytes header followed by
> a 64 bytes transmit data chunk payload. The 4 bytes data header occurs at
> the beginning of each transmit data chunk on MOSI. The data header
> contains the information needed to determine the validity and location of
> the transmit frame data within the data chunk payload. The number of
> transmit data chunks transmitted to mac-phy is limited to the number
> transmit credits available in the mac-phy. Initially the transmit credits
> will be updated from the buffer status register and then it will be
> updated from the footer received on each spi data transfer. The received
> footer will be examined for the transmit errors if any.
> 
> Signed-off-by: Parthiban Veerasooran <Parthiban.Veerasooran@microchip.com>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

