Return-Path: <devicetree+bounces-239097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 60216C6151B
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 13:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id CC3A835C356
	for <lists+devicetree@lfdr.de>; Sun, 16 Nov 2025 12:58:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67C9C2D46A1;
	Sun, 16 Nov 2025 12:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b="HJNWVBaD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m16.yeah.net (mail-m16.yeah.net [1.95.21.17])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD4527FD6D;
	Sun, 16 Nov 2025 12:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=1.95.21.17
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763297892; cv=none; b=jmQSy8FIj26O9eEnKLc3+/yhXR77QLMrcnFXZ++nrTo11M7OXURJDgiuT4ZALC2dGgip2dwSE8eIkaV43IqqFJQklBAQu4nqkBEebslDi58Vnt7Fe9RVdt18PK+s3V72OT71i52ysP2aYXN1xOsKP0j5XDXlXlVyjoUJAbiDu4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763297892; c=relaxed/simple;
	bh=+XhU7A8V+ZfsX3Xx+Euijotz+M2ohU5X6ErJXA55qeI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gVYh9haPJYuW81eqLYmmA1rX5AERBPej3TC2G2DDUihYc9QMLqYNajeCA80/RKi70PNg/eJ0ABF8r0Xifi95vwVVMDvIYnTtqi+C2IIUyhWGJxo40fMJyNg9B7tf1QARBZBBZXpNUOM5SSmBBAYk15yyirOJZTpuUdPAUQFqsdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net; spf=pass smtp.mailfrom=yeah.net; dkim=pass (1024-bit key) header.d=yeah.net header.i=@yeah.net header.b=HJNWVBaD; arc=none smtp.client-ip=1.95.21.17
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yeah.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yeah.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yeah.net;
	s=s110527; h=Date:From:To:Subject:Message-ID:MIME-Version:
	Content-Type; bh=1BL7DQ4RqPTkNcvLx0cbL5e94Aml+aXvs6ikCBvbUdw=;
	b=HJNWVBaDVy+uDKnl4wBcTGAMQYqih+G6UKS0uoyvfg6ETIRsvvc484UhmnJvcC
	F7fvFp8M8AGBsOKqpF4UJQUOMWtwFWttLv4T9fH6mQERtL5sxqvee+8N3WtkiGbq
	PO2IGMMIU8nmhVKv/wRp924yfcyGHbklhGPLeSfORJekc=
Received: from dragon (unknown [])
	by gzsmtp3 (Coremail) with SMTP id M88vCgD33kM_yhlppWkYAg--.8028S3;
	Sun, 16 Nov 2025 20:57:36 +0800 (CST)
Date: Sun, 16 Nov 2025 20:57:34 +0800
From: Shawn Guo <shawnguo2@yeah.net>
To: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Daniel Baluta <daniel.baluta@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Switch to using AIPSTZ5 on i.MX8MP
Message-ID: <aRnKPkd3oppdvNvh@dragon>
References: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251111120022.696-1-laurentiumihalcea111@gmail.com>
X-CM-TRANSID:M88vCgD33kM_yhlppWkYAg--.8028S3
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUFzuWDUUUU
X-CM-SenderInfo: pvkd40hjxrjqh1hdxhhqhw/1tbiIgFjyGkZykFFoAAA3W

On Tue, Nov 11, 2025 at 04:00:19AM -0800, Laurentiu Mihalcea wrote:
> Laurentiu Mihalcea (3):
>   arm64: defconfig: enable i.MX AIPSTZ driver
>   arm64: dts: imx8mp: convert 'aips5' to 'aipstz5'
>   arm64: dts: imx8mp: make 'dsp' node depend on 'aips5'

Applied all, thanks!


