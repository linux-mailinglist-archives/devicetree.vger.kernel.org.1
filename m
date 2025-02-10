Return-Path: <devicetree+bounces-144706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0BAA2EFE7
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 15:36:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 947733A344A
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 14:36:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E62E230D3D;
	Mon, 10 Feb 2025 14:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyiFDHn3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41CBC204860;
	Mon, 10 Feb 2025 14:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739198120; cv=none; b=MoFhtynTxFXZDfhFMYiCbKoNJh5cLtHSnLV0PHuZLFVyw2MY8cyS6GH4K6maW/2ADu4KuqWQCPUpfnmbdAP2IxvEpnWfCLMHOIJcaAjpREYmlvBaS3ToGo+39VG+gjs8FXZjGQybyrbdWhRkO4Qo5IpAq7EZasOtW5TlCfF+E7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739198120; c=relaxed/simple;
	bh=vpa9hQ/El4h+MKRpCG/R3weC/8RAuXffKub+TTbKj5o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=qaQyzDO2dfadd75kOCknFt0FdsgZE2KA43msI+Y07OVpZBFUmJoirI+g/DYJiiS08U50hajZANPIGKQmyAYbhJM5R/rQOe2d9U5YOnQvcOtEe74LgGY4FhY3UZM7t9t0jefOjDXDMQxczqPPMCqY/WiThUbFh9GuKRUY2632B24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyiFDHn3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51660C4CEDF;
	Mon, 10 Feb 2025 14:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739198120;
	bh=vpa9hQ/El4h+MKRpCG/R3weC/8RAuXffKub+TTbKj5o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=AyiFDHn3p8xazpYaThMd9DbNUsLO28eSLGVOyphoegC1uVrt7fS9sDQEv9C98NX9c
	 gYMW62OSE1L+NHEqkiqWESNgpxkusZxvO49MkG9KOWXjLP2NFH/awwd7sZpOhy0Tb0
	 oFkSJ3gCoGHdgBLD5/DJpCv7EpZ+ASL1YcD6H6TA5cZ00AAgxb+0pHkQdnfpfxu/kN
	 9goJ7FaSDi1Bhl0G3+TNCduVuUuy5Kw4Lx5XS4Cnxt2jMGZUNM6uPeLLGyR479rUo7
	 4EZSotFmuA1tNdw1jc9Cb6ylhWvUIFtZs50G1dF+IEpZJJipu6fwybNw6zKGsXEE1b
	 PUJHPPX1kWhBg==
From: Vinod Koul <vkoul@kernel.org>
To: Ludovic Desroches <ludovic.desroches@microchip.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Andrei Simion <andrei.simion@microchip.com>, 
 Charan Pedumuru <charan.pedumuru@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org, dmaengine@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Durai Manickam KR <durai.manickamkr@microchip.com>
In-Reply-To: <20250203-test-v4-1-a9ec3eded1c7@microchip.com>
References: <20250203-test-v4-1-a9ec3eded1c7@microchip.com>
Subject: Re: [PATCH v4] dt-bindings: dma: convert atmel-dma.txt to YAML
Message-Id: <173919811594.71959.2580959368736151197.b4-ty@kernel.org>
Date: Mon, 10 Feb 2025 20:05:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Mon, 03 Feb 2025 11:48:09 +0530, Charan Pedumuru wrote:
> Add a description, required properties, appropriate compatibles and
> missing properties like clocks and clock-names which are not defined in
> the text binding for all the SoCs that are supported by microchip.
> Update the text binding name `atmel-dma.txt` to
> `atmel,at91sam9g45-dma.yaml` for the files which reference to
> `atmel-dma.txt`. Drop Tudor name from maintainers.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: dma: convert atmel-dma.txt to YAML
      commit: a54ec770396ce2b6e786acde22f4ebed8d1e9555

Best regards,
-- 
~Vinod



