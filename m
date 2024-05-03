Return-Path: <devicetree+bounces-64751-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A748BABC6
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 13:39:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D568BB214BB
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2024 11:39:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8773153818;
	Fri,  3 May 2024 11:38:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3259B153506
	for <devicetree@vger.kernel.org>; Fri,  3 May 2024 11:38:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714736335; cv=none; b=VRPue1Og9Rr7EySl0J48hQ8zgWFKQtFXU0LSacTMR/Vv31UqegAyym+kTxITw81if6uG1xafGeCxnQ6OeiNAbcaasbY9f15PNsNFhdd3XglzuVjqjsz8bPVmAVMiMYUX7IKus/D1WoKjxcE/3FnqeWRYDXssPQ4IpYntI+7y1h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714736335; c=relaxed/simple;
	bh=Vj3s3kLhvI2P5ba0qHWiYAHQZhFGk+kTMe0fo3PaCHo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=siZXzkQYjNg30aKksCqcUQWB8J2YEoJcyRXq+5G16k8J676CnsJ8fiTfwCA50FCt7KsnIRvMYO9s2qfdA6TjBxVqnVTfgopbwnr09VOcdFrbVpe1k4BUy/sLtmy8xEHKEyZxaqTJPUN89uKxdIfxCT1qfWGuZ2FO/eAabyOBowk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFR-0000Tc-7n; Fri, 03 May 2024 13:38:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	Damien Le Moal <dlemoal@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add rk3588 IOMMUs
Date: Fri,  3 May 2024 13:38:22 +0200
Message-Id: <171473602991.3469033.4644447036108011842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240502140231.477049-2-cassel@kernel.org>
References: <20240502140231.477049-2-cassel@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Thu, 2 May 2024 16:02:32 +0200, Niklas Cassel wrote:
> The mmu600_pcie is connected with the five PCIe controllers.
> The mmu600_php is connected with the USB3 controller, the GMAC
> controllers, and the SATA controllers.
> 
> See 8.2 Block Diagram, in rk3588 TRM (Technical Reference Manual).
> 
> The IOMMUs are disabled by default, as further patches are needed to
> program the SID/SSIDs in to the IOMMUs.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: add rk3588 IOMMUs
      commit: cd81d3a0695cc54ad6ac0ef4bbb67a7c8f55d592

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

