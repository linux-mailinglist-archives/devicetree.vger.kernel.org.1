Return-Path: <devicetree+bounces-213994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 79973B47B89
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 15:16:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 227CE3B7231
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:15:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FEA726B749;
	Sun,  7 Sep 2025 13:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="mFfJk3jP"
X-Original-To: devicetree@vger.kernel.org
Received: from out-179.mta0.migadu.com (out-179.mta0.migadu.com [91.218.175.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5808F19DF5F
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 13:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757250952; cv=none; b=K57WfqQ61CvZucEzzQPCGLdwjkVPGyHqw34bWE6yWSFhR5sQMiC18f2WkI7Y9R5wPNncvROovM7uskYGVF4iDH1Dc8HxbD69d71sNm/DMK/Q+GctN9RKxAgFaQLSbeHkHP/JjEBEgAIm1TR5FgDC9zRAanXTe13tqNWx77b0sbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757250952; c=relaxed/simple;
	bh=S/KUq6pSTXq+6IeioXoPeuwVExsq2hrUKmGGJELtuVI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MdpLBCTd7cSL7NWLlROvEkiN9C+vhgSOmpGf7KkVb+9HnpCmW4l/D2fRVYu527nucp2F5j5wSaNMW9rbC9C7MSinv9qjDIBCKzkDe3RhDZI8PrHUq+8ndaTeiagiF1RLhRMNN94XY+Y1o38zNFxDDG5AYhrxxkf+Rk+JNi2dsW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=mFfJk3jP; arc=none smtp.client-ip=91.218.175.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Sun, 7 Sep 2025 09:15:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1757250938;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S/KUq6pSTXq+6IeioXoPeuwVExsq2hrUKmGGJELtuVI=;
	b=mFfJk3jPrq2PSVa5pryxIo9DqIP/tWcI51vlOz3BNmXJL/QW5ixV3gvPtQMTqLlhfFWoAj
	VyJs++CEOPsdCfp+Eb3m7RmwPM9ep8GBaKxBeBskm0o6AEvLj6/xNXMvXmJECEKnr12NzL
	8pd/TRi5r2iNaHU9W74lLCd9byKepNk0KGM1lRqaHRsJ2VuutCPFTYczDxhOJYBN/Otwhc
	HPb8MEZXCVHbh1lmNiRCvjkhMC0OvoSThpecM++4MbfBhJJcBfsGBcP0mKMbq7LojgXwfk
	Wq2OUStSnlP7T3L7CaEGPi4CLQgmIvIGgePoxVs1LRMbiKx9dmQCKnbjg7cINA==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Anne Rosenzweig <alyssa@rosenzweig.io>
To: Sven Peter <sven@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>,
	Janne Grunau <j@jannau.net>, Neal Gompa <neal@gompa.dev>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
	Ran Wang <ran.wang_1@nxp.com>, Peter Chen <peter.chen@nxp.com>,
	linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	Hector Martin <marcan@marcan.st>
Subject: Re: [PATCH v2 18/22] phy: apple: Add Apple Type-C PHY
Message-ID: <aL2Fdd2Ls26pksJN@fedora>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-18-52c348623ef6@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250906-atcphy-6-17-v2-18-52c348623ef6@kernel.org>
X-Migadu-Flow: FLOW_OUT

In functions like atcphy_dp_configure_lane, I'm wondering if we want to
pull out individual registers like `void __iomem *tx_shm_txa_ldoclk =
tx_shm + LN_AUSPMA_TX_SHM_TXA_LDOCLK`, likewise for
MAIN_REG0/1/IMP_REG0/etc, just to make the actual pokes below a lot less
noisy.

Incidentally, the txa_ldoclk_bypass handling is another place where the
cond_set32 helper would shine.

---

Also, do we know what _OV means?

