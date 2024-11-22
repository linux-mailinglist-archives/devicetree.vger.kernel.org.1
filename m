Return-Path: <devicetree+bounces-123681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF399D5AC9
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:12:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8DFA31F211FC
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 08:12:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E806184522;
	Fri, 22 Nov 2024 08:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="HwZjZ7E5"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C94322075
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732263143; cv=none; b=dLq8WPS6QRUoLbGwoOFJnB6zgWax4vwAZlRx/nYs+YNwemj+zx9auasjrPBMLGUD3mrQ5wKme724EY6WMMQW7yXSTKQYqXHsf/9PQBnPjX+eBHkBZfP5RuEqOgf9+dsPDeJ9FOX3LxqvmgpWUYYo+WiapHau0M4+dccEcmh/vIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732263143; c=relaxed/simple;
	bh=95m9sEz4jpY+nXaTdtFnwpBIrBHSe/OWl4KFwSyfVK4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=BYPtNnroFet7BbqbNLwAbNjcon3cf2KPBbSAIJsD9gHeWREai2gcSRaRaOoVo+IGgg8mwhm1LvN9UM3LPl/HBGLY9A4Cf4ZVa0UXUARvrGfxfL4sR8MJPrw5mlCiiQ1QPAzoY/dqAg19YK2HJoeY1OzwOsRq5z1DLk+SsRtjdXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=HwZjZ7E5; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=95m9sEz4jpY+nXaTdtFnwpBIrBHSe/OWl4KFwSyfVK4=; b=HwZjZ7E5ah5YUK4f/LAs3dej5y
	VQaeqiIw7QaFLBsKS6xktq9M0R8Rdhg2s13olioGIrFk+7sS0DzKGZSzBpPKwm4z5mJfHG/+qF4hz
	C8lBCLs/fOxCi1YXIo9yuLQMuz6EHKA2c0+yKLaFagTb2cXRPmHFQfIu/VRu7qyiqbV+QnWmR/uL1
	nd3FFFtXaTshut/LD77DlttZKT9VIzFjc89siOIvmMs3XzJGZENS/Qg/f+Zcvzxjd92hCxwzEKi2n
	trda/bEh6zXgIzoupe/ykeZAQZm64J+qi4f/QdIh7P8jatWOMBR6opKF7oISK1e/+8sCQaGIFp0L6
	+LwSAxRg==;
Received: from [185.156.123.69] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tEOlx-0004My-7t; Fri, 22 Nov 2024 09:12:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Chukun Pan <amadeus@jmu.edu.cn>
Subject:
 Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri, 22 Nov 2024 09:12:12 +0100
Message-ID: <2757577.mvXUDI8C0e@phil>
In-Reply-To: <12563257.O9o76ZdvQC@phil>
References:
 <20241122073006.99309-1-amadeus@jmu.edu.cn> <12563257.O9o76ZdvQC@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Am Freitag, 22. November 2024, 08:56:17 CET schrieb Heiko Stuebner:
> No need to resend for this, as I think b4 will just pick up this
> addition when I grab the series from the list.

Of course, I'll just grab this patch, not the series.
The phy driver change will go through the phy tree :-)



