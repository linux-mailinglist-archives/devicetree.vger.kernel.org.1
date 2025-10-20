Return-Path: <devicetree+bounces-228825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 28556BF0F7F
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:59:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 917B63E6B71
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 11:58:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0368C304967;
	Mon, 20 Oct 2025 11:58:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="Nu3jCO5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381E11FF5E3
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 11:58:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760961522; cv=none; b=FvOEYVW5r/ZNorOrpLUSz72fu9346Dv19sTwWFi5PfaYiyO2k6GgAmF2tx3f71uWXh0BHS+1R1unCzXaEKFER7EIpQd0fNzMb3bh2DZmVCvA2/WmUqNrEDNymCxFJkY+tX0wt7Y40g1oyo5Yivs6+Kgh2CKaVnADRvNGjsF2ZKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760961522; c=relaxed/simple;
	bh=xoKSW+wvhHMDPCHttGL5uk5pn9U20ovAsfAY02c3EF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fLiKACtCz3MnQoTxAtMcS98j3qvLo8wXFnScDZXXTBzkGd9cSLICn4vVR9VS5VSOMhGdE1BYFbtLQQD504WR/wSzbjIlW9n7w5EtYg5GaMusLczgc7I6QfPBl7tz7vNHTECIuzcPKdA5xz4uEm9gGH9HWfXMP4HL1TdS1AdC7tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=Nu3jCO5l; arc=none smtp.client-ip=1.95.21.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=tk34IRKnBv7hiN7qUW37bwUgSoZget6//bM/ooP9Mgs=;
	b=Nu3jCO5lKmRuo5fWdE++IsHfPxWG9mp+CWJ3edhFDcdSfzzU6Im9nVhP5czI3g
	NKdcIpm12uk843V4XpxLwGXPS3uYltEnnLXXQZ9vxIhxvJ8d7Bjm3Y6mKdvhBtnp
	BHpVecDEmQsrfS7yBNZavpN8S5K4nkxS69I9qpW9dd5WI=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD3_7HNI_Zowh1TAA--.27863S3;
	Mon, 20 Oct 2025 19:58:07 +0800 (CST)
Date: Mon, 20 Oct 2025 19:58:05 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	frank.li@nxp.com
Subject: Re: [PATCH v2] dt-bindings: soc: imx-iomuxc-gpr: Document the CSI mux
Message-ID: <aPYjzUGUR2OTPgSD@dragon>
References: <20250910233402.567245-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250910233402.567245-1-festevam@gmail.com>
X-CM-TRANSID:M88vCgD3_7HNI_Zowh1TAA--.27863S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUU8529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxU20eHDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiNA-TOWj2I88AGAAA37

On Wed, Sep 10, 2025 at 08:34:02PM -0300, Fabio Estevam wrote:
> On i.MX6Q/6DL the following subnodes exist to describe the CSI port muxing:
> 
> - ipu1_csi0_mux
> - ipu1_csi1_mux
> - ipu2_csi0_mux
> - ipu2_csi1_mux
> 
> As they were not documented, dt-schema emits warnings like:
> 
>   'ipu1_csi0_mux', 'ipu1_csi1_mux' do not match any of the regexes:
>   '^pinctrl-[0-9]+$'
> 
> Add a top-level patternProperties entry for these CSI mux subnodes
> and restrict it to i.MX6Q.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>

Applied, thanks!


