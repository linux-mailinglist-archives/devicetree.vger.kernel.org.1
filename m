Return-Path: <devicetree+bounces-256776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD48D3A4E1
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2673E30D7DEE
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9461629A9C9;
	Mon, 19 Jan 2026 10:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="excdtB7/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6F629B8DB;
	Mon, 19 Jan 2026 10:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768817981; cv=none; b=FRRldD8jXrH602DqJOLKi7feR+/ANGEOAsZ0S0jJFKbCpAPTMEI3gbx2nym7T9ingU//sfaL5zMoiqxxYxLuTuiZnzBQMEBjK3m1TsR+fTDDsutUkGL59HoFVqhDVQGum+UEUnOY+KvIGoEde5BtegNflBsPyYbLhD1eiIOV4aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768817981; c=relaxed/simple;
	bh=ygNmmtx4k7tcxWEW8AQzBSrI5uk+dvtY2ORnTfGEtZc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=A2Kn2Ec0reDogtxBwVecr2ydSbtThXsnhYqP7ftDpeNTHaDP3umNVsVK7rL9KkfV+DhTaufGzDYH8GqdpIim6sMQK50qsqOf2PpzaZN5/tjwrf4lBVYKFoXKTE4vBvkTKLPNx3+etAW6KCwKsygE3wFr15/2+7y2yIIhLmULcqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=excdtB7/; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B08E54E420D8;
	Mon, 19 Jan 2026 10:19:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 852BA60731;
	Mon, 19 Jan 2026 10:19:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9B5F210B6993E;
	Mon, 19 Jan 2026 11:19:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1768817966; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+bHNw2UUVVi0SQYNsp/nBK3qd5rlchNe93n8lzK/Vfk=;
	b=excdtB7/n6fTtHzkGEzF/MYSoiIXhH2eYF1XfpAzq68QC1t38PleEsts9eFoXRlspt5DWR
	D6pzWx5+bd4qOIlZPU4B+R/jYDKaWPGsFqC1HAXn5IYb2yNIdCdwd1vY0u+eE0WLXbG8z0
	l0BUnRrfQukaLwo244gMFIZpU8ti56OhSy9Xslv5TginwQNwtLkR647VHGwqyPjBfjQlpV
	bQaMGNUamlNUF/9s9V2AHsJ20MVcq6Wom/6qbqZkUIyr+e6ONeO1q3EINtef02bJzT5lBG
	eQp/hES1MODv7TufJPk5a/oWg08YYhhWO85PzODjJmiKbnxsCJoW0TFZr5zSzg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akhila YS <akhilayalmati@gmail.com>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20260105-nxp-v3-1-05af634831ef@gmail.com>
References: <20260105-nxp-v3-1-05af634831ef@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: mtd: microchip,mchp23k256: convert to
 DT schema
Message-Id: <176881796446.2442128.3635875032600807923.b4-ty@bootlin.com>
Date: Mon, 19 Jan 2026 11:19:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3

On Mon, 05 Jan 2026 15:08:00 +0000, Akhila YS wrote:
> Convert Microchip 23K256 SPI SRAM MTD binding to YAML format.
> Changes during conversion:
> - Remove "address-cells" and "size-cells" from properties and
>   required sections as there is no child node for sram.
> 
> 

Applied to mtd/next, thanks!

[1/1] dt-bindings: mtd: microchip,mchp23k256: convert to DT schema
      commit: 2372fe1ceaf5a1e681c81f3dc35eb7f954526cbd

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl


