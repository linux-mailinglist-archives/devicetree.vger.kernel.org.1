Return-Path: <devicetree+bounces-246342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 27D0ECBC0C3
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 23:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33A853009AB6
	for <lists+devicetree@lfdr.de>; Sun, 14 Dec 2025 22:03:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59E2629BD94;
	Sun, 14 Dec 2025 22:03:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="f4DP5SQW";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="nwslf0FT"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E529D3B8D6A;
	Sun, 14 Dec 2025 22:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.13
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765749806; cv=pass; b=R8dAaoPu+ORmoerAL4Ja5gnLxRLl46fzf0PO+7v5FJcoDJI/CLCdBGgbwjDfzKuTM0+6Be/OJqMkND6gqcm+0QejWwdL7WKtNTyEjQmFQSIagFOTpiK0qbQiTFceTAL8pHDgi3IVWPYxx9/G2OvwKEW3eEf0RGY/t6lnoiSVX8E=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765749806; c=relaxed/simple;
	bh=cVXolmIhuEAIzMtZ7d7H4m9GWbghCHHoI5tvljqLXVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eODfDEO/KevyiOeXoQqYoyvYWH0IGOJsMCGLuPH9HaB2+99XTKdG4uOuaVzbgzM18Mq7nL2i47T1hgjOLwyrDQmHLtIkKli9BDIkHwl2iBsT9zt0wEUD38LTzdXnjARDalrRdF19HSXt96V/IlwV2QPS3RJBg6IKfRqiCZfAv1M=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=f4DP5SQW; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=nwslf0FT; arc=pass smtp.client-ip=185.56.87.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-b3vb.prod.antispam.mailspamprotection.com; s=arckey; t=1765749804;
	 b=lkV73MJ9LxDXxw7oelmsn7o4NPF2fYXIL7BsnljXpIa4H6hDYx2QTOzKZUCjpKXbA2wrPK4FfU
	  6zVJTzIcrA1VQ5dN6BPODq6ONc78LzHstoOl45SnHGSpWk+UcIvrEIsFJItlGyPTQeCKFD+E/A
	  1g+ETFTr/i7b6Rh2apHl3YO6OS6Fgq5QvGgGtcrcCRddfPTZZ6VW6f3uwBmFE4WJWJOXz0K0cP
	  bIMnqS0vjLKyzkq15ZcFRkKDTr1UfpPrDLKw5UivzskCxcnVshBm0MiNXW+VTyP18x6RipXUEE
	  DXJpb6qgF/eX4myAE5dVK3RzeaEEDRvwJKaDTc7yT1/KQg==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-b3vb.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-b3vb.prod.antispam.mailspamprotection.com; s=arckey; t=1765749804;
	bh=cVXolmIhuEAIzMtZ7d7H4m9GWbghCHHoI5tvljqLXVQ=;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:
	  From:Date:DKIM-Signature:DKIM-Signature;
	b=q3wqOndW3NG6SYOtETQPbr3MW6l5ohwErJmykMw7ox3F9rwlrIELK/tpAcQd7ZMqgcaWSDsCP8
	  7hR7zmlTXqSeH9GmQAVJsh98PcShKdSHaeCZHBWCdqEc2RIfmqP34AXnC/59yHFb46De7m6zTd
	  1xDY1XPK5Omfo3daqUFmirxUs2KUYnm9ZkrTS6Jg1J413XioX/oEoRutxtegsq8SjKxvhoGdnr
	  wNODuEk1+SWidQVATYCI6Q6KSUKzhexyBOchYwlN963sqlL3qxk/QxaRVy1VjCrbBsEQPTrbfk
	  FWsCr06IxSleT6WF0+WHIC5aW43nqOCeKqGj0tz7pb4HsA==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	List-Unsubscribe:Content-Transfer-Encoding;
	bh=iyaP5lR+UMf82Qks9pPdWf5XfzExxxVhhBQJM/0Gj6c=; b=f4DP5SQW1M1y3jCbb76HHgoAzA
	51CMgbGQgP7a8R4TDFyHRp4+H8evi8uWZo9zFaTaLV18LYkBVIXUFXAcwFzRxQMC1OD7gKFFPhW8w
	AK7EdGgqDS+Z9symGWsxYj+YKZ64nGM7aoI/KXdPwZmeMsojlphi8QleLaBvLe3K7OJU=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-b3vb.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vUuBS-00000007syD-2rAH;
	Sun, 14 Dec 2025 22:03:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=iyaP5lR+UMf82Qks9pPdWf5XfzExxxVhhBQJM/0Gj6c=; b=nwslf0FTSvzy1JPX0PEPfe95JY
	AbhGi8R2VFfgfS4b9fiJctKkzUtkq7tFdiVpJonYeEi3op/CjnhaEJlH6fJBmP3rWch5rTf5iksra
	ndhvnv2IT2pv2rypR3vHD7dxXa85QEBXLj1tBIzhnMhpOPGAluHXT3is/9I1zbJSd6Og=;
Received: from [79.34.194.176] (port=59972 helo=bywater)
	by esm19.siteground.biz with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vUuBE-00000000CVM-0NDd;
	Sun, 14 Dec 2025 22:03:04 +0000
Date: Sun, 14 Dec 2025 23:02:58 +0100
From: Francesco Valla <francesco@valla.it>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Frank Li <frank.li@nxp.com>,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 3/4] arm64: dts: imx91: Update file name with dash
Message-ID: <aT80EhkC41d7BSZs@bywater>
References: <20251212-imx91-dts-v1-0-2bb3c13762dd@nxp.com>
 <20251212-imx91-dts-v1-3-2bb3c13762dd@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212-imx91-dts-v1-3-2bb3c13762dd@nxp.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: c5ed61f3dee4f4960d35f0cc73d33846
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vUuBS-00000007syD-2rAH-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-b3vb.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

Hi Peng,

On Fri, Dec 12, 2025 at 05:16:09PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Update "imx91_93_common.dtsi" to "imx91-93-common.dtsi" to align with
> others.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx91.dtsi           |    2 +-
>  arch/arm64/boot/dts/freescale/imx91_93_common.dtsi | 1187 --------------------
>  arch/arm64/boot/dts/freescale/imx93.dtsi           |    2 +-
>  3 files changed, 2 insertions(+), 1189 deletions(-)
>

The new (i.e., renamed) file is not there, so this is not working.

Francesco


