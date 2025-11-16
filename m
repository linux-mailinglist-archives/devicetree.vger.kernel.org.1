Return-Path: <devicetree+bounces-239056-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D41FEC61212
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 10:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CEDCA4E2DC1
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 09:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 774F51DDC33;
	Sun, 16 Nov 2025 09:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="IVc2HGu4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [220.197.32.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537FE23BCFD;
	Sun, 16 Nov 2025 09:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763285850; cv=none; b=IMhG/oRQ8LkXC12PtoWlSS3M/+5fLpPq/KtD9lGhRJqEL5Fxh7lTSR9WewK8jaWntzNJbxE5lKQfJIGkxChxwow3F9PDPb5EuvQvrpIuIfnYbEthYm4dCJBiTPTZlJHORMKO8OXulLW2nXzh1D7tsnO3RyXHKY635DFVTTBk0HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763285850; c=relaxed/simple;
	bh=8RwSnANmatYjlp5vdhEYio3NFN1JUOIqrxvEBrOcSwg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cHwXzuAafWZjVO+E+MK2ncPO9h4NcT5875V8VyYKu+NnhBoEO0HMjU1Ut7j32IbR5X2a+//fCX0wR140FJtnM1G0LPBdKlMJSn07iiMuVvOu38bShNCW3qjVc11r7xb0XMEVi5OWlpDoBLdHHrQZSk2UhQlnX5qCRaPqmQzGyZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=IVc2HGu4; arc=none smtp.client-ip=220.197.32.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=sEt7eA3uP6JAyccJIcFiTdXELf0PynanwGq4vjPPSgE=;
	b=IVc2HGu4fS3G946024aDdYz4IhPJuGR4emT5yUIUPd3KmRCS2wCIc/YXfnBQqo
	MwPOuy3Lrzpmc5sbROCW/OerDrMNJgUYJpmCHqKDN1TkRdfM8N4rj9MIs3fU++1o
	1aukII4O0epi64l+Ii968fOJd0SMswfxZyyX2SgkZ4+6c=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgCnAwPumhlpSzUWAg--.7823S3;
	Sun, 16 Nov 2025 17:35:43 +0800 (CST)
Date: Sun, 16 Nov 2025 17:35:41 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Primoz Fiser <primoz.fiser@norik.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, upstream@lists.phytec.de
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: fsl: Add PHYTEC
 phyBOARD-Segin-i.MX91 board
Message-ID: <aRma7QLJIplT_cck@dragon>
References: <20251028043244.496662-1-primoz.fiser@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251028043244.496662-1-primoz.fiser@norik.com>
X-CM-TRANSID:M88vCgCnAwPumhlpSzUWAg--.7823S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUzSdyUUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIhCD6GkZmvDOBwAA3K

On Tue, Oct 28, 2025 at 05:32:43AM +0100, Primoz Fiser wrote:
> Add device-tree bindings for PHYTEC phyBOARD-Segin-i.MX91 board based on
> the PHYTEC phyCORE-i.MX91 SoM (System-on-Module).
> 
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied both, thanks!


