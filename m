Return-Path: <devicetree+bounces-150797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C84A0A4391E
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 10:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10E5C3BBCAC
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 09:13:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36DF526562F;
	Tue, 25 Feb 2025 09:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="qOwLBGbk"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AAEB265CA3
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 09:10:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740474620; cv=none; b=E3WSxPKQ8wZt1F4oIJr0NgqCyWwhhajncehzT1Bp3j7UbA2qGulZjz91Yg4J7xFAECEVP6M8NMQr4cCJ7Aj16ig5PCkCK4u+ZlQvK8LGq5obOJcb9moom+UfNBxefwpNnqk6KaEpB5y+Up0WACFUr3jzXVjx7XTlg0QbqdzIMQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740474620; c=relaxed/simple;
	bh=Yk3HPQ8hjDp5/Q7XGX7XJygCR0BU1iRK53Y6ONED5MM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nYZzzm2Ojon12F04DJD8VgILfpaUjfSYNf0/59E5Cl/LGlXp5wbY5YsGG5zhXrVp5jfj//buO1By2vVPgukCjDL95ynW1v29c0nXzXbvA6UoOeb/ugxnvcsVSkLHc1uaw18m4Av2RItR9rTuSocmGJYOu1E+6lRCyLoEu9v66ng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=qOwLBGbk; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740474616;
	bh=Yk3HPQ8hjDp5/Q7XGX7XJygCR0BU1iRK53Y6ONED5MM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=qOwLBGbkPYdP8OGXqU0X8bD/QVR/zCE8oDnt5gFjO1GFsD2rjWZJr9gl8LTQlYFa5
	 I+XY1waFiZp8SlWpgDcnrPkVfvTW6ZHwKAz8soh0rc48og6L2WrBdS0mZH+96pKtdW
	 d0sQPHvTbYMa+wqA4ZYiv1zGLbUaLVyQrvzzkWcXjfb0AvA9OIekxC7n/PyN7LuvxL
	 EfXrIl7l5dRLMW0wmt/jsAN0AOrvwt/YALCSOdCN40GLywPYZqt/j1CldCsROkunfY
	 zI5CGMBTGW0XoBX3jWsxYpnfUP2oiDE9n9iJIHITlc51Pdc4bq0Hd6z0kEH6LQ6ahJ
	 a65yFCUeDhy1w==
Received: from IcarusMOD.eternityproject.eu (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3F9C717E0B59;
	Tue, 25 Feb 2025 10:10:16 +0100 (CET)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Christian Marangi <ansuelsmth@gmail.com>, 
 Lorenzo Bianconi <lorenzo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
References: <20250221-en7581-dts-spi-pinctrl-v3-0-4719e2d01555@kernel.org>
Subject: Re: [PATCH v3 0/2] Add more nodes to EN7581 SoC evaluation board
Message-Id: <174047461618.21523.9112201674582810132.b4-ty@collabora.com>
Date: Tue, 25 Feb 2025 10:10:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2

On Fri, 21 Feb 2025 09:01:14 +0100, Lorenzo Bianconi wrote:
> Add the following nodes to EN7581 SoC and EN7581 evaluation board:
> - rng-controller
> - pinctrl
> - i2c-controllers
> 
> Fix a compilation warning for clock-controller
> 
> [...]

Applied to v6.14-next/dts64, thanks!

[1/2] arm64: dts: airoha: en7581: Add more nodes to EN7581 SoC evaluation board
      commit: 3032e3b87ec218f82f5c60aba0c94ab2fc00a261
[2/2] arm64: dts: airoha: en7581: Fix clock-controller address
      commit: 0092294492fafe79a537915e486576a3d69c9a7c

Cheers,
Angelo



