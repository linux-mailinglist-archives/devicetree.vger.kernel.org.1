Return-Path: <devicetree+bounces-47871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A18D186F05F
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 13:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4D7D81F22635
	for <lists+devicetree@lfdr.de>; Sat,  2 Mar 2024 12:03:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78CF7171D8;
	Sat,  2 Mar 2024 12:03:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BF0168D8
	for <devicetree@vger.kernel.org>; Sat,  2 Mar 2024 12:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709380994; cv=none; b=YnBj1qXuRmpc8NpFDbNk/XmVcxYCSEhClpMi1Q0LhC8MhIFNAzjjOw8azwLlCKkiFkrQ9IwcsgCncc2uJWwDwGGKM46TLszi6WvdHo3c7CWzfArD55FfHm6wqAxB5TULfApQZXxVmIv32tW52pvctG+x2p6+i2cbNzbh5ocWW68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709380994; c=relaxed/simple;
	bh=Ojjf3w5u9uWDbJ26XhM27rw6m/X/2DhngenigkRuGqE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=luBJYBUGK9inzxuvvlgySwbZIYCgORWkyA2MTjTNM8R9m+G+VY+SIXjKzzlZWOhtrtF0MPPTKCgAkqxUmNvXKNDCvFj3jIJvOrwJZTskKUfJp+SeQdSo7tf7zZ9kNsllN8b+K8XQNVcwpubIhPB0BB3i2e02UaM4p1Kdvs8ofmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [194.95.143.137] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rgO51-0005BL-RA; Sat, 02 Mar 2024 13:03:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
Date: Sat,  2 Mar 2024 13:02:55 +0100
Message-Id: <170938096635.1387342.13306327657223784073.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240301163201.559787-2-ukleinek@debian.org>
References: <20240301163201.559787-2-ukleinek@debian.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Fri, 1 Mar 2024 17:32:00 +0100, Uwe Kleine-König wrote:
> I typoed the pin header name when copying it from my notes on paper.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
      commit: c5a48ffb5206cd604eff4bb369efc1a7580d1ec1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

