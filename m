Return-Path: <devicetree+bounces-222151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D9BA6459
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 00:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3946A3A6DE2
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 22:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5D4723E354;
	Sat, 27 Sep 2025 22:42:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="SCUrABG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A6A625
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 22:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759012956; cv=none; b=pdiyJYAH938bkF1rGoTSkpE9Q84qpHzDkExYi2ocy3pKLQARJHAvGi4wNxMr4YMhok7QBU3yl8UmW5+u3gxxzJn8g+XVG8CPms/ccxAjvmIFNqeM4VyNmqQCxE0WUi0STfbcE3JmyuM1DQAx5+ZkIzNN9Sb5MKNOOBfjf70mlsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759012956; c=relaxed/simple;
	bh=mbeAZTr3CfqeJk3liA0/Dd2y8bMANTlJcS+W4kX0krI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LANURJrcyBQZSVr1XyOQbyAVYxdlMqX3NDiHNj2+6/+7QlzgSpdUzwV7WRq7pGRYISRG8lX4hom08nlNbV+kygGG3U2rovtKPkJIeLIAbr1NApLvNeDAdG/2GJgibnsjLpvrdzF5GafVMd66X9Td5A4WueIrmq7sozxZej0qm1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=SCUrABG6; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=W8gS
	3lBr3j7Wvud1lK+lD9eX9tSSo9wWSRk6jSkPi+Y=; b=SCUrABG6nCFnoowG4VFN
	zpzTaCxwHx6HIP8KwDMyizitPF4QVumwiuztsIKD+sL7lT3S1lvRo4c4YLHisrEK
	VJFD5U/AiAajMgXydB6Wu/IIXMxgulA8BhcQtyWu8fB8AIkvqXGzqFSiUuonvjCS
	/fOVsLiygNzuelks6eJ/qr/q1tzrgfrWvVV7AUb1qqDGm4UXNeqeuwMK1r1hu/Rd
	QAZ2Mm/R0kUsonjB57vEWI4j1cq4zH5lmmeXhQp985GEQ+vAEsHpkRoq6rxO6qjA
	aqdwoOAmzbPkY9oKqXlC4KQYI9NPal51DWikUoyEfkVJK/knMrk2NUQJOsW8jiwF
	ZA==
Received: (qmail 2704494 invoked from network); 28 Sep 2025 00:42:27 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Sep 2025 00:42:27 +0200
X-UD-Smtp-Session: l3s3148p1@miPlHdA/jssujnsw
Date: Sun, 28 Sep 2025 00:42:27 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, qii.wang@mediatek.com,
	andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, matthias.bgg@gmail.com,
	gregkh@linuxfoundation.org, jirislaby@kernel.org,
	daniel.lezcano@linaro.org, tglx@linutronix.de,
	linux-i2c@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 3/3] dt-bindings: i2c: i2c-mt65xx: Add MediaTek
 MT8196/6991 compatibles
Message-ID: <aNhoU8AUVJUepzVf@shikoro>
References: <20250611110800.458164-1-angelogioacchino.delregno@collabora.com>
 <20250611110800.458164-4-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250611110800.458164-4-angelogioacchino.delregno@collabora.com>

On Wed, Jun 11, 2025 at 01:08:00PM +0200, AngeloGioacchino Del Regno wrote:
> Add support for the MediaTek MT8196 Chromebook SoC and for its
> close relative, the MediaTek Dimensity 9400 MT6991 SoC.
> 
> Those chips' multiple I2C controller instances are compatible with
> the ones found in the MT8188 SoC.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied a rebased version to for-next, thanks!


