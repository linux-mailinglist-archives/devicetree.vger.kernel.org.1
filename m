Return-Path: <devicetree+bounces-136628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2D2A05AEB
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 13:02:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 53A5D3A31B2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 12:02:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 358DD1F8667;
	Wed,  8 Jan 2025 12:02:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="e1ulK9F+"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5081F76C5;
	Wed,  8 Jan 2025 12:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736337761; cv=none; b=D+JQvb9a2LyLwoQ0DHqH3xy+N2nbxdFFGqvzKw+B3S3hLL/SRugr8/C7kQ6sY4W+6SxHXdGbcv3Yb+qlfdm/LCHJfsc4GR84xDCP1w6HU7qIH8tR9jkvCXg/HmZlfST6VUSEZYFikdDDnHkLiyJ18gbqmklnops+X+ux0Zw+UkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736337761; c=relaxed/simple;
	bh=SwpFzNgycxe/UPbtnMpCJRgSNcJtnsdfeHAx8Cgk1Oo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=AqV3lZBdhVTTYNtB9dNeYMfwRmwJpWiI3zR3wbCkUbzqhMB/wrPiPWIzzxRNCy5cdYcnzqJBBWqHjyjXzhAphjgrKwnrrvTdesueh17Q5v02Ho7CnzdFpC5DyVpGcNX8KozVdZ3lEhhv5J6Pbadj/1KPPpImNQQWiP/YJVB4vgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=e1ulK9F+; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nnUtdVeAl9f5S/7YxL/35itKcHxkPimGo8xC8m16xO8=; b=e1ulK9F+oYU38t+ceqPDEteyQS
	O4RfnLWkFEQPJrrdOl/cZ1y/eZY6TXBnMa7CqTciyZLEtGrnfdB9B2J7kU62blj+uayhjf/dORrnw
	w8T1Q5ARPOXIPD376RFmj7SPwFDWg2vSZ4aGCXydrCKy5Utv30gK7HokHnzyRGCIRHXqfp4YvIZQK
	OqIC5gtjUSzqOiggIAGziDnmppIrqb4iOuAo51MFfiJ/wyyktrqgBxonNleiEVuTXf8YjsDQ77sr6
	i4+cMz1oi1JWJtNrsBzMP0N9hitiDVg4fFnotXgahhMHtY8RMijvkuN51cKO4DOsfgTDN6jSGScWw
	A/EJh2Xw==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tVUlc-0005Xv-QP; Wed, 08 Jan 2025 13:02:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ivan Sergeev <ivan8215145640@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
Date: Wed,  8 Jan 2025 13:02:21 +0100
Message-ID: <173633768684.2772122.3565189934463718842.b4-ty@sntech.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
References: <20250106-bigtreetech-cb2-v7-0-565567e2c0a4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 06 Jan 2025 23:50:53 +0300, Ivan Sergeev wrote:
> BigTreeTech CB2 and Pi2 are Rockchip RK3566 SoM and SBC boards made by
> BigTreeTech for the intent of using as a 3d printer control board.
> It is a successor to the Allwinner H616-based BigTreeTech CB1 and Pi, so
> the device trees for CB2 and Pi2 are also done in the same manner: the
> common nodes and properties are put into a dtsi file that the
> board-specific device trees include.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add BigTreeTech CB2 and Pi2
      commit: 1a623c642b4066a5cea751ef52ab109b65e8afb5
[2/2] arm64: dts: rockchip: Add BigTreeTech CB2 and Pi2
      commit: bfbc663d2733a42d93143a91659e82c8a13f5a36

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

