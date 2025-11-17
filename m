Return-Path: <devicetree+bounces-239402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDB1C647F0
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 9E2CD28EFD
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 13:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6239F334367;
	Mon, 17 Nov 2025 13:52:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="3LztfpVT"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E8C031D74C;
	Mon, 17 Nov 2025 13:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763387549; cv=none; b=gPqvA60i1cVlNbM/T9RdYul1iXU7QNLLB3bv6gIG5wJjhJRRzG27Pf0DasQw6uwAesl1zTY0XzGnxWPaXmn0UuwC6mccQ4VdBNT23uoSj5GqUZ3Xm9sgdXzbWFj9xUXQGItS9xsooIcDDi4r4Y2OFVKTGeEilIyBqVxhEowqmZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763387549; c=relaxed/simple;
	bh=i+/Cz7LbUaW8lGDGYgYPKvisWdfUva7L3J+qkZPPVgE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UaKsvASbTuf98YUyZTHIptERdq+RziP04gnM1Eh+DsaKV5li7CrmquyLfrC6RgxSgf37PUmNEytmo9oJKUwswPkjn1eyYxMo6uErGLa0CgfLX9TQxsTCif0ly7ZLcnwKWvGPkFtng0B+FBNU9JIcGQ2rNhTMGpCCdEAszxlVL5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=3LztfpVT; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=3rMa0vHinhn16QhvpeXW6BH6f/dRtmTJzHc7U5q+2Xg=; b=3LztfpVT7WVXYpiOtuPLBWNo6y
	4umdLMc8kog9BKq66F3keVG8R0I5E2vhOXcRY1jm8sAN16RgTl+jbzGYTEw4l/Pws1qi6wqVu6FbA
	N0Yde71Sd4ty6qXzRbCP08YdkLZl+JVNVP3S4hdiXCu2lFfS5ZSLFr4oyopNP7lu8Xac=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vKzeX-00EFO4-JD; Mon, 17 Nov 2025 14:52:21 +0100
Date: Mon, 17 Nov 2025 14:52:21 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Martin Schmiedel <Martin.Schmiedel@tq-group.com>,
	linux@ew.tq-group.com, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/8] arm64: dts: tqma8mpql-mba8mpxl: Fix Ethernet PHY IRQ
 support
Message-ID: <78db2d41-7e94-4904-870f-91bf0e0fe835@lunn.ch>
References: <20251117123643.711968-1-alexander.stein@ew.tq-group.com>
 <20251117123643.711968-3-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251117123643.711968-3-alexander.stein@ew.tq-group.com>

On Mon, Nov 17, 2025 at 01:36:29PM +0100, Alexander Stein wrote:
> Ethernet PHY interrupt mode is level triggered. Adjust the mode
> accordingly.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

