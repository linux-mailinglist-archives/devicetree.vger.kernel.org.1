Return-Path: <devicetree+bounces-79409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 41373915355
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 18:20:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BF345B25442
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:20:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A72B219DF5F;
	Mon, 24 Jun 2024 16:20:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8450E19D8B3
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 16:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719246029; cv=none; b=BQqIcu/0UiW2QN0D+/0whY7eSaAaZES8GF2xVvyfNL1J7WdAFg9EQzBjOgmdSXm92IK0Y6fvOMuE2UplxRRz7Ywm0yyrLHfV0pSx/BB8Im9NTaWG0efsNBYyxstWcmghgBGEcxUGPRM2x2kGmPCLni/LEeo2Q9gorf4X8ckXFDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719246029; c=relaxed/simple;
	bh=asuE+TKv2Ql5JTxXURhzKwOGmIgAWM1ZP5EmvR6qjKc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=c5sgyoks9U8a3q3xQUpwIt+BEQO5G65eHu5fRgawXx9v3NdegBAIXZ3ES/W6Olk2+LKOx0gT5usma8LQOaDqp5QxYbP0JR2fS25wAAuNvtNKWZkRhJ+BK1cSQclf00OxBCspGAlQed+HKPE5H2Esd+LpZK2vIl9vqCEy7xI1gYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLmQb-0001wn-PZ; Mon, 24 Jun 2024 18:20:25 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Peter Robinson <pbrobinson@gmail.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
Date: Mon, 24 Jun 2024 18:20:19 +0200
Message-Id: <171924573794.612064.864594906378094874.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240623165326.1273944-1-pbrobinson@gmail.com>
References: <20240623165326.1273944-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Sun, 23 Jun 2024 17:53:20 +0100, Peter Robinson wrote:
> The PinePhone Pro has a cluster of 3 single RGB GPIO LEDs.
> Add the GPIO entries for the 3 red/green/blue LEDs and an
> entry for the multi-color group to allow them to be used
> as a combined RGB LED.
> 
> 

Applied, thanks!

[1/3] arm64: dts: rockchip: Add Pinephone Pro support for GPIO LEDs
      commit: ee9b6b6414790223e8315ef0e25df69b3b5e6e50
[2/3] arm64: dts: rockchip: Enable PinePhone Pro IMU sensor
      commit: c1d9ced35621bdc894321ad284a29922dd3e7251
[3/3] arm64: dts: rockchip: Enable PinePhone Pro vibrator
      commit: 3f9cfd4f5e453aa33ca4dc40959a1cc524501160

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

