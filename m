Return-Path: <devicetree+bounces-89104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B87BA93FF61
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 22:27:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2FD8EB22F4D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 20:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610E918E74E;
	Mon, 29 Jul 2024 20:21:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F9B18757E
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 20:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722284477; cv=none; b=iNsdJhMojLEejDi8hCbUlHUCqFudb8QiJxRAwrg6ymBVXlGkstXA8PPz43KhEyo9ZvpdU0jFyTCS+Ka/C8uFEY/UGEkwO11oFZHToMx9LETJsD1H3n3PtFwxSwPyx2ZXAjsNGYe52l7xLlQVfw3FjphoiN8ujAsHktdOKJzyVI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722284477; c=relaxed/simple;
	bh=Ij4imhpdfXbXIeQ4Ai0KELpB472/mp83xEgbwFN4/5w=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZCyVLeHD4o/loblt5W78GVX8LCPW6y01zR+jNY8YLk3zB08I5nlUXvtsCDAuX2kSM35mxi+B13KSgyeGoMyW8EVUdsr3ZNSWhQcGEW5wpOIqvAuhYr0NpE6mgzUsXcDj50xOHp9nQuePvWZ60Cl2Fywj9+WIbBVN1u3n0Yb9E9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i5e86192c.versanet.de ([94.134.25.44] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sYWrp-0007Xp-9G; Mon, 29 Jul 2024 22:21:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Remove broken tsadc pinctrl binding for rk356x
Date: Mon, 29 Jul 2024 22:21:04 +0200
Message-Id: <172228429363.2312452.10038045608836352834.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240709182029.1318214-1-eagle.alexander923@gmail.com>
References: <20240709182029.1318214-1-eagle.alexander923@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Tue, 9 Jul 2024 21:20:29 +0300, Alexander Shiyan wrote:
> There is no pinctrl "init" handling in the tsadc driver.
> Let's remove this binding.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Remove broken tsadc pinctrl binding for rk356x
      commit: 1c9034eb025330f193f01ff4260367d078c60e4a

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

