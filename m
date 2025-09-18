Return-Path: <devicetree+bounces-211285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D79B3E3E0
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 15:04:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCDA317C811
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:04:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E299412CD8B;
	Mon,  1 Sep 2025 13:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="k1oKLpPB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82A814A23
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 13:04:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756731845; cv=none; b=r+CkRASVKCwWNGloWkdzEJtrWK7ONX3RYoUJ4GidBM5ia8Ct8P60pedNnkptXIgRu9tOJT9c7o+pnMraY7/pMKYbieXj/K8MRbnpHjo6pMLysEzS08+UIsyiKWMiHlTDkvmvjSieRG/JAHojoMdqV019yjJyYFhWEjT0fbD+UJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756731845; c=relaxed/simple;
	bh=TOiIhiyCyJG5AxUoW1hpwxuptZ/Xs/OCeoRXC0Hc2uI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kvW8DTicHa+QpyWZJivG3aBzBZrMwBumePcFB8Cnv4HZALxMj6dtnTRJXmGmQwn2hYLlejiyYyKsb1XRN1Z6jqmJYV33RiirfonsCJfeBMcphiMLt5UEGY9XcEpcIcl6LXLv6IbV4MzkvLJrQvPAFxJqIG+8+f3TTj6FxuQuA8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=k1oKLpPB; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id EFA171A0D65;
	Mon,  1 Sep 2025 13:04:01 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C797960699;
	Mon,  1 Sep 2025 13:04:01 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 9E05C1C22D9A3;
	Mon,  1 Sep 2025 15:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1756731840; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=IgnLlO7jOt0FD4jUzFN4p+RS1ZzKoUQ5W4E4v5dt5GY=;
	b=k1oKLpPB/xN0+LSXuE9pFlMVOUwjjpm7z8hAbcHZtb0psY9101Tjrjs28FX958mzmZUq8x
	j+gzj3qdRTLpgo4ok9b2M4wGzhsOcTn3dLwI/XfvMuy9C8UUoiaPqYKHReFkhFb4jX4mKw
	xIa5XkhNemDk0/EnwoEeFeRxF9WyDFFiEoKVHa85brb9FxSZD2vm+MmmIIyl+hE1l0I5DM
	dE4XNUduk70udDE+jSkvWrVjQnrV/cjMC+9xGGijQJflgcj7gtEEsIge2U0eVTdp/fhl7c
	IotwMfSHozv8JMWEu0XdK65xQ8LPdUeLPtg0IRykP9WJACUU1sSIRKgkVRVf3g==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Russell King <linux@armlinux.org.uk>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	linux-mtd@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 0/4] mtd: rawnand: s3c2410: Drop S3C2410 driver
Date: Mon,  1 Sep 2025 15:03:48 +0200
Message-ID: <175673179165.52555.3449710772627669678.b4-ty@bootlin.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
References: <20250830-s3c-cleanup-nand-v1-0-05b99ef990fe@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

On Sat, 30 Aug 2025 19:01:08 +0200, Krzysztof Kozlowski wrote:
> Drop S3C2410 NAND driver because its only two users were:
> 1. S3C2410 SoC: removed from kernel,
> 2. S3C64xx SoC: does not reference this driver.
> 
> Best regards,
> Krzysztof
> 
> [...]

Applied to nand/next, thanks!

[1/4] mtd: rawnand: s3c2410: Drop S3C2410 support
      commit: 773b9202de0127444fc8802a611a19637b7fa12f
[2/4] dt-bindings: mtd samsung-s3c2410: Drop S3C2410 support
      commit: 451f1184f8f6a90c701b9d8c8c055f6a1d9308bb
[3/4] mtd: rawnand: s3c2410: Drop driver (no actual S3C64xx user)
      commit: d40934bea54ca5509138d40ab530c6700c830802

Patche(s) should be available on mtd/linux.git and will be
part of the next PR (provided that no robot complains by then).

Kind regards,
Miquèl

