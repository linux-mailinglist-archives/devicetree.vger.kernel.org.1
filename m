Return-Path: <devicetree+bounces-137185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2876FA07E23
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:55:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C6DA7188BF3B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:55:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C8E3188A3A;
	Thu,  9 Jan 2025 16:55:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="HOmVK8rg"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFB318595F;
	Thu,  9 Jan 2025 16:55:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736441738; cv=none; b=fA9e38iPD0RwmVVKq72hCqJArjc0vrDp8nGa5m7mPavypJN86otK3E/QTQZDXFDKmtanFFerjDJ/D6urWDFs5Ssd8EF7PUpWT0eP3n8mKjAtiYF83YIwhhq/WAq8NxWhIj6MczzpO3Fc1tlLwNOgL9ELmlKecFY6uw89hxRDOC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736441738; c=relaxed/simple;
	bh=XygXBeMhJmlSUrxet+An3n4rWMTZDJfiTZ8oHHUXAWk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SqQk9PJxMDpDLHtZIClt1eoGrC/2QeEsZvT7Hsm94kTAdGAYh/bQbKtRRRc2aNGiKqYQR6u44YKcyGbAiptKprDTSNZJwPrcxDAucN0zni0vwGMnBWsJM55No1LEdx5/F9KB54ukUD47c6VXgyf8lH6OMhVnz+L1ZLSGQoh2Ak8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=HOmVK8rg; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=dYYn2ZoAryPtkBNugm6MsBpPD4hnKv21592PMgEbOWQ=; b=HOmVK8rgEgDpn8qRVh9kLMZnaM
	eUeC8Gs3VFTkMtvfYdcom32TbnDmz7+3k4CllqXrAxUhLXNd91rFDTsY+c4OHSPPCfKk1QmGKXuCI
	cBQUY5FEnIrlPphA9h2RtrHKLTV19ldMEqP2nmWWwr6XuxZcChMaM04j8yB1nnXsG01/7G+0JpuUz
	mClh6QYY4MSMI0rPWtOb+nOqsKD94FBzYwO9iseSwNoAj5uWmJ0n7JM9Ug0f5qpXI3RDkeCO4FWlH
	0n9CVDMZ+OtcSZIFe4feJIAJHhRT3NEf1HJzNcfCTFcITLX87zRd/Zn3Ld6Hp3DfG3367OvvTAHtn
	eksUCxUw==;
Received: from i5e860d05.versanet.de ([94.134.13.5] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVvok-0003hx-9w; Thu, 09 Jan 2025 17:55:34 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3588-evb1: add WLAN controller
Date: Thu,  9 Jan 2025 17:55:21 +0100
Message-ID: <173644170632.2899934.6782599288073727936.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241210162452.116767-1-sebastian.reichel@collabora.com>
References: <20241210162452.116767-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Tue, 10 Dec 2024 17:24:04 +0100, Sebastian Reichel wrote:
> The RK3588 EVB1 has an onboard AP6275P WLAN/BT module. This adds
> support for the WLAN side, which is connected to the second
> PCIe bus. The Bluetooth side is connected to UART and handled
> separately.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: rk3588-evb1: add WLAN controller
      commit: 3948b4a9bbbb7366b277d9adfcee77b270482749

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

