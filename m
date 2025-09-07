Return-Path: <devicetree+bounces-213990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E93B47B64
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 14:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F273D4E0127
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 12:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5146D26F29F;
	Sun,  7 Sep 2025 12:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b="sWRyJYqs"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171C5C88
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 12:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757249026; cv=none; b=Dde298UPcg+0ngS7oJqEesVgCU5Sin0cKjBMZhSWloS95SG2g3BvVQ39lPBBOaEgkP/B4dlu0RW8uu9pwBDdxWZhvp7t6lGPtWcf9zTwXEM7Xau5PJsoX2BNcWVHHDfYX1O3kqPy6waS+ZhaN40bJWraAjlxVneSot5mgKbQbLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757249026; c=relaxed/simple;
	bh=rRX1+c0K0xHaPboS5O714TNd3MvbbW3BYzaa1w0TFKw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IbrS56IGbQjMdl2fz/pWmCb2upAtIE25FY86kjCu361bYJq2H5+SnBmQJgUJIm5uLFtYEhyNqqYCmbrVSnxpFRpCAXa8Th20grJR+PWZDTgYCfS0fFWnlmzXImblMOlCl+jngtHwkSVXABDBODAz5OHYpdQvyffo6W0+upYkSuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io; spf=pass smtp.mailfrom=rosenzweig.io; dkim=pass (2048-bit key) header.d=rosenzweig.io header.i=@rosenzweig.io header.b=sWRyJYqs; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=rosenzweig.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rosenzweig.io
Date: Sun, 7 Sep 2025 08:43:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rosenzweig.io;
	s=key1; t=1757249020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rRX1+c0K0xHaPboS5O714TNd3MvbbW3BYzaa1w0TFKw=;
	b=sWRyJYqspCCh43pcmhdZ+q7B1qaT85R4FwTs7ICY9KbMZ66zTXf8PEwAj8seGt55M2eIf/
	i8UEoz/FwfChWkGzX4EOvu5imgzVyyyB9I89pmBQyoYgCNO/sPxnNzZb9Ty9kdgn5QWh/x
	s9qnQlhkvQAJoqt6I+Nco6830D3fInmg7zVkFijNbDRVSam/3pb9XhVOrd4OMUfIhbaGxc
	3BIRybMUzcAkQLyxXiNg9ryeL9ZIS+IWuCRsBfUeRE7hyuqI/HF/DSzEt83ybpinY2K9tb
	cHkcGRLQ/L0eLphJ/Fpp7G0fmTUZM8NUafE3g0cAnX8xB2J8KACyPub7Tvf07w==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alyssa Anne Rosenzweig <alyssa@rosenzweig.io>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Sven Peter <sven@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
Subject: Re: [PATCH v2 20/22] arm64: dts: apple: t8103: Add Apple Type-C PHY
 and dwc3 nodes
Message-ID: <aL199DK3XfkaelgH@fedora>
References: <20250906-atcphy-6-17-v2-0-52c348623ef6@kernel.org>
 <20250906-atcphy-6-17-v2-20-52c348623ef6@kernel.org>
 <20250907-zippy-auburn-koel-d6da32@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250907-zippy-auburn-koel-d6da32@kuoka>
X-Migadu-Flow: FLOW_OUT

> Please do not combine DTS patches in patchsets for Greg (e.g. USB). Greg
> expressed that many times, that he takes all or nothing, and DTS cannot
> go via driver branches/trees.

From the cover letter, emphasis mine:

> With the dwc3 glue driver this series can now also be merged independently
> once it's ready: Patches 1-4 can go through the dwc3 tree, 5-15 through
> tipd, 16-18 should go together through the phy tree, and I'll take the
> DTS changes through my tree. **If everyone's happy with the overall
> approach here I can also just send these as individual series**

