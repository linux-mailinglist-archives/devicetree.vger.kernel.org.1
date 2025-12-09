Return-Path: <devicetree+bounces-245466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E06CB1408
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 22:57:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 33D37302718C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 21:57:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A0A2DF12F;
	Tue,  9 Dec 2025 21:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b="WkLC22hu"
X-Original-To: devicetree@vger.kernel.org
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B828B3A1DB;
	Tue,  9 Dec 2025 21:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=156.67.10.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765317447; cv=none; b=aqnaKDb/wfyjRXn3LxtTgYxnL3uHcdxC4LXbwS+id8l8/vEKXMo91VNN1Bmq1KpDOl/St0vQY5tzH9j+XBoGbdX+EKnJ81zcXHh/oHYu8yME9BO6jeVw7Op1NAj8OvFPIhufHYqVBdVd1EspL6Bg8PCnwuAqukHZbyJ/gRGYRf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765317447; c=relaxed/simple;
	bh=47XQ5vrKymhYWpgRnPQ2RlsE9I8pYCHitvW3aya+W8c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fsn5GjmYgUQ/e7/VbvegXUzeGkL/NrP5tsLO7eAiToE3MWH/rXYLM0zabBtkt5ZFTcVoblPNEJaVhEJ2dmvwsBfvXzHgAc10t19Wm3/koUE+nwZVewkjWIS84RZ3jVR4DvnR/jOwFuItgIONEaJ6oiTdJGkiMpL+U+Br6t9phkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch; spf=pass smtp.mailfrom=lunn.ch; dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch header.b=WkLC22hu; arc=none smtp.client-ip=156.67.10.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=lunn.ch
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=KD1ytN9NlcWsEF48XCdj7FLFIzRKMxppVCxmJtdhTbE=; b=WkLC22huPb35rvvbQczIsGwyOA
	iNuoxToGS4MK7IjcWRKXbJdWSzj3JGYa/PX5dfhTov1nUhdFEeyL2dgq6RvpyV5hUC19NY7Lib4QN
	XYaTcsc6hlwMseahb6vqyFRIeCtVvjnKC8l2gizEuDUb0JlT2Xe2dU/mHTT8oqgz4SPw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vT5hf-00GVWB-Oh; Tue, 09 Dec 2025 22:57:03 +0100
Date: Tue, 9 Dec 2025 22:57:03 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Adrian Kossmann <adrian.kossmann@posteo.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add compatible for Ethernet PHY
Message-ID: <8e4607b7-8045-413d-aa3e-c2c1a74f52a6@lunn.ch>
References: <20251209210658.458506-2-adrian.kossmann@posteo.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251209210658.458506-2-adrian.kossmann@posteo.de>

On Tue, Dec 09, 2025 at 09:09:33PM +0000, Adrian Kossmann wrote:
> Without the compatible string the Ethernet PHY is not bound to the
> correct driver. 

Which driver is being bound if you don't have a compatible? genphy?

It is a bit unusual for phylib to get the wrong driver, so i would
like to understand this a bit more.

	Andrew

