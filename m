Return-Path: <devicetree+bounces-246266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DED93CBB3DF
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 21:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F33F930010F6
	for <lists+devicetree@lfdr.de>; Sat, 13 Dec 2025 20:49:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5454F221F34;
	Sat, 13 Dec 2025 20:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b="E38wGwko";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=valla.it header.i=@valla.it header.b="Ri6RM4lR"
X-Original-To: devicetree@vger.kernel.org
Received: from delivery.antispam.mailspamprotection.com (delivery.antispam.mailspamprotection.com [185.56.87.0])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBBB1EB5F8;
	Sat, 13 Dec 2025 20:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=185.56.87.0
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765658965; cv=pass; b=WKd8b8psYTUqc7G4ndJU8+VWsxn7+XSRl9eSxr99cGSjjnG1mjm0QpycxOLDjy+bQO6V99vZsAPoROCBuS3mmiYsyhitf5X32hrcGOAxN140YeBFxlFRnW07J6tmzS79WDA+yf7spPf/I+7EWj3V96nPtxb250ISzbaJQIimJRM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765658965; c=relaxed/simple;
	bh=hmb6xGzMv/vH6oVI3SMboBWtIvQmnF78TVg9dy9oviE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NDpVSc5koEYkUQsASw4qugrICgqFJdHE/yU9Hbl3YQRY0rhJnq6g+EG6+gRY8z071Xa7E8j/hWO4/SPy4WYCG4AhlVY5EpqujjdvjSzXdxmanzfV92mYxty/LXYSLGNRJtJWw30du0fIVbeJS7NdI3/RJZt51gw2CYxjC5GQXhg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it; spf=pass smtp.mailfrom=valla.it; dkim=pass (1024-bit key) header.d=antispam.mailspamprotection.com header.i=@antispam.mailspamprotection.com header.b=E38wGwko; dkim=pass (1024-bit key) header.d=valla.it header.i=@valla.it header.b=Ri6RM4lR; arc=pass smtp.client-ip=185.56.87.0
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=valla.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=valla.it
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=outgoing.instance-europe-west4-d818.prod.antispam.mailspamprotection.com; s=arckey; t=1765658962;
	 b=EMrdjVqOiD9lkhZw1dq7h5+NsYV0aj0Ob3mgS7P/UBAnLObqb1MYhEC9gJ6GzWh1c21g6t22fT
	  5GyAomFbCl2Y/FpQu9ZLFQiahj5cnD2cVyRc94ft9qHp+3+Ad4FWshKwEy8edzhqpGzzPGNwpa
	  wnkTyaJzPTof8LnpOFx8CXicyuTnA8kUf4N50jfFm68xzmuOORLln/eQyj8TyLymAOMfJNwNd4
	  b8auyjg2SM2uWqNOSbYG1csEJzVijIFe9HoeC4eXKddYqhHLa65sOoszcdDKAGkIywkFnUTAwT
	  VLf9IxjMPFkI0dUyUAvA1IX8sQhSTe2fMF142xez9DPSJA==;
ARC-Authentication-Results: i=1; outgoing.instance-europe-west4-d818.prod.antispam.mailspamprotection.com; smtp.remote-ip=35.214.173.214;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed; d=outgoing.instance-europe-west4-d818.prod.antispam.mailspamprotection.com; s=arckey; t=1765658962;
	bh=hmb6xGzMv/vH6oVI3SMboBWtIvQmnF78TVg9dy9oviE=;
	h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:
	  From:Date:DKIM-Signature:DKIM-Signature;
	b=SryEwnHQmDc8bjcbnhC8wEIwN+IreM94o9h6fqye+uswkMKjfpRuVYVRobvCY8IOwShuy1rByp
	  FWFWTM5qUr8Zwojv2jYqaIz/NYdBBcg8xyyTM43S/SPVlZ9HSMkoXABgsRj6gRgj9A+oodeSD1
	  cZmnL2uJ19seQwz4kExu7Qwu2HJ87ueLkfjZPP/XuuyeYqLZmB+VQk/twnZlQeVPvQmCgOuUAk
	  eq6kiuHr4cbVTh7WY9+3Qp9yWnjYTWNGA8roNKNd4kcOdi0dv+1gHgDl7nPGJjiS85JVJ9KvlB
	  jZUvtXeX96djVTtW6x4I8GIs9nPt9fNdxBzMZCGPKtkJ2A==;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=antispam.mailspamprotection.com; s=default; h=CFBL-Feedback-ID:CFBL-Address
	:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	List-Unsubscribe:Content-Transfer-Encoding;
	bh=M3/2Us+WWEmXNyI5R2qYS3uBblMDLM430KkbIZTR+8w=; b=E38wGwkosjEJkKkMDuVIfaBLqi
	HIRUYkXvSyUmTr9UjXJfRhlgCP21V+yGnEdBu4S2L1n8Q37vftVkA9Mi9DOYHfWuqh1GPHYmNggQl
	F6PHGr6Bv4ef1MEJWvfoFZhb1Dfvc29PW4GNH4HdCdtHqxDqbf7k7PKAivIecFaZlnB4=;
Received: from 214.173.214.35.bc.googleusercontent.com ([35.214.173.214] helo=esm19.siteground.biz)
	by instance-europe-west4-rg9b.prod.antispam.mailspamprotection.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vUQvZ-00000007VV8-2b2z;
	Sat, 13 Dec 2025 14:49:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=valla.it;
	s=default; h=Subject:Cc:To:From:Date:list-help:list-unsubscribe:
	list-subscribe:list-post:list-owner:list-archive;
	bh=M3/2Us+WWEmXNyI5R2qYS3uBblMDLM430KkbIZTR+8w=; b=Ri6RM4lRUWlOMF73nov0tmlpyF
	rKJCZyuJiZCK4EQVCAbXGQ+rwflVAs4UV2C3dzokjULimNv+FyO+nNrqPtdQnNqPjlmwDTyosy0qw
	HqvokWHF96TwwmqK5uZblUSc3fK7404hq0YVu5m5kpPZUxYmbpii+wMxWR7k6LcHiG1g=;
Received: from [79.34.194.176] (port=60557 helo=bywater)
	by esm19.siteground.biz with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.98.1)
	(envelope-from <francesco@valla.it>)
	id 1vUQvM-000000004in-18K8;
	Sat, 13 Dec 2025 14:48:44 +0000
Date: Sat, 13 Dec 2025 15:48:42 +0100
From: Francesco Valla <francesco@valla.it>
To: Joseph Guo <qijian.guo@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Justin Jiang <justin.jiang@nxp.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, qijian.guo@oss.nxp.com,
	Tom Zheng <haidong.zheng@nxp.com>,
	Steven Yang <steven.yang@nxp.com>
Subject: Re: [PATCH v2 0/2] Add FRDM i.MX 91 Development board support
Message-ID: <aT18yj7c27_buJSe@bywater>
References: <20251212-imx91_frdm-v2-0-4dd6d289e81d@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251212-imx91_frdm-v2-0-4dd6d289e81d@nxp.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - esm19.siteground.biz
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - valla.it
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-SGantispam-id: 54f2268b49186a5d88fcf0119d524811
AntiSpam-DLS: false
AntiSpam-DLSP: 
AntiSpam-DLSRS: 
AntiSpam-TS: 1.0
CFBL-Address: feedback@antispam.mailspamprotection.com; report=arf
CFBL-Feedback-ID: 1vUQvZ-00000007VV8-2b2z-feedback@antispam.mailspamprotection.com
Authentication-Results: outgoing.instance-europe-west4-d818.prod.antispam.mailspamprotection.com;
	iprev=pass (214.173.214.35.bc.googleusercontent.com) smtp.remote-ip=35.214.173.214;
	auth=pass (LOGIN) smtp.auth=esm19.siteground.biz;
	dkim=pass header.d=valla.it header.s=default header.a=rsa-sha256;
	arc=none

On Fri, Dec 12, 2025 at 11:31:32AM +0900, Joseph Guo wrote:
> FRDM-IMX91 board is a low cost development platform based on i.MX91 SoC:
> https://www.nxp.com/design/design-center/development-boards-and-designs/FRDM-IMX91
> 
> Add device tree and dt-binding for FRDM-IMX91.
> 
> Signed-off-by: Joseph Guo <qijian.guo@nxp.com>
> ---
> Changes in v2:
> - rename compatible 'frdm-imx91' to 'imx91-11x11-frdm'
> - rename 'sw-keys' to 'gpio-keys'
> - rename 'user_btn' to 'button-k'
> - drop lpspi3 node
> - rename iomuxc 'grpsleep' to 'sleepgrp'
> - move dt-binding patch before the dts patch
> - add board page link in cover letter
> - use CAN PHY to manage the stby gpio of flexcan2
> - drop realtek property
> - add pcf2131 aliase
> - add bootph- property for nodes should be kept in bootloader phase
> - add reset-gpio and assert for eqos and fec
> - delete unused alias
> - Link to v1: https://lore.kernel.org/r/20251114-imx91_frdm-v1-0-e5763bdf9336@nxp.com
> 
> ---
> Joseph Guo (2):
>       dt-bindings: arm: imx Add FRDM-IMX91 board
>       arm64: dts: freescale: Add FRDM-IMX91 basic support
> 
>  Documentation/devicetree/bindings/arm/fsl.yaml     |   1 +
>  arch/arm64/boot/dts/freescale/Makefile             |   1 +
>  arch/arm64/boot/dts/freescale/imx91-11x11-frdm.dts | 904 +++++++++++++++++++++
>  3 files changed, 906 insertions(+)
> ---
> base-commit: 73f1e611b076de705c2f1c26cfdfc5b8e96f4733
> change-id: 20251114-imx91_frdm-add2b2c07e78
> 
> Best regards,
> -- 
> Joseph Guo <qijian.guo@nxp.com>
> 
>

Everything is in good shape, the only non-working thing is button-k3 
(but that was expected, as a small hardware modification is required
to reroute the phisical button from system reset to user function).
Not a real issue, at least from my point of view.

Reviewed-by: Francesco Valla <francesco@valla.it>
Tested-by: Francesco Valla <francesco@valla.it>


Regards,
Francesco


